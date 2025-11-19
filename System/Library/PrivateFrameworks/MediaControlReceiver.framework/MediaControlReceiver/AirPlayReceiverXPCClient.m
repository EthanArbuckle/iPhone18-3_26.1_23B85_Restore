@interface AirPlayReceiverXPCClient
@end

@implementation AirPlayReceiverXPCClient

void __AirPlayReceiverXPCClient_Connect_block_invoke(uint64_t a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.airplay.receiver", **(a1 + 32), 0);
  v3 = *(a1 + 32);
  *(v3 + 24) = mach_service;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __AirPlayReceiverXPCClient_Connect_block_invoke_2;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = v3;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(*(*(a1 + 32) + 24));
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    v4 = *(a1 + 32);
    LogPrintF();
  }

  _AirPlayReceiverXPCClient_SendPingMsg(*(a1 + 32));
}

uint64_t ___AirPlayReceiverXPCClient_StopVideo_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopVideo:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t ___AirPlayReceiverXPCClient_StopPresentation_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopPresentation:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t ___AirPlayReceiverXPCClient_StopAudio_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopAudio:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void __AirPlayReceiverXPCClient_Connect_block_invoke_2(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 10 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    v54 = a2;
    LogPrintF();
  }

  if (a2 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 100 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StopAllActiveSessions(v3);
    return;
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 100 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverXPCClient_StopAllActiveSessions(v3);
    v20 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_SendPingMsg(v3);
    return;
  }

  if (MEMORY[0x259C83080](a2) != MEMORY[0x277D86468])
  {
    v51 = *MEMORY[0x277D85DE8];
LABEL_129:

    APSLogErrorAt();
    return;
  }

  string = xpc_dictionary_get_string(a2, "function");
  if (!string)
  {
    v52 = *MEMORY[0x277D85DE8];
    goto LABEL_129;
  }

  v5 = string;
  if (!strcmp(string, "getProperty"))
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    LODWORD(v66) = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3052000000;
    v58 = __Block_byref_object_copy_;
    v59 = __Block_byref_object_dispose_;
    v60 = 0;
    v6 = xpc_dictionary_copy_cf_object();
    *(v56 + 40) = 0;
    v7 = xpc_dictionary_copy_cf_object();
    if (*(v64 + 6))
    {
      APSLogErrorAt();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = *(v3 + 8);
        block = MEMORY[0x277D85DD0];
        v74 = 3221225472;
        v75 = ___AirPlayReceiverXPCClient_GetProperty_block_invoke;
        v76 = &unk_27989A290;
        v77 = v7;
        v78 = v6;
        v79 = &v55;
        v80 = &v63;
        v81 = v3;
        dispatch_sync(v8, &block);
      }

      else
      {
        APSLogErrorAt();
        *(v64 + 6) = -6756;
      }
    }

    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(reply, "error", *(v64 + 6));
    if (*(v56 + 40))
    {
      xpc_dictionary_set_cf_object();
    }

    xpc_connection_send_message(*(v3 + 24), reply);
    xpc_release(reply);

    goto LABEL_39;
  }

  if (!strcmp(v5, "postActivity"))
  {
    if (*(v3 + 32))
    {
      v11 = *(v3 + 8);
      block = MEMORY[0x277D85DD0];
      v74 = 3221225472;
      v75 = ___AirPlayReceiverXPCClient_PostActivity_block_invoke;
      v76 = &__block_descriptor_40_e5_v8__0l;
      v77 = v3;
      dispatch_sync(v11, &block);
      v12 = 0;
    }

    else
    {
      APSLogErrorAt();
      v12 = -6745;
    }

    v13 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v13, "error", v12);
    xpc_connection_send_message(*(v3 + 24), v13);
    xpc_release(v13);
    goto LABEL_111;
  }

  if (!strcmp(v5, "setProperty"))
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    LODWORD(v58) = 0;
    v15 = xpc_dictionary_copy_cf_object();
    v16 = xpc_dictionary_copy_cf_object();
    v17 = xpc_dictionary_copy_cf_object();
    if (*(v56 + 24))
    {
      APSLogErrorAt();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *(v3 + 8);
        block = MEMORY[0x277D85DD0];
        v74 = 3221225472;
        v75 = ___AirPlayReceiverXPCClient_SetProperty_block_invoke;
        v76 = &unk_27989A2B8;
        v80 = &v55;
        v81 = v3;
        v77 = v17;
        v78 = v15;
        v79 = v16;
        dispatch_sync(v18, &block);
      }

      else
      {
        APSLogErrorAt();
        *(v56 + 24) = -6756;
      }
    }

    v19 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v19, "error", *(v56 + 24));
    xpc_connection_send_message(*(v3 + 24), v19);
    xpc_release(v19);

LABEL_51:
    v10 = &v55;
    goto LABEL_110;
  }

  if (!strcmp(v5, "perform"))
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    LODWORD(v66) = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3052000000;
    v58 = __Block_byref_object_copy_;
    v59 = __Block_byref_object_dispose_;
    v60 = 0;
    v21 = xpc_dictionary_copy_cf_object();
    if (!*(v64 + 6))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = xpc_dictionary_copy_cf_object();
        if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v23 = *(v3 + 8);
          block = MEMORY[0x277D85DD0];
          v74 = 3221225472;
          v75 = ___AirPlayReceiverXPCClient_Perform_block_invoke;
          v76 = &unk_27989A290;
          v77 = v21;
          v78 = v22;
          v79 = &v63;
          v80 = &v55;
          v81 = v3;
          dispatch_sync(v23, &block);
LABEL_61:
          v24 = xpc_dictionary_create_reply(a2);
          xpc_dictionary_set_int64(v24, "error", *(v64 + 6));
          if (*(v56 + 40))
          {
            xpc_dictionary_set_cf_object();
          }

          xpc_connection_send_message(*(v3 + 24), v24);
          xpc_release(v24);

LABEL_39:
          _Block_object_dispose(&v55, 8);
          v10 = &v63;
LABEL_110:
          _Block_object_dispose(v10, 8);
LABEL_111:
          v45 = *MEMORY[0x277D85DE8];
          return;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v22 = 0;
      }

      *(v64 + 6) = -6756;
      goto LABEL_61;
    }

    APSLogErrorAt();
    v22 = 0;
    goto LABEL_61;
  }

  if (!strcmp(v5, "startPresentation"))
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3052000000;
    v66 = __Block_byref_object_copy_;
    v67 = __Block_byref_object_dispose_;
    v68 = 0;
    LOBYTE(block) = 0;
    v25 = xpc_dictionary_copy_cf_object();
    if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v26 = *(v3 + 40);
      if (v26)
      {
        if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        *(v70 + 6) = 0;
        goto LABEL_100;
      }

      if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!*(v3 + 32))
      {
        APSLogErrorAt();
        v53 = -6745;
        goto LABEL_150;
      }

      *(v70 + 6) = -6700;
      v33 = *(v3 + 8);
      v55 = MEMORY[0x277D85DD0];
      v56 = 3221225472;
      v57 = ___AirPlayReceiverXPCClient_StartPresentation_block_invoke;
      v58 = &unk_27989A2E0;
      v59 = v25;
      v60 = &v69;
      v61 = &v63;
      v62 = v3;
      dispatch_sync(v33, &v55);
      if (*(v70 + 6))
      {
        v43 = 0;
        goto LABEL_105;
      }

      v26 = [v64[5] objectForKey:@"presentationLayer"];
      if (!v26)
      {
        APSLogErrorAt();
        v53 = -6712;
        goto LABEL_150;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v26;
        *(v3 + 40) = v26;
LABEL_100:
        *(v3 + 58) = 1;
        if (v25)
        {
          Int64 = CFDictionaryGetInt64();
        }

        else
        {
          Int64 = 0;
        }

        *(v3 + 64) = Int64;
        [v26 frame];
        __snprintf_chk(&block, 0x80uLL, 0, 0x80uLL, "%f,%f,%f,%f", v36, v37, v38, v39);
        xpc_dictionary_get_uint64(a2, "presentationContextID");
        CALayerForRemoteDrawing = CreateCALayerForRemoteDrawing();
        v41 = CALayerForRemoteDrawing;
        if (CALayerForRemoteDrawing)
        {
          [CALayerForRemoteDrawing setName:@"AirPlayReceiverUI_ClientLayerHost"];
          [v41 setEdgeAntialiasingMask:0];
          [*(v3 + 48) removeFromSuperlayer];

          *(v3 + 48) = v41;
          [MEMORY[0x277CD9FF0] flush];
          [MEMORY[0x277CD9FF0] synchronize];
          v42 = objc_alloc(MEMORY[0x277CBEB38]);
          v43 = [v42 initWithDictionary:v64[5]];
          [v43 removeObjectForKey:@"presentationLayer"];
LABEL_105:
          v44 = xpc_dictionary_create_reply(a2);
          xpc_dictionary_set_int64(v44, "error", *(v70 + 6));
          if (v43)
          {
            xpc_dictionary_set_cf_object();
          }

          if (block)
          {
            xpc_dictionary_set_string(v44, "presentationFrame", &block);
          }

          xpc_connection_send_message(*(v3 + 24), v44);
          xpc_release(v44);

          _Block_object_dispose(&v63, 8);
          v10 = &v69;
          goto LABEL_110;
        }

        APSLogErrorAt();
        v53 = -6700;
LABEL_150:
        v43 = 0;
        *(v70 + 6) = v53;
        goto LABEL_105;
      }
    }

    APSLogErrorAt();
    v53 = -6756;
    goto LABEL_150;
  }

  if (!strcmp(v5, "stopPresentation"))
  {
    v27 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StopPresentation(v3, a2);
    return;
  }

  if (!strcmp(v5, "showProgress"))
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    LODWORD(v58) = 0;
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v3 + 32))
    {
      v31 = *(v3 + 8);
      block = MEMORY[0x277D85DD0];
      v74 = 3221225472;
      v75 = ___AirPlayReceiverXPCClient_ShowProgress_block_invoke;
      v76 = &unk_27989A308;
      v77 = &v55;
      v78 = v3;
      dispatch_sync(v31, &block);
    }

    else
    {
      APSLogErrorAt();
      *(v56 + 24) = -6745;
    }

    v32 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v32, "error", *(v56 + 24));
    xpc_connection_send_message(*(v3 + 24), v32);
    xpc_release(v32);
    goto LABEL_51;
  }

  if (!strcmp(v5, "hideProgress"))
  {
    v28 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_HideProgress(v3, a2);
  }

  else if (!strcmp(v5, "startVideo"))
  {
    v29 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StartVideo(v3, a2);
  }

  else if (!strcmp(v5, "stopVideo"))
  {
    v30 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StopVideo(v3, a2);
  }

  else if (!strcmp(v5, "startAudio"))
  {
    v46 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StartAudio(v3, a2);
  }

  else if (!strcmp(v5, "stopAudio"))
  {
    v47 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_StopAudio(v3, a2);
  }

  else if (!strcmp(v5, "updateAudioMetaData"))
  {
    v48 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_UpdateAudioMetaData(v3, a2);
  }

  else if (!strcmp(v5, "updateAudioProgress"))
  {
    v49 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_UpdateAudioProgress(v3, a2);
  }

  else
  {
    if (strcmp(v5, "detach"))
    {
      if (gLogCategory_AirPlayReceiverXPCClientCore <= 60 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_111;
    }

    v50 = *MEMORY[0x277D85DE8];

    _AirPlayReceiverXPCClient_Detach(v3, a2);
  }
}

id ___AirPlayReceiverXPCClient_GetProperty_block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[8] + 32) airplayUIGetProperty:a1[4] qualifier:a1[5] error:*(a1[7] + 8) + 24];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

uint64_t ___AirPlayReceiverXPCClient_SetProperty_block_invoke(void *a1)
{
  result = [*(a1[8] + 32) airplayUISetProperty:a1[4] qualifier:a1[5] value:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

id ___AirPlayReceiverXPCClient_Perform_block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[8] + 32) airplayUIPerform:a1[4] inputParams:a1[5] outputParams:*(a1[7] + 8) + 40];
  v2 = *(*(a1[7] + 8) + 40);

  return v2;
}

id ___AirPlayReceiverXPCClient_StartPresentation_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartPresentation:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

uint64_t ___AirPlayReceiverXPCClient_ShowProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIShowProgress];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___AirPlayReceiverXPCClient_UpdateAudioProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIUpdateAudioProgress:*(a1 + 48) duration:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___AirPlayReceiverXPCClient_UpdateAudioMetaData_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIUpdateAudioMetaData:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

id ___AirPlayReceiverXPCClient_StartAudio_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartAudio:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

id ___AirPlayReceiverXPCClient_StartVideo_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartVideo:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

uint64_t ___AirPlayReceiverXPCClient_HideProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIHideProgress];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __AirPlayReceiverXPCClient_PostEvent_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (!strcmp(v2, "ended") || !strcmp(v2, "error") || !strcmp(v2, "failedURLRequest") || !strcmp(v2, "loading") || !strcmp(v2, "metaDataChanged") || !strcmp(v2, "paused") || !strcmp(v2, "playing"))
  {
    goto LABEL_22;
  }

  if (!strcmp(v2, "stopAudio"))
  {
    v14 = *(v3 + 60);
    goto LABEL_23;
  }

  if (!strcmp(v2, "stopped"))
  {
LABEL_22:
    v5 = *(v3 + 68);
    goto LABEL_23;
  }

  if (strcmp(v2, "userDown") && strcmp(v2, "userNext") && strcmp(v2, "userPlayPause") && strcmp(v2, "userPrevious") && strcmp(v2, "userSelect") && strcmp(v2, "userStop") && strcmp(v2, "userUp"))
  {
    if (strcmp(v2, "currentItemChanged") && strcmp(v2, "itemPlayedToEnd") && strcmp(v2, "itemRemoved") && strcmp(v2, "dateRange") && strcmp(v2, "fpsSecureStopGenerated"))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v13 = *(v3 + 64);
LABEL_23:
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "function", "postEvent");
  xpc_dictionary_set_string(v6, "eventType", v2);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    goto LABEL_38;
  }

  CFDictionarySetNumber();
  if (!strcmp(v2, "dateRange"))
  {
    Value = CFDictionaryGetValue(v4, @"dateRangeArray");
    if (Value)
    {
      v11 = Value;
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFArrayGetCount(v11);
      CFArrayApplyBlock();
      if (Mutable)
      {
        CFDictionarySetValue(v8, @"dateRangeArray", Mutable);
      }

      goto LABEL_29;
    }

    if (gLogCategory_AirPlayReceiverXPCClientCore <= 90 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  Mutable = 0;
LABEL_29:
  xpc_dictionary_set_cf_object();
  CFRelease(v8);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  xpc_connection_send_message(*(v3 + 24), v6);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_38:
  xpc_release(v6);
  free(*(a1 + 40));
  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
  }
}

void ___AirPlayReceiverXPCClient_PostEvent_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 propertyList];
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 32), v3);

    CFRelease(v4);
  }

  else if (gLogCategory_AirPlayReceiverXPCClientCore <= 90 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

@end