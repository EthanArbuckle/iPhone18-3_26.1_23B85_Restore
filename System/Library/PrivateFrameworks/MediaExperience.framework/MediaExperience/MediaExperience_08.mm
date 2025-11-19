uint64_t central_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(CMBaseObjectGetDerivedStorage() + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __central_SendCommand_block_invoke;
  v12[3] = &__block_descriptor_72_e5_v8__0l;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  v12[8] = a5;
  MXDispatchSync("central_SendCommand", "FigEndpoint_Central.m", 1530, 0, 0, v10, v12);
  return 0;
}

uint64_t central_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CreateRemoteControlSession_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CreateRemoteControlSession", "FigEndpoint_Central.m", 1582, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CreateCommChannel_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CreateCommChannel", "FigEndpoint_Central.m", 1609, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 8);
  if (!v11 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __central_SendData_block_invoke;
  v15[3] = &unk_1E7AE7AB8;
  v15[4] = &v16;
  v15[5] = DerivedStorage;
  v15[6] = v11;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  MXDispatchSync("central_SendData", "FigEndpoint_Central.m", 1636, 0, 0, v12, v15);
  v13 = *(v17 + 6);
  if (v13 == -12782)
  {
    if (!a4)
    {
      v13 = 4294954514;
      goto LABEL_10;
    }

LABEL_9:
    a4(a1, a2, *(v17 + 6), a5);
    v13 = *(v17 + 6);
    goto LABEL_10;
  }

  if (a4 && v13 == -12785)
  {
    goto LABEL_9;
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_1B1871510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (!v4 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __central_CloseCommChannel_block_invoke;
  v8[3] = &unk_1E7AE7A48;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  v8[6] = v4;
  v8[7] = a2;
  MXDispatchSync("central_CloseCommChannel", "FigEndpoint_Central.m", 1666, 0, 0, v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1B187162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t central_RequestScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_RequestScreenViewArea_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_RequestScreenViewArea", "FigEndpoint_Central.m", 1693, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t central_CopyCurrentScreenViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 8);
  if (!v6 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v6 = 0;
  }

  v7 = *(DerivedStorage + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __central_CopyCurrentScreenViewArea_block_invoke;
  v10[3] = &unk_1E7AE79A8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = v6;
  v10[7] = a2;
  v10[8] = a3;
  MXDispatchSync("central_CopyCurrentScreenViewArea", "FigEndpoint_Central.m", 1720, 0, 0, v7, v10);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __central_interruptionNotificationCallback_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*v1)
  {
    if (!dword_1EB75E218)
    {
LABEL_9:
      v13 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_3:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (*(a1 + 40) != *(v1 + 16))
  {
    goto LABEL_3;
  }

  v4 = [*(a1 + 48) objectForKey:@"InterruptionCmd"];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 intValue];
  if ((v5 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [*(a1 + 48) objectForKey:@"QuietVolume"];
  [*(a1 + 48) objectForKey:@"VolumeChangeDuration"];
  if (v7)
  {
    [v7 floatValue];
    v9 = log10(v8) * 20.0;
    v10 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v11 = v9;
    v12 = [v10 initWithFloat:v11];
  }

  else
  {
    v12 = 0;
  }

  v14 = MEMORY[0x1E6961800];
  if (v6 != 2)
  {
    v14 = MEMORY[0x1E6961808];
  }

  v15 = *v14;
  v18 = v12;
  DuckAudioPayload = FigRoutingManagerCreateDuckAudioPayload();
  FigRoutingManagerSendCarPlayDuckCommand(*(*(a1 + 32) + 8), DuckAudioPayload);
  if (DuckAudioPayload)
  {
    CFRelease(DuckAudioPayload);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t MX_PrivacyAccounting_IsPAAccessLoggingEnabled()
{
  if (mx_privacyAccounting_isAvailable_onceToken != -1)
  {
    MX_PrivacyAccounting_IsPAAccessLoggingEnabled_cold_1();
  }

  if (mx_privacyAccounting_isAvailable_result)
  {
    return 0;
  }

  else
  {
    return [objc_msgSend(getPAAccessLoggerClass() "sharedInstance")];
  }
}

uint64_t getPATCCAccessClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getPATCCAccessClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getPATCCAccessClass_softClass;
  if (!getPATCCAccessClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPATCCAccessClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getPATCCAccessClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B18721C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkTCCServiceMicrophone()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkTCCServiceMicrophoneSymbolLoc_ptr;
  v7 = getkTCCServiceMicrophoneSymbolLoc_ptr;
  if (!getkTCCServiceMicrophoneSymbolLoc_ptr)
  {
    v1 = TCCLibrary();
    v5[3] = dlsym(v1, "kTCCServiceMicrophone");
    getkTCCServiceMicrophoneSymbolLoc_ptr = v5[3];
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

void MX_PrivacyAccounting_EndRecordingAccessIntervals(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (mx_privacyAccounting_isAvailable_onceToken != -1)
  {
    MX_PrivacyAccounting_IsPAAccessLoggingEnabled_cold_1();
  }

  if ((mx_privacyAccounting_isAvailable_result & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v13;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v13 != v4)
          {
            objc_enumerationMutation(a1);
          }

          v6 = *(*(&v12 + 1) + 8 * i);
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v8 = [a1 objectForKey:{v6, v10, v11}];
          if (v8)
          {
            [v8 end];
          }
        }

        v3 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __mx_privacyAccounting_isAvailable_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = PrivacyAccountingLibraryCore();
  if (!result)
  {
    mx_privacyAccounting_isAvailable_result = 1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PrivacyAccountingLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!PrivacyAccountingLibraryCore_frameworkLibrary)
  {
    PrivacyAccountingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PrivacyAccountingLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyAccountingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPAAccessLoggerClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAAccessLogger");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getPAAccessLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getPAAccessLoggerClass_block_invoke_cold_1();
    return PrivacyAccountingLibrary();
  }

  return result;
}

uint64_t PrivacyAccountingLibrary()
{
  v0 = PrivacyAccountingLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__gettcc_identity_createSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_identity_create");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_identity_createSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TCCLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TCCLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AEA5C8;
    v6 = 0;
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = TCCLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __TCCLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getPAAuthenticatedClientIdentitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PrivacyAccountingLibrary();
  result = dlsym(v2, "PAAuthenticatedClientIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAAuthenticatedClientIdentitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPAApplicationClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getPAApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getPAApplicationClass_block_invoke_cold_1();
    return __getPATCCAccessClass_block_invoke(v3);
  }

  return result;
}

Class __getPATCCAccessClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PATCCAccess");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getPATCCAccessClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getPATCCAccessClass_block_invoke_cold_1();
    return __getkTCCServiceMicrophoneSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkTCCServiceMicrophoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "kTCCServiceMicrophone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkTCCServiceMicrophoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_releaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_release");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_releaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CMSM_GetHighestPriorityOfLocalSessionPlayingToDevice(uint64_t a1)
{
  v2 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlaying, 0);
  if (!v2)
  {
    return 100;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 100;
  }

  else
  {
    v4 = 0;
    LODWORD(v5) = 100;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      LocalSessionPriority = CMSM_GetLocalSessionPriority(ValueAtIndex, a1 != 0);
      if (LocalSessionPriority <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = LocalSessionPriority;
      }

      if (LocalSessionPriority <= v5 || a1 == 0)
      {
        v5 = v8;
      }

      else
      {
        v10 = LocalSessionPriority;
        if (CMSUtility_DoPickedEndpointsForSessionContainDeviceIdentifier(ValueAtIndex, a1))
        {
          v5 = v10;
        }

        else
        {
          v5 = v5;
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(v3));
  }

  CFRelease(v3);
  return v5;
}

uint64_t CMSM_GetHighestRemotePlayingSessionPriority()
{
  RemotePlayingInfo = CMSM_IDSConnection_GetRemotePlayingInfo();
  if (!RemotePlayingInfo)
  {
    return 100;
  }

  v1 = RemotePlayingInfo;
  if (CFArrayGetCount(RemotePlayingInfo) < 1)
  {
    return 100;
  }

  v2 = 0;
  LODWORD(v3) = 100;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v2);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      *(&v12 + 1) = CFDictionaryGetValue(ValueAtIndex, @"HostApplicationDisplayID");
      *&v12 = CFDictionaryGetValue(v5, @"ClientName");
      Value = CFDictionaryGetValue(v5, @"InterruptionStyle");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &v13);
      }

      v7 = CFDictionaryGetValue(v5, @"ClientPriority");
      if (v7)
      {
        CFNumberGetValue(v7, kCFNumberSInt32Type, &v13 + 4);
      }

      *&v14 = CFDictionaryGetValue(v5, @"AudioCategory");
      *(&v14 + 1) = CFDictionaryGetValue(v5, @"AudioMode");
      v8 = +[MXSessionManager sharedInstance];
      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v9 = [(MXSessionManager *)v8 getSessionPriority:v11 forTipi:0];
    }

    else
    {
      v9 = 100;
    }

    if (v9 <= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    ++v2;
  }

  while (v2 < CFArrayGetCount(v1));
  return v3;
}

uint64_t vaemSetCallScreeningStatus(int a1)
{
  byte_1EB75D1BC = a1;
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);

  return vaeUpdateBluetoothCallScreeningStatus(CurrentOutputPortAtIndex, a1);
}

uint64_t vaemAudioDevicesChanged()
{
  v19 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"#vedbolg";
  inAddress.mElement = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &outDataSize);
  if (PropertyDataSize)
  {
    v15 = 0;
    LOBYTE(type.mSelector) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v2 = v15;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      LODWORD(outData) = 136315138;
      *(&outData + 4) = "vaemAudioDevicesChanged";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (outDataSize >= 4)
  {
    type.mElement = 0;
    v11 = 0x1F2893B50;
    *&type.mSelector = *"diudbolg";
    *&outData = &v11;
    *(&outData + 1) = 8;
    v17 = &v10;
    v18 = 4;
    ioDataSize = 32;
    v10 = 0;
    AudioObjectGetPropertyData(1u, &type, 0, 0, &ioDataSize, &outData);
    v4 = +[MXSessionManager sharedInstance];
    [(MXSessionManager *)v4 setDefaultVADID:v10];
    if (!PropertyDataSize)
    {
      if ([+[MXSessionManager defaultVADID]&& qword_1EB75D0C8 sharedInstance]
      {
        if (dword_1EB75DE40)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (vaemAudioDevicesChanged_vadInitializationCompleteSignalOnce != -1)
        {
          vaemAudioDevicesChanged_cold_1();
        }

        goto LABEL_18;
      }

      if (!dword_1EB75DE40)
      {
        goto LABEL_18;
      }
    }

    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t vaemAddAudioDevicesChangedListener()
{
  v1.mElement = 0;
  *&v1.mSelector = *"#vedbolg";
  AudioObjectAddPropertyListener(1u, &v1, vaemAudioDevicesChanged, 0);
  return vaemAudioDevicesChanged();
}

void vaemAddToPortEndpointCache(int a1)
{
  valuePtr = a1;
  value = 0;
  if (a1)
  {
    v1 = *MEMORY[0x1E695E480];
    FigVAEndpointCreate(*MEMORY[0x1E695E480], a1, &value);
    if (value)
    {
      if (vaemInitializePortEndpointCache_onceToken != -1)
      {
        vaemAddToPortEndpointCache_cold_1();
      }

      v2 = CFNumberCreate(v1, kCFNumberSInt32Type, &valuePtr);
      FigSimpleMutexLock();
      CFDictionarySetValue(qword_1EB75D0D0, v2, value);
      FigSimpleMutexUnlock();
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }

  else
  {

    FigSignalErrorAtGM();
  }
}

uint64_t vaemSetOrientationOverride(int a1)
{
  LODWORD(v4) = 0;
  HIDWORD(v4) = a1;
  FigSimpleMutexLock();
  if ([+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID:*"rvootpni"]&& AudioObjectHasProperty([+[MXSessionManager decoupledInputVADID] sharedInstance])
  {
    [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
    v1 = CMSMVAUtility_AudioObjectSetPropertyData();
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t vaemSetCaptureOrientationOverride()
{
  LODWORD(v3) = 0;
  FigSimpleMutexLock();
  if ([+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID:*"drootpni"]&& AudioObjectHasProperty([+[MXSessionManager decoupledInputVADID] sharedInstance])
  {
    [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
    v0 = CMSMVAUtility_AudioObjectSetPropertyData();
  }

  else
  {
    v0 = 0;
  }

  FigSimpleMutexUnlock();
  return v0;
}

uint64_t vaemGetStereoInputOrientation()
{
  inAddress.mElement = 0;
  *&inAddress.mSelector = *"roiutpni";
  outData = 0;
  ioDataSize = 4;
  result = AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance];
  if (result)
  {
    if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0])
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

uint64_t vaemSetStereoInputOrientation(int a1)
{
  LODWORD(v4) = 0;
  HIDWORD(v4) = a1;
  v3 = *"roiutpni";
  FigSimpleMutexLock();
  if (AudioObjectHasProperty([+[MXSessionManager defaultVADID:*"roiutpni"] sharedInstance])
  {
    [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
    v1 = CMSMVAUtility_AudioObjectSetPropertyData();
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t __vaemSupportsBootChimeVolume_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886613611);
  dword_1EB75D1B4 = VADPortIDFromVADPortType;
  if (VADPortIDFromVADPortType)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"cblvbolg";
    result = AudioObjectHasProperty(VADPortIDFromVADPortType, &inAddress);
    vaemSupportsBootChimeVolume_isSupported = result;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemSetBootChimeVolume(float a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = LODWORD(a1);
  if (vaemSupportsBootChimeVolume_onceToken != -1)
  {
    vaemSetBootChimeVolume_cold_1();
  }

  if (vaemSupportsBootChimeVolume_isSupported)
  {
    v2 = *&vaemSetBootChimeVolume_sCurrentBootChimeVolume == a1;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (CMSMVAUtility_AudioObjectSetPropertyData())
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      vaemSetBootChimeVolume_sCurrentBootChimeVolume = v6;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void vaemGetBootChimeVolume()
{
  v6 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = -1082130432;
  if (vaemSupportsBootChimeVolume_onceToken != -1)
  {
    vaemSetBootChimeVolume_cold_1();
  }

  if (vaemSupportsBootChimeVolume_isSupported)
  {
    inAddress.mElement = 0;
    *&inAddress.mSelector = *"cblvbolg";
    if (AudioObjectGetPropertyData(dword_1EB75D1B4, &inAddress, 0, 0, &ioDataSize, &outData))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmInEarBluetoothStatusListener(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  CMSMNotificationUtility_PostPreferredExternalRouteDidChange();
  if (dword_1EB75DE40)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MXGetSerialQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __cmsmInEarBluetoothStatusListener_block_invoke;
  v7[3] = &unk_1E7AEA5E8;
  v8 = a1;
  v7[4] = &v11;
  MXDispatchAsync("cmsmInEarBluetoothStatusListener", "CMSessionManager_VAEndpointManager.m", 1415, 0, 0, v3, v7);
  v4 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B1873F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cmsmInEarBluetoothStatusListener_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(cf, &theArray);
  DoesPortSupportMultipleConnections = vaeDoesPortSupportMultipleConnections(*(a1 + 40));
  v3 = *(a1 + 40);
  ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(*(a1 + 40));
  v5 = ShouldBTPortBeTreatedAsInEar;
  if (!DoesPortSupportMultipleConnections)
  {
    if (!ShouldBTPortBeTreatedAsInEar)
    {
      goto LABEL_88;
    }

    if (theArray && CFArrayGetCount(theArray))
    {
      goto LABEL_51;
    }

    v6 = CMSMUtility_CopyCurrentOutputPorts();
    v7 = *MEMORY[0x1E695E480];
    v8 = *(a1 + 40);
    SInt64 = FigCFNumberCreateSInt64();
    if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(v6) && FigCFArrayContainsValue())
    {
      if (dword_1EB75DE40)
      {
        v49 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v49;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *(a1 + 40);
          v50 = 136315394;
          v51 = "cmsmInEarBluetoothStatusListener_block_invoke";
          v52 = 1024;
          v53 = v13;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (!v6)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v49 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v49;
        if (os_log_type_enabled(v21, type))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v24 = *(a1 + 40);
          v50 = 136315394;
          v51 = "cmsmInEarBluetoothStatusListener_block_invoke";
          v52 = 1024;
          v53 = v24;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ArrayFromPortIDAndPartners = CMSMVAUtility_CreateArrayFromPortIDAndPartners(*(a1 + 40));
      vaemMakeArrayOfPortsRoutable(ArrayFromPortIDAndPartners, 1, 0, qword_1EB75E190, 0);
      if (ArrayFromPortIDAndPartners)
      {
        CFRelease(ArrayFromPortIDAndPartners);
      }
    }

    if (!v6)
    {
LABEL_85:
      if (!SInt64)
      {
        goto LABEL_88;
      }

      v43 = SInt64;
      goto LABEL_87;
    }

LABEL_84:
    CFRelease(v6);
    goto LABEL_85;
  }

  if ([+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
  {
    if (v5)
    {
      if ([+[MXAudioAccessoryServices hijackWirelessPort:"hijackWirelessPort:reason:portWentInEar:"]
      {
        if (vaeGetBTPortOwnsSharedAudioConnection(v3))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (!dword_1EB75DE40)
      {
        goto LABEL_45;
      }

      v49 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v49;
      if (os_log_type_enabled(v18, type))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (!v20)
      {
        goto LABEL_44;
      }

      v50 = 136315138;
      v51 = "vaemGetRoutingActionsForMultiConnectHeadset";
    }

    else
    {
      if (!dword_1EB75DE40)
      {
LABEL_45:
        v5 = 0;
        goto LABEL_46;
      }

      v49 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v49;
      if (os_log_type_enabled(v15, type))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (!v17)
      {
LABEL_44:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_45;
      }

      v50 = 136315138;
      v51 = "vaemGetRoutingActionsForMultiConnectHeadset";
    }

    _os_log_send_and_compose_impl();
    goto LABEL_44;
  }

  if (!v5)
  {
LABEL_46:
    v14 = 0;
    goto LABEL_47;
  }

  if (!CMSMDeviceState_ItsAnAppleWatch())
  {
    if (!cmsmShouldRequestOwnershipOnSharedAudioRoute(0, v3))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vaemShouldRequestOwnershipForSharedAudioRoute())
  {
LABEL_21:
    *(*(*(a1 + 32) + 8) + 24) = vaeRequestOwnershipOnBTPort(*(a1 + 40));
  }

LABEL_22:
  v5 = 1;
  v14 = 1;
LABEL_47:
  BTPortOwnsSharedAudioConnection = vaeGetBTPortOwnsSharedAudioConnection(*(a1 + 40));
  v26 = BTPortOwnsSharedAudioConnection;
  if (v5 && BTPortOwnsSharedAudioConnection)
  {
    if (theArray && CFArrayGetCount(theArray))
    {
LABEL_51:
      FigRoutingManagerLogEndpointIDs(@"Skipping to make ports routable because there are currently activating endpoints", theArray, 0, 1);
      goto LABEL_88;
    }

    v30 = CMSMUtility_CopyCurrentOutputPorts();
    v31 = *MEMORY[0x1E695E480];
    v32 = *(a1 + 40);
    v33 = FigCFNumberCreateSInt64();
    if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(v30) && FigCFArrayContainsValue())
    {
      if (dword_1EB75DE40)
      {
        v49 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = v49;
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
          v37 = *(a1 + 40);
          v50 = 136315394;
          v51 = "cmsmInEarBluetoothStatusListener_block_invoke";
          v52 = 1024;
          v53 = v37;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (!v33)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v49 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = v49;
        if (os_log_type_enabled(v38, type))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v41 = *(a1 + 40);
          v50 = 136315394;
          v51 = "cmsmInEarBluetoothStatusListener_block_invoke";
          v52 = 1024;
          v53 = v41;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v42 = CMSMVAUtility_CreateArrayFromPortIDAndPartners(*(a1 + 40));
      vaemMakeArrayOfPortsRoutable(v42, 1, 0, qword_1EB75E190, 0);
      if (v42)
      {
        CFRelease(v42);
      }
    }

    if (!v33)
    {
LABEL_78:
      if (!v30)
      {
        goto LABEL_88;
      }

      v43 = v30;
LABEL_87:
      CFRelease(v43);
      goto LABEL_88;
    }

LABEL_77:
    CFRelease(v33);
    goto LABEL_78;
  }

  if (dword_1EB75DE40)
  {
    v49 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v49;
    if (os_log_type_enabled(v27, type))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v50 = 136315650;
      v51 = "cmsmInEarBluetoothStatusListener_block_invoke";
      v52 = 1024;
      v53 = v14;
      v54 = 1024;
      v55 = v26;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_88:
  cmsmUpdatePickableRouteDescriptionLists(1);
  FigPredictedRouting_UpdatePredictedRoute(5);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t vaemMakeArrayOfPortsRoutable(const __CFArray *a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1 || (Count = CFArrayGetCount(a1)) == 0)
  {
    v13 = 0;
    goto LABEL_77;
  }

  v11 = Count;
  if (a2 != 1 && a3)
  {
    if (dword_1EB75DE40)
    {
      valuePtr = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_SetDoNotMakeStarkAudioPortRoutableFlag(1);
  }

  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    v14 = CMSMUtility_CopyCurrentOutputPorts();
  }

  else
  {
    v14 = 0;
  }

  v43 = a4;
  v15 = CMSMVAUtility_ArePortsHFPOnly(a1) | a5;
  cf = v14;
  if (!a2)
  {
    if (v15)
    {
      v26 = 0;
    }

    else
    {
      v26 = v14;
    }

    v27 = CMSMUtility_IsSharePlayCapableCallSessionActive();
    v28 = 0;
    if (a3 && v27)
    {
      v28 = CMSMVAUtility_ArePortsHFPOnly(a1) != 0;
    }

    if (dword_1EB75DE40)
    {
      valuePtr = 0;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v48 = 0;
    v49 = a1;
    v50 = 0uLL;
    v51 = v26;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    LOBYTE(v57[0]) = v28;
    *(v57 + 1) = 0u;
    *(&v57[1] + 1) = 0u;
    *(&v57[2] + 1) = 0u;
    goto LABEL_60;
  }

  if (v11 >= 1)
  {
    v16 = 0;
    for (i = 0; i != v11; ++i)
    {
      PortAtIndex = CMSMVAUtility_GetPortAtIndex(a1, i);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(PortAtIndex);
      if (PortTypeFromPortID == 1885433953 || PortTypeFromPortID == 1885433971)
      {
        v16 = 1;
      }

      if (PortTypeFromPortID == 1885433953)
      {
        break;
      }

      if (PortTypeFromPortID == 1885433971)
      {
        break;
      }
    }

    if (v16)
    {
      if (dword_1EB75E0B8)
      {
        v21 = *MEMORY[0x1E695E480];
        UInt32 = FigCFNumberCreateUInt32();
        if (UInt32)
        {
          v23 = UInt32;
          if (vaeDoesPortSupportRoutability(dword_1EB75E0B8) && vaeIsPortRoutable(dword_1EB75E0B8))
          {
            Mutable = CFArrayCreateMutable(v21, 0, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(Mutable, v23);
          }

          else
          {
            Mutable = 0;
          }

          CFRelease(v23);
        }

        else
        {
          Mutable = 0;
        }
      }

      else
      {
        Mutable = 0;
      }

      if (dword_1EB75DE40)
      {
        valuePtr = 0;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      v48 = a1;
      v49 = Mutable;
      v50 = 0uLL;
      v51 = v14;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      memset(v57, 0, sizeof(v57));
      v13 = cmsmSetVADRouteConfiguration(&v45, a3, a4);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_61;
    }
  }

  if (a2 != 2)
  {
    v33 = 0;
LABEL_54:
    if (v15)
    {
      v31 = 0;
    }

    else
    {
      v31 = v14;
    }

    if (dword_1EB75DE40)
    {
      valuePtr = 0;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_59;
  }

  if (dword_1EB75DE40)
  {
    valuePtr = 0;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    v33 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_54;
  }

  if (v15)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  v33 = 1;
LABEL_59:
  v30 = 0uLL;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v48 = a1;
  v49 = 0;
  LOBYTE(v50) = v33;
  *(&v50 + 1) = 0;
  *(&v50 + 1) = 0;
  v51 = v31;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v57, 0, 48);
LABEL_60:
  v57[3] = v30;
  v13 = cmsmSetVADRouteConfiguration(&v45, a3, v43);
LABEL_61:
  if (!v13 && v11 >= 1)
  {
    v35 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v35);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v37 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
      if (v37)
      {
        break;
      }

LABEL_74:
      if (v11 == ++v35)
      {
        goto LABEL_75;
      }
    }

    v38 = v37;
    if (a2 == 1)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_72;
      }
    }

    else if (a2)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_72;
      }
    }

    else if (dword_1EB75DE40)
    {
LABEL_72:
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v38);
    goto LABEL_74;
  }

LABEL_75:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_77:
  v40 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t cmsmPrimaryBudInEarBluetoothStatusListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmPrimaryBudInEarBluetoothStatusListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmPrimaryBudInEarBluetoothStatusListener", "CMSessionManager_VAEndpointManager.m", 1523, 0, 0, v2, v4);
  return 0;
}

uint64_t cmsmSecondaryBudInEarBluetoothStatusListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmSecondaryBudInEarBluetoothStatusListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmSecondaryBudInEarBluetoothStatusListener", "CMSessionManager_VAEndpointManager.m", 1536, 0, 0, v2, v4);
  return 0;
}

uint64_t cmsmOwnsSharedAudioConnectionListener(AudioObjectID a1)
{
  v12 = *MEMORY[0x1E69E9840];
  BTPortOwnsSharedAudioConnection = vaeGetBTPortOwnsSharedAudioConnection(a1);
  v3 = BTPortOwnsSharedAudioConnection;
  CMSM_IDSConnection_UpdateLocalOwnsSharedAudioRoute(BTPortOwnsSharedAudioConnection);
  if (v3)
  {
    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaeSignalOwnershipIsTaken();
  }

  else
  {
    v5 = MXGetSerialQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __cmsmOwnsSharedAudioConnectionListener_block_invoke;
    v8[3] = &__block_descriptor_36_e5_v8__0l;
    v9 = a1;
    MXDispatchAsync("cmsmOwnsSharedAudioConnectionListener", "CMSessionManager_VAEndpointManager.m", 1571, 0, 0, v5, v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void __cmsmOwnsSharedAudioConnectionListener_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 32);
  v4 = CMSMUtility_CopyCurrentOutputPorts();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (CMSMVAUtility_GetPortAtIndex(v5, v8) != v3)
      {
        if (v7 == ++v8)
        {
          goto LABEL_10;
        }
      }

      CMSMVAUtility_DisableBluetoothSharingSession();
    }

LABEL_10:
    CFRelease(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmSharedAudioConnectionFailedListener(AudioObjectID a1)
{
  BTPortOwnsSharedAudioConnection = vaeGetBTPortOwnsSharedAudioConnection(a1);
  CMSM_IDSConnection_UpdateLocalOwnsSharedAudioRoute(BTPortOwnsSharedAudioConnection);
  return 0;
}

uint64_t cmsmBluetoothListeningModeListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothListeningModeListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothListeningModeListener", "CMSessionManager_VAEndpointManager.m", 1621, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothListeningModeListener_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  vaeGetBluetoothListeningMode(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemPostAvailableEndpointsChangedNotification(0);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(cf[0], 0, @"configUpdateReasonEndpointDescriptorChanged");
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmBluetoothSharingAggregationListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothSharingAggregationListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothSharingAggregationListener", "CMSessionManager_VAEndpointManager.m", 1647, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothSharingAggregationListener_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = vaeCopyBluetoothShareablePortsForPort(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    if (CFArrayGetCount(v1) >= 1)
    {
      if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
      {
        v3 = CMSMUtility_CopyCurrentOutputPorts();
        if (!v3)
        {
          goto LABEL_15;
        }

        v4 = v3;
        if (CFArrayGetCount(v3) < 1)
        {
LABEL_14:
          CFRelease(v4);
          goto LABEL_15;
        }

        v5 = 0;
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
          v10.length = CFArrayGetCount(v1);
          v10.location = 0;
          if (!CFArrayContainsValue(v1, v10, ValueAtIndex))
          {
            v5 = 1;
          }

          ++v6;
        }

        while (v6 < CFArrayGetCount(v4));
        CFRelease(v4);
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v4 = CMSMUtility_CopySystemAudioRoutingContextUUID();
      CMSMVAUtility_AggregatePorts(v1, 0, v4);
      if (v4)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    CFRelease(v1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmBluetoothSpatialAudioEnabledListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothSpatialAudioEnabledListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothSpatialAudioEnabledListener", "CMSessionManager_VAEndpointManager.m", 1697, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothSpatialAudioEnabledListener_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  byte_1EB75D190 = vaeIsHeadTrackedSpatialAudioActive(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemPostAvailableEndpointsChangedNotification(0);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(cf[0], 0, @"configUpdateReasonEndpointDescriptorChanged");
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmBluetoothSpatialAudioUserEnableFeatureListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothSpatialAudioUserEnableFeatureListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothSpatialAudioUserEnableFeatureListener", "CMSessionManager_VAEndpointManager.m", 1723, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothSpatialAudioUserEnableFeatureListener_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  vaeDoesPortAllowHeadTrackedSpatialAudio(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemPostAvailableEndpointsChangedNotification(0);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(cf[0], 0, @"configUpdateReasonEndpointDescriptorChanged");
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmBluetoothSpatialAudioModeListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothSpatialAudioModeListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothSpatialAudioModeListener", "CMSessionManager_VAEndpointManager.m", 1752, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothSpatialAudioModeListener_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  vaeGetBluetoothSpatialAudioMode(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemPostAvailableEndpointsChangedNotification(0);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(cf[0], 0, @"configUpdateReasonEndpointDescriptorChanged");
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t cmsmBluetoothAlternateTransportListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmBluetoothAlternateTransportListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("cmsmBluetoothAlternateTransportListener", "CMSessionManager_VAEndpointManager.m", 1777, 0, 0, v2, v4);
  return 0;
}

void __cmsmBluetoothAlternateTransportListener_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  vaeGetBluetoothAlternateTransport(*(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemPostAvailableEndpointsChangedNotification(0);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(cf);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(cf[0], 0, @"configUpdateReasonEndpointDescriptorChanged");
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t vaemClearUserPreferredInputPortInRouteConfigToVA()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  if (CMSMUtility_IsInputAllowedForCategory([v0 audioCategory]))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    memset(v7, 0, sizeof(v7));
    v8 = 1;
    v9[0] = 0;
    *(v9 + 3) = 0;
    v2 = cmsmSetVADRouteConfiguration(v7, 0, [v0 routingContextUUID]);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL vaemSendUserPreferredInputPortInRouteConfigToVA(int a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveCoreSessionControllingRouting];
  if (!CMSMUtility_IsInputAllowedForCategory([v2 audioCategory]))
  {
    goto LABEL_9;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = [v2 copyUserPreferredInputPort];
  v5 = v4;
  if (!a1 && ![v4 unsignedIntValue])
  {

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = v5 != 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v15 = v5;
  v16 = v5 == 0;
  v17[0] = 0;
  *(v17 + 3) = 0;
  v7 = cmsmSetVADRouteConfiguration(v13, 0, [v2 routingContextUUID]);

  if (v7)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t cmsmExclavesSensorStatusListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsync("cmsmExclavesSensorStatusListener", "CMSessionManager_VAEndpointManager.m", 1864, 0, 0, v0, &__block_literal_global_10);
  return 0;
}

uint64_t __cmsmExclavesSensorStatusListener_block_invoke()
{
  v0 = +[MXExclaves sharedInstance];

  return [(MXExclaves *)v0 handleSensorStatusChanged];
}

uint64_t vaemGetNumberOfChannelsForVADIDAndScope(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager defaultVADID]== a1 && dword_1EB75E09C == 1668117868 sharedInstance]
  {
    if (dword_1EB75DE40)
    {
      inObjectID = 0;
      LOBYTE(ioDataSize) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_34:
    result = vaemGetMaximumNumberOfChannels(a2, a1, [+[MXSessionManager defaultVADID:p_inAddress]!= a1 sharedInstance];
  }

  else
  {
    if (CMSMDeviceState_ItsAniPad())
    {
      v5 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager copyDetailedRouteDescription:"copyDetailedRouteDescription:", a1];
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = kMXSession_RouteDetailedDescriptionKey_Inputs;
      if (a2 != 1)
      {
        v7 = kMXSession_RouteDetailedDescriptionKey_Outputs;
      }

      v8 = [v6 initWithString:*v7];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [objc_msgSend(v5 objectForKey:{v8), "allObjects"}];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        v27 = a2;
        v26 = v8;
        while (2)
        {
          v13 = v5;
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v29 + 1) + 8 * i) objectForKey:@"RouteDetailedDescription_PortType"];
            if (([v15 isEqualToString:@"USB"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"Thunderbolt"))
            {
              v19 = v13;
              a2 = v27;
              if (dword_1EB75DE40)
              {
                inObjectID = 0;
                LOBYTE(ioDataSize) = 0;
                v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v21 = inObjectID;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v21 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  inAddress.mSelector = 136315394;
                  *&inAddress.mScope = "vaemGetNumberOfChannelsForVADIDAndScope";
                  v35 = 2114;
                  v36 = v15;
                  LODWORD(v25) = 22;
                  p_inAddress = &inAddress;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_34;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          v5 = v13;
          a2 = v27;
          v8 = v26;
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    inObjectID = 0;
    Stream0 = vaemGetStream0(a1, a2, &inObjectID);
    result = 0;
    if (!Stream0 && inObjectID)
    {
      inAddress.mElement = 0;
      *&inAddress.mSelector = *"tmfsbolg";
      ioDataSize = 40;
      v40 = 0;
      outData = 0u;
      v39 = 0u;
      if (AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData))
      {
        result = 0;
      }

      else
      {
        result = HIDWORD(v39);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemIsMATAtmosAvailable()
{
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"smtaptuo";
  inAddress.mElement = 0;
  if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0])
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

uint64_t vaemSetStreamASBD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CMSMVAUtility_AudioObjectSetPropertyData();
  [+[MXSessionManager sharedInstance](MXSessionManager updateDeviceSampleRate:"updateDeviceSampleRate:", a4];
  return v5;
}

uint64_t vaemSetVirtualFormatForScope(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outData = 0;
  v6 = 0xFFFFFFFFLL;
  if (!vaemGetStream0(a1, a3, &outData))
  {
    if (outData)
    {
      vaemRemoveVADAvailableSampleRatesListener();
      v6 = vaemSetStreamASBD(outData, a2, a3, a1);
      vaemAddVADAvailableSampleRatesListener(0);
      if (!v6)
      {
        v7 = *(a2 + 28);
        if (a3 == 1)
        {
          CMSMNotificationUtility_PostNumberOfInputChannelsDidChange(v7);
        }

        else
        {
          CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange(v7);
        }

        return 0;
      }
    }
  }

  return v6;
}

uint64_t vaemRemoveVADAvailableSampleRatesListener()
{
  result = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  if (result)
  {
    LODWORD(v2) = 0;
    return AudioObjectRemovePropertyListener([[MXSessionManager defaultVADID:0x676C6F626E737223] sharedInstance:vaemVADAvailableSampleRatesListener];
  }

  return result;
}

void vaemAddVADAvailableSampleRatesListener(int a1)
{
  LODWORD(v3) = 0;
  if ([+[MXSessionManager defaultVADID:0] sharedInstance]
  {
    LODWORD(v3) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID:0x676C6F626E737223] sharedInstance:vaemVADAvailableSampleRatesListener];
  }

  if (a1)
  {
    vaemVADAvailableSampleRatesListenerGuts_f();
  }
}

uint64_t vaemSetCameraParameters(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a1;
  result = CMSMVAUtility_AudioObjectSetPropertyData();
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

float vaemGetCurrentSafetyOffsetForScope(AudioObjectID a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  inAddress.mSelector = 1935763060;
  inAddress.mScope = v3;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 4;
  if (AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    outData = 0;
    v5 = 0.0;
  }

  else
  {
    LODWORD(v4) = outData;
    v5 = v4;
  }

  v6 = v5 / vaemGetSampleRateForDevice(a1);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

float vaemGetDeviceVolume(AudioObjectID a1, AudioObjectPropertyElement a2)
{
  *&inAddress.mSelector = 0x6F757470766F6C6DLL;
  inAddress.mElement = a2;
  ioDataSize = 4;
  outData = 0.0;
  AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  return outData;
}

BOOL vaemCurrentRouteHasMuteControl()
{
  outData[20] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  valuePtr = 1;
  ioDataSize = 8;
  *&inAddress.mSelector = *"rptcbolg";
  inAddress.mElement = 0;
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, outData))
  {
    valuePtr = 1;
  }

  else
  {
    Value = CFDictionaryGetValue(outData[0], @"policyMute");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (outData[0])
  {
    CFRelease(outData[0]);
  }

  result = valuePtr != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemGetVADSourceForInputGainScalar()
{
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID];
  v1 = +[MXSessionManager sharedInstance];
  if (v0)
  {

    return [(MXSessionManager *)v1 decoupledInputVADID];
  }

  else
  {

    return [(MXSessionManager *)v1 defaultVADID];
  }
}

uint64_t vaemConvertToDecibelInVAD(AudioObjectID a1, _DWORD *outData)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = 0x6F75747076326462;
  inAddress.mElement = 0;
  ioDataSize = 4;
  result = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData);
  v8 = result;
  if (result)
  {
    *outData = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = v8;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemSetToolboxDuckingEnabled(AudioObjectID a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"dxevptuo";
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a1, &inAddress))
  {
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = v8;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v9 = 136315138;
      v10 = "vaemSetToolboxDuckingEnabled";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_9;
  }

  result = CMSMVAUtility_AudioObjectSetPropertyData();
  v8 = result;
  if (result)
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
LABEL_9:
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemSetDeviceInputGainScalar(float a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vaemCurrentRouteHasInputGainControl())
  {
    vaemGetVADSourceForInputGainScalar();
    if (CMSMVAUtility_AudioObjectSetPropertyData())
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      CurrentInputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
      v3 = vaeCopyNameForPort(CurrentInputPortAtIndex);
      v4 = vaeCopyDeviceIdentifierFromVADPort(CurrentInputPortAtIndex);
      v5 = vaeCopyFigInputDeviceNameFromVADPort(CurrentInputPortAtIndex);
      PVMSetInputVolumePreference(v3, v4, v5, a1);
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
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void vaemSetInputGainFromPreferenceIfPresent()
{
  CurrentInputPortAtIndex = CMSMUtility_GetCurrentInputPortAtIndex(0);
  v1 = vaeCopyNameForPort(CurrentInputPortAtIndex);
  v2 = vaeCopyDeviceIdentifierFromVADPort(CurrentInputPortAtIndex);
  v3 = vaeCopyFigInputDeviceNameFromVADPort(CurrentInputPortAtIndex);
  if (PVMInputVolumePrefExistsForDeviceRoute(v1, v2, v3))
  {
    v4 = PVMGetInputVolumePreference(v1, v2, v3);
    vaemSetDeviceInputGainScalar(v4);
    if (!v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  vaemSetDefaultInputGain();
  if (v1)
  {
LABEL_3:
    CFRelease(v1);
  }

LABEL_4:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void vaemUpdateInputGainListenersForDecoupledInputVAD()
{
  v6 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager decoupledInputVADID] sharedInstance]
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = [+[MXSessionManager sharedInstance](MXSessionManager decoupledInputVADID:v4];
    vaemAddInputGainScalarListener(v2);
    vaemAddCurrentRouteHasInputGainControlListener(v2);
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMNotificationUtility_PostInputGainScalarDidChange();
    vaemPostDeviceInputGainScalarChangedNotification();
    vaemCurrentRouteHasInputGainControlListenerGuts();
  }

  v3 = *MEMORY[0x1E69E9840];
}

void vaemAddInputGainScalarListener(AudioObjectID inObjectID)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!inObjectID)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  inAddress.mElement = 0;
  *&inAddress.mSelector = *"mlovtpni";
  if (AudioObjectAddPropertyListener(inObjectID, &inAddress, vaemInputGainScalarListener, 0))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMNotificationUtility_PostInputGainScalarDidChange();
  vaemPostDeviceInputGainScalarChangedNotification();
  v4 = *MEMORY[0x1E69E9840];
}

void vaemAddCurrentRouteHasInputGainControlListener(AudioObjectID inObjectID)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!inObjectID)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  inAddress.mElement = 0;
  *&inAddress.mSelector = *"pscvtpni";
  if (AudioObjectAddPropertyListener(inObjectID, &inAddress, vaemCurrentRouteHasVolumeControlListener, 0))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemCurrentRouteHasInputGainControlListenerGuts();
  v4 = *MEMORY[0x1E69E9840];
}

void vaemPostDeviceInputGainScalarChangedNotification()
{
  if (qword_1EB75E090)
  {
    CFRetain(qword_1EB75E090);
    v0 = MXGetNotificationSenderQueue();

    MXDispatchAsync("vaemPostDeviceInputGainScalarChangedNotification", "CMSessionManager_VAEndpointManager.m", 12223, 0, 0, v0, &__block_literal_global_140);
  }
}

void vaemCurrentRouteHasInputGainControlListenerGuts()
{
  keys[1] = *MEMORY[0x1E69E9840];
  HasInputGainControl = vaemCurrentRouteHasInputGainControl();
  if (byte_1EB75D17B != HasInputGainControl)
  {
    v1 = HasInputGainControl;
    byte_1EB75D17B = HasInputGainControl;
    if (HasInputGainControl)
    {
      vaemUpdatePVMSettingsForInputGain();
    }

    keys[0] = @"State";
    v2 = MEMORY[0x1E695E4D0];
    if (!v1)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    values = *v2;
    v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange(v3);
    if (qword_1EB75E090)
    {
      CFRetain(qword_1EB75E090);
      v4 = MXGetNotificationSenderQueue();
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __vaemPostCurrentRouteHasInputGainControlChangedNotification_block_invoke;
      v6[3] = &__block_descriptor_33_e5_v8__0l;
      v7 = v1;
      MXDispatchAsync("vaemPostCurrentRouteHasInputGainControlChangedNotification", "CMSessionManager_VAEndpointManager.m", 12251, 0, 0, v4, v6);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t vaemSetUplinkMute(int a1)
{
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager uplinkMute];
  v3 = vaemSetUplinkMuteOnDevice(a1);
  if (!v3)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager setUplinkMute:"setUplinkMute:", a1 != 0];
    if (v2 != [+[MXSessionManager uplinkMute] sharedInstance]
    {
      CMSMNotificationUtility_PostUplinkMuteDidChange(v2);
    }
  }

  return v3;
}

uint64_t vaemSetUplinkMuteOnDevice(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v2 = qword_1EB75E070;
  if (qword_1EB75E070)
  {
    qword_1EB75E070(0, v12);
    v2 = v12[0] & 2;
  }

  v9 = v2 | a1;
  v10 = 0x696E70746D757465;
  v11 = 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID:v7];
  v4 = CMSMVAUtility_AudioObjectSetPropertyData();
  if (qword_1EB75E070)
  {
    qword_1EB75E070(1, &v9);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t vaemSetDownlinkMute(int a1)
{
  v2 = vaemGetUplinkMute() | (2 * a1);
  if (qword_1EB75E070)
  {
    qword_1EB75E070(1, &v2);
  }

  return 0;
}

uint64_t vaemGetUplinkMute()
{
  outData = 0;
  if (qword_1EB75E070)
  {
    qword_1EB75E070(0, &outData);
    return outData & 1;
  }

  else
  {
    *&inAddress.mSelector = 0x696E70746D757465;
    inAddress.mElement = 0;
    ioDataSize = 4;
    AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0];
    return outData;
  }
}

uint64_t vaemUnmuteFullMuteIfMuted()
{
  result = vaemGetFullMute();
  if (result)
  {

    return vaemSetFullMute();
  }

  return result;
}

uint64_t vaemSetFullMute()
{
  v6 = *MEMORY[0x1E69E9840];
  FullMute = vaemGetFullMute();
  v5 = CMSMVAUtility_AudioObjectSetPropertyData();
  if (v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = v5;
  }

  else
  {
    FigSimpleMutexLock();
    v2 = vaemGetFullMute();
    byte_1EB75E150 = v2;
    FigSimpleMutexUnlock();
    if (FullMute != v2)
    {
      CMSMNotificationUtility_PostFullMuteDidChangeToVolumeButtonClientAndAVSystemControllers(v2);
    }

    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemSetInputDataSource(uint64_t a1)
{
  v4 = a1;
  *&inAddress.mSelector = 0x696E707464737263;
  inAddress.mElement = 0;
  outIsSettable = 1;
  AudioObjectIsPropertySettable([+[MXSessionManager defaultVADID] sharedInstance];
  if (!outIsSettable)
  {
    return 0;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  return CMSMVAUtility_AudioObjectSetPropertyData();
}

uint64_t vaemSetOutputDataDestination(uint64_t a1)
{
  v4 = a1;
  *&inAddress.mSelector = 0x6F75747064647374;
  inAddress.mElement = 0;
  outIsSettable = 1;
  AudioObjectIsPropertySettable([+[MXSessionManager defaultVADID] sharedInstance];
  if (!outIsSettable)
  {
    return 0;
  }

  [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  return CMSMVAUtility_AudioObjectSetPropertyData();
}

uint64_t vaemDeviceCancelVolumeRamp(uint64_t a1, __int16 a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSMVAUtility_AudioObjectSetPropertyData())
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = vaemVADVolumeRampStatusChangeListenerGuts_f(a1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemVADVolumeRampStatusChangeListenerGuts_f(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *&dword_1EB75D0A4;
  *&inAddress.mSelector = 0x6F757470766F6C6DLL;
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0.0;
  result = AudioObjectGetPropertyData(gVAEM, &inAddress, 0, 0, &ioDataSize, &outData);
  v4 = outData;
  byte_1EB75D0B9 = 0;
  qword_1EB75D0C0 = 0;
  if (vabds_f32(v2, outData) > 0.025)
  {
    if (dword_1EB75DE40)
    {
      ioDataSize = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v6 = ioDataSize;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        VADNameForVADID = CMSMUtility_GetVADNameForVADID(a1);
        outData = 4.8151e-34;
        v12 = "vaemVADVolumeRampStatusChangeListenerGuts_f";
        v13 = 2114;
        v14 = VADNameForVADID;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = vaemVADDeviceVolumeChangeListenerGuts_f(0, 1, v4);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemAggregatePorts(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = CMSMUtility_CopyCurrentOutputPorts();
  }

  else
  {
    v7 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  memset(v12, 0, sizeof(v12));
  v13 = a1;
  v14 = 0;
  v15 = 0;
  v16 = a1;
  v17 = v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = cmsmSetVADRouteConfiguration(v12, a2, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t vaemDeaggregatePorts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = a2;
  v14 = 0;
  v15 = 0;
  v16 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  result = cmsmSetVADRouteConfiguration(v11, a3, a4);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemSetHDMILatencyOverride(int a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __vaemSetHDMILatencyOverride_block_invoke;
  v5[3] = &unk_1E7AEA5E8;
  v6 = a1;
  v5[4] = &v7;
  MXDispatchAsync("vaemSetHDMILatencyOverride", "CMSessionManager_VAEndpointManager.m", 4894, 0, 0, v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1B1879840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __vaemSetHDMILatencyOverride_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"otalptuo";
  inAddress.mElement = 0;
  if (AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID:v6];
    result = CMSMVAUtility_AudioObjectSetPropertyData();
  }

  else
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = 4294954509;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemAddVADDeviceVolumeChangeListener(int a1)
{
  result = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  if (result)
  {
    LODWORD(v4) = a1;
    return AudioObjectAddPropertyListener([[MXSessionManager defaultVADID:0x6F757470766F6C6DLL] sharedInstance:vaemVADDeviceVolumeChangeListener];
  }

  return result;
}

uint64_t vaemVADDeviceVolumeChangeListener(int a1, unsigned int a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_malloc(12 * a2, 0x10000403E1C8BA9uLL);
  v7 = *a3;
  v6[2] = *(a3 + 2);
  *v6 = v7;
  if (dword_1EB75DE40)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = MXGetSerialQueue();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __vaemVADDeviceVolumeChangeListener_block_invoke;
  v12[3] = &__block_descriptor_48_e5_v8__0l;
  v12[4] = v6;
  v13 = a2;
  v14 = a1;
  MXDispatchAsync("vaemVADDeviceVolumeChangeListener", "CMSessionManager_VAEndpointManager.m", 5050, 0, 0, v9, v12);
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t vaemVADVolumeRampStatusChangeListener(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled())
  {
    if (dword_1EB75DE40)
    {
      v9 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = MXGetSerialQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __vaemVADVolumeRampStatusChangeListener_block_invoke;
    v6[3] = &__block_descriptor_36_e5_v8__0l;
    v7 = a1;
    MXDispatchAsync("vaemVADVolumeRampStatusChangeListener", "CMSessionManager_VAEndpointManager.m", 5164, 0, 0, v3, v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t vaemVADCopyAvailableStreamFormatsForVADID(AudioObjectID a1, int a2, void *a3)
{
  outData = 0;
  result = vaemGetStream0(a1, a2 == 0, &outData);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = outData == 0;
  }

  if (!v5)
  {
    result = vaemCopySupportedStreamFormats();
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void vaemAddVADCurrentSampleRateListener(int a1)
{
  LODWORD(v3) = 0;
  if ([+[MXSessionManager defaultVADID:0] sharedInstance]
  {
    LODWORD(v3) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID:0x676C6F626E737274] sharedInstance:vaemVADCurrentSampleRateListener];
  }

  if (a1)
  {
    vaemVADCurrentSampleRateListenerGuts_f();
  }
}

uint64_t vaemVADCurrentSampleRateListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsyncFunction("vaemVADCurrentSampleRateListener", "CMSessionManager_VAEndpointManager.m", 5673, 0, 0, v0, 0, vaemVADCurrentSampleRateListenerGuts_f);
  return 0;
}

void vaemVADCurrentSampleRateListenerGuts_f()
{
  [+[MXSessionManager sharedInstance](MXSessionManager refreshDeviceSampleRateCache];
  v0 = MXGetNotificationSenderQueue();

  MXDispatchAsync("vaemVADCurrentSampleRateListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5646, 0, 0, v0, &__block_literal_global_95);
}

void vaemAddVADCurrentDeviceBufferSizeListener(int a1)
{
  LODWORD(v4) = 0;
  if ([+[MXSessionManager defaultVADID:0] sharedInstance]
  {
    LODWORD(v4) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID:0x676C6F626673697ALL] sharedInstance:vaemVADCurrentBufferFrameSizeListener];
  }

  if (a1)
  {
    v2 = MXGetNotificationSenderQueue();
    MXDispatchAsync("vaemVADCurrentBufferFrameSizeListenerGuts_f", "CMSessionManager_VAEndpointManager.m", 5656, 0, 0, v2, &__block_literal_global_97);
  }
}

id vaemGetCurrentActivationContext()
{
  [qword_1EB75D0F8 lock];
  v0 = qword_1EB75D0F0;
  [qword_1EB75D0F8 unlock];
  return v0;
}

uint64_t vaemCopyCPMSPowerBudgetRangeInMilliWatts(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  outData = 0;
  *&inAddress.mSelector = 0x6F75747074686272;
  inAddress.mElement = 0;
  ioDataSize = 8;
  inQualifierData = a1;
  if (a1 == 6)
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID];
  }

  else
  {
    if (a1 != 5)
    {
      goto LABEL_7;
    }

    v1 = [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
  }

  if (AudioObjectGetPropertyData(v1, &inAddress, 4u, &inQualifierData, &ioDataSize, &outData))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_7:
  result = outData;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemCopyThermalControlInfo()
{
  outData = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x6F75747074686264;
  inAddress.mElement = 0;
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID];
  if (!AudioObjectHasProperty(v0, &inAddress))
  {
    return 0;
  }

  if (AudioObjectGetPropertyData(v0, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    return 0;
  }

  return outData;
}

uint64_t vaemSetThermalControlInfo(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [+[MXSessionManager sharedInstance](MXSessionManager actuatorVADID];
  result = CMSMVAUtility_AudioObjectSetPropertyData();
  v4 = result;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = v4;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemCopyCPMSPowerBudget(uint64_t a1)
{
  inAddress.mElement = 0;
  outData = 0;
  *&inAddress.mSelector = *"dbhtptuo";
  v4 = a1 | 0x800000000;
  if (a1 == 6)
  {
    v1 = [+[MXSessionManager actuatorVADID:v4]];
  }

  else
  {
    if (a1 != 5)
    {
      return 0;
    }

    v1 = [+[MXSessionManager defaultVADID:v4]];
  }

  v2 = v1;
  if (!AudioObjectHasProperty(v1, &inAddress))
  {
    return 0;
  }

  if (AudioObjectGetPropertyData(v2, &inAddress, 4u, &v4, &v4 + 1, &outData))
  {
    return 0;
  }

  else
  {
    return outData;
  }
}

uint64_t vaemUpdateSpeakerThermalGainAdjustment(float a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *&qword_1EB75D188 = a1;
  return vaemUpdateThermalGainAdjustment();
}

uint64_t vaemUpdateHapticsThermalGainAdjustment(float a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *(&qword_1EB75D188 + 1) = a1;
  return vaemUpdateThermalGainAdjustment();
}

uint64_t vaemSessionRoutingInfoChangeListener(int a1)
{
  v2 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __vaemSessionRoutingInfoChangeListener_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a1;
  MXDispatchAsync("vaemSessionRoutingInfoChangeListener", "CMSessionManager_VAEndpointManager.m", 8638, 0, 0, v2, v4);
  return 0;
}

void __vaemSessionRoutingInfoChangeListener_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [MXSessionManagerBase copySessionWithAudioObjectID:*(a1 + 32)];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v1 processSessionRoutingInfoDidChange];

  v3 = *MEMORY[0x1E69E9840];
}

CFTypeRef vaemCopyPickableQuiesceableWiredPortsList(int a1)
{
  if (a1 == 1)
  {
    v1 = 1768845428;
  }

  else
  {
    v1 = 1869968496;
  }

  inAddress.mSelector = 1903653475;
  inAddress.mScope = v1;
  inAddress.mElement = 0;
  outData = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, &outData);
  result = outData;
  if (PropertyData)
  {
    if (!outData)
    {
      return result;
    }

LABEL_12:
    CFRelease(result);
    return 0;
  }

  if (outData)
  {
    v4 = CFGetTypeID(outData);
    TypeID = CFArrayGetTypeID();
    result = outData;
    if (v4 != TypeID && outData != 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t vaemSetCurrentActivationContext(void *a1)
{
  [qword_1EB75D0F8 lock];

  qword_1EB75D0F0 = a1;
  v2 = qword_1EB75D0F8;

  return [v2 unlock];
}

uint64_t vaemCreateVADWithRouteConfigurationDictionary(const __CFDictionary *a1, uint64_t a2, uint64_t a3, int a4)
{
  theDict[0] = 0;
  theDict[1] = a1;
  theDict[2] = 8;
  theDict[3] = theDict;
  theDict[4] = 8;
  v14 = 0x676C6F6276616463;
  v15 = 0;
  v6 = CMSMVAUtility_AudioObjectSetPropertyData();
  v7 = theDict[0];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = theDict[0] == 0;
  }

  if (v8)
  {
    v9 = 4294954310;
    if (!theDict[0])
    {
      return v9;
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict[0], @"route change reason");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v11 = CMSMVAUtility_MapVADReasonToCMSReason(valuePtr);
    if (a4)
    {
      if (v11 != 9)
      {
        vaemAQMERouteChanged(theDict[0], a2, 0);
        vaemVADRouteChangeListener(0, theDict[0]);
      }
    }
  }

  v9 = 0;
  v7 = theDict[0];
  if (theDict[0])
  {
LABEL_13:
    CFRelease(v7);
  }

  return v9;
}

uint64_t vaemDeleteVADWithRouteConfigurationDictionary(const __CFDictionary *a1, uint64_t a2, uint64_t a3, int a4)
{
  theDict[0] = 0;
  theDict[1] = a1;
  theDict[2] = 8;
  theDict[3] = theDict;
  theDict[4] = 8;
  v14 = 0x676C6F6276616464;
  v15 = 0;
  v6 = CMSMVAUtility_AudioObjectSetPropertyData();
  v7 = theDict[0];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = theDict[0] == 0;
  }

  if (v8)
  {
    v9 = 4294954310;
    if (!theDict[0])
    {
      return v9;
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict[0], @"route change reason");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v11 = CMSMVAUtility_MapVADReasonToCMSReason(valuePtr);
    if (a4)
    {
      if (v11 != 9)
      {
        vaemAQMERouteChanged(theDict[0], a2, 0);
        vaemVADRouteChangeListener(0, theDict[0]);
      }
    }
  }

  v9 = 0;
  v7 = theDict[0];
  if (theDict[0])
  {
LABEL_13:
    CFRelease(v7);
  }

  return v9;
}

uint64_t vaemShouldSetSharePlayMediaInfoInRouteConfiguration(int a1, uint64_t a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (byte_1EB75D1A0 != a3)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (dword_1EB75D1B0 != a1)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!FigCFEqual())
  {
    if (dword_1EB75DE40)
    {
LABEL_10:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v3 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_12;
    }

LABEL_11:
    v3 = 1;
    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void vaemResetVADCategoryToStandardAVAndDefaultMode()
{
  v23 = *MEMORY[0x1E69E9840];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", @"Audio/Video"];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", @"Default"];
  if (MX_FeatureFlags_IsOverdubRecordingEnabled())
  {
    v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
  }

  else
  {
    v0 = 0;
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled())
  {
    v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
  }

  else
  {
    v1 = 0;
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled())
  {
    v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
  }

  else
  {
    v2 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = 0x696D646663736176;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v18 = v0;
  v19 = v1;
  v20 = v2;
  v21 = 0;
  v22 = 0;
  cmsmSetVADRouteConfiguration(&v5, 0, qword_1EB75E190);
  if (MX_FeatureFlags_IsOverdubRecordingEnabled() && v0)
  {
    CFRelease(v0);
  }

  if (MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled() && v1)
  {
    CFRelease(v1);
  }

  if (MX_FeatureFlags_IsPersonalTranslatorEnabled() && v2)
  {
    CFRelease(v2);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t vaemShouldRequestOwnershipForSharedAudioRoute()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CMSMDeviceState_ItsAnAppleWatch();
  IsNearbyPairedDevicePresent = CMSM_IDSConnection_IsNearbyPairedDevicePresent();
  if (v0)
  {
    if (IsNearbyPairedDevicePresent)
    {
      if (!byte_1EB75E138)
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if (!CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if (CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
      {
        HighestPriorityOfLocalSessionPlayingToDevice = CMSM_GetHighestPriorityOfLocalSessionPlayingToDevice(0);
        if (HighestPriorityOfLocalSessionPlayingToDevice < CMSM_GetHighestRemotePlayingSessionPriority())
        {
          if (dword_1EB75DE40)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        if (dword_1EB75DE40)
        {
LABEL_33:
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          v5 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_35;
        }
      }

      else if (dword_1EB75DE40)
      {
        goto LABEL_33;
      }
    }

    else if (dword_1EB75DE40)
    {
      goto LABEL_33;
    }

LABEL_34:
    v5 = 1;
    goto LABEL_35;
  }

  if (!IsNearbyPairedDevicePresent)
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (CMSM_IDSConnection_DidRemoteReplyWithInitialPlayingInfo())
  {
    if (CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {
      v3 = CMSM_GetHighestPriorityOfLocalSessionPlayingToDevice(0);
      if (v3 < CMSM_GetHighestRemotePlayingSessionPriority())
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if (dword_1EB75DE40)
      {
        goto LABEL_33;
      }
    }

    else if (dword_1EB75DE40)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (dword_1EB75DE40)
  {
LABEL_24:
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_25:
  v5 = 0;
LABEL_35:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

void __vaemUpdateSharedAudioRouteState_block_invoke()
{
  CMSM_IDSClient_NotifyRemote_BTDeviceConnectionStatusChanged(1);
  if (CMSM_IDSConnection_IsNearbyPairedDevicePresent())
  {
    v0 = CMSMUtility_CopyMatchingSessions(0, CMSUtilityPredicate_IsPlaying, 0);
    if (v0)
    {
      v1 = v0;
      Count = CFArrayGetCount(v0);
      if (Count >= 1)
      {
        v3 = Count;
        for (i = 0; i != v3; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
          CMSM_IDSClient_NotifyRemote_LocalIsPlayingStart(ValueAtIndex);
        }
      }

      CFRelease(v1);
    }
  }
}

CFIndex vaemTakeOwnershipOnSharedAudioRoute(CFIndex result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v2 = result;
      for (i = 0; v2 != i; ++i)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v5 = valuePtr;
        result = vaeDoesPortSupportMultipleConnections(valuePtr);
        if (!result)
        {
          continue;
        }

        if (vaemShouldRequestOwnershipForSharedAudioRoute())
        {
          if (!vaeDoesBTPortSupportInEarDetection(v5) || !CMSMVAUtility_IsBTPortKnownToNotBeInEar(v5))
          {
            v9 = 0;
            goto LABEL_17;
          }

          if (dword_1EB75DE40)
          {
            v16 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v7 = v16;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v8 = v7;
            }

            else
            {
              v8 = v7 & 0xFFFFFFFE;
            }

            if (v8)
            {
              v17 = 136315138;
              v18 = "vaemShouldRequestOwnershipForTheFirstTime";
              _os_log_send_and_compose_impl();
            }

            v9 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_17;
          }
        }

        v9 = 1;
LABEL_17:
        result = cmsmDoesPortMatchCurrentEndpointID(v5);
        if (result)
        {
          if (dword_1EB75DE40)
          {
            v16 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v11 = v16;
            if (os_log_type_enabled(v10, type))
            {
              v12 = v11;
            }

            else
            {
              v12 = v11 & 0xFFFFFFFE;
            }

            if (v12)
            {
              v17 = 136315138;
              v18 = "vaemShouldRequestOwnershipForTheFirstTime";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else if (v9)
        {
          continue;
        }

        result = vaeRequestOwnershipOnBTPort(valuePtr);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigVAEndpointManagerCreate(uint64_t a1, const void *a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    FigVAEndpointManagerCreate_cold_1(&v76);
    v9 = v76;
    goto LABEL_75;
  }

  __asm { FMOV            V0.2S, #1.0 }

  qword_1EB75D188 = _D0;
  FigVAEndpointManagerGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    goto LABEL_75;
  }

  *a3 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  *DerivedStorage = v11;
  qword_1EB75D0C8 = dispatch_semaphore_create(0);
  qword_1EB75D0F8 = objc_alloc_init(MEMORY[0x1E696AD10]);
  if (MX_FeatureFlags_IsStartupSequenceChangeEnabled())
  {
    vaemGetVirtualAudioPlugin();
    *&inAddress = *"niavbolg";
    DWORD2(inAddress) = 0;
    outData.mSelector = 1;
    ioDataSize[0] = 4;
    FigGetUpTimeNanoseconds();
    if (dword_1EB75DE40)
    {
      v66[0] = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    PropertyData = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, ioDataSize, &outData);
    if (PropertyData | outData.mSelector)
    {
      v66[0] = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (dword_1EB75DE40)
    {
      v66[0] = 0;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemUpdateCurrentOutputRoutesInfo();
  }

  outData.mElement = 0;
  *&outData.mSelector = *"diudbolg";
  inAddress = xmmword_1B19D8790;
  v73 = unk_1B19D87A0;
  v71 = 32;
  if (MX_FeatureFlags_IsStartupSequenceChangeEnabled())
  {
    *ioDataSize = 0x1F2893B50;
    v66[0] = 0;
    *&inAddress = ioDataSize;
    *&v73 = v66;
    if (AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress))
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v20 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v20 setDefaultVADID:v66[0]];
    }
  }

  else
  {
    vaemAddAudioDevicesChangedListener();
    if (![+[MXSessionManager defaultVADID] sharedInstance]
    {
      v16 = dispatch_time(0, 9000000000);
      if (dword_1EB75DE40)
      {
        ioDataSize[0] = 0;
        LOBYTE(v66[0]) = 0;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = ioDataSize[0];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          *outDataSize = 136315138;
          *&outDataSize[4] = "vaemGetVirtualAudioDeviceIDs";
          LODWORD(v56) = 12;
          v55 = outDataSize;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = dispatch_semaphore_wait(qword_1EB75D0C8, v16);
      if (qword_1EB75D0C8)
      {
        dispatch_release(qword_1EB75D0C8);
        qword_1EB75D0C8 = 0;
      }

      if (v22)
      {
        ioDataSize[0] = 0;
        LOBYTE(v66[0]) = 0;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = ioDataSize[0];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          *outDataSize = 136315138;
          *&outDataSize[4] = "vaemGetVirtualAudioDeviceIDs";
          LODWORD(v56) = 12;
          v55 = outDataSize;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (![+[MXSessionManager defaultVADID:v55] sharedInstance]
      {
        ioDataSize[0] = 0;
        LOBYTE(v66[0]) = 0;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = ioDataSize[0];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          *outDataSize = 136315138;
          *&outDataSize[4] = "vaemGetVirtualAudioDeviceIDs";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    LODWORD(v77) = 0;
    v76 = *"#vedbolg";
    AudioObjectRemovePropertyListener(1u, &v76, vaemAudioDevicesChanged, 0);
  }

  v76 = 0x1F28978D0;
  v69 = 0;
  *&inAddress = &v76;
  DWORD2(inAddress) = 8;
  *&v73 = &v69;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v29 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v29 setSpeechDetectionVADID:v69];
  *outDataSize = 0x1F2893B70;
  v68 = 0;
  *&inAddress = outDataSize;
  DWORD2(inAddress) = 8;
  *&v73 = &v68;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v30 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v30 setSystemSoundLocalVADID:v68];
  *ioDataSize = 0x1F2893B90;
  v67 = 0;
  *&inAddress = ioDataSize;
  DWORD2(inAddress) = 8;
  *&v73 = &v67;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v31 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v31 setSystemSoundRemoteVADID:v67];
  *v66 = 0x1F2893BB0;
  v65 = 0;
  *&inAddress = v66;
  DWORD2(inAddress) = 8;
  *&v73 = &v65;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v32 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v32 setSpeakerAlertVADID:v65];
  *type = 0x1F28978F0;
  v63 = 0;
  *&inAddress = type;
  DWORD2(inAddress) = 8;
  *&v73 = &v63;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v33 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v33 setDecoupledInputVADID:v63];
  *v62 = 0x1F2897930;
  v61 = 0;
  *&inAddress = v62;
  DWORD2(inAddress) = 8;
  *&v73 = &v61;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v34 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v34 setSiriOutputVADID:v61];
  v60 = 0x1F2897910;
  v59 = 0;
  *&inAddress = &v60;
  DWORD2(inAddress) = 8;
  *&v73 = &v59;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v35 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v35 setActuatorVADID:v59];
  v58 = 0x1F2897990;
  v57 = 0;
  *&inAddress = &v58;
  DWORD2(inAddress) = 8;
  *&v73 = &v57;
  DWORD2(v73) = 4;
  AudioObjectGetPropertyData(1u, &outData, 0, 0, &v71, &inAddress);
  v36 = +[MXSessionManager sharedInstance];
  [(MXSessionManager *)v36 setLowLatencyVADID:v57];
  if (!MX_FeatureFlags_IsStartupSequenceChangeEnabled())
  {
    vaemGetVirtualAudioPlugin();
    vaemUpdateCurrentOutputRoutesInfo();
  }

  v76 = vaemVADSerializationListener;
  v77 = 0;
  *&inAddress = 0x676C6F6273727A6CLL;
  DWORD2(inAddress) = 0;
  CMSMVAUtility_AudioObjectSetPropertyData();
  *outDataSize = vaemReceiverWillBeUsedListener;
  *&outDataSize[8] = 0;
  *&inAddress = 0x676C6F6272776275;
  DWORD2(inAddress) = 0;
  CMSMVAUtility_AudioObjectSetPropertyData();
  *&dword_1EB75E09C = 0x696D646663736176;
  byte_1EB75D148 = 0;
  qword_1EB75D160 = 0;
  qword_1EB75D118 = 0;
  dword_1EB75D1B4 = 0;
  qword_1EB75D0E0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  qword_1EB75D0E8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (dword_1EB75E0AC)
  {
    DWORD2(inAddress) = 0;
    *&inAddress = *"strpbolg";
    v40 = AudioObjectAddPropertyListener(dword_1EB75E0AC, &inAddress, vaemConnectedPortsPropertyListener, 0);
    if (!v40)
    {
      goto LABEL_61;
    }

    v41 = v40;
    outData.mSelector = 0;
    LOBYTE(ioDataSize[0]) = 0;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    mSelector = outData.mSelector;
    if (os_log_type_enabled(v42, ioDataSize[0]))
    {
      v44 = mSelector;
    }

    else
    {
      v44 = mSelector & 0xFFFFFFFE;
    }

    if (v44)
    {
      *outDataSize = 136315394;
      *&outDataSize[4] = "vaemAddConnectedPortsListener";
      *&outDataSize[12] = 1024;
      *&outDataSize[14] = v41;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    LODWORD(inAddress) = 0;
    LOBYTE(outData.mSelector) = 0;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v38 = inAddress;
    if (os_log_type_enabled(v37, outData.mSelector))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 0xFFFFFFFE;
    }

    if (v39)
    {
      *outDataSize = 136315138;
      *&outDataSize[4] = "vaemAddConnectedPortsListener";
      _os_log_send_and_compose_impl();
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_61:
  byte_1EB75D178 = vaemHeadphoneJackIsConnected(0);
  byte_1EB75D179 = vaemHeadphoneJackHasInput(0);
  byte_1EB75D17A = vaemGetVADPortIDFromVADPortType(1886154613) != 0;
  *outDataSize = 0;
  v76 = 0x676C6F6273706374;
  LODWORD(v77) = 0;
  if (AudioObjectGetPropertyDataSize(dword_1EB75E0AC, &v76, 0, 0, outDataSize))
  {
LABEL_64:
    byte_1EB75D158 = 1;
    goto LABEL_65;
  }

  v45 = malloc_type_calloc(1uLL, *outDataSize, 0x7136B062uLL);
  if (AudioObjectGetPropertyData(dword_1EB75E0AC, &v76, 0, 0, outDataSize, v45))
  {
    free(v45);
    goto LABEL_64;
  }

  v48 = *outDataSize;
  v49 = *outDataSize >> 2;
  *outDataSize >>= 2;
  if (v48 <= 3)
  {
    free(v45);
    byte_1EB75D158 = 0;
    goto LABEL_66;
  }

  v50 = 0;
  v51 = 0;
  v52 = 4 * v49;
  do
  {
    v53 = *&v45[v50];
    if (v53 == 1668313666 || v53 == 1668309362)
    {
      v51 = 1;
    }

    v50 += 4;
  }

  while (v52 != v50);
  free(v45);
  byte_1EB75D158 = v51;
  if (!v51)
  {
    goto LABEL_66;
  }

LABEL_65:
  byte_1EB75D159 = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668309362, 1768776806);
  byte_1EB75D15A = vaemSystemHasAudioInputDeviceForRouteConfiguration(1668313666, 1768776806);
LABEL_66:
  byte_1EB75D17B = 0;
  vaemUpdateConnectedOutputPortsList();
  vaemUpdateConnectedInputPortsList();
  cmsmUpdatePickableRouteDescriptionLists(1);
  vaemAddVADAvailableSampleRatesListener(1);
  vaemAddVADCurrentSampleRateListener(1);
  vaemAddVADCurrentDeviceBufferSizeListener(1);
  LODWORD(v77) = 0;
  v76 = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v76 = 0x6F75747076637370;
    LODWORD(v77) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID] sharedInstance:vaemCurrentRouteHasVolumeControlListener];
  }

  vaemCurrentRouteHasVolumeControlListenerGuts();
  vaemAddCurrentRouteHasInputGainControlListener([+[MXSessionManager defaultVADID] sharedInstance];
  vaemAddAvailableVirtualFormatsListener();
  LODWORD(v77) = 0;
  v76 = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v76 = 0x696E707473726373;
    LODWORD(v77) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID] sharedInstance:vaemInputSourcesListener];
  }

  CMSMNotificationUtility_PostInputDataSourcesDidChange();
  LODWORD(v77) = 0;
  v76 = 0;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v76 = 0x6F75747064737473;
    LODWORD(v77) = 0;
    AudioObjectAddPropertyListener([[MXSessionManager defaultVADID] sharedInstance:vaemOutputDestinationsListener];
  }

  CMSMNotificationUtility_PostOutputDataDestinationsDidChange();
  vaemAddInputGainScalarListener([+[MXSessionManager defaultVADID] sharedInstance];
  if ([+[MXSessionManager decoupledInputVADID] sharedInstance]
  {
    vaemAddCurrentRouteHasInputGainControlListener([+[MXSessionManager decoupledInputVADID] sharedInstance];
    vaemAddInputGainScalarListener([+[MXSessionManager decoupledInputVADID] sharedInstance];
  }

  v9 = 0;
LABEL_75:
  v46 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t vaemGetVirtualAudioPlugin()
{
  v6[22] = *MEMORY[0x1E69E9840];
  v6[0] = @"com.apple.audio.CoreAudio.VirtualAudio";
  *&inAddress.mSelector = *"ibipbolg";
  inAddress.mElement = 0;
  outData[0] = v6;
  outData[1] = 8;
  outData[2] = &dword_1EB75E0AC;
  outData[3] = 4;
  ioDataSize = 32;
  result = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &ioDataSize, outData);
  if (result || !dword_1EB75E0AC)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void vaemUpdateCurrentOutputRoutesInfo()
{
  v0 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(dword_1EB75E09C, dword_1EB75E0A0, 0, 0, 0, 0, 0x1F2893B50);
  FigSimpleMutexLock();
  if (v0)
  {
    Count = CFArrayGetCount(v0);
  }

  else
  {
    Count = 0;
  }

  CMSMUtility_UpdateCurrentRoutesInfo(0, v0, 0, Count);
  FigSimpleMutexUnlock();
  if ((dword_1EB75DE40 & 0x20) != 0)
  {
    CMSMUtility_GetNumberOfCurrentOutputPorts();
  }

  if (v0)
  {

    CFRelease(v0);
  }
}

void vaemUpdateConnectedInputPortsList()
{
  v41 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsSystemInputPickerEnabled())
  {
    obj = vaemCopyConnectedPortsForPortTypeAndScope(0, 0x696E7074u);
    if ([obj count])
    {
      v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
      theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
      FigSimpleMutexLock();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v1 = [qword_1EB75D0E8 allObjects];
      v2 = [v1 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v36;
        do
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v36 != v4)
            {
              objc_enumerationMutation(v1);
            }

            v6 = *(*(&v35 + 1) + 8 * i);
            if (([obj containsObject:v6] & 1) == 0)
            {
              [v0 addObject:v6];
              [qword_1EB75D0E8 removeObject:v6];
              -[MXAudioAccessoryServices handlePortDisconnected:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "handlePortDisconnected:", [v6 unsignedIntValue]);
            }
          }

          v3 = [v1 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v3);
      }

      v24 = v0;
      v34 = 0;
      FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(&v34);
      cf = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
      v23 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = &qword_1EB75D000;
      v28 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v28)
      {
        v27 = *v31;
        do
        {
          v8 = 0;
          do
          {
            if (*v31 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v30 + 1) + 8 * v8);
            v10 = [v9 unsignedIntValue];
            v11 = vaeCopyNameForPort(v10);
            v12 = vaeCopyDeviceIdentifierFromVADPort(v10);
            vaeGetPortTypeFromPortID(v10);
            ConnectionTypeForPort = vaeGetConnectionTypeForPort(v10);
            IsQuiesceableWiredPort = vaeIsQuiesceableWiredPort(v10);
            if ([v7[29] containsObject:v9])
            {
              goto LABEL_28;
            }

            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v7 = &qword_1EB75D000;
            }

            [v7[29] addObject:{v9, v20, v21}];
            [(__CFArray *)theArray addObject:v9];
            if (ConnectionTypeForPort == 1885544823)
            {
              vaemSendUserPreferredInputPortInRouteConfigToVA(0);
              -[MXAudioAccessoryServices handleNewWirelessPortConnected:](+[MXAudioAccessoryServices sharedInstance](MXAudioAccessoryServices, "sharedInstance"), "handleNewWirelessPortConnected:", [v9 unsignedIntValue]);
LABEL_28:
              if (!v11)
              {
                goto LABEL_30;
              }

LABEL_29:
              CFRelease(v11);
              goto LABEL_30;
            }

            if (ConnectionTypeForPort != 1885566825 || IsQuiesceableWiredPort == 0)
            {
              goto LABEL_28;
            }

            if (dword_1EB75DE40)
            {
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v7 = &qword_1EB75D000;
            }

            vaeMakePortRoutable(v10, 1, 0, v34);
            vaemSendUserPreferredInputPortInRouteConfigToVA(0);
            if (v11)
            {
              goto LABEL_29;
            }

LABEL_30:
            if (v12)
            {
              CFRelease(v12);
            }

            ++v8;
          }

          while (v28 != v8);
          v17 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
          v28 = v17;
        }

        while (v17);
      }

      vaemUpdatePortIDEndpointCache(v24, theArray);
      vaemUpdatePortListeners(theArray);
      FigSimpleMutexUnlock();
      if (cf)
      {
        CFRelease(cf);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v34)
      {
        CFRelease(v34);
        v34 = 0;
      }
    }

    else if (dword_1EB75DE40)
    {
      LODWORD(v34) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

CFMutableDictionaryRef __vaemInitializePortEndpointCache_block_invoke()
{
  qword_1EB75D0D8 = FigReentrantMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1EB75D0D0 = result;
  return result;
}

void vaemVADDeviceVolumeChangeListenerGuts_f(uint64_t a1, int a2, float a3)
{
  PortAtIndex = a1;
  if (!a1)
  {
    v10 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
    if (!v10)
    {
      return;
    }

    v8 = v10;
    if (!CFArrayGetCount(v10))
    {
      goto LABEL_7;
    }

    PortAtIndex = CMSMVAUtility_GetPortAtIndex(v8, 0);
    CFRelease(v8);
  }

  v6 = vaeCopyFigOutputDeviceNameFromVADPort(PortAtIndex);
  v7 = vaeCopyDeviceIdentifierFromVADPort(PortAtIndex);
  v8 = vaeCopyRouteSubtypeFromVADPort(PortAtIndex);
  v9 = getpid();
  MXSMPerformVolumeOperation(0xEu, 0, v6, v7, v8, a2, v9, 0, a3, 0.0, 0.0, 0, 0, 0, 0, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
LABEL_7:

    CFRelease(v8);
  }
}

void __vaemVADDeviceVolumeChangeListener_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsBluetoothSharingSessionEnabled(0))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = 0;
      for (i = 0; i < v2; ++i)
      {
        v5 = *(a1 + 32);
        if (*(v5 + v3) == 1987013741)
        {
          v6 = v5 + v3;
          if (*(v6 + 4) == 1869968496)
          {
            v7 = *(v6 + 8);
            if (v7)
            {
              v8 = *(a1 + 44);
              *&inAddress.mSelector = 0x6F757470766F6C6DLL;
              inAddress.mElement = v7;
              ioDataSize = 4;
              outData = 0;
              AudioObjectGetPropertyData(v8, &inAddress, 0, 0, &ioDataSize, &outData);
              v9 = *&outData;
              v10 = *(a1 + 44);
              *&inAddress.mSelector = 0x6F757470766F6C6DLL;
              inAddress.mElement = 0;
              ioDataSize = 4;
              outData = 0;
              AudioObjectGetPropertyData(v10, &inAddress, 0, 0, &ioDataSize, &outData);
              v11 = *&outData;
              v12 = vaeCopyDeviceIdentifierFromVADPort(v7);
              if (dword_1EB75DE40)
              {
                ioDataSize = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v14 = ioDataSize;
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
                  outData = 136315906;
                  v31 = "vaemVADDeviceVolumeChangeListener_block_invoke";
                  v32 = 1024;
                  v33 = v7;
                  v34 = 2048;
                  v35 = v11;
                  v36 = 2048;
                  v37 = v9;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *&inAddress.mSelector = 0;
              FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&inAddress);
              *&v16 = v11;
              FigVolumeControllerPostVolumeDidChangeNotifications(*&inAddress.mSelector, v16, v9);
              if (*&inAddress.mSelector)
              {
                CFRelease(*&inAddress.mSelector);
                *&inAddress.mSelector = 0;
              }

              if (v12)
              {
                CFRelease(v12);
              }

              CMSMVAUtility_SetVolumePreferenceForPort();
            }
          }
        }

        v3 += 12;
      }
    }

    goto LABEL_36;
  }

  if (byte_1EB75D0B8)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_36;
    }

LABEL_23:
    ioDataSize = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_36;
  }

  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled() && vaemIsVolumeRampInProgress(*(a1 + 44)))
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  v18 = *(a1 + 44);
  *&inAddress.mSelector = 0x6F757470766F6C6DLL;
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  AudioObjectGetPropertyData(v18, &inAddress, 0, 0, &ioDataSize, &outData);
  v19 = outData;
  ++_block_invoke_counter;
  if (dword_1EB75DE40)
  {
    ioDataSize = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = ioDataSize;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      outData = 136315394;
      v31 = "vaemVADDeviceVolumeChangeListener_block_invoke";
      v32 = 1024;
      v33 = _block_invoke_counter;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = MXGetSerialQueue();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __vaemVADDeviceVolumeChangeListener_block_invoke_2;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v26 = *(a1 + 44);
  v27 = v19;
  MXDispatchAsync("vaemVADDeviceVolumeChangeListener_block_invoke", "CMSessionManager_VAEndpointManager.m", 5098, 0, 0, v23, v25);
LABEL_36:
  free(*(a1 + 32));
  v24 = *MEMORY[0x1E69E9840];
}

void __vaemVADDeviceVolumeChangeListener_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemVADDeviceVolumeChangeListenerGuts_f(0, 0, *(a1 + 36));
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __vaemVADVolumeRampStatusChangeListener_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (gVAEM == *(a1 + 32))
  {
    result = vaemIsVolumeRampInProgress(gVAEM);
    v3 = result;
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v3 != byte_1EB75D0B9)
    {
      result = vaemVADVolumeRampStatusChangeListenerGuts_f(*(a1 + 32));
    }
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemInputGainScalarListener()
{
  CMSMNotificationUtility_PostInputGainScalarDidChange();
  vaemPostDeviceInputGainScalarChangedNotification();
  return 0;
}

void __vaemPostCurrentRouteHasInputGainControlChangedNotification_block_invoke(uint64_t a1)
{
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"VAEM_CurrentRouteHasInputGainControlKey", *(a1 + 32));
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();

  v2 = qword_1EB75E090;

  CFRelease(v2);
}

void __vaemVADCurrentSampleRateListenerGuts_f_block_invoke()
{
  CMSMNotificationUtility_PostCurrentOutputSampleRateDidChange();

  CMSMNotificationUtility_PostCurrentInputSampleRateDidChange();
}

uint64_t vaemAvailableVirtualFormatsListener()
{
  global_queue = dispatch_get_global_queue(0, 0);
  MXDispatchAsync("vaemAvailableVirtualFormatsListener", "CMSessionManager_VAEndpointManager.m", 2370, 0, 0, global_queue, &__block_literal_global_126);
  return 0;
}

void __vaemAvailableVirtualFormatsListener_block_invoke()
{
  v0 = MXGetSerialQueue();

  MXDispatchSyncFunction("vaemAvailableVirtualFormatsListener_block_invoke", "CMSessionManager_VAEndpointManager.m", 2371, 0, 0, v0, 0, vaemAvailableVirtualFormatsPropertyListenerGuts_f);
}

uint64_t _VAEndpointManager_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

__CFString *_VAEndpointManager_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVAEndpointManager %p>", a1);
  return Mutable;
}

CFNumberRef vaemCopyCurrentInputDataSource()
{
  outData = 0;
  *&inAddress.mSelector = 0x696E707464737263;
  inAddress.mElement = 0;
  ioDataSize = 8;
  CurrentVADIDForInput = vaemGetCurrentVADIDForInput();
  if (AudioObjectGetPropertyData(CurrentVADIDForInput, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    ioDataSize = 0;
  }

  result = outData;
  if (outData)
  {
    v2 = -1;
    CFNumberGetValue(outData, kCFNumberSInt32Type, &v2);
    return outData;
  }

  return result;
}

CFNumberRef vaemCopyCurrentOutputDataDestination()
{
  outData = 0;
  *&inAddress.mSelector = 0x6F75747064647374;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0])
  {
    ioDataSize = 0;
  }

  result = outData;
  if (outData)
  {
    v1 = -1;
    CFNumberGetValue(outData, kCFNumberSInt32Type, &v1);
    return outData;
  }

  return result;
}

CFArrayRef vaemCopyInputDataSources()
{
  outData = 0;
  *&inAddress.mSelector = 0x696E707473726373;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (!AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance])
  {
    return CFArrayCreate(0, 0, 0, 0);
  }

  AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0];
  return outData;
}

CFArrayRef vaemCopyOutputDataDestinations()
{
  outData = 0;
  *&inAddress.mSelector = 0x6F75747064737473;
  inAddress.mElement = 0;
  ioDataSize = 8;
  if (!AudioObjectHasProperty([+[MXSessionManager defaultVADID] sharedInstance])
  {
    return CFArrayCreate(0, 0, 0, 0);
  }

  AudioObjectGetPropertyData([[MXSessionManager defaultVADID] sharedInstance:0];
  return outData;
}

uint64_t vaemIsVADInRecordingCategory()
{
  result = 1;
  if (dword_1EB75E09C > 1668313714)
  {
    v1 = dword_1EB75E09C == 1668313715 || dword_1EB75E09C == 1668440898;
    v2 = 1668441443;
  }

  else
  {
    v1 = dword_1EB75E09C == 1668301427 || dword_1EB75E09C == 1668309362;
    v2 = 1668313666;
  }

  if (!v1 && dword_1EB75E09C != v2)
  {
    return 0;
  }

  return result;
}

uint64_t vaemGetDeviceInputGainScalar(void *a1)
{
  *&inAddress.mSelector = 0x696E7074766F6C6DLL;
  inAddress.mElement = 0;
  ioDataSize = 4;
  VADSourceForInputGainScalar = vaemGetVADSourceForInputGainScalar();
  return AudioObjectGetPropertyData(VADSourceForInputGainScalar, &inAddress, 0, 0, &ioDataSize, a1);
}

uint64_t _VAEndpointManager_SetDiscoveryMode(int a1, CFTypeRef cf1)
{
  if (cf1 && !CFEqual(cf1, *MEMORY[0x1E6961878]) && !CFEqual(cf1, *MEMORY[0x1E6961870]) && !CFEqual(cf1, *MEMORY[0x1E6961880]))
  {
    return 4294950586;
  }

  CMSMVAUtility_AudioObjectSetPropertyData();
  return 0;
}

uint64_t vaemCopyClockDeviceForAudioDevice(AudioObjectID a1, __CFString **outData)
{
  ioDataSize = 8;
  *&inAddress.mSelector = 0x6F75747061706364;
  inAddress.mElement = 0;
  if (!outData)
  {
    return 0;
  }

  result = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData);
  if (result)
  {
    v4 = 0;
LABEL_4:
    *outData = v4;
    return result;
  }

  if (!*outData)
  {
    v4 = &stru_1F2890CF0;
    goto LABEL_4;
  }

  return result;
}

CFIndex vaemUpdatePortIDEndpointCache(CFIndex result, CFArrayRef theArray)
{
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = 0;
      v5 = *MEMORY[0x1E695E480];
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v12 = valuePtr;
        if (vaemInitializePortEndpointCache_onceToken != -1)
        {
          vaemAddToPortEndpointCache_cold_1();
        }

        v7 = CFNumberCreate(v5, kCFNumberSInt32Type, &v12);
        FigSimpleMutexLock();
        CFDictionaryGetValue(qword_1EB75D0D0, v7);
        FigVAEndpointDisassociatePort();
        CFDictionaryRemoveValue(qword_1EB75D0D0, v7);
        FigSimpleMutexUnlock();
        if (v7)
        {
          CFRelease(v7);
        }

        ++v4;
        result = CFArrayGetCount(v3);
      }

      while (v4 < result);
    }
  }

  if (theArray)
  {
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        v10 = 0;
        v9 = CFArrayGetValueAtIndex(theArray, i);
        CFNumberGetValue(v9, kCFNumberSInt32Type, &v10);
        vaemAddToPortEndpointCache(v10);
        result = CFArrayGetCount(theArray);
      }
    }
  }

  return result;
}

CFIndex vaemUpdatePortListeners(CFIndex result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v2 = result;
      v3 = 0;
      while (1)
      {
        PortAtIndex = CMSMVAUtility_GetPortAtIndex(v1, v3);
        result = vaeGetPortTypeFromPortID(PortAtIndex);
        v5 = result;
        if (result == 1885892674)
        {
          break;
        }

        if (result == 1885892706)
        {
          goto LABEL_19;
        }

LABEL_30:
        if (v2 == ++v3)
        {
          goto LABEL_31;
        }
      }

      if (vaeDoesPortSupportMultipleConnections(PortAtIndex))
      {
        vaeAddOwnsSharedAudioConnectionListenerForPort(PortAtIndex);
        vaeAddSharedAudioConnectionFailedListenerForPort(PortAtIndex);
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      if (vaeDoesBTPortSupportInEarDetection(PortAtIndex))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        vaeAddInEarBluetoothStatusListenerForPort(PortAtIndex);
        cmsmInEarBluetoothStatusListener(PortAtIndex);
        if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(PortAtIndex))
        {
          v6 = 1;
        }

        if (vaeIsInEarStatusTrueForBTPort(PortAtIndex))
        {
          cmsmUpdateInEarBasedPlaybackState(0, 1, 0);
        }
      }

      if (v6)
      {
        CMSMNotificationUtility_PostPreferredExternalRouteDidChange();
      }

LABEL_19:
      vaeAddBluetoothListeningModeListenerForPort(PortAtIndex);
      if (dword_1EB75DE40)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      vaeAddBluetoothAlternateTransportListenerForPort(PortAtIndex);
      if (vaeDoesPortSupportHeadTrackedSpatialAudio(PortAtIndex))
      {
        vaeAddBluetoothSpatialAudioEnabledListenerForPort(PortAtIndex);
        vaeAddBluetoothSpatialAudioUserEnableFeatureListenerForPort(PortAtIndex);
        vaeAddBluetoothSpatialAudioModeListenerForPort(PortAtIndex);
      }

      result = vaeIsPortBluetoothShareable(PortAtIndex);
      if (result)
      {
        if (dword_1EB75DE40)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        result = vaemAddVADDeviceVolumeChangeListener(PortAtIndex);
        if (v5 == 1885892674)
        {
          if (dword_1EB75DE40)
          {
            v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          result = vaeAddBluetoothSharingAggregationListenerForPort(PortAtIndex);
        }
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vaemInputSourcesListener()
{
  v0 = MXGetSerialQueue();
  MXDispatchAsync("vaemInputSourcesListener", "CMSessionManager_VAEndpointManager.m", 5318, 0, 0, v0, &__block_literal_global_138);
  return 0;
}

void __vaemPostDeviceInputGainScalarChangedNotification_block_invoke()
{
  v5 = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v2 = *(*(VTable + 8) + 48);
  if (!v2 || (v3 = *(VTable + 8) + 48, v2(CMBaseObject, 0x1F289B770, *MEMORY[0x1E695E480], &v5)))
  {
    __vaemPostDeviceInputGainScalarChangedNotification_block_invoke_cold_1();
    CFTypePayload = 0;
  }

  else
  {
    CFTypePayload = CMSMNotificationUtility_CreateCFTypePayload(@"VAEM_DeviceInputGainScalarKey", v5);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(qword_1EB75E090);
}

BOOL OUTLINED_FUNCTION_17_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t type, int a13, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t MX_FeatureFlags_IsCallManagementMuteControlEnabled()
{
  if (MX_FeatureFlags_IsCallManagementMuteControlEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCallManagementMuteControlEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCallManagementMuteControlEnabled_sCallManagementMuteControlEnabled;
}

uint64_t MX_FeatureFlags_IsCounterfeitDetectionEnabled()
{
  if (MX_FeatureFlags_IsCounterfeitDetectionEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCounterfeitDetectionEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCounterfeitDetectionEnabled_gapaEnabled;
}

uint64_t MX_FeatureFlags_IsConversationDetectSupported()
{
  if (MX_FeatureFlags_IsConversationDetectSupported_onceToken != -1)
  {
    MX_FeatureFlags_IsConversationDetectSupported_cold_1();
  }

  return MX_FeatureFlags_IsConversationDetectSupported_conversationDetectSupported;
}

uint64_t MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled()
{
  if (MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_sInterruptOnRouteDisconnect;
}

uint64_t MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled()
{
  if (MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_cold_1();
  }

  return MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_sInterruptLongFormVideoOnSpeechDetect;
}

uint64_t MX_FeatureFlags_IsMXSilentModeEnabled()
{
  if (MX_FeatureFlags_IsMXSilentModeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsMXSilentModeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsMXSilentModeEnabled_sIsUseMXSilentModeEnabled;
}

uint64_t MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled()
{
  if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_cold_1();
  }

  return MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_isBufferedBadgingAndCapabilitiesEnabled;
}

uint64_t MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled()
{
  if (MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_cold_1();
  }

  return MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_sIsMaxSpeakerVolumeLimitEnabled;
}

uint64_t MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled()
{
  if (MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_sIsCarPlayRingtoneFadeInEnabled;
}

uint64_t MX_FeatureFlags_IsStartupSequenceChangeEnabled()
{
  if (MX_FeatureFlags_IsStartupSequenceChangeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsStartupSequenceChangeEnabled_cold_1();
  }

  return MX_FeatureFlags_IsStartupSequenceChangeEnabled_isStartupSequenceChangeEnabled;
}

uint64_t MX_FeatureFlags_IsProtectedAppsEnabled()
{
  if (MX_FeatureFlags_IsProtectedAppsEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsProtectedAppsEnabled_cold_1();
  }

  return MX_FeatureFlags_IsProtectedAppsEnabled_isProtectedAppsEnabled;
}

uint64_t MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled()
{
  if (MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_cold_1();
  }

  return MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_isAllowBackgroundPlaybackEnabled;
}

uint64_t MX_FeatureFlags_IsMediaMultitaskingEnabled()
{
  if (MX_FeatureFlags_IsMediaMultitaskingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsMediaMultitaskingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsMediaMultitaskingEnabled_isMediaMultitaskingEnabled;
}

uint64_t MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled()
{
  if (MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_isCustomizedRoutingWithCarsAndSpeakersEnabled;
}

uint64_t MX_FeatureFlags_IsRoutingContextReportingEnabled()
{
  if (MX_FeatureFlags_IsRoutingContextReportingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsRoutingContextReportingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsRoutingContextReportingEnabled_isRoutingContextReportingEnabled;
}

uint64_t MX_FeatureFlags_IsShortFormOutputMutingEnabled()
{
  if (MX_FeatureFlags_IsShortFormOutputMutingEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsShortFormOutputMutingEnabled_cold_1();
  }

  return MX_FeatureFlags_IsShortFormOutputMutingEnabled_isShortFormOutputMutingEnabled;
}

uint64_t MX_FeatureFlags_IsCallConnectHapticsEnabled()
{
  if (MX_FeatureFlags_IsCallConnectHapticsEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsCallConnectHapticsEnabled_cold_1();
  }

  return MX_FeatureFlags_IsCallConnectHapticsEnabled_isCallConnectHapticsEnabled;
}

uint64_t TelephonyUtilitiesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = TelephonyUtilitiesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getTUSharePlayForceDisabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TelephonyUtilitiesLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "TUSharePlayForceDisabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUSharePlayForceDisabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B18877B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1887B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1887E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1888200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MX_TelephonyClient_CopyIsoCountryCodeForMCC()
{
  if (mx_telephonyClient_Initialize_onceToken != -1)
  {
    MX_TelephonyClient_CopyIsoCountryCodeForMCC_cold_1();
  }

  result = gTelephonyClient;
  if (gTelephonyClient)
  {

    return [result copyIsoCountryCodeForMCC];
  }

  return result;
}

void *MX_TelephonyClient_CopyCountryNameFromOperatorCountryBundle()
{
  if (mx_telephonyClient_Initialize_onceToken != -1)
  {
    MX_TelephonyClient_CopyIsoCountryCodeForMCC_cold_1();
  }

  result = gTelephonyClient;
  if (gTelephonyClient)
  {

    return [result copyCountryNameFromOperatorCountryBundle];
  }

  return result;
}

void __getCoreTelephonyClientClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("CoreTelephonyClient");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getCoreTelephonyClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getCoreTelephonyClientClass_block_invoke_cold_1();
    CoreTelephonyLibrary();
  }
}

void CoreTelephonyLibrary()
{
  if (!CoreTelephonyLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t CoreTelephonyLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreTelephonyLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCTBundleClass_block_invoke(uint64_t a1)
{
  CoreTelephonyLibrary();
  result = objc_getClass("CTBundle");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getCTBundleClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getCTBundleClass_block_invoke_cold_1();
    return __mx_telephonyClient_Initialize_block_invoke(v3);
  }

  return result;
}

void sub_1B188907C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B18896B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1889A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1889DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B188A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B188C8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B188CA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigEndpointUIAgentHelper_SetNewUIAgent(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_1 != -1)
  {
    FigEndpointUIAgentHelper_SetNewUIAgent_cold_1();
  }

  v2 = qword_1ED6D2E88;
  if (qword_1ED6D2E88)
  {
    v3 = &qword_1ED6D2E88;
  }

  else
  {
    v3 = 0;
  }

  if (dword_1EB75DFC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    v5 = &qword_1ED6D2E90;
  }

  else
  {
    v5 = 8;
  }

  if (*v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = *v5;
    CMNotificationCenterRemoveListener();
    endpointUIAgentHelper_handleUIAgentNoLongerCurrent(v3);
  }

  v7 = *v3;
  FigSimpleMutexLock();
  v8 = *v5;
  *v5 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *v3;
  result = FigSimpleMutexUnlock();
  if (*v5)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v11 = *v5;
    result = CMNotificationCenterAddListener();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t endpointUIAgentHelper_UIAgentNotificationCallback(int a1, uint64_t *a2, CFTypeRef cf2)
{
  if (CFEqual(@"FigEndpointUIAgentNotification_RemoteAgentCrashed", cf2))
  {
    v5 = *a2;
    FigSimpleMutexLock();
    v6 = a2[1];
    if (v6)
    {
      CFRelease(v6);
      a2[1] = 0;
    }

    v7 = *a2;
    FigSimpleMutexUnlock();
    v8 = @"remoteAgentCrashed";
LABEL_9:

    return endpointUIAgentHelper_postEvent(a2, v8);
  }

  if (CFEqual(@"FigEndpointUIAgentNotification_UserLoggedOut", cf2))
  {
    v9 = *a2;
    FigSimpleMutexLock();
    v10 = a2[1];
    if (v10)
    {
      CFRelease(v10);
      a2[1] = 0;
    }

    v11 = *a2;
    FigSimpleMutexUnlock();
    v8 = @"userLoggedOut";
    goto LABEL_9;
  }

  if (!CFEqual(@"FigEndpointUIAgentNotification_NoLongerCurrent", cf2))
  {
    if (CFEqual(@"FigEndpointUIAgentNotification_DeviceWake", cf2))
    {
      v8 = @"deviceAwake";
    }

    else
    {
      result = CFEqual(@"FigEndpointUIAgentNotification_DeviceWillSleep", cf2);
      if (!result)
      {
        return result;
      }

      v8 = @"deviceWillSleep";
    }

    goto LABEL_9;
  }

  return endpointUIAgentHelper_handleUIAgentNoLongerCurrent(a2);
}

uint64_t endpointUIAgentHelper_handleUIAgentNoLongerCurrent(uint64_t *a1)
{
  v2 = *a1;
  FigSimpleMutexLock();
  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
    a1[1] = 0;
  }

  v4 = *a1;
  FigSimpleMutexUnlock();

  return endpointUIAgentHelper_postEvent(a1, @"noLongerCurrent");
}

uint64_t FigEndpointUIAgentHelper_ShowError(const __CFDictionary *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_1 != -1)
  {
    FigEndpointUIAgentHelper_SetNewUIAgent_cold_1();
  }

  if (qword_1ED6D2E88)
  {
    v2 = &qword_1ED6D2E88;
  }

  else
  {
    v2 = 0;
  }

  v3 = *v2;
  if (qword_1ED6D2E88)
  {
    v4 = &qword_1ED6D2E90;
  }

  else
  {
    v4 = 8;
  }

  FigSimpleMutexLock();
  v5 = *v4;
  if (*v4 || (endpointUIAgentHelper_updateCurrentUIAgent(v2), (v5 = *v4) != 0))
  {
    v6 = CFRetain(v5);
    v7 = *v2;
    FigSimpleMutexUnlock();
    if (v6)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v8)
      {
        v8(v6, a1);
      }

      CFRelease(v6);
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *v2;
    FigSimpleMutexUnlock();
  }

  if (a1)
  {
    CFDictionaryGetValue(a1, @"ATVName");
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t endpointUIAgentHelper_updateCurrentUIAgent(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = FigEndpointUIAgentCopyCurrentEndpointUIAgent((a1 + 8));
  if (dword_1EB75DFC0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v4 = *(a1 + 8);
    result = CMNotificationCenterAddListener();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigEndpointUIAgentHelper_DisplayAuthPrompt(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_1 != -1)
  {
    FigEndpointUIAgentHelper_SetNewUIAgent_cold_1();
  }

  v4 = qword_1ED6D2E88;
  if (qword_1ED6D2E88)
  {
    v5 = &qword_1ED6D2E88;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v5;
  if (qword_1ED6D2E88)
  {
    v7 = &qword_1ED6D2E90;
  }

  else
  {
    v7 = 8;
  }

  FigSimpleMutexLock();
  v8 = *v7;
  if (*v7 || (endpointUIAgentHelper_updateCurrentUIAgent(v5), (v8 = *v7) != 0))
  {
    v9 = CFRetain(v8);
    v10 = *v5;
    FigSimpleMutexUnlock();
    if (v9)
    {
      v11 = *v5;
      FigSimpleMutexLock();
      v12 = 24;
      if (v4)
      {
        v12 = &unk_1ED6D2EA0;
      }

      *v12 = a2;
      v13 = &unk_1ED6D2EB0;
      if (!v4)
      {
        v13 = 40;
      }

      v14 = *(a1 + 40);
      *v13 = *(a1 + 32);
      v15 = &unk_1ED6D2EB8;
      if (!v4)
      {
        v15 = 48;
      }

      *v15 = v14;
      v16 = *v5;
      FigSimpleMutexUnlock();
      v18 = *a1;
      v17 = *(a1 + 8);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v19)
      {
        v19(v9, v18, v17, endpointUIAgentHelper_UIAgentCallback);
      }

      CFRelease(v9);
      goto LABEL_25;
    }
  }

  else
  {
    v20 = *v5;
    FigSimpleMutexUnlock();
  }

  if (*a1)
  {
    CFDictionaryGetValue(*a1, @"ATVName");
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t endpointUIAgentHelper_postEvent(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  FigSimpleMutexLock();
  if (a1[2])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      (a1[2])(a2, Mutable);
      CFRelease(v6);
    }
  }

  v7 = *a1;

  return FigSimpleMutexUnlock();
}

void MX_CoreServices_Initialize()
{
  global_queue = dispatch_get_global_queue(0, 0);

  MXDispatchAsync("MX_CoreServices_Initialize", "MX_CoreServices.m", 61, 0, 0, global_queue, &__block_literal_global_17);
}

void cmsmLSUpdateDeviceManagementCache(uint64_t a1)
{
  valuePtr[22] = *MEMORY[0x1E69E9840];
  valuePtr[0] = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, valuePtr);
  FigCFDictionarySetValue();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v3 = *MEMORY[0x1E69E9840];
}

id MX_CoreServices_CopyContainingBundleID(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  result = [gLSBundleRecordClass bundleRecordForAuditToken:v4 error:0];
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [objc_msgSend(v3 "containingBundleRecord")];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MXAudioContext_HandleAddEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v17);
    }
  }

  IndexOfCurrentlyActivatingSubEndpoints = FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints(a2, [MEMORY[0x1E695DEC8] arrayWithObject:a1]);
  FigRoutingManagerLogRoutingRequestDetails(@"MXAudioContext_HandleAddEndpoint - ", a1, 0, 0, a2, a3);
  if (CMSMDeviceState_IsHomePodHub())
  {
    if (FigRoutingManagerIsEndpointLocal(a1))
    {
      v11 = *MEMORY[0x1E6962620];
      if (FigRoutingManagerIsEndpointOfSubtype(a1))
      {
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonStarted");
        v12 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
LABEL_13:
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, *v12);
LABEL_16:
        v14 = 0;
        goto LABEL_17;
      }
    }
  }

  if (IndexOfCurrentlyActivatingSubEndpoints != -1)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(a2, IndexOfCurrentlyActivatingSubEndpoints, cf);
    FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(a2, IndexOfCurrentlyActivatingSubEndpoints);
    FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(a2, cf[0]);
    FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, a4);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_16;
  }

  if (FigRoutingManagerUtilities_IsEndpointPicked(a1, a2))
  {
    v12 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedNoOp;
    goto LABEL_13;
  }

  FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
  if (!FigRoutingManagerIsEndpointWHAGroupable(a1))
  {
    goto LABEL_16;
  }

  mxAudioContext_removeActivatedEndpointFromContext(a1);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, cf);
  FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoint(a2, cf[0], a1, a3, a4);
  v14 = mxAudioContext_addWHAGroupableEndpoint(a1, a2, a3, a4);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void mxAudioContext_removeActivatedEndpointFromContext(const void *a1)
{
  if (a1 && FigRoutingManagerIsEndpointActivated(a1))
  {
    v5 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v5);
    }

    if (!FigCFEqual())
    {
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v5, &cf);
      if (cf)
      {
        mxAudioContext_removeEndpointFromAggregate(cf, a1, v5, 0, 0);
      }

      else
      {
        mxAudioContext_deactivateEndpoint(a1, v5, 0);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t mxAudioContext_addWHAGroupableEndpoint(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  v20[24] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, v20);
  v19 = 0;
  v8 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x1E69620F8], v8, &v19);
  }

  cf = 0;
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E69621E8], v8, &cf);
  }

  v13 = v20[0];
  if (!v20[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v13 = 0;
  }

  v14 = FigRoutingManagerAddEndpointToAggregate(v13, a1, a2, a3, a4, mxAudioContext_addEndpointCompletionCallback);
  if (!v14 && dword_1EB75DF20)
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

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v20[0])
  {
    CFRelease(v20[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t MXAudioContext_HandleRemoveEndpoint(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4)
{
  FigRoutingManagerLogRoutingRequestDetails(@"MXEmbeddedAudioRouting_HandleRemoveEndpoint - ", a1, 0, 0, a2, a3);
  if (FigRoutingManagerUtilities_IsEndpointPicked(a1, a2))
  {
    if (FigRoutingManagerIsEndpointWHAGroupable(a1))
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonStarted");

      return mxAudioContext_removeWHAGroupableEndpoint(a1, a2, a3, a4);
    }

    else
    {

      return mxAudioContext_deactivateEndpoint(a1, a2, a3);
    }
  }

  else
  {
    FigRoutingManagerLogEndpointID(@"MXAudioContext_HandleRemoveEndpoint: Posting no-op because endpoint=", a1, @" is already removed", 1);
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedNoop");
    return 0;
  }
}

uint64_t mxAudioContext_removeWHAGroupableEndpoint(const void *a1, const void *a2, const void *a3, const void *a4)
{
  v20[22] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, v20);
  v8 = v20[0];
  if (!v20[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v8 = 0;
  }

  v9 = mxAudioContext_removeEndpointFromAggregate(v8, a1, a2, a3, a4);
  v19 = 0;
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E69620F8], v10, &v19);
  }

  cf = 0;
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E69621E8], v10, &cf);
  }

  if (!v9 && dword_1EB75DF20)
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

  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

  if (v20[0])
  {
    CFRelease(v20[0]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t mxAudioContext_deactivateEndpoint(const void *a1, const void *a2, uint64_t a3)
{
  v26[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = 4294954315;
    goto LABEL_22;
  }

  v6 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(a1))
  {
    if (dword_1EB75DF20)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = 0;
    goto LABEL_22;
  }

  SharedManager = FigRoutingManagerGetSharedManager();
  cf = 0;
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, *MEMORY[0x1E69621E8], v10, &cf);
  }

  if (dword_1EB75DF20)
  {
    *type = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRetain(a1);
  v14 = *(SharedManager + 1);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __mxAudioContext_deactivateEndpoint_block_invoke;
  v22[3] = &__block_descriptor_40_e5_v8__0l;
  v22[4] = a1;
  MXDispatchAsync("mxAudioContext_deactivateEndpoint", "MXAudioContext_Embedded.m", 461, 0, 0, v14, v22);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(a1, a2);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigCFEqual())
  {
    v17 = *MEMORY[0x1E69617E8];
    v18 = *MEMORY[0x1E69617F8];
    FigCFDictionarySetValue();
  }

  FigRoutingManagerUnregisterFromFigEndpointNotifications(a1);
  v26[0] = 0;
  FigRoutingManagerCreateEndpointDeactivateCompletionContext(a2, v26);
  v8 = FigRoutingManagerEndpointDeactivateWithCompletionCallback(a1, FigEndpointFeatures, Mutable, mxAudioContext_endpointDeactivateCompletionCallback, v26[0]);
  if (FigCFEqual())
  {
    v19 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedBottomUpRouteChange;
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_20;
    }

    v19 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess;
  }

  FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, *v19, a3, 0);
LABEL_20:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_22:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t MXAudioContext_HandlePickEndpoints(const __CFArray *a1, const void *a2, CFDictionaryRef theDict, const __CFDictionary *a4)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v8 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  FigRoutingManagerLogRoutingRequestDetails(@"MXAudioContext_HandlePickEndpoints - ", 0, a1, 0, a2, v8);
  if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a1))
  {
    IndexOfCurrentlyActivatingSubEndpoints = FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints(a2, a1);
    if (IndexOfCurrentlyActivatingSubEndpoints != -1)
    {
      v10 = IndexOfCurrentlyActivatingSubEndpoints;
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      theArray[0] = 0;
      FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex(a2, v10, theArray);
      FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex(a2, v10);
      FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo(a2, theArray[0]);
      FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, theDict, a4);
      if (theArray[0])
      {
        CFRelease(theArray[0]);
        theArray[0] = 0;
      }

      goto LABEL_57;
    }
  }

  theArray[0] = 0;
  FigRoutingManagerCopyPickedEndpointsForRoutingContext(a2, theArray);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
  }

  else
  {
    Count = 0;
  }

  v13 = theArray[0];
  if (theArray[0])
  {
    v13 = CFArrayGetCount(theArray[0]);
  }

  if (Count == v13)
  {
    if (Count < 1)
    {
LABEL_19:
      v18 = 0;
      goto LABEL_21;
    }

    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
      if (!FigCFArrayContainsValue())
      {
        if (!FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(ValueAtIndex))
        {
          break;
        }

        v16 = FigRoutingManagerCopyWHAGroupableVAEndpoint();
        v17 = FigCFArrayContainsValue();
        if (v16)
        {
          CFRelease(v16);
        }

        if (!v17)
        {
          break;
        }
      }

      if (Count == ++v14)
      {
        goto LABEL_19;
      }
    }
  }

  v18 = 1;
LABEL_21:
  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if ((v18 & 1) == 0)
  {
    FigRoutingManagerLogEndpointIDs(@"MXAudioContext_HandlePickEndpoints: Posting no-op because endpoints= ", a1, @" are already picked", 1);
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, v8, @"configUpdateReasonEndedNoop");
    goto LABEL_57;
  }

  if (a1 && CFArrayGetCount(a1) >= 1)
  {
    FigRoutingManagerContextUtilities_SetPickingState(a2, 1);
    if (CFArrayGetCount(a1))
    {
      v19 = CFArrayGetCount(a1);
      if (v19 >= 1)
      {
        v20 = v19;
        for (i = 0; i != v20; ++i)
        {
          v22 = CFArrayGetValueAtIndex(a1, i);
          mxAudioContext_removeActivatedEndpointFromContext(v22);
        }
      }
    }

    if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a1))
    {
      FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
      theArray[0] = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, theArray);
      v23 = FigRoutingManagerUtilities_CopyEndpointsToAdd(a2, a1);
      v24 = FigRoutingManagerUtilities_CopyEndpointsToRemove(a2, a1);
      FigRoutingManagerLogEndpointIDs(@"mxAudioContext_pickWHAGroupableEndpoints - endpointsToAdd are ", v23, 0, 1);
      FigRoutingManagerLogEndpointIDs(@"mxAudioContext_pickWHAGroupableEndpoints - endpointsToRemove are ", v24, 0, 1);
      if (!v23)
      {
        goto LABEL_48;
      }

      if (CFArrayGetCount(v23) >= 1)
      {
        v25 = 0;
        do
        {
          v26 = CFArrayGetValueAtIndex(v23, v25);
          mxAudioContext_removeActivatedEndpointFromContext(v26);
          ++v25;
        }

        while (v25 < CFArrayGetCount(v23));
      }

      if (CFArrayGetCount(v23) > 0)
      {
        FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(a2, theArray[0], v23, v8, a4);
      }

      else
      {
LABEL_48:
        if (v24 && CFArrayGetCount(v24) >= 1)
        {
          FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, v8, @"configUpdateReasonStarted");
          mxAudioContext_addWHAGroupableEndpoints(a2, v23, v8, a4);
          mxAudioContext_removeWHAGroupableEndpoints(a2, v24, v8, a4);
          cf[0] = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, cf);
          FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(a2, cf[0], @"configUpdateReasonEndedSuccess", v8);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          goto LABEL_52;
        }
      }

      mxAudioContext_addWHAGroupableEndpoints(a2, v23, v8, a4);
      mxAudioContext_removeWHAGroupableEndpoints(a2, v24, v8, a4);
      if (!v24)
      {
LABEL_53:
        if (v23)
        {
          CFRelease(v23);
        }

        if (theArray[0])
        {
          CFRelease(theArray[0]);
        }

        goto LABEL_57;
      }

LABEL_52:
      CFRelease(v24);
      goto LABEL_53;
    }
  }

  else
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, theArray);
    v27 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(theArray[0]))
    {
      FigRoutingManagerRemoveAllSubEndpointsFromAggregate(theArray[0], a2, v8, a4, mxAudioContext_removeEndpointCompletionCallback);
    }

    else
    {
      v28 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(theArray[0]))
      {
        mxAudioContext_deactivateEndpoint(theArray[0], a2, v8);
      }
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, @"configUpdateReasonEndedSuccess", v8, 0);
  }

LABEL_57:
  if (v8)
  {
    CFRelease(v8);
  }

  v29 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t MXAudioContext_ActivateAggregateEndpoint(uint64_t a1, const void *a2)
{
  v3 = a1;
  v50 = *MEMORY[0x1E69E9840];
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a1, a2, 0);
  FigEndpointFeatures = FigRoutingManagerGetFigEndpointFeatures(v3, a2);
  v35 = 0;
  v6 = MEMORY[0x1E69621E8];
  v7 = MEMORY[0x1E695E480];
  if (v3)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, *v6, *v7, &v35);
    }
  }

  if (dword_1EB75DF20)
  {
    v42 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v42;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      *v39 = 136315650;
      *&v39[4] = "MXAudioContext_ActivateAggregateEndpoint";
      *&v39[12] = 2114;
      *&v39[14] = v35;
      *&v39[22] = 2048;
      v40 = FigEndpointFeatures;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  EndpointDelegateContext = FigRoutingManagerCreateEndpointDelegateContext();
  v14 = malloc_type_malloc(0x18uLL, 0x60040149E097CuLL);
  if (v3)
  {
    v15 = CFRetain(v3);
  }

  else
  {
    v15 = 0;
  }

  v14[1] = v15;
  v14[2] = EndpointDelegateContext;
  *v14 = 0;
  SharedManager = FigRoutingManagerGetSharedManager();
  v17 = SharedManager[7];
  FigSimpleMutexLock();
  if (SharedManager[8])
  {
    *SharedManager[9] = v14;
  }

  else
  {
    SharedManager[8] = v14;
  }

  SharedManager[9] = v14;
  v18 = SharedManager[7];
  FigSimpleMutexUnlock();
  *type = EndpointDelegateContext;
  v32 = 0;
  v33 = mxAudioContext_handleDidReceiveDataFromCommChannelDelegate;
  v34 = mxAudioContext_handleDidCloseCommChannelDelegate;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v19)
  {
    v19(v3, type);
  }

  v40 = 0;
  v41 = 0;
  *v39 = EndpointDelegateContext;
  *&v39[8] = mxAudioContext_handleAuthorizationRequiredDelegate;
  *&v39[16] = mxAudioContext_handleEndpointFailedDelegate;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(v3, v39);
  }

  v30 = 0;
  FigRoutingManagerCreateEndpointActivateCompletionContext(a2, 0, 0, EndpointActivateOptions, &v30);
  v21 = v30;
  cf = 0;
  if (v3)
  {
    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *v6, *MEMORY[0x1E695E480], &cf);
    }
  }

  if (dword_1EB75DF20)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v37;
    if (os_log_type_enabled(v24, v36))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v42 = 136315906;
      v43 = "mxAudioContext_aggregateEndpointActivateWithCompletionCallback";
      v44 = 2114;
      v45 = cf;
      v46 = 1024;
      v47 = FigEndpointFeatures;
      v48 = 2114;
      v49 = EndpointActivateOptions;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v27)
    {
      v3 = v27(v3, FigEndpointFeatures, EndpointActivateOptions, mxAudioContext_aggregateEndpointActivateCompletionCallback, v21);
    }

    else
    {
      v3 = 4294954514;
    }
  }

  else
  {
    mxAudioContext_aggregateEndpointActivateCompletionCallback(0, FigEndpointFeatures, 0, 0, v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
    v35 = 0;
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v3;
}

void mxAudioContext_handleDidReceiveDataFromCommChannelDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
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
      v10[2] = __mxAudioContext_handleDidReceiveDataFromCommChannelDelegate_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = a5;
      v10[5] = a3;
      v10[6] = a4;
      v10[7] = a1;
      MXDispatchAsync("mxAudioContext_handleDidReceiveDataFromCommChannelDelegate", "MXAudioContext_Embedded.m", 1005, 0, 0, DataTransmissionQueue, v10);
    }
  }
}

void mxAudioContext_handleDidCloseCommChannelDelegate(CFTypeRef cf, uint64_t a2, const void *a3, uint64_t a4)
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
    v10[2] = __mxAudioContext_handleDidCloseCommChannelDelegate_block_invoke;
    v10[3] = &__block_descriptor_56_e5_v8__0l;
    v10[4] = a4;
    v10[5] = a3;
    v10[6] = cf;
    MXDispatchAsync("mxAudioContext_handleDidCloseCommChannelDelegate", "MXAudioContext_Embedded.m", 1052, 0, 0, DataTransmissionQueue, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void mxAudioContext_handleAuthorizationRequiredDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    cf = 0;
    v20 = 0;
    v10 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69621E8], v10, &cf);
    }

    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69620F8], v10, &v20);
    }

    v15 = FigRoutingManagerCopyAuthInfoForEndpoint(a2);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *&v21 = v15;
    *(&v21 + 1) = Mutable;
    v24 = a6;
    v25 = a7;
    v22 = v20;
    v23 = a2;
    FigEndpointAuthRequestHandler_ProcessRequest(&v21);
    if (Mutable)
    {
      CFRelease(Mutable);
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

    if (v20)
    {
      CFRelease(v20);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void mxAudioContext_handleEndpointFailedDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4)
{
  if (a1 && a3)
  {
    SharedManager = FigRoutingManagerGetSharedManager();
    CFRetain(a1);
    CFRetain(a3);
    if (a4)
    {
      CFRetain(a4);
    }

    v8 = *(SharedManager + 1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __mxAudioContext_handleEndpointFailedDelegate_block_invoke;
    v9[3] = &__block_descriptor_56_e5_v8__0l;
    v9[4] = a4;
    v9[5] = a3;
    v9[6] = a1;
    MXDispatchAsync("mxAudioContext_handleEndpointFailedDelegate", "MXAudioContext_Embedded.m", 1147, 0, 0, v8, v9);
  }
}

void mxAudioContext_aggregateEndpointActivateCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  SharedManager = FigRoutingManagerGetSharedManager();
  if (a5)
  {
    v11 = *a5;
    v12 = *(a5 + 32);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  [v12 timeIntervalSinceNow];
  v14 = v13;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v11)
  {
    CFRetain(v11);
  }

  v15 = fabs(v14) * 1000.0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v17 = *(SharedManager + 1);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __mxAudioContext_aggregateEndpointActivateCompletionCallback_block_invoke;
  v18[3] = &unk_1E7AEA488;
  v18[4] = v16;
  v18[5] = a1;
  v19 = a4;
  v18[6] = a3;
  v18[7] = a2;
  v20 = v15;
  v18[8] = v11;
  v18[9] = a5;
  MXDispatchAsync("mxAudioContext_aggregateEndpointActivateCompletionCallback", "MXAudioContext_Embedded.m", 937, 0, 0, v17, v18);
}

uint64_t mxAudioContext_removeEndpointFromAggregate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  v22[20] = *MEMORY[0x1E69E9840];
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v22[0] = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a3, a4, a5, v22);
  if (FigEndpoint)
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
      if (theArray)
      {
        if (CFArrayGetCount(theArray) == 1 && FigRoutingManagerIsEndpointPresentInAggregate(a2, a1))
        {
          if (dword_1EB75DF20)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSMUtility_InterruptSessionsWithRoutingContextUUID(a3);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }
  }

  FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(a2);
  if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
  {
    FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(a1, a2);
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v14)
  {
    v14(a2, 0);
  }

  EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a2, a3);
  v16 = v22[0];
  v17 = *(*(CMBaseObjectGetVTable() + 32) + 16);
  if (!v17 || (v18 = v17(a1, a2, 0, mxAudioContext_removeEndpointCompletionCallback, v16), v18 == -12782))
  {
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v22[0]);
    v18 = 4294954514;
  }

  if (EndpointDeactivateOptions)
  {
    CFRelease(EndpointDeactivateOptions);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void mxAudioContext_removeEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
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
    v24[2] = __mxAudioContext_removeEndpointCompletionCallback_block_invoke;
    v24[3] = &unk_1E7AEA460;
    v24[4] = v21;
    v24[5] = cf;
    v25 = a5;
    v24[6] = a4;
    v24[7] = a3;
    v24[8] = v12;
    v24[9] = v15;
    v26 = v19;
    v24[10] = v17;
    v24[11] = a1;
    v24[12] = a6;
    MXDispatchAsync("mxAudioContext_removeEndpointCompletionCallback", "MXAudioContext_Embedded.m", 574, 0, 0, v22, v24);
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

void __mxAudioContext_removeEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v20 = 0;
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], *v2, &v20);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v18) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v19 = 0;
  v6 = *(a1 + 80);
  FigCFDictionaryGetBooleanIfPresent();
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(*(a1 + 64), cf);
  v7 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf[0], 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(*(a1 + 64), v7);
  FigVolumeControllerSaveRoutingContextState(*(a1 + 64));
  if (v7)
  {
    CFRelease(v7);
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 88), &theArray);
  if (!theArray || !CFArrayGetCount(theArray))
  {
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
  }

  v18 = 0;
  v8 = *(a1 + 88);
  v9 = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10 && (v10(v9, *MEMORY[0x1E6962270], *v2, &v18), v18) && CFArrayGetCount(v18))
  {
    *type = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(a1 + 64), 0, type);
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 64), *type, @"configUpdateReasonEndedBottomUpRouteChange", 0);
    if (*type)
    {
      CFRelease(*type);
    }
  }

  else
  {
    FigRoutingManagerContextUtilities_SetPickedEndpoints(*(a1 + 64), 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, 0);
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v19)
  {
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 64), *(a1 + 72), @"configUpdateReasonEndedSuccess");
  }

  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 64), *(a1 + 72), @"configUpdateReasonGroupDevicesChanged");
  FigRoutingMangerDeactivateAggregateEndpointIfNecessary(*(a1 + 64), *(a1 + 88));
  FigVolumeControllerRecomputeMainVolume(*(a1 + 64), 0.0);
  FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(*(a1 + 96));
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void mxAudioContext_addEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
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
    v24[2] = __mxAudioContext_addEndpointCompletionCallback_block_invoke;
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
    MXDispatchAsync("mxAudioContext_addEndpointCompletionCallback", "MXAudioContext_Embedded.m", 211, 0, 0, v22, v24);
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

void __mxAudioContext_addEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  v39[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69621E8], v3, &v37);
  }

  v6 = *(a1 + 40);
  v7 = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, *MEMORY[0x1E69620F8], v3, &v36);
  }

  v9 = *(a1 + 40);
  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x1E6961FD0], v3, &v35);
  }

  v12 = *(a1 + 40);
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E69621B0], v3, &v34);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = *(a1 + 96);
  if (v16 == -15580)
  {
    v26 = *(a1 + 80);
    if (!v26 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v26 = 0;
    }

    FigRoutingManagerRetryAddingEndpointToAggregate(v26, *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 88), mxAudioContext_addEndpointCompletionCallback);
  }

  else
  {
    if (v16)
    {
      v27 = *(a1 + 88);
      FigRoutingManagerHandleAddEndpointCompletionCallbackError(*(a1 + 80), *(a1 + 40), *(a1 + 48), v16, *(a1 + 64), *(a1 + 72));
      if (!FigEndpointAuthRequestHandler_HasEndpoint(*(a1 + 40)))
      {
        goto LABEL_30;
      }

      v24 = v36;
      v23 = v37;
      v25 = v34;
      v22 = 0;
      goto LABEL_29;
    }

    FigVolumeControllerAddAirPlayVolumeNotificationListeners(*(a1 + 40));
    v39[0] = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(v39);
    cf = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v39[0], &cf);
    if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled())
    {
      FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(cf, *(a1 + 40));
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v39[0])
    {
      CFRelease(v39[0]);
      v39[0] = 0;
    }

    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 64), *(a1 + 80), @"configUpdateReasonGroupDevicesChanged", *(a1 + 72));
    if (MX_FeatureFlags_IsMuteEnabled())
    {
      FigVolumeControllerUnmuteEndpointIfAlreadyMuted(*(a1 + 40));
    }

    v17 = *(a1 + 88);
    FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(*(a1 + 64), *(a1 + 80), *(a1 + 40), @"configUpdateReasonEndedSuccess", *(a1 + 72));
    if (FigEndpointAuthRequestHandler_HasEndpoint(*(a1 + 40)))
    {
      v19 = v36;
      v18 = v37;
      v20 = v34;
      v21 = *MEMORY[0x1E69616C0];
      v22 = FigCFEqual();
      v23 = v18;
      v24 = v19;
      v25 = v20;
LABEL_29:
      FigEndpointUIAgentHelper_CleanupPrompt(v23, v24, v25, v22);
    }
  }

LABEL_30:
  if (*(a1 + 96) != -15580)
  {
    if (FigRoutingManagerUtilities_IsCurrentRouteHandoff())
    {
      CMSMAP_MakeAirPlayHandOffPortRoutable(0, *(a1 + 64));
    }

    v39[0] = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), v39);
    if (!v39[0] || !CFArrayGetCount(v39[0]))
    {
      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
    }

    if (v39[0])
    {
      CFRelease(v39[0]);
    }
  }

  v28 = *(a1 + 88);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 72);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 64);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 80);
  if (v32)
  {
    CFRelease(v32);
  }

  if (v35)
  {
    CFRelease(v35);
    v35 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  if (v36)
  {
    CFRelease(v36);
    v36 = 0;
  }

  if (v37)
  {
    CFRelease(v37);
    v37 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __mxAudioContext_deactivateEndpoint_block_invoke(uint64_t a1)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void mxAudioContext_endpointDeactivateCompletionCallback(CFTypeRef cf, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    v10 = *(a5 + 16);
  }

  else
  {
    v10 = 0;
  }

  [v10 timeIntervalSinceNow];
  v12 = fabs(v11) * 1000.0;
  SharedManager = FigRoutingManagerGetSharedManager();
  v14 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v15 = *(SharedManager + 1);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __mxAudioContext_endpointDeactivateCompletionCallback_block_invoke;
  v16[3] = &unk_1E7AEA488;
  v16[4] = v14;
  v16[5] = cf;
  v17 = a4;
  v16[6] = a3;
  v16[7] = a2;
  v18 = v12;
  v16[8] = a5;
  v16[9] = a5;
  MXDispatchAsync("mxAudioContext_endpointDeactivateCompletionCallback", "MXAudioContext_Embedded.m", 409, 0, 0, v15, v16);
}

void __mxAudioContext_endpointDeactivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[28] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  cf[0] = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(v6, *(a1 + 40), *(a1 + 48));
  v7 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(*(a1 + 40)))
  {
    FigRoutingManagerRemoveCachedDelegateContext(*(a1 + 40));
  }

  FigRoutingManagerDestroyEndpointDeactivateCompletionContext(*(a1 + 72));
  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

CFIndex mxAudioContext_addWHAGroupableEndpoints(CFIndex result, CFArrayRef theArray, const void *a3, const void *a4)
{
  if (theArray)
  {
    v7 = result;
    result = CFArrayGetCount(theArray);
    if (result)
    {
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        v8 = result;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          result = mxAudioContext_addWHAGroupableEndpoint(ValueAtIndex, v7, a3, a4);
        }
      }
    }
  }

  return result;
}

CFIndex mxAudioContext_removeWHAGroupableEndpoints(CFIndex result, CFArrayRef theArray, const void *a3, const void *a4)
{
  if (theArray)
  {
    v7 = result;
    result = CFArrayGetCount(theArray);
    if (result)
    {
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        v8 = result;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          result = mxAudioContext_removeWHAGroupableEndpoint(ValueAtIndex, v7, a3, a4);
        }
      }
    }
  }

  return result;
}

void __mxAudioContext_handleDidReceiveDataFromCommChannelDelegate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"commChannelUUID", *(a1 + 40));
      CFDictionarySetValue(Mutable, @"data", *(a1 + 48));
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"didReceiveData", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

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
}

void __mxAudioContext_handleDidCloseCommChannelDelegate_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"EndpointDelegateContextKey_RoutingContextUUID");
    if (Value)
    {
      v4 = Value;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = a1[5];
      FigCFDictionarySetValue();
      FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(v4, @"commChannelDidClose", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[5];
  if (v8)
  {

    CFRelease(v8);
  }
}

void __mxAudioContext_handleEndpointFailedDelegate_block_invoke(void *a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v45 = 0;
  v44 = 0;
  v2 = a1[4];
  Value = FigCFDictionaryGetValue();
  v4 = a1[4];
  v5 = FigCFDictionaryGetValue();
  v6 = a1[4];
  v7 = FigCFDictionaryGetValue();
  v8 = a1[5];
  v9 = *MEMORY[0x1E6961848];
  v10 = FigCFDictionaryGetValue();
  v11 = a1[5];
  v12 = *MEMORY[0x1E6961850];
  FigCFDictionaryGetInt32IfPresent();
  v13 = a1[5];
  v14 = *MEMORY[0x1E6961690];
  v15 = FigCFDictionaryGetValue();
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = *MEMORY[0x1E69626B0];
  if (FigRoutingManagerIsEndpointOfType(a1[6]))
  {
    v43 = 0;
    v19 = a1[5];
    v20 = *MEMORY[0x1E6961908];
    FigCFDictionaryGetInt64IfPresent();
    if (v15)
    {
      v42 = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v22(CMBaseObject, *MEMORY[0x1E69620F8], v16, &v42);
      }

      v23 = FigEndpointGetCMBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        v24(v23, *MEMORY[0x1E69621E8], v16, &v45);
      }

      v25 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(v15, 0);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      if (v44)
      {
        cf[0] = 0;
        v26 = a1[6];
        v27 = FigEndpointGetCMBaseObject();
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v28)
        {
          v28(v27, *MEMORY[0x1E6962270], v16, cf);
        }

        RouteConfigUpdatedFailedPayload = FigRoutingContextUtilities_CreateRouteConfigUpdatedFailedPayload(0, v42, v44, cf[0]);
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

      v41 = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(Value, &v41);
      if (v41)
      {
        v30 = mxAudioContext_removeEndpointFromAggregate(v41, v15, Value, v5, v7);
        FigEndpoint = FigEndpointAggregateGetFigEndpoint();
        FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(Value, FigEndpoint, @"configUpdateReasonEndedFailed", 0);
        if (v30)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          FigRoutingManagerLogEndpointID(@"mxAudioContext_handleEndpointFailedDelegate: Removed endpoint with ID from aggregate: ", v15, 0, 0);
        }
      }

      v33 = *MEMORY[0x1E6961830];
      if (FigCFEqual())
      {
        FigRoutingManager_iOSHandleStartupFailed(v44, Mutable);
      }

      if (v41)
      {
        CFRelease(v41);
        v41 = 0;
      }

      if (v42)
      {
        CFRelease(v42);
        v42 = 0;
      }

      if (v25)
      {
        CFRelease(v25);
      }
    }

    else
    {
      FigRoutingManagerHandleAggregateFailure(a1[6]);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v43) = 0;
    LOBYTE(v42) = 0;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v43;
    if (os_log_type_enabled(v34, v42))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      v46 = 136316162;
      v47 = "mxAudioContext_handleEndpointFailedDelegate_block_invoke";
      v48 = 2114;
      v49 = v45;
      v50 = 1024;
      v51 = v44;
      v52 = 2114;
      v53 = v10;
      v54 = 2114;
      v55 = Value;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v37 = a1[6];
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = a1[5];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[4];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __mxAudioContext_aggregateEndpointActivateCompletionCallback_block_invoke(uint64_t a1)
{
  cf[28] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  cf[0] = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 40);
  if (*(a1 + 80))
  {
    v6 = *(a1 + 64);
    FigRoutingManagerRemoveCachedDelegateContext(v5);
  }

  else
  {
    v7 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(v5))
    {
      FigRoutingManagerRegisterForFigEndpointNotifications(*(a1 + 40));
      FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(*(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 64), 0);
      FigRoutingManagerContextUtilities_AddActivatedEndpoint(*(a1 + 64), *(a1 + 40), *(a1 + 56), *(a1 + 48), 0, 0);
    }
  }

  FigRoutingManagerDestroyEndpointActivateCompletionContext(*(a1 + 72));
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void FigVolumeControllerPostVolumeDidChangeNotifications(const void *a1, double a2, float a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (FigGetCFPreferenceNumberWithDefault())
  {
    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    volumeController_postEndpointVolumeDidChangeNotification();
    volumeController_recomputeMainVolume(a1, a3);
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    volumeController_postMainVolumeDidChangeNotification();
    v6 = *MEMORY[0x1E69E9840];

    volumeController_postEndpointVolumeDidChangeNotification();
  }
}

void volumeController_postEndpointVolumeDidChangeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  Float32 = FigCFNumberCreateFloat32();
  FigCFDictionarySetValue();
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  volumeController_postNotificationWithPayload(cf, @"endpointVolumeDidChange", Mutable);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (Float32)
  {
    CFRelease(Float32);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void volumeController_recomputeMainVolume(const void *a1, float a2)
{
  cf[20] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CachedMainVolume = volumeController_getCachedMainVolume(a1);
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, cf);
    if (FigRoutingManagerAreAllEndpointsBluetoothShareable(cf[0]) && !volumeController_isBluetoothSharingMainVolumeSupported(cf[0]))
    {
      if (dword_1EB75DEA0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (CachedMainVolume < a2 && FVCUtilitiesIsVolumeDifferenceAboveThreshold(CachedMainVolume, a2) || CachedMainVolume > a2 && (MaxSubEndpointVolume = volumeController_getMaxSubEndpointVolume(cf[0]), MaxSubEndpointVolume >= 0.0) && (a2 = MaxSubEndpointVolume, FVCUtilitiesIsVolumeDifferenceAboveThreshold(CachedMainVolume, MaxSubEndpointVolume)))
    {
      volumeController_updateMainVolumeCache(a1, a2);
      volumeController_postMainVolumeDidChangeNotification();
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else if (dword_1EB75DEA0)
  {
    LODWORD(cf[0]) = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void volumeController_postMainVolumeDidChangeNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  FigCFDictionarySetValue();
  Float32 = FigCFNumberCreateFloat32();
  FigCFDictionarySetValue();
  volumeController_postNotificationWithPayload(cf, @"masterVolumeDidChange", Mutable);
  if (Float32)
  {
    CFRelease(Float32);
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

void FigVolumeControllerAddAirPlayVolumeNotificationListeners(const void *a1)
{
  if (a1)
  {
    v48 = 0;
    FigVolumeControllerCopySharedController(&v48);
    cf = 0;
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 8) + 48);
    if (v5)
    {
      v6 = *(VTable + 8) + 48;
      v5(CMBaseObject, *MEMORY[0x1E69621E8], v2, &cf);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v7 = *MEMORY[0x1E69619E0];
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v8 = *MEMORY[0x1E69619D0];
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v9 = *MEMORY[0x1E69619D8];
    CMNotificationCenterAddListener();
    v49 = 0;
    value = 0;
    v10 = *MEMORY[0x1E69620F8];
    v11 = FigEndpointGetCMBaseObject();
    v12 = CMBaseObjectGetVTable();
    v13 = *(*(v12 + 8) + 48);
    if (v13)
    {
      v14 = *(v12 + 8) + 48;
      v13(v11, v10, v2, &value);
    }

    v15 = FigEndpointGetCMBaseObject();
    v16 = CMBaseObjectGetVTable();
    v19 = *(*(v16 + 8) + 48);
    if (v19)
    {
      v20 = *(v16 + 8) + 48;
      v21 = *MEMORY[0x1E6962338];
      v19(v15, *MEMORY[0x1E6962338], v2, &v49);
      v22 = value;
      if (!value || !v49)
      {
LABEL_17:
        if (v22)
        {
          CFRelease(v22);
          value = 0;
        }

        v26 = v49;
        if (v49)
        {
          CFRelease(v49);
        }

        volumeController_handleAirPlayVolumeControlSupportDidChangeNotification(v26, v17, v18, a1);
        volumeController_handleAirPlayVolumeControlTypeDidChangeNotification(v27, v28, v29, a1);
        if (!MX_FeatureFlags_IsMuteEnabled())
        {
          goto LABEL_37;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v30 = *MEMORY[0x1E6961978];
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        v31 = *MEMORY[0x1E6961988];
        CMNotificationCenterAddListener();
        v49 = 0;
        value = 0;
        v32 = FigEndpointGetCMBaseObject();
        v33 = CMBaseObjectGetVTable();
        v34 = *(*(v33 + 8) + 48);
        if (v34)
        {
          v35 = *(v33 + 8) + 48;
          v34(v32, v10, v2, &value);
        }

        v36 = FigEndpointGetCMBaseObject();
        v37 = CMBaseObjectGetVTable();
        v40 = *(*(v37 + 8) + 48);
        if (v40)
        {
          v41 = *(v37 + 8) + 48;
          v40(v36, *MEMORY[0x1E6962170], v2, &v49);
          v42 = value;
          if (!value || !v49)
          {
            goto LABEL_32;
          }

          Mutable = CFDictionaryCreateMutable(v2, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          v44 = FigCFDictionarySetValue();
          volumeController_handleAirPlayMutedByUserDidChangeNotification(v44, v45, v30, a1, Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        v42 = value;
LABEL_32:
        if (v42)
        {
          CFRelease(v42);
          value = 0;
        }

        v46 = v49;
        if (v49)
        {
          CFRelease(v49);
        }

        volumeController_handleAirPlayMuteControlSupportDidChangeNotification(v46, v38, v39, a1);
LABEL_37:
        if (v48)
        {
          CFRelease(v48);
        }

        return;
      }

      v23 = CFDictionaryCreateMutable(v2, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v23, v10, value);
      CFDictionarySetValue(v23, v21, v49);
      volumeController_handleAirPlayVolumeDidChangeNotification(v24, v25, v7, a1, v23);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    v22 = value;
    goto LABEL_17;
  }
}

void volumeController_handleAirPlayVolumeDidChangeNotification(int a1, int a2, int a3, CFTypeRef cf, const void *a5)
{
  cfa[16] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = FigEndpointGetTypeID();
    if (a5)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          v26 = 0;
          v9 = *MEMORY[0x1E695E480];
          CMBaseObject = FigEndpointGetCMBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            v11(CMBaseObject, *MEMORY[0x1E6962238], v9, &v26);
            v12 = v26;
          }

          else
          {
            v12 = 0;
          }

          if (volumeController_contextSupportsVolumeOperations(v12))
          {
            v25 = 0;
            v13 = FigEndpointGetCMBaseObject();
            v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v14)
            {
              v14(v13, *MEMORY[0x1E69621E8], v9, &v25);
            }

            v24 = 0;
            v15 = FigEndpointGetCMBaseObject();
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v16)
            {
              v16(v15, *MEMORY[0x1E69620F8], v9, &v24);
            }

            if (dword_1EB75DEA0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v24)
            {
              cfa[0] = 0;
              v18 = FigEndpointGetCMBaseObject();
              v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v19)
              {
                v19(v18, *MEMORY[0x1E6962338], v9, cfa);
                if (cfa[0])
                {
                  FigCFNumberGetFloat32();
                  v21 = v20;
                  volumeController_recomputeMainVolume(v26, v20);
                  volumeController_postEndpointVolumeDidChangeNotification();
                  if (!CMSMDeviceState_IsHomePodHub())
                  {
                    VolumeNotificationPayload = CMSMNotificationUtility_CreateVolumeNotificationPayload(@"Audio/Video", @"ExplicitVolumeChange", 0, 0, 0, v21);
                    CMSMNotificationUtility_PostVolumeDidChangeToAVSystemControllersWithPayload(VolumeNotificationPayload);
                    if (VolumeNotificationPayload)
                    {
                      CFRelease(VolumeNotificationPayload);
                    }
                  }

                  if (cfa[0])
                  {
                    CFRelease(cfa[0]);
                  }
                }
              }

              if (v24)
              {
                CFRelease(v24);
                v24 = 0;
              }
            }

            if (v25)
            {
              CFRelease(v25);
              v25 = 0;
            }
          }

          if (v26)
          {
            CFRelease(v26);
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void volumeController_handleAirPlayVolumeControlSupportDidChangeNotification(int a1, int a2, int a3, CFTypeRef cf)
{
  cfa[16] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == FigEndpointGetTypeID())
    {
      v21 = 0;
      v6 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E6962238], v6, &v21);
        v9 = v21;
      }

      else
      {
        v9 = 0;
      }

      if (volumeController_contextSupportsVolumeOperations(v9))
      {
        v10 = *MEMORY[0x1E695E4C0];
        v19 = *MEMORY[0x1E695E4C0];
        v20 = 0;
        v11 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(cf))
        {
          v12 = FigEndpointGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v13(v12, *MEMORY[0x1E69620F8], v6, &v20);
          }

          v14 = FigEndpointGetCMBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(v14, *MEMORY[0x1E6962340], v6, &v19);
          }

          v16 = MEMORY[0x1E695E4D0];
          if (dword_1EB75DEA0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          volumeController_postEndpointVolumeControlDidChangeNotification(v20, v19 == *v16);
          cfa[0] = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpoints(v21, cfa);
          volumeController_updateMainVolumeControl(v21, cfa[0]);
          if (cfa[0])
          {
            CFRelease(cfa[0]);
          }

          v10 = v19;
        }

        if (v10)
        {
          CFRelease(v10);
          v19 = 0;
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void volumeController_handleAirPlayVolumeControlTypeDidChangeNotification(int a1, int a2, int a3, CFTypeRef cf)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == FigEndpointGetTypeID())
    {
      v18 = 0;
      v6 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E6962238], v6, &v18);
        v9 = v18;
      }

      else
      {
        v9 = 0;
      }

      if (volumeController_contextSupportsVolumeOperations(v9))
      {
        v10 = *MEMORY[0x1E69626A8];
        if (FigRoutingManagerIsEndpointOfType(cf))
        {
          v16 = 0;
          v17 = 0;
          v11 = FigEndpointGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(v11, *MEMORY[0x1E69620F8], v6, &v17);
          }

          v13 = FigEndpointGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(v13, *MEMORY[0x1E6962348], v6, &v16);
            if (v16)
            {
              FigCFNumberGetUInt64();
              volumeController_postEndpointVolumeControlTypeDidChangeNotification();
            }
          }

          cfa = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpoints(v18, &cfa);
          volumeController_updateMainVolumeControlType(v18, cfa);
          if (cfa)
          {
            CFRelease(cfa);
            cfa = 0;
          }

          if (v17)
          {
            CFRelease(v17);
            v17 = 0;
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }
  }
}

void volumeController_handleAirPlayMutedByUserDidChangeNotification(int a1, int a2, int a3, CFTypeRef cf, const void *a5)
{
  v25[26] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = FigEndpointGetTypeID();
    if (a5)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          v25[0] = 0;
          v9 = *MEMORY[0x1E695E480];
          CMBaseObject = FigEndpointGetCMBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            v11(CMBaseObject, *MEMORY[0x1E6962238], v9, v25);
            v12 = v25[0];
          }

          else
          {
            v12 = 0;
          }

          if (volumeController_contextSupportsVolumeOperations(v12))
          {
            v24 = 0;
            v13 = FigEndpointGetCMBaseObject();
            v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v14)
            {
              v14(v13, *MEMORY[0x1E69621E8], v9, &v24);
            }

            cfa = 0;
            v15 = FigEndpointGetCMBaseObject();
            v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v16)
            {
              v16(v15, *MEMORY[0x1E69620F8], v9, &cfa);
            }

            v22 = *MEMORY[0x1E695E4C0];
            v17 = FigEndpointGetCMBaseObject();
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v18)
            {
              v18(v17, *MEMORY[0x1E6962170], v9, &v22);
            }

            if (dword_1EB75DEA0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v20 = cfa;
            if (cfa && v22)
            {
              volumeController_postEndpointMuteByUserDidChangeNotification();
              v20 = cfa;
            }

            if (v20)
            {
              CFRelease(v20);
              cfa = 0;
            }

            if (v22)
            {
              CFRelease(v22);
              v22 = 0;
            }

            if (v24)
            {
              CFRelease(v24);
              v24 = 0;
            }
          }

          if (v25[0])
          {
            CFRelease(v25[0]);
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void volumeController_handleAirPlayMuteControlSupportDidChangeNotification(int a1, int a2, int a3, CFTypeRef cf)
{
  cfa[16] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == FigEndpointGetTypeID())
    {
      v18 = 0;
      v5 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(CMBaseObject, *MEMORY[0x1E6962238], v5, &v18);
        v8 = v18;
      }

      else
      {
        v8 = 0;
      }

      if (volumeController_contextSupportsVolumeOperations(v8))
      {
        v16 = 0;
        v17 = 0;
        v9 = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(v9, *MEMORY[0x1E69620F8], v5, &v17);
        }

        v11 = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, *MEMORY[0x1E69621E0], v5, &v16);
          if (v16)
          {
            Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            cfa[0] = 0;
            FigVolumeControllerCopySharedController(cfa);
            volumeController_postNotificationWithPayload(cfa[0], @"muteControlSupportDidChange", Mutable);
            if (cfa[0])
            {
              CFRelease(cfa[0]);
              cfa[0] = 0;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }

        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v16)
        {
          CFRelease(v16);
          v16 = 0;
        }

        if (v17)
        {
          CFRelease(v17);
          v17 = 0;
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void volumeController_handleCurrentRouteHasInputGainControlDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9[20] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  if (FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v9))
  {
    volumeController_handleCurrentRouteHasInputGainControlDidChangeNotification_cold_1();
  }

  else
  {
    v6 = [objc_msgSend(a5 objectForKey:{0x1F289BBB0), "BOOLValue"}];
    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    volumeController_postMainVolumeControlDidChangeNotification(v9[0], v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void volumeController_handleDeviceInputGainScalarDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11[20] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  if (FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v11))
  {
    volumeController_handleDeviceInputGainScalarDidChangeNotification_cold_1();
  }

  else
  {
    v6 = [a5 objectForKey:0x1F289BBD0];
    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v6 floatValue];
    volumeController_postMainVolumeDidChangeNotification();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(uint64_t a1)
{
  if (a1)
  {
    v11 = 0;
    FigVolumeControllerCopySharedController(&v11);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 8) + 48);
    if (v3)
    {
      v4 = *(VTable + 8) + 48;
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = *MEMORY[0x1E69619E0];
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = *MEMORY[0x1E69619D0];
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = *MEMORY[0x1E69619D8];
    CMNotificationCenterRemoveListener();
    if (MX_FeatureFlags_IsMuteEnabled())
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v8 = *MEMORY[0x1E6961978];
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      v9 = *MEMORY[0x1E6961988];
      CMNotificationCenterRemoveListener();
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

uint64_t FigVolumeControllerUnmuteEndpointIfAlreadyMuted(uint64_t a1)
{
  v16[22] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  FigVolumeControllerCopySharedController(v16);
  v14 = 0;
  cf = 0;
  if (a1)
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69621E8], v2, &cf);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69620F8], v2, &v14);
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    v13 = 0;
    MuteOfEndpointWithID = volumeController_GetMuteOfEndpointWithID(v16[0], v7, &v13);
    if (v13)
    {
      if (dword_1EB75DEA0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MuteOfEndpointWithID = volumeController_SetMuteOfEndpointWithID(v16[0], v14, 0);
    }

    v10 = MuteOfEndpointWithID;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v14)
    {
      CFRelease(v14);
      v14 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v16[0])
  {
    CFRelease(v16[0]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t volumeController_GetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    return 0;
  }

  v17 = 0;
  cf = 0;
  volumeController_copyEndpointWithID(a1, a2, &cf);
  v6 = *MEMORY[0x1E69626A8];
  if (FigRoutingManagerIsEndpointOfType(cf))
  {
    v16 = 0;
    if (!cf)
    {
      return 4294949706;
    }

    v7 = CFRetain(cf);
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

    v11 = v10(CMBaseObject, *MEMORY[0x1E6962170], v8, &v16);
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
      v14(v13, *MEMORY[0x1E69621E8], v8, &v17);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_18;
  }

  v11 = 0;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

uint64_t volumeController_SetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, int a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsMuteEnabled())
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    volumeController_copyEndpointWithID(a1, a2, &v17);
    if (v17 && (CMBaseObject = FigEndpointGetCMBaseObject(), (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v7(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v15), v15))
    {
      v8 = *MEMORY[0x1E69626A8];
      if (FigRoutingManagerIsEndpointOfType(v17))
      {
        FigRoutingManagerContextUtilities_CopyPickedEndpoints(v15, &v16);
        v9 = FigCFArrayContainsValue();
        if (FigRoutingManagerIsEndpointWHAGroupable(v17))
        {
          cf[0] = 0;
          FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v15, cf);
          v10 = v17;
          v11 = cf[0];
          if (!cf[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
          {
            v11 = 0;
          }

          if (FigRoutingManagerIsEndpointPresentInAggregate(v10, v11))
          {
            v9 = 1;
          }

          else
          {
            v9 = v9;
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v9)
        {
          v9 = volumeController_setMuteForEndpoint(v17, a3);
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
        v9 = 0;
      }

      if (v17)
      {
        CFRelease(v17);
        v17 = 0;
      }

      if (v16)
      {
        CFRelease(v16);
        v16 = 0;
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      v9 = 4294949706;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

CFMutableDictionaryRef volumeController_createContextStateDict(float a1)
{
  valuePtr = a1;
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFNumberCreate(v1, kCFNumberFloat32Type, &valuePtr);
  FigCFDictionarySetValue();
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

float volumeController_getCachedMainVolume(const void *a1)
{
  valuePtr = 0.0;
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), a1);
  if (Value)
  {
    v5 = CFDictionaryGetValue(Value, @"MainVolume");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr);
    }
  }

  v6 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return valuePtr;
}

float volumeController_getMaxSubEndpointVolume(const __CFArray *a1)
{
  if (!a1)
  {
    volumeController_isBluetoothSharingMainVolumeSupported(0);
    return -1.0;
  }

  if (CFArrayGetCount(a1) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v3 = -1.0;
    if (ValueAtIndex)
    {
      v4 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        theArray = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v7 = *(*(VTable + 8) + 48);
        if (v7)
        {
          v8 = *(VTable + 8) + 48;
          v9 = *MEMORY[0x1E695E480];
          v7(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
          if (!theArray)
          {
            return v3;
          }

          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v11 = Count;
            v12 = 0;
            v13 = *MEMORY[0x1E69621E8];
            do
            {
              v14 = CFArrayGetValueAtIndex(theArray, v12);
              cf = 0;
              v15 = FigEndpointGetCMBaseObject();
              v16 = CMBaseObjectGetVTable();
              v17 = *(*(v16 + 8) + 48);
              if (v17)
              {
                v18 = *(v16 + 8) + 48;
                v17(v15, v13, v9, &cf);
              }

              if (v14)
              {
                v14 = CFRetain(v14);
              }

              SubEndpointVolume = volumecontroller_getSubEndpointVolume(v14);
              if (SubEndpointVolume > v3)
              {
                v3 = SubEndpointVolume;
              }

              if (v14)
              {
                CFRelease(v14);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              ++v12;
            }

            while (v11 != v12);
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }
  }

  else
  {
    v3 = -1.0;
    if (volumeController_isBluetoothSharingMainVolumeSupported(a1))
    {
      v20 = CFArrayGetCount(a1);
      if (v20 >= 1)
      {
        v21 = v20;
        for (i = 0; i != v21; ++i)
        {
          v23 = CFArrayGetValueAtIndex(a1, i);
          LODWORD(theArray) = 0;
          volumeController_getVolumeForEndpoint(v23, &theArray);
          if (*&theArray > v3)
          {
            v3 = *&theArray;
          }
        }
      }
    }
  }

  return v3;
}

void volumeController_updateMainVolumeCache(uint64_t a1, float a2)
{
  if (a1)
  {
    ContextStateDict = volumeController_createContextStateDict(a2);
    cf = 0;
    FigVolumeControllerCopySharedController(&cf);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = *(DerivedStorage + 8);
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    FigCFDictionarySetValue();
    v8 = *(DerivedStorage + 8);
    FigSimpleMutexUnlock();
    if (ContextStateDict)
    {
      CFRelease(ContextStateDict);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(a1, &cf);
  if (cf)
  {
    Count = CFArrayGetCount(cf);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
        volumeController_updateMainVolumeCache(ValueAtIndex, a2);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void volumeController_updateMainVolumeControl(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v5 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        isAirPlayMainVolumeSupported = volumeController_isAirPlayMainVolumeSupported();

        volumeController_postMainVolumeControlDidChangeNotification(a1, isAirPlayMainVolumeSupported);
      }
    }
  }
}

void volumeController_updateMainVolumeControlType(int a1, CFArrayRef theArray)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v4 = *MEMORY[0x1E69626B0];
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex))
      {
        volumeController_getAirPlayMainVolumeControlType();

        volumeController_postMainVolumeControlTypeDidChangeNotification();
      }
    }
  }
}

void FigVolumeControllerRecomputeMainVolume(const void *a1, float a2)
{
  if (volumeController_contextSupportsVolumeOperations(a1))
  {

    volumeController_recomputeMainVolume(a1, a2);
  }
}

uint64_t volumeController_contextSupportsVolumeOperations(const void *a1)
{
  cf = 0;
  FigVolumeControllerCopySharedController(&cf);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  FigSimpleMutexLock();
  v4 = CFDictionaryContainsKey(*(DerivedStorage + 16), a1);
  v5 = *(DerivedStorage + 8);
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void __FigVolumeControllerCopySharedController_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (dword_1EB75DEA0 >= 0x100)
  {
    dword_1EB75DEA0 = 0;
  }

  FigVolumeControllerGetClassID();
  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = FigSimpleMutexCreate();
    DerivedStorage[1] = v3;
    if (v3 && (v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v5 = dispatch_queue_create("com.apple.coremedia.volumeController.notificationqueue", v4), (*DerivedStorage = v5) != 0) && (Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (DerivedStorage[2] = Mutable) != 0))
    {
      v7 = 0;
      FigVolumeControllerCopySharedController_volumeController = 0;
    }

    else
    {
      v7 = -17591;
    }
  }

  FigVolumeControllerCopySharedController_err = v7;
}

void volumeController_postNotificationWithPayload(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    Value = CFDictionaryGetValue(a3, @"masterVolumeKey_RoutingContextUUID");
    FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs(Value, &v11);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRetain(v11);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = *DerivedStorage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __volumeController_postNotificationWithPayload_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;
  v10[7] = v8;
  MXDispatchAsync("volumeController_postNotificationWithPayload", "FigVolumeController.m", 657, 0, 0, v9, v10);
  if (v11)
  {
    CFRelease(v11);
  }
}

void __volumeController_postNotificationWithPayload_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v3 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 32);
  if (FigCFEqual())
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 32);
  if (FigCFEqual() || (v12 = *(a1 + 32), FigCFEqual()) || (v13 = *(a1 + 32), FigCFEqual()) || (v14 = *(a1 + 32), FigCFEqual()) || (v15 = *(a1 + 32), FigCFEqual()) || (v16 = *(a1 + 32), FigCFEqual()) || (v17 = *(a1 + 32), FigCFEqual()) || (v18 = *(a1 + 32), FigCFEqual()))
  {
LABEL_18:
    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v20 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  v23 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v24 = *(a1 + 56);
  if (v24)
  {
    Count = CFArrayGetCount(v24);
    if (Count >= 1)
    {
      v26 = Count;
      v27 = 0;
      v28 = *MEMORY[0x1E695E480];
      v38 = Count;
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v27);
        MutableCopy = CFDictionaryCreateMutableCopy(v28, 0, *(a1 + 40));
        FigCFDictionarySetValue();
        if (dword_1EB75DEA0)
        {
          v30 = v20;
        }

        else
        {
          v30 = 0;
        }

        if (v30 == 1)
        {
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v26 = v38;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        v32 = *(a1 + 32);
        v33 = *(a1 + 48);
        CMNotificationCenterPostNotification();
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        ++v27;
      }

      while (v26 != v27);
    }

    v34 = *(a1 + 56);
    if (v34)
    {
      CFRelease(v34);
    }
  }

  v35 = *(a1 + 40);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *MEMORY[0x1E69E9840];
}