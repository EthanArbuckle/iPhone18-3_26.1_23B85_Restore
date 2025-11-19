uint64_t singletonVolumeController_GetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (*(*(CMBaseObjectGetVTable() + 16) + 160))
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

uint64_t singletonVolumeController_CanSetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 184))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_CanSetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  if (*(*(CMBaseObjectGetVTable() + 16) + 192))
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

__CFString *volumeControllerRemote_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = 0;
  if (!volumeControllerRemote_getObjectID(a1, &v4))
  {
    CFStringAppendFormat(Mutable, 0, @"<FigVolumeControllerRemote %p, objectID = %llu>", a1, v4);
  }

  return Mutable;
}

uint64_t volumeControllerRemote_ChangeMasterVolumeOfRoutingContext(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v10 = 0;
  v8 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    ObjectID = volumeControllerRemote_getObjectID(v4, &v10);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(v2, &v8);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v8);
          xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_VolumeDelta, v3);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v6;
}

uint64_t volumeControllerRemote_SetMasterVolumeOfRoutingContext(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v10 = 0;
  v8 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    ObjectID = volumeControllerRemote_getObjectID(v4, &v10);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(v2, &v8);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v8);
          xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_Volume, v3);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v6;
}

uint64_t volumeControllerRemote_GetMasterVolumeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, value, v29, xdict) || (OUTLINED_FUNCTION_8(), v6 = FigXPCCreateBasicMessage(), v6) || OUTLINED_FUNCTION_31(v6, v7, v8, v9, v10, v11, v12, v13, valuea))
      {
        OUTLINED_FUNCTION_21();
      }

      else
      {
        xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
        v14 = OUTLINED_FUNCTION_11_2();
        v22 = OUTLINED_FUNCTION_22(v14, v15, v16, v17, v18, v19, v20, v21, valueb, v30);
        if (!v0)
        {
          v23 = xpc_dictionary_get_double(v22, kFigVolumeControllerXPCMsgParam_Volume);
          *v5 = v23;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v24 = *(v1 + 3512);
  OUTLINED_FUNCTION_29();
  return v0;
}

uint64_t volumeControllerRemote_GetVolumeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v25, v28, v31) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v26, v29);
      if (!v0)
      {
        v14 = xpc_dictionary_get_double(v13, kFigVolumeControllerXPCMsgParam_Volume);
        OUTLINED_FUNCTION_27(v14, v15, v16, v17, v18, v19, v20, v21, v22, v27, v30);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v23 = *(v1 + 3512);
  OUTLINED_FUNCTION_23();
  return v0;
}

uint64_t volumeControllerRemote_CanSetVolumeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_CanSetEndpointVolume);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v22 = *(v1 + 3512);
  OUTLINED_FUNCTION_23();
  return v0;
}

uint64_t volumeControllerRemote_SetVolumeOfRoomWithID(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  xdict = 0;
  v11 = 0;
  v4 = 4294949706;
  v9 = 0;
  if (a2 && a3)
  {
    ObjectID = volumeControllerRemote_getObjectID(a1, &v11);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(a2, &v9);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v9);
          ObjectID = FigXPCMessageSetCFString();
          if (!ObjectID)
          {
            xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_Volume, a4);
            ObjectID = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    v4 = ObjectID;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_29();
  return v4;
}

uint64_t volumeControllerRemote_SetMuteOfRoutingContext(uint64_t a1, uint64_t a2, int a3)
{
  xdict = 0;
  v10 = 0;
  v8 = 0;
  if (a2)
  {
    ObjectID = volumeControllerRemote_getObjectID(a1, &v10);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(a2, &v8);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v8);
          xpc_dictionary_set_BOOL(xdict, kFigVolumeControllerXPCMsgParam_Mute, a3 != 0);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_29();
  return v6;
}

uint64_t volumeControllerRemote_GetMuteOfRoutingContext()
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
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute);
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

uint64_t volumeControllerRemote_SetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, int a3)
{
  v33 = 0;
  if (a2)
  {
    if (volumeControllerRemote_getObjectID(a1, &v33))
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      OUTLINED_FUNCTION_25();
      v5 = FigXPCCreateBasicMessage();
      OUTLINED_FUNCTION_7_2(v5, v6, v7, v8, v9, v10, v11, v12, 0);
      if (!v3)
      {
        v13 = FigXPCMessageSetCFString();
        v21 = OUTLINED_FUNCTION_7_2(v13, v14, v15, v16, v17, v18, v19, v20, v31);
        xpc_dictionary_set_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute, a3 != 0);
        v22 = FigXPCRemoteClientSendSyncMessage();
        OUTLINED_FUNCTION_7_2(v22, v23, v24, v25, v26, v27, v28, v29, v32);
      }
    }
  }

  else
  {
    v3 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v3;
}

uint64_t volumeControllerRemote_GetMuteOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v22 = *(v1 + 3512);
  OUTLINED_FUNCTION_23();
  return v0;
}

uint64_t volumeControllerRemote_CanSetMuteOfRoutingContext()
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
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute);
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

uint64_t volumeControllerRemote_CanSetMuteOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  v22 = *(v1 + 3512);
  OUTLINED_FUNCTION_23();
  return v0;
}

uint64_t singletonVolumeController_copyCachedRemoteVolumeController_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t volumeControllerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t volumeControllerRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t LookupSystemControllerByObjectIDForConnection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSession_createInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSession_CopyDestination_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXSessionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXSessionCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionBeginInterruption_WithFlags_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionBeginInterruption_WithSecTaskAndFlags_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionEndInterruption_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _MXSessionEndInterruption_WithSecTaskAndStatus_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t volumeControllerServer_handleGetMasterVolumeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v9 = 0.0;
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v1, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v3 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v3)
  {
    v6 = v3;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 32))
  {
    v4 = OUTLINED_FUNCTION_14_3();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_double(v0, kFigVolumeControllerXPCMsgParam_Volume, v9);
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

uint64_t volumeControllerServer_handleGetEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_27_0();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_22_0() + 16) + 72))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_14_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_double(v0, kFigVolumeControllerXPCMsgParam_Volume, 0.0);
  }

  return v4;
}

uint64_t volumeControllerServer_handleCanSetEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 80))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_CanSetEndpointVolume, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleGetSubEndpointVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v1 = OUTLINED_FUNCTION_26_0();
  if (v1)
  {
    return v1;
  }

  v1 = OUTLINED_FUNCTION_28();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 96))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_2_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType, 0);
  }

  return v4;
}

uint64_t volumeControllerServer_handleSetSubEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v23 = *MEMORY[0x1E69E9840];
  v2 = FigXPCMessageCopyCFString();
  if (!v2)
  {
    v2 = FigXPCMessageCopyCFString();
    if (!v2)
    {
      v3 = xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
      if (dword_1EB75DEC0)
      {
        v4 = OUTLINED_FUNCTION_21_0();
        v12 = OUTLINED_FUNCTION_35(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22));
        if (OUTLINED_FUNCTION_10(v12))
        {
          OUTLINED_FUNCTION_12();
        }

        v13 = *(v1 + 3768);
        OUTLINED_FUNCTION_4_1();
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 104))
      {
        v16 = 4294954514;
        goto LABEL_11;
      }

      v14 = OUTLINED_FUNCTION_23_0();
      v2 = v15(v14, v3);
    }
  }

  v16 = v2;
LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t volumeControllerServer_handleGetSubEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v12 = 0;
  cf = 0;
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0 || (v0 = OUTLINED_FUNCTION_28(), v0))
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_37_0() + 16) + 112))
  {
    v1 = OUTLINED_FUNCTION_2_3();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v3, v4, v5, v6, v7, v8, v11, 0, 0, v14, 0);
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetRoomVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  v25 = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v3 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v3)
  {
    goto LABEL_9;
  }

  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    goto LABEL_9;
  }

  v4 = xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
  if (dword_1EB75DEC0)
  {
    v5 = OUTLINED_FUNCTION_21_0();
    v13 = OUTLINED_FUNCTION_35(v5, v6, v7, v8, v9, v10, v11, v12, v20, v21, v22, v23, SBYTE2(v23), BYTE3(v23), SHIDWORD(v23));
    if (OUTLINED_FUNCTION_10(v13))
    {
      v26 = 136315651;
      v27 = "volumeControllerServer_handleSetRoomVolumeMessage";
      v28 = 2048;
      v29 = v4;
      v30 = 2113;
      v31 = v25;
      OUTLINED_FUNCTION_12();
    }

    v14 = *(v1 + 3768);
    OUTLINED_FUNCTION_4_1();
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 120))
  {
    v15 = OUTLINED_FUNCTION_23_0();
    v3 = v16(v15, v4);
LABEL_9:
    v17 = v3;
    goto LABEL_11;
  }

  v17 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t volumeControllerServer_handleGetRoomVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v17 = 0;
  cf = 0;
  v15 = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2 || (v2 = OUTLINED_FUNCTION_26_0(), v2))
  {
    v11 = v2;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 128))
  {
    v3 = OUTLINED_FUNCTION_2_3();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v5, v6, v7, v8, v9, v10, v13, cf, v15, v16, v17);
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

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t volumeControllerServer_handleSetEndpointWithRoomIDVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    v1 = FigXPCMessageCopyCFString();
    if (!v1)
    {
      xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 208))
      {
        return 4294954514;
      }

      v2 = OUTLINED_FUNCTION_23_0();
      return v3(v2);
    }
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetEndpointWithRoomIDVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  cf = 0;
  v13 = 0;
  v0 = OUTLINED_FUNCTION_28();
  if (v0 || (v0 = OUTLINED_FUNCTION_26_0(), v0))
  {
    v9 = v0;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 216))
  {
    v1 = OUTLINED_FUNCTION_2_3();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v3, v4, v5, v6, v7, v8, v11, 0, 0, v14, 0);
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_20_0();
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    goto LABEL_4;
  }

  xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
  if (*(*(CMBaseObjectGetVTable() + 16) + 136))
  {
    v3 = OUTLINED_FUNCTION_11_3();
    v2 = v4(v3);
LABEL_4:
    v5 = v2;
    goto LABEL_6;
  }

  v5 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t volumeControllerServer_handleGetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 144))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
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

uint64_t volumeControllerServer_handleSetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
    if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      return 4294954514;
    }

    v2 = OUTLINED_FUNCTION_11_3();
    return v3(v2);
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 160))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    v1 = FigXPCMessageCopyCFString();
    if (!v1)
    {
      xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
      {
        return 4294954514;
      }

      v2 = OUTLINED_FUNCTION_11_3();
      return v3(v2);
    }
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_10_3();
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    return v0;
  }

  v0 = OUTLINED_FUNCTION_28();
  if (v0)
  {
    return v0;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 176))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_2_3();
  v3 = v2(v1);
  if (!v3)
  {
    OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_Mute, 0);
  }

  return v3;
}

uint64_t volumeControllerServer_handleCanSetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 184))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
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

uint64_t volumeControllerServer_handleCanSetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 192))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleCanSetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_10_3();
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    return v0;
  }

  v0 = OUTLINED_FUNCTION_28();
  if (v0)
  {
    return v0;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 200))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_2_3();
  v3 = v2(v1);
  if (!v3)
  {
    OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_Mute, 0);
  }

  return v3;
}

uint64_t FigVibratorInitialize()
{
  if (gFVInfo)
  {
    return 0;
  }

  v0 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10E2040E5D538DEuLL);
  if (v0)
  {
    v8 = v0;
    v0[112] = 0;
    *(v0 + 15) = 0;
    v0[192] = 0;
    *(v0 + 25) = 0;
    *(v0 + 52) = 0;
    *(v0 + 27) = 0;
    v0[224] = 0;
    *(v0 + 17) = 0;
    *v0 = 0;
    *(v0 + 1) = 0;
    *(v0 + 13) = 0;
    if (_MergedGlobals_6 != -1)
    {
      OUTLINED_FUNCTION_1_10();
      dispatch_once_f(v59, v60, v61);
    }

    if (gvVibeSynthIsAvailable)
    {
      *(v8 + 24) = dlsym(qword_1ED6D2F20, "VibeSynthEngineInitialize");
      *(v8 + 32) = dlsym(qword_1ED6D2F20, "VibeSynthEngineStartPrewarm");
      *(v8 + 40) = dlsym(qword_1ED6D2F20, "VibeSynthEngineStopPrewarm");
      *(v8 + 48) = dlsym(qword_1ED6D2F20, "VibeSynthEnginePlay");
      v9 = dlsym(qword_1ED6D2F20, "VibeSynthEngineCancelWithOptions");
      *(v8 + 56) = v9;
      v10 = *(v8 + 24);
      if (!v10 || !*(v8 + 32) || !*(v8 + 40) || !*(v8 + 48) || !v9)
      {
        goto LABEL_48;
      }

      v11 = v10();
      if (v11)
      {
LABEL_55:
        v52 = v11;
        goto LABEL_26;
      }

      *(v8 + 64) = 0;
    }

    else
    {
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v12 = OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v62, valuePtr.value);
      *(v8 + 48) = valuePtr;
      v20 = OUTLINED_FUNCTION_2_10(v12, v13, v14, v15, v16, v17, v18, v19, v63, valuePtr.value);
      *(v8 + 72) = valuePtr;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 108) = 0;
      *(v8 + 136) = 0;
      v28 = OUTLINED_FUNCTION_2_10(v20, v21, v22, v23, v24, v25, v26, v27, v64, valuePtr.value);
      *(v8 + 144) = valuePtr;
      OUTLINED_FUNCTION_2_10(v28, v29, v30, v31, v32, v33, v34, v35, v65, valuePtr.value);
      *(v8 + 168) = valuePtr;
      *(v8 + 128) = 0;
      v36 = *MEMORY[0x1E696CD60];
      v37 = IOServiceNameMatching("vibrator");
      MatchingService = IOServiceGetMatchingService(v36, v37);
      *(v8 + 24) = MatchingService;
      if (!MatchingService)
      {
        v52 = 4294950803;
        goto LABEL_26;
      }
    }

    v39 = FigSimpleMutexCreate();
    *v8 = v39;
    if (v39)
    {
      v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v41 = dispatch_queue_create("com.apple.coremedia.vibrator", v40);
      *(v8 + 8) = v41;
      if (v41)
      {
        v42 = notify_register_check("com.apple.coremedia.vibration", (v8 + 16));
        *(v8 + 20) = v42 == 0;
        if (!v42)
        {
          notify_set_state(*(v8 + 16), 0);
          notify_post("com.apple.coremedia.vibration");
        }

        if (gvVibeSynthIsAvailable)
        {
          goto LABEL_24;
        }

        v43 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v8 + 8));
        *(v8 + 96) = v43;
        if (!v43)
        {
          v52 = 4294950804;
          goto LABEL_26;
        }

        dispatch_source_set_timer(v43, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
        dispatch_source_set_event_handler(*(v8 + 96), DispatchSourceBlock);
        _Block_release(DispatchSourceBlock);
        dispatch_resume(*(v8 + 96));
        v45 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v8 + 32) = Mutable;
        if (Mutable)
        {
          Default = FVIOKit_VibePatternArrayCreateDefault(1.0);
          if (Default)
          {
            v48 = Default;
            CFDictionarySetValue(*(v8 + 32), @"hertz_millisecs", Default);
            CFRelease(v48);
            CFDictionarySetValue(*(v8 + 32), @"repeat", *MEMORY[0x1E695E4C0]);
            LODWORD(valuePtr.value) = 0;
            v49 = CFNumberCreate(v45, kCFNumberIntType, &valuePtr);
            *(v8 + 40) = v49;
            if (v49)
            {
              CMTimeMake(&valuePtr, 20, 1000);
              *(v8 + 48) = valuePtr;
              CMTimeMake(&valuePtr, 5000, 1000);
              *(v8 + 72) = valuePtr;
              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VibeWillStop", 0, 0, 1u);
LABEL_24:
              v51 = 0;
              atomic_compare_exchange_strong_explicit(&gFVInfo, &v51, v8, memory_order_relaxed, memory_order_relaxed);
              if (v51)
              {
                v52 = 0;
LABEL_26:
                if (*v8)
                {
                  FigSimpleMutexDestroy();
                  *v8 = 0;
                }

                if (!gvVibeSynthIsAvailable)
                {
                  v55 = *(v8 + 32);
                  if (v55)
                  {
                    CFRelease(v55);
                    *(v8 + 32) = 0;
                  }

                  v56 = *(v8 + 40);
                  if (v56)
                  {
                    CFRelease(v56);
                    *(v8 + 40) = 0;
                  }

                  v57 = *(v8 + 96);
                  if (v57)
                  {
                    dispatch_source_cancel(v57);
                    v58 = *(v8 + 96);
                    if (v58)
                    {
                      dispatch_release(v58);
                      *(v8 + 96) = 0;
                    }
                  }
                }

                v53 = *(v8 + 8);
                if (v53)
                {
                  dispatch_release(v53);
                  *(v8 + 8) = 0;
                }

                if (*(v8 + 20))
                {
                  notify_cancel(*(v8 + 16));
                }

                free(v8);
                return v52;
              }

              FigVibratorStopWithOptions(0);
              return 0;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_9();
            goto LABEL_54;
          }
        }
      }
    }

LABEL_48:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
LABEL_54:
    v11 = FigSignalErrorAtGM();
    goto LABEL_55;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_9();

  return FigSignalErrorAtGM();
}

uint64_t FigVibratorStopWithOptions(uint64_t a1)
{
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v2 = *gFVInfo;
  v3 = FigSimpleMutexLock();
  if (v3)
  {
    return v3;
  }

  v4 = gFVInfo;
  if (!gvVibeSynthIsAvailable)
  {
    v5 = FVIOKit_StopVibrator(gFVInfo);
    v4 = gFVInfo;
    if (v5)
    {
      goto LABEL_15;
    }

    if (*(gFVInfo + 112))
    {
      dispatch_source_set_timer(*(gFVInfo + 96), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v4 = gFVInfo;
      *(gFVInfo + 112) = 0;
      *(v4 + 192) = 0;
      if (*(v4 + 128))
      {
        CFRelease(*(v4 + 128));
        v4 = gFVInfo;
        *(gFVInfo + 128) = 0;
      }

      *(v4 + 216) = 0;
      *(v4 + 224) = 0;
      if (*(v4 + 200))
      {
        CFRelease(*(v4 + 200));
        v4 = gFVInfo;
        *(gFVInfo + 200) = 0;
      }
    }

    if (*(v4 + 104))
    {
      IOPMAssertionRelease(*(v4 + 108));
      v5 = 0;
      v4 = gFVInfo;
      *(gFVInfo + 104) = 0;
      *(v4 + 108) = 0;
      goto LABEL_15;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (!*(gFVInfo + 68))
  {
    goto LABEL_14;
  }

  v5 = (*(gFVInfo + 56))(a1);
  v4 = gFVInfo;
LABEL_15:
  v6 = *v4;
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigVibratorStartPrewarm(int a1)
{
  if (!gvVibeSynthIsAvailable)
  {
    return 0;
  }

  v1 = gFVInfo;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v2 = !*(gFVInfo + 64) && !*(gFVInfo + 65);
  if (a1 != 1)
  {
    if (!a1)
    {
      *(gFVInfo + 64) = 1;
    }

    if (v2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  *(gFVInfo + 65) = 1;
  if (!v2)
  {
    return 0;
  }

LABEL_10:
  v3 = *v1;
  result = FigSimpleMutexLock();
  if (!result)
  {
    v5 = (*(gFVInfo + 32))();
    v6 = *gFVInfo;
    FigSimpleMutexUnlock();
    return v5;
  }

  return result;
}

uint64_t FigVibratorStopPrewarm(int a1)
{
  if (!gvVibeSynthIsAvailable)
  {
    return 0;
  }

  v1 = gFVInfo;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v2 = *(gFVInfo + 64);
  if (!*(gFVInfo + 64) && !*(gFVInfo + 65))
  {
    return 0;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *(gFVInfo + 65) = 0;
    }

    if (*(v1 + 65) | v2)
    {
      return 0;
    }

    goto LABEL_11;
  }

  *(gFVInfo + 64) = 0;
  if (*(v1 + 65))
  {
    return 0;
  }

LABEL_11:
  v4 = *v1;
  result = FigSimpleMutexLock();
  if (!result)
  {
    v5 = (*(gFVInfo + 40))();
    v6 = *gFVInfo;
    FigSimpleMutexUnlock();
    return v5;
  }

  return result;
}

uint64_t FigVibratorPlayVibrationWithDictionary(CFDictionaryRef theDict, int a2, uint64_t a3, int a4, const void *a5, int a6, int a7, float a8)
{
  valuePtr = 1.0;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  if (gvVibeSynthIsAvailable)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"Intensity");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        v17 = valuePtr;
        if (valuePtr <= 1.0)
        {
          if (valuePtr < 0.0)
          {
            valuePtr = 0.0;
            v17 = 0.0;
          }

          goto LABEL_8;
        }

        valuePtr = 1.0;
      }

      v17 = 1.0;
LABEL_8:
      if (a2)
      {
        v17 = v17 * a8;
        valuePtr = v17;
      }

      return FVSynthEngine_PlayVibrationWithPatternDictionary(theDict, a3, a4, a5, a6, a7, v17);
    }

    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v26 = 0;
    v25 = 0.0;
    v24 = 0;
    *v23 = 0;
    FVIOKit_GetVibrationPatternFromDictionary(theDict, &v26 + 1, &v26, &v25, &valuePtr, v23, &v24 + 1, &v24);
    if (!v24)
    {
      v25 = 2678400.0;
    }

    if (a2)
    {
      valuePtr = valuePtr * a8;
    }

    v19 = valuePtr;
    if (*v23)
    {
      result = FVIOKit_PlayVibrationWithPattern(*v23, a5, valuePtr);
      if (result)
      {
        return result;
      }
    }

    else
    {
      CMTimeMakeWithSeconds(&v22, v25, 1000);
      CMTimeMakeWithSeconds(&v21, *&v26, 1000);
      CMTimeMakeWithSeconds(&v20, *(&v26 + 1), 1000);
      result = FVIOKit_PlayVibration(&v22, v19);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }
}

uint64_t FigVAEndpointCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t PowerManager_InitializeCPMSForHaptics()
{
  v52 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_7)
  {
    v1 = 0;
    goto LABEL_47;
  }

  qword_1ED6D2F30 = [MEMORY[0x1E6991F30] sharedCPMSAgent];
  if (!qword_1ED6D2F30)
  {
    goto LABEL_48;
  }

  qword_1ED6D2F38 = vaemCopyCPMSPowerBudgetRangeInMilliWatts(6);
  if (qword_1ED6D2F38)
  {
    *v42 = 0;
    v2 = qword_1ED6D2F30;
    v3 = objc_opt_new();
    [v3 setClientId:6];
    [v3 setPowerLevels:qword_1ED6D2F38];
    [v3 setIsContinuous:1];
    [v3 setNotificationCallback:&__block_literal_global_5_0];
    [v3 setGetCurrentPower:&__block_literal_global_46];
    [v3 setPowerBudgetUpdateMinimumPeriod:10];
    [v3 setPowerBudgetUpdateMinimumPeriod:1000];
    v4 = _MergedGlobals_7;
    if ((_MergedGlobals_7 & 1) == 0)
    {
      if (![v2 registerClientWithDescription:v3 error:v42])
      {
        v1 = 4294954513;
        goto LABEL_33;
      }

      _MergedGlobals_7 = 1;
    }

    v47 = 0;
    v5 = qword_1ED6D2F30;
    PowerBudgetRequestDict = PowerManager_CreatePowerBudgetRequestDict(qword_1ED6D2F38, 1);
    if (PowerBudgetRequestDict)
    {
      v7 = PowerBudgetRequestDict;
      v8 = [v5 copyPowerBudgetForRequest:PowerBudgetRequestDict forClient:6 error:&v47];
      if (v8)
      {
        v9 = v8;
        if (qword_1ED6D2F40)
        {
          CFRelease(qword_1ED6D2F40);
        }

        qword_1ED6D2F40 = v9;
        if (dword_1EB75DE40)
        {
          OUTLINED_FUNCTION_4_10();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (OUTLINED_FUNCTION_5_5(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v39, v40, v41, *v42, v43, v44, v45, *type))
          {
            v18 = v0;
          }

          else
          {
            v18 = v0 & 0xFFFFFFFE;
          }

          if (v18)
          {
            v48 = 136315394;
            v49 = "powerManager_RequestPowerBudgetFromCPMSForHapticsResource";
            v50 = 2114;
            v51 = qword_1ED6D2F40;
            OUTLINED_FUNCTION_2_11();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v7);
        v1 = PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(6, qword_1ED6D2F30, qword_1ED6D2F40);
        if ((v4 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_4_10();
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_5_5(v19, v20, v21, v22, v23, v24, v25, v26, v39, v40, v41, *v42, v43, v44, v45, *type))
      {
        v27 = v0;
      }

      else
      {
        v27 = v0 & 0xFFFFFFFE;
      }

      if (v27)
      {
        [v47 description];
        v48 = 136315394;
        v49 = "powerManager_RequestPowerBudgetFromCPMSForHapticsResource";
        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_0_17();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(v7);
    }

    v28 = OUTLINED_FUNCTION_3_7();
    v29 = v47;
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
      v48 = 136315138;
      v49 = "powerManager_RequestInitialBudgetFromCPMSForHapticsResource";
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_17();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v1 = 4294954510;
    if (!v4)
    {
LABEL_39:

      if (qword_1ED6D2F40)
      {
        if (v1 != -12783)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

LABEL_48:
      v1 = 4294954510;
      goto LABEL_47;
    }

LABEL_33:
    v31 = OUTLINED_FUNCTION_3_7();
    v32 = v47;
    if (os_log_type_enabled(v31, type[0]))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      [*v42 description];
      v48 = 136315394;
      v49 = "powerManager_RequestInitialBudgetFromCPMSForHapticsResource";
      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_2_11();
    }

    OUTLINED_FUNCTION_0_17();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_39;
  }

LABEL_41:
  LODWORD(v47) = 0;
  v42[0] = OS_LOG_TYPE_DEFAULT;
  v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v35 = v47;
  if (os_log_type_enabled(v34, v42[0]))
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 & 0xFFFFFFFE;
  }

  if (v36)
  {
    [0 description];
    v48 = 136315394;
    v49 = "PowerManager_InitializeCPMSForHaptics";
    OUTLINED_FUNCTION_1_11();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_0_17();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v1 = 4294954513;
LABEL_47:
  v37 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t FVSynthEngine_PlayVibrationWithPatternDictionary(uint64_t a1, uint64_t a2, int a3, const void *a4, int a5, int a6, float a7)
{
  v28[16] = *MEMORY[0x1E69E9840];
  if (!gFVInfo)
  {
    v22 = 4294950806;
LABEL_22:
    v24 = *MEMORY[0x1E69E9840];
    return v22;
  }

  if (a7 < 0.0 || a7 > 1.0)
  {
    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (a1)
    {
      v15 = *gFVInfo;
      v16 = FigSimpleMutexLock();
      if (v16)
      {
        v22 = v16;
      }

      else
      {
        v17 = gFVInfo;
        v18 = (a3 != 0) | (2 * (a5 != 0));
        if (a6)
        {
          v19 = v18 | 4;
        }

        else
        {
          v19 = v18;
        }

        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (a4)
        {
          CFRetain(a4);
        }

        v21 = *(v17 + 48);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __FVSynthEngine_StartVibrationWithPattern_block_invoke;
        v28[3] = &__block_descriptor_40_e5_v8__0l;
        v28[4] = a4;
        v22 = v21(a1, a2, v19, v28, a7);
        if (v22)
        {
          if (a4)
          {
            CFRelease(a4);
          }
        }

        else
        {
          ++*(gFVInfo + 68);
          if (*(v17 + 20))
          {
            notify_set_state(*(v17 + 16), 1uLL);
            notify_post("com.apple.coremedia.vibration");
          }

          FigVibratorPostNotification(@"VibeWillStart");
        }

        v23 = *gFVInfo;
        FigSimpleMutexUnlock();
      }

      goto LABEL_22;
    }

    v27 = *MEMORY[0x1E69E9840];
  }

  return FigSignalErrorAtGM();
}

uint64_t HDMILatencyMgr_UpdateMeasuredHDMILatency(CFDictionaryRef theDict)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!_MergedGlobals_8)
  {
    goto LABEL_23;
  }

  if (!theDict || !CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAudioHDMILatency24Hz") || !CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAudioHDMILatency60Hz") || !CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredVideoHDMILatency24Hz") || !CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredVideoHDMILatency60Hz") || (v2 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz"), v2 != CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz")) || (v3 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz"), v3 != CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz")))
  {
    result = 4294954516;
    goto LABEL_24;
  }

  if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency24Hz"))
  {
    v4 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasuredAtmosAudioHDMILatency60Hz") != 0;
  }

  else
  {
    v4 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency24Hz"))
  {
    v5 = CFDictionaryContainsKey(theDict, @"MeasuredHDMILatency_MeasureAtmosVideoHDMILatency60Hz") != 0;
    if (v4 && v5)
    {
      MutableCopy = CFRetain(theDict);
      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (!v4 || v5)
  {
    if (!v4 && v5)
    {
      v13 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
LABEL_19:
  if (!MutableCopy)
  {
LABEL_23:
    result = 4294954510;
    goto LABEL_24;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __HDMILatencyMgr_UpdateMeasuredHDMILatency_block_invoke;
  v11[3] = &__block_descriptor_40_e5_v8__0l;
  v11[4] = MutableCopy;
  MXDispatchAsync("HDMILatencyMgr_UpdateMeasuredHDMILatency", "HDMILatencyManager.m", 380, 0, 0, _MergedGlobals_8, v11);
  result = 0;
LABEL_24:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HDMILatencyMgr_UpdateCurrentRefreshRate()
{
  if (!_MergedGlobals_8)
  {
    return 4294954510;
  }

  OUTLINED_FUNCTION_0_18();
  v4 = 3221225472;
  v5 = __HDMILatencyMgr_UpdateCurrentRefreshRate_block_invoke;
  v6 = &__block_descriptor_40_e5_v8__0l;
  v7 = v0;
  MXDispatchAsync("HDMILatencyMgr_UpdateCurrentRefreshRate", "HDMILatencyManager.m", 402, 0, 0, v1, v3);
  return 0;
}

void HDMILatencyMgr_SetIsPlayingAtmos()
{
  if (_MergedGlobals_8)
  {
    OUTLINED_FUNCTION_0_18();
    v3 = 3221225472;
    v4 = __HDMILatencyMgr_SetIsPlayingAtmos_block_invoke;
    v5 = &__block_descriptor_33_e5_v8__0l;
    v6 = v0;
    MXDispatchSync("HDMILatencyMgr_SetIsPlayingAtmos", "HDMILatencyManager.m", 450, 0, 0, v1, v2);
  }
}

uint64_t FigRoutingContextRemoteCreateVideoContext(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v4 = routingContext_create_0(5uLL, a2, 0, a3);
  if (!v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigRoutingContextRemoteCreateVideoContext_block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = a3;
    MXDispatchSync("FigRoutingContextRemoteCreateVideoContext", "FigRoutingContextRemoteXPC.m", 2175, 0, 0, gFigRoutingContextRemoteObject_1, v6);
  }

  return v4;
}

uint64_t routingContextRemoteXPC_SetProperty()
{
  OUTLINED_FUNCTION_7_4();
  v2 = 0;
  result = remoteXPCRoutingContext_GetObjectID(v0, &v2);
  if (!result)
  {

    return FigXPCSendStdSetPropertyMessage();
  }

  return result;
}

uint64_t routingContextRemoteXPC_SelectRoute()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v1, &v7);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      if (!v0)
      {
LABEL_6:
        FigXPCMessageSetCFDictionary();
        ObjectID = FigXPCRemoteClientSendSyncMessage();
        goto LABEL_7;
      }

      ObjectID = FigEndpointXPCRemoteGetObjectID();
      if (!ObjectID)
      {
        xpc_dictionary_set_uint64(v5, kFigRoutingContextXPCMsgParam_EndpointID, v6);
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v3 = ObjectID;
  FigXPCRelease();
  return v3;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptor()
{
  OUTLINED_FUNCTION_7_4();
  v21 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(v1, &v21);
  if (ObjectID)
  {
    v0 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_8_0(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v0)
    {
      FigXPCMessageSetCFDictionary();
      FigXPCMessageSetCFDictionary();
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_0(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v0;
}

uint64_t routingContextRemoteXPC_CopyRoute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v14, v15);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      OUTLINED_FUNCTION_12_4();
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_15_4(v13);
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingContextRemoteXPC_SelectRoutes()
{
  OUTLINED_FUNCTION_7_4();
  v3 = v2;
  v16 = 0;
  if (v4)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v7);
        if (!ValueAtIndex)
        {
          break;
        }

        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != FigEndpointGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_12();
      ObjectID = FigSignalErrorAtGM();
      goto LABEL_20;
    }
  }

LABEL_7:
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v16);
  if (ObjectID || (OUTLINED_FUNCTION_12_4(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
LABEL_20:
    v14 = ObjectID;
    goto LABEL_24;
  }

  routes_logEndpoints(v1);
  if (v1 && CFArrayGetCount(v1))
  {
    value = 0;
    v11 = CFArrayGetCount(v1);
    v12 = xpc_array_create(0, 0);
    if (v12 && v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (!CFArrayGetValueAtIndex(v1, i))
        {
          break;
        }

        if (FigEndpointXPCRemoteGetObjectID())
        {
          break;
        }

        xpc_array_set_uint64(v12, 0xFFFFFFFFFFFFFFFFLL, value);
      }
    }

    if (v12)
    {
      xpc_dictionary_set_value(0, kFigRoutingContextXPCMsgParam_EndpointIDList, v12);
    }
  }

  if (v0)
  {
    FigXPCMessageSetCFDictionary();
  }

  v14 = FigXPCRemoteClientSendSyncMessage();
LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t routingContextRemoteXPC_SelectRouteDescriptors()
{
  OUTLINED_FUNCTION_7_4();
  v12 = 0;
  ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v12);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_25();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      if (v0 && CFArrayGetCount(v0))
      {
        FigXPCMessageSetCFArray();
      }

      FigXPCMessageSetCFDictionary();
      ObjectID = FigXPCRemoteClientSendSyncMessage();
    }
  }

  OUTLINED_FUNCTION_8_0(ObjectID, v4, v5, v6, v7, v8, v9, v10, 0);
  FigXPCRelease();
  return v1;
}

uint64_t routingContextRemoteXPC_CopySelectedRouteForRemoteControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v14, v15);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      OUTLINED_FUNCTION_12_4();
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_15_4(v13);
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingContextRemoteXPC_AddToSelectedRoutes(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_7_4();
    ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v6);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID();
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_EndpointID, 0);
          FigXPCMessageSetCFDictionary();
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
  }

  v4 = ObjectID;
  FigXPCRelease();
  return v4;
}

uint64_t routingContextRemoteXPC_AddToSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_4();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v23);
  if (ObjectID)
  {
LABEL_7:
    v2 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v2)
  {
    FigXPCMessageSetCFDictionary();
    FigXPCMessageSetCFDictionary();
    v13 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  }

LABEL_5:
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRoutes(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_7_4();
    ObjectID = remoteXPCRoutingContext_GetObjectID(v2, &v6);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID();
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_EndpointID, 0);
          FigXPCMessageSetCFDictionary();
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
  }

  v4 = ObjectID;
  FigXPCRelease();
  return v4;
}

uint64_t routingContextRemoteXPC_RemoveFromSelectedRouteDescriptors(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_4();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v3, &v23);
  if (ObjectID)
  {
LABEL_7:
    v2 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v2)
  {
    FigXPCMessageSetCFDictionary();
    FigXPCMessageSetCFDictionary();
    v13 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  }

LABEL_5:
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_CreateCommChannel(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  CMBaseObjectGetDerivedStorage();
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v11);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (FigXPCMessageSetCFDictionary(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(), ObjectID))
  {
    v6 = ObjectID;
  }

  else
  {
    v6 = 0;
    *a3 = v10;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

uint64_t routingContextRemoteXPC_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v10[6] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM();
LABEL_8:
    v7 = ObjectID;
    goto LABEL_6;
  }

  v5 = DerivedStorage;
  ObjectID = remoteXPCRoutingContext_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    goto LABEL_8;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_8;
  }

  v7 = FigXPCRemoteClientSendSyncMessage();
  if (!v7)
  {
    v8 = *(v5 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __routingContextRemoteXPC_CloseCommChannel_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = v5;
    v10[5] = a2;
    MXDispatchSync("routingContextRemoteXPC_CloseCommChannel", "FigRoutingContextRemoteXPC.m", 841, 0, 0, v8, v10);
  }

LABEL_6:
  FigXPCRelease();
  return v7;
}

uint64_t routingContextRemoteXPC_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  if (a2)
  {
    if (!remoteXPCRoutingContext_GetObjectID(a1, &v13) && !FigXPCCreateBasicMessage())
    {
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFDictionary();
      if (a4)
      {
        v10 = a4;
        v11 = a5;
        *&v9 = 1668246893;
        *(&v9 + 1) = a1;
      }

      remoteXPCFigRoutingContext_sendMessageSynchronouslyExpectingCompletionCallback(a1, v12, &v9);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  FigXPCRelease();
  return 0;
}

uint64_t routingContextRemoteXPC_ResetPredictedSelectedRouteDescriptor()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v0, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    v2 = FigXPCCreateBasicMessage();
    if (v2 || (v2 = FigXPCMessageSetCFDictionary(), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t routingContextRemoteXPC_CopySelectedBufferedEndpointForTesting()
{
  OUTLINED_FUNCTION_5_6();
  ObjectID = remoteXPCRoutingContext_GetObjectID(v0, v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_0();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!ObjectID)
      {
        ObjectID = OUTLINED_FUNCTION_15_4(v4[1]);
      }
    }
  }

  v2 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t routingContextRemoteXPC_ReportModificationMetrics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_6_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, v15, v16);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v10 = FigXPCCreateBasicMessage();
    if (v10 || ([a2 dictionaryRepresentation], v10 = FigXPCMessageSetCFDictionary(), v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

uint64_t remoteXPCRoutingContext_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __FigRoutingContextRemoteCopyContextForUUID_block_invoke_cold_1(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = routingContext_create_0(1uLL, *(a1 + 64), 1, a2);
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(*(*a3 + 8) + 24))
    {
      key = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = *(*(*a3 + 8) + 24);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(v6, @"contextUUID", *MEMORY[0x1E695E480], &key);
        if (key)
        {
          v8 = *(*(*a3 + 8) + 24);
          v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v9)
          {
            v10 = v9;
            CFDictionarySetValue(gFigRoutingContextRemoteObject_0, key, v9);
            CFRelease(v10);
          }

          v11 = *(DerivedStorage + 72);
          v12 = key;
          *(DerivedStorage + 72) = key;
          if (v12)
          {
            CFRetain(v12);
          }

          if (v11)
          {
            CFRelease(v11);
          }

          if (key)
          {
            CFRelease(key);
          }
        }
      }
    }
  }
}

uint64_t FigRoutingContextRemoteCopyAllAudioContexts_cold_1()
{
  OUTLINED_FUNCTION_7_4();
  v3 = v2;
  value = 0;
  result = FigXPCRemoteClientRetainCopiedObject();
  if (!result)
  {
    result = remoteXPCRoutingContext_CreateInternal(v3, &value);
    if (!result)
    {
      *(CMBaseObjectGetDerivedStorage() + 80) = 4;
      CFArrayAppendValue(v1, value);
      result = 0;
    }
  }

  *v0 = result;
  return result;
}

uint64_t remoteXPCRoutingContext_CreateInternal_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendData_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CreateCommChannelForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_SendDataForDeviceID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingContextRemoteXPC_CloseCommChannelForDeviceID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCopyContextForUUID(const __CFAllocator *a1, CFDictionaryRef theDict, void *a3)
{
  v18 = 0;
  valuePtr = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  Current = FigRemoteRoutingContextFactoryGetCurrent();
  Value = CFDictionaryGetValue(MutableCopy, @"contextType");
  v17 = Value;
  if (Value)
  {
    v8 = Value;
    CFRetain(Value);
    goto LABEL_3;
  }

  v9 = [(FigRemoteRoutingContextFactory *)Current copyContextForUUIDWithAllocator:a1 options:MutableCopy context:&v18];
  if (v9)
  {
LABEL_9:
    v10 = v9;
    goto LABEL_16;
  }

  v10 = v18;
  if (v18)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v9 = v11(v10, @"contextType", *MEMORY[0x1E695E480], &v17);
      if (!v9)
      {
        CFDictionarySetValue(MutableCopy, @"contextType", v17);
        v8 = v17;
LABEL_3:
        if (CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
        {
          if (a1)
          {
            CFRetain(a1);
          }

          if (MutableCopy)
          {
            CFRetain(MutableCopy);
          }

          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke;
          v14[3] = &unk_1E7AEB9F0;
          v14[5] = a1;
          v14[6] = MutableCopy;
          v15 = valuePtr;
          v14[4] = Current;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __FigRoutingContextResilientRemoteCopyContextForUUID_block_invoke_2;
          v13[3] = &__block_descriptor_48_e5_v8__0l;
          v13[4] = a1;
          v13[5] = MutableCopy;
          v9 = FigRoutingContextResilientRemoteCreate(v14, v13, a3);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_0();
          v9 = FigSignalErrorAtGM();
        }

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v10 = 4294954514;
  }

LABEL_16:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v10;
}

void __routingContextResilientRemote_serverConnectionDied_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 48);
  if (v3 <= 4)
  {
    *(v2 + 48) = v3 + 1;
    if (!routingContextResilientRemote_replaceRemoteContext(a1[5], a1[6], 0))
    {
      *(a1[4] + 48) = 0;
    }
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextResilientRemoteCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t FigRoutingContextResilientRemoteCopyDefaultContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextCreateSystemRemoteDisplayInternal(const void *a1, uint64_t *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *MEMORY[0x1E695E480];
    FigRoutingContextGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      v6 = *a2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = CFRetain(a1);
      result = 0;
      *(DerivedStorage + 8) = v8;
      *DerivedStorage = 14;
    }
  }

  return result;
}

uint64_t routingContext_RemoveFromSelectedRoutes(const void *a1, const void *a2, const void *a3)
{
  result = routingContext_IsOperationOnSystemInputContextAllowedInternal(a1, 0);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = *MEMORY[0x1E69626B0];
    if (FigRoutingManagerIsEndpointOfType(a2))
    {
      return 4294955269;
    }

    else
    {
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

      SharedQueue = FigRoutingManagerGetSharedQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __routingContext_RemoveFromSelectedRoutes_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = DerivedStorage;
      v10[5] = a2;
      v10[6] = a3;
      v10[7] = a1;
      MXDispatchAsync("routingContext_RemoveFromSelectedRoutes", "FigRoutingContext.m", 2006, 0, 0, SharedQueue, v10);
      return 0;
    }
  }

  return result;
}

void routingContext_collectPickedEndpoints_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v1 = *MEMORY[0x1E69E9840];
}

void routingContext_ReportModificationMetrics_cold_1(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MXGetAssertionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446722;
    v5 = "-FigRoutingContext-";
    v6 = 2082;
    v7 = "routingContext_ReportModificationMetrics";
    v8 = 1024;
    v9 = 2187;
    _os_log_impl(&dword_1B17A2000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Invalid modification metrics", &v4, 0x1Cu);
  }

  *a1 = -12020;
  v3 = *MEMORY[0x1E69E9840];
}

CFArrayRef FigEndpointDescriptorUtility_AreRouteIDsTheSame(CFArrayRef theArray, CFArrayRef a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!theArray || !CFArrayGetCount(theArray))
  {
    if (!a2)
    {
      goto LABEL_24;
    }

    if (!CFArrayGetCount(a2))
    {
      a2 = 0;
      goto LABEL_24;
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = OUTLINED_FUNCTION_7_6(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(theArray);
        }

        v17 = [*(*(&v38 + 1) + 8 * i) objectForKey:@"RouteUID"];
        if (v17)
        {
          v17 = [v4 addObject:v17];
        }
      }

      v14 = OUTLINED_FUNCTION_7_6(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    while (v14);
  }

  OUTLINED_FUNCTION_4_11();
  v28 = OUTLINED_FUNCTION_9_6(v25, v26, v27, v42);
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(a2);
        }

        v32 = [*(v36[1] + 8 * j) objectForKey:@"RouteUID"];
        if (v32)
        {
          v32 = [v5 addObject:v32];
        }
      }

      v29 = OUTLINED_FUNCTION_9_6(v32, v33, v36, v42);
    }

    while (v29);
  }

  a2 = [v4 isEqualToSet:v5];

LABEL_24:
  v34 = *MEMORY[0x1E69E9840];
  return a2;
}

CFIndex FigEndpointDescriptorUtility_AreRouteDescriptorsOfTypeAirPlay(CFIndex result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      OUTLINED_FUNCTION_4_11();
      v5 = OUTLINED_FUNCTION_9_6(v2, v3, v4, v13);
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v1);
          }

          [*(v11[1] + 8 * v8) objectForKey:@"AudioRouteName"];
          result = FigCFEqual();
          if (!result)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = OUTLINED_FUNCTION_9_6(result, v9, v11, v13);
            result = 1;
            if (v6)
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

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMScreenSuspendStream(const void *a1)
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
  v7[2] = __CMScreenSuspendStream_block_invoke;
  v7[3] = &__block_descriptor_64_e5_v8__0l;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v1;
  MXDispatchAsync("CMScreenSuspendStream", "CMSessionManager_Screen.m", 338, 0, 0, v5, v7);
  return 0;
}

uint64_t FigRoutingSessionManagerRemoteCopyLongFormVideoManager(const __CFAllocator *a1, void *a2)
{
  if (qword_1ED6D2FA0 != -1)
  {
    dispatch_once(&qword_1ED6D2FA0, &__block_literal_global_71);
  }

  v4 = _MergedGlobals_10;
  if (_MergedGlobals_10)
  {
    goto LABEL_16;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_25();
  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    goto LABEL_19;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    v4 = 4294951905;
    goto LABEL_16;
  }

  v7 = uint64;
  v5 = FigXPCRemoteClientRetainCopiedObject();
  if (v5)
  {
    goto LABEL_19;
  }

  FigRoutingSessionManagerGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v7;
    v10 = FigSimpleMutexCreate();
    DerivedStorage[2] = v10;
    if (v10 && (Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (DerivedStorage[3] = Mutable) != 0))
    {
      DerivedStorage[4] = 1;
      v8 = FigXPCRemoteClientAssociateObject();
      if (!v8)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      v8 = FigSignalErrorAtGM();
    }
  }

  v4 = v8;
LABEL_13:
  if (!v4)
  {
    if (a2)
    {
      v4 = 0;
      *a2 = 0;
      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    v5 = FigSignalErrorAtGM();
LABEL_19:
    v4 = v5;
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t routingSessionManagerRemote_HandleClientMessage()
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

void routingSessionManagerRemote_runOneCallback(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"Callback");
  v5 = CFDictionaryGetValue(a1, @"CallbackContext");
  v6 = CFDictionaryGetValue(a1, @"Manager");
  if (Value)
  {
    Value(v5, a2);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void routingSessionManagerRemote_dequeueAndInvokeCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  UInt64 = FigCFNumberCreateUInt64();
  v7 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 24), UInt64);
  if (Value)
  {
    v9 = CFRetain(Value);
  }

  else
  {
    v9 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), UInt64);
  v10 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v9)
  {
    routingSessionManagerRemote_runOneCallback(v9, a3);
    CFRelease(v9);
  }

  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

uint64_t routingSessionManagerRemote_CopyCurrentSession(uint64_t a1, const __CFDictionary **a2)
{
  v6 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM();
LABEL_9:
    v4 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v6);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  ObjectID = OUTLINED_FUNCTION_4_0();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  v4 = FigXPCMessageCopyCFDictionary();
  if (!v4)
  {
    *a2 = FigRoutingSessionCopyFromDictionary(0);
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t routingSessionManagerRemote_CopyLikelyDestinations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14);
  if (!v8)
  {
    OUTLINED_FUNCTION_8();
    v8 = FigXPCCreateBasicMessage();
    if (!v8)
    {
      v8 = OUTLINED_FUNCTION_4_0();
      if (!v8)
      {
        v8 = FigXPCMessageCopyCFArray();
      }
    }
  }

  v9 = v8;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t routingSessionManagerRemote_GetAirPlayVideoActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0();
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_AirPlayVideoActive);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_GetAirPlayVideoPlaying(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0();
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_AirPlayVideoPlaying);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_0_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, xdict, v15, v16);
  if (v9 || (OUTLINED_FUNCTION_8(), v9 = FigXPCCreateBasicMessage(), v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_0();
    if (!v10)
    {
      *v8 = xpc_dictionary_get_BOOL(xdicta, kFigRoutingSessionManagerXPCMsgParam_PrefersLikelyDestinations);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t routingSessionManagerRemote_StartSessionWithRouteDescriptors(uint64_t a1)
{
  v5 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v2 = FigXPCCreateBasicMessage();
    if (v2 || (v2 = FigXPCMessageSetCFArray(), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t routingSessionManagerRemote_StartSuppressingLikelyDestinations(uint64_t a1)
{
  v5 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t routingSessionManagerRemote_StopSuppressingLikelyDestinations(uint64_t a1)
{
  v5 = 0;
  ObjectID = routingSessionManagerRemote_getObjectID(a1, &v5);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v3;
}

uint64_t routingSessionManagerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSessionManagerRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteMessage()
{
  if (!*(*(OUTLINED_FUNCTION_24_1() + 16) + 24))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_26_1();
  v3 = v2(v1);
  v4 = v6;
  if (v3)
  {
    v0 = v3;
    if (!v6)
    {
      return v0;
    }

LABEL_5:
    CFRelease(v4);
    return v0;
  }

  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_4();
  FigEndpointXPCServerWriteNeighborEndpointToReply();
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    goto LABEL_5;
  }

  return v0;
}

uint64_t FigRoutingContextXPCHandleCopySelectedRouteForRemoteControlMessage()
{
  if (!*(*(OUTLINED_FUNCTION_24_1() + 16) + 72))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_26_1();
  v3 = v2(v1);
  v4 = v6;
  if (v3)
  {
    v0 = v3;
    if (!v6)
    {
      return v0;
    }

LABEL_5:
    CFRelease(v4);
    return v0;
  }

  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_4();
  FigEndpointXPCServerWriteNeighborEndpointToReply();
  OUTLINED_FUNCTION_25_1();
  if (v4)
  {
    goto LABEL_5;
  }

  return v0;
}

uint64_t FigRoutingContextXPCHandleCreateCommChannelMessage(uint64_t a1)
{
  v5 = 0;
  FigXPCMessageCopyCFDictionary();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v2)
  {
    v3 = v2(a1, 0, &v5);
    if (!v3)
    {
      FigXPCMessageSetCFString();
    }
  }

  else
  {
    v3 = 4294954514;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v3;
}

uint64_t FigRoutingContextXPCHandleCreateCommChannelForDeviceIDMessage(uint64_t a1, uint64_t a2)
{
  FigXPCMessageCopyCFDictionary();
  FigXPCMessageCopyCFString();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_10_5();
  v5 = v4(v3);
  if (v5)
  {
    return v5;
  }

  if (!a2)
  {
    return 4294955276;
  }

  Mutable = *(a2 + 16);
  v7 = MEMORY[0x1E695E480];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 16) = Mutable;
    if (!Mutable)
    {
      return 4294955275;
    }
  }

  Value = CFDictionaryGetValue(Mutable, 0);
  if (Value)
  {
    v9 = CFRetain(Value);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v10 = CFSetCreateMutable(*v7, 0, MEMORY[0x1E695E9F8]);
  if (!v10)
  {
    return 4294955275;
  }

  v9 = v10;
  CFDictionarySetValue(*(a2 + 16), 0, v10);
LABEL_10:
  v11 = OUTLINED_FUNCTION_4_9();
  CFSetAddValue(v11, v12);
  CFRelease(v9);
  FigXPCMessageSetCFString();
  return 0;
}

uint64_t FigRoutingContextXPCHandleSendDataMessage()
{
  OUTLINED_FUNCTION_27_1();
  v1 = FigXPCMessageCopyCFString();
  if (v1 || (v1 = FigXPCMessageCopyCFData(), v1) || (CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v0), OUTLINED_FUNCTION_5_10(), *(*(CMBaseObjectGetVTable() + 16) + 120)) && (v3 = OUTLINED_FUNCTION_22_1(), v4(v3), OUTLINED_FUNCTION_18_2(), !v5))
  {
    v6 = v1;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v6 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t FigRoutingContextXPCHandleSendDataForDeviceIDMessage(uint64_t a1, uint64_t a2)
{
  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    goto LABEL_12;
  }

  v3 = FigXPCMessageCopyCFData();
  if (v3)
  {
    goto LABEL_12;
  }

  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_10_5();
  CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v4);
  OUTLINED_FUNCTION_5_10();
  v8 = v7 ? 0 : v6;
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 16) + 160);
  if (v10 && (v11 = *(VTable + 16) + 160, v10(a2, 0, 0, 0, v8, CompletionCallbackParametersFromMessageAndConnection), OUTLINED_FUNCTION_18_2(), !v7))
  {
LABEL_12:
    v12 = v3;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v12 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  return v12;
}

uint64_t FigRoutingContextXPCHandleCloseCommChannelMessage(uint64_t a1)
{
  v2 = FigXPCMessageCopyCFString();
  if (!v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (!v3)
    {
      return 4294954514;
    }

    return v3(a1, 0);
  }

  return v2;
}

uint64_t FigRoutingContextXPCHandleCloseCommChannelForDeviceIDMessage(uint64_t a1, uint64_t a2)
{
  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    return v4;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    return v4;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v5)
  {
    return 4294954514;
  }

  v4 = v5(a1, 0, 0);
  if (v4)
  {
    return v4;
  }

  if (!a2)
  {
    return 4294955276;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    return 4294955276;
  }

  Value = CFDictionaryGetValue(v6, 0);
  if (!Value)
  {
    return 4294955272;
  }

  v8 = Value;
  CFSetRemoveValue(Value, 0);
  if (!CFSetGetCount(v8))
  {
    CFDictionaryRemoveValue(*(a2 + 16), 0);
  }

  return 0;
}

uint64_t FigRoutingContextXPCHandleSendCommandMessage()
{
  OUTLINED_FUNCTION_27_1();
  v1 = FigXPCMessageCopyCFString();
  if (v1 || (v1 = FigXPCMessageCopyCFDictionary(), v1) || (CompletionCallbackParametersFromMessageAndConnection = CreateCompletionCallbackParametersFromMessageAndConnection(v0), *(*(CMBaseObjectGetVTable() + 16) + 136)) && (v3 = OUTLINED_FUNCTION_22_1(), v4(v3), OUTLINED_FUNCTION_18_2(), !v5))
  {
    v6 = v1;
    CompletionCallbackParametersFromMessageAndConnection = 0;
  }

  else
  {
    v6 = 4294954514;
  }

  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t FigRoutingContextXPCHandleCopySelectedBufferedEndpointForTestingMessage()
{
  OUTLINED_FUNCTION_21_1();
  FigXPCMessageCopyCFString();
  if (*(*(CMBaseObjectGetVTable() + 16) + 192))
  {
    v1 = OUTLINED_FUNCTION_10_5();
    v3 = v2(v1);
    v4 = v7;
    if (v3)
    {
      v0 = v3;
      if (v7)
      {
LABEL_5:
        CFRelease(v4);
      }
    }

    else
    {
      if (v7)
      {
        OUTLINED_FUNCTION_13_4();
        FigEndpointXPCServerWriteNeighborEndpointToReply();
        OUTLINED_FUNCTION_25_1();
        if (!v4)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v0 = 0;
    }
  }

  else
  {
    v0 = 4294954514;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v0;
}

void *CreateCompletionCallbackParametersFromMessageAndConnection(void *a1)
{
  uint64 = xpc_dictionary_get_uint64(a1, kFigRoutingContextXPCMsgParam_CompletionID);
  if (!uint64)
  {
    return 0;
  }

  v3 = uint64;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = v3;
    v4[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
    v5[2] = FigXPCRetain();
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v5;
}

uint64_t RoutingContextModificationCallback(uint64_t a1, void *a2)
{
  if (a1 && !OUTLINED_FUNCTION_9_7())
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a1);
    [a2 dictionaryRepresentation];
    OUTLINED_FUNCTION_10_5();
    FigXPCMessageSetCFDictionary();
    xpc_connection_send_message(*(a1 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t SendDataCompletionCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 && !OUTLINED_FUNCTION_9_7())
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a4);
    FigXPCMessageSetCFString();
    xpc_dictionary_set_int64(0, kFigRoutingContextXPCMsgParam_CompletionStatus, a3);
    xpc_connection_send_message(*(a4 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a4);
  return FigXPCRelease();
}

uint64_t SendCommandCompletionCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a4 && !OUTLINED_FUNCTION_9_7())
  {
    xpc_dictionary_set_uint64(0, kFigRoutingContextXPCMsgParam_CompletionID, *a4);
    FigXPCMessageSetCFDictionary();
    xpc_dictionary_set_int64(0, kFigRoutingContextXPCMsgParam_CompletionStatus, a3);
    xpc_connection_send_message(*(a4 + 16), 0);
  }

  DestroyCompletionCallbackParameters(a4);
  return FigXPCRelease();
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t FigRoutingContextXPCHandleCopyPredictedSelectedRouteDescriptorMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t FigRoutingContextXPCHandleResetPredictedSelectedRouteDescriptorMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t CreateRoutingContextServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void DisposeRoutingContextServerState_cold_1(uint64_t a1, CFTypeRef *a2)
{
  v4 = *(a1 + 24);
  if (FigCFEqual())
  {
    cf[0] = 0;
    v5 = *a2;
    VTable = CMBaseObjectGetVTable();
    v7 = *(*(VTable + 8) + 48);
    if (v7)
    {
      v8 = *(VTable + 8) + 48;
      v7(v5, @"contextUUID", *MEMORY[0x1E695E480], cf);
      if (cf[0])
      {
        FigRoutingManager_CloseRelayCommChannels(cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v9 = FigCFDictionaryCopyArrayOfKeys();
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = OUTLINED_FUNCTION_10_5();
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
          Value = CFDictionaryGetValue(*(a1 + 16), ValueAtIndex);
          cf[0] = *a2;
          cf[1] = ValueAtIndex;
          CFSetApplyFunction(Value, CloseCommChannelApplier, cf);
          ++v11;
        }

        while (v11 < CFArrayGetCount(v10));
      }

      CFDictionaryRemoveAllValues(*(a1 + 16));
      CFRelease(v10);
    }

    else
    {
      CFDictionaryRemoveAllValues(*(a1 + 16));
    }
  }
}

void __FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  FigRoutingSessionManagerGetClassID();
  started = CMDerivedObjectCreate();
  if (started)
  {
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = _Block_copy(&__block_literal_global_73);
  *DerivedStorage = v5;
  if (!v5 || (v6 = FigSimpleMutexCreate(), (DerivedStorage[1] = v6) == 0) || (v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v8 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.remote-replacement", v7), (DerivedStorage[3] = v8) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    started = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v9 = 0;
  v10 = *DerivedStorage;
  cf = 0;
  do
  {
    v11 = (*(v10 + 16))(v10, v2, &cf);
  }

  while ((v11 == -16155 || v11 == -15394) && v9++ < 4);
  v14 = v11;
  v15 = cf;
  if (!v14)
  {
    if (cf)
    {
      v16 = CFRetain(cf);
      v15 = cf;
    }

    else
    {
      v16 = 0;
    }

    DerivedStorage[2] = v16;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (!v14)
  {
    v17 = DerivedStorage[2];
    started = routingSessionManagerResilientRemote_startObservingRemoteManager();
    if (!started)
    {
      v14 = 0;
      FigRoutingSessionManagerResilientRemoteCopyLongFormVideoManager_sLongFormManager = 0;
      goto LABEL_24;
    }

LABEL_26:
    v14 = started;
  }

LABEL_24:
  *(*(*(a1 + 32) + 8) + 24) = v14;
}

void __routingSessionManagerResilientRemote_serverConnectionDied_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  if (v3 <= 4)
  {
    *(v2 + 32) = v3 + 1;
    v6 = a1[5];
    v7 = a1[6];
    if (!routingSessionManagerResilientRemote_replaceRemoteManager())
    {
      *(a1[4] + 32) = 0;
    }
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t routingSessionManagerResilientRemote_replaceRemoteManager()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x1E695E480];
  result = (*(*DerivedStorage + 16))();
  if (!result)
  {
    CMBaseObjectGetDerivedStorage();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t CMSMNP_NowPlayingAppIsPlayingDidChangeTimerDidFinish()
{
  if (qword_1EB75E120)
  {
    dispatch_source_cancel(qword_1EB75E120);
    if (qword_1EB75E120)
    {
      dispatch_release(qword_1EB75E120);
      qword_1EB75E120 = 0;
    }
  }

  IsPlaying = CMSMNP_GetNowPlayingAppIsPlaying();

  return CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(IsPlaying);
}

void routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession()
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  v1 = *DerivedStorage;
  VTable = CMBaseObjectGetVTable();
  v3 = *(*(VTable + 16) + 64);
  if (!v3 || (v4 = *(VTable + 16) + 64, v3(v1, &theArray)))
  {
LABEL_13:
    DestinationWithRouteDescriptors = 0;
    goto LABEL_14;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3_0(v8))
    {
      v19 = 136315138;
      v20 = "routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession";
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  if (*(DerivedStorage + 120))
  {
    DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(theArray);
    if (FigRoutingSessionCreateForActiveSharePlayCapableCallSession(*MEMORY[0x1E695E480], DestinationWithRouteDescriptors, &cf))
    {
      goto LABEL_14;
    }

    v6 = @"SharePlay-capable call session is active";
  }

  else
  {
    DestinationWithRouteDescriptors = 0;
    v6 = @"SharePlay-capable call session is not active";
  }

  v16 = v6;
  v15 = 0;
  OUTLINED_FUNCTION_10_6();
  routingSessionManager_updateCurrentSession(v9, v10, v11, v12, v13, 0, 1, 0, 0, v15, v16, 0);
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t routingSessionManager_GetPrefersLikelyDestinationsOverCurrentSession(uint64_t a1, BOOL *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(a1);
  v6 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  cf = 0;
  v44 = 0;
  v7 = *(DerivedStorage + 72);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = *(DerivedStorage + 72);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    shouldUpdateCurrentSession = 0;
    v16 = 4294954514;
    goto LABEL_34;
  }

  v10 = v9(v7, &v44);
  if (v10)
  {
    v16 = v10;
    shouldUpdateCurrentSession = 0;
  }

  else
  {
LABEL_4:
    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 48);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        goto LABEL_16;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 48), i);
      Value = CFDictionaryGetValue(ValueAtIndex, @"routingSessionDestination_RouteDescriptors");
      if (!routingSessionManager_routeIsBuiltIn(Value))
      {
        if (routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(Value))
        {
          break;
        }
      }
    }

    if (ValueAtIndex)
    {
      v16 = FigRoutingSessionCreate(*MEMORY[0x1E695E480], 0, ValueAtIndex, &cf);
      v17 = cf;
      if (!v16)
      {
        shouldUpdateCurrentSession = routingSessionManager_shouldUpdateCurrentSession(*(DerivedStorage + 24), *(DerivedStorage + 72), *(DerivedStorage + 88), *(DerivedStorage + 96), cf, *(DerivedStorage + 56), 1, 0, 0, isVideoOnScreen);
        v17 = cf;
        if (!cf)
        {
          goto LABEL_34;
        }

        goto LABEL_15;
      }

      shouldUpdateCurrentSession = 0;
      if (cf)
      {
LABEL_15:
        CFRelease(v17);
      }
    }

    else
    {
LABEL_16:
      if (*(DerivedStorage + 72))
      {
        if (dword_1EB75DF00)
        {
          v18 = OUTLINED_FUNCTION_14_6();
          if (OUTLINED_FUNCTION_21_2(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, SBYTE2(v42), BYTE3(v42), SHIDWORD(v42)))
          {
            v26 = @"routingSessionDestination_RouteDescriptors";
          }

          else
          {
            v26 = @"routingSessionDestination_RouteDescriptors" & 0xFFFFFFFE;
          }

          if (v26)
          {
            v45 = 136315138;
            OUTLINED_FUNCTION_0_29();
            OUTLINED_FUNCTION_17_5();
          }

          OUTLINED_FUNCTION_0_0();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        shouldUpdateCurrentSession = 0;
      }

      else
      {
        if (!dword_1EB75DF00)
        {
          v16 = 0;
          shouldUpdateCurrentSession = 1;
          goto LABEL_34;
        }

        v27 = OUTLINED_FUNCTION_14_6();
        if (OUTLINED_FUNCTION_21_2(v27, v28, v29, v30, v31, v32, v33, v34, v39, v40, v41, v42, SBYTE2(v42), BYTE3(v42), SHIDWORD(v42)))
        {
          v35 = @"routingSessionDestination_RouteDescriptors";
        }

        else
        {
          v35 = @"routingSessionDestination_RouteDescriptors" & 0xFFFFFFFE;
        }

        if (v35)
        {
          v45 = 136315138;
          OUTLINED_FUNCTION_0_29();
          OUTLINED_FUNCTION_17_5();
        }

        shouldUpdateCurrentSession = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = 0;
    }
  }

LABEL_34:
  if (v44)
  {
    CFRelease(v44);
  }

  v36 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    if (a2)
    {
      v16 = 0;
      *a2 = shouldUpdateCurrentSession;
    }

    else
    {
      v16 = FigSignalErrorAtGM();
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t routingSessionManager_StartSessionWithRouteDescriptors(const void *a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  DestinationWithRouteDescriptors = routingSessionManager_createDestinationWithRouteDescriptors(a2);
  routingSessionManager_getConfiguration(&v36);
  FigGetCFPreferenceDoubleWithDefault();
  v7 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *MEMORY[0x1E695E480];
  v10 = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v33);
  v11 = CFDateCreate(v9, v10 - v34);
  v12 = FigRoutingSessionCreate(v9, 0, DestinationWithRouteDescriptors, &v35);
  if (v12)
  {
    v19 = 0;
    if (v11)
    {
LABEL_12:
      CFRelease(v11);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_19_2(v13, v14, 0, 1, 0, v15, v16, v17, v23, v24, v25, v26);
    v18 = [FigRoutingSessionUpdateState alloc];
    v19 = [(FigRoutingSessionUpdateState *)v18 initWithNewSession:v35];
    if (a1)
    {
      CFRetain(a1);
    }

    routingSessionManager_getConfiguration(v31);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke;
    v30[3] = &unk_1E7AED040;
    v30[5] = a1;
    v30[6] = DerivedStorage;
    v30[4] = v19;
    routingSessionManager_waitForRecentPredictions(a1, v11, v30, v32);
    if (DestinationWithRouteDescriptors)
    {
      CFRetain(DestinationWithRouteDescriptors);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v20 = v7 + Current;
    if (v35)
    {
      CFRetain(v35);
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_3;
    v28[3] = &unk_1E7AED090;
    v28[6] = a1;
    v28[7] = v21;
    v28[8] = DerivedStorage;
    v28[4] = v19;
    v28[5] = DestinationWithRouteDescriptors;
    v29 = 1;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_5;
    v27[3] = &__block_descriptor_56_e8_v12__0i8l;
    v27[4] = a1;
    v27[5] = v21;
    v27[6] = DestinationWithRouteDescriptors;
    routingSessionManager_discoverRoutes(v28, v27, v20);
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (DestinationWithRouteDescriptors)
  {
    CFRelease(DestinationWithRouteDescriptors);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v12;
}

uint64_t FigRoutingSessionManagerInit_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_CopyLikelyDestinations_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_getAirPlayVideoActive_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t routingSessionManager_getAirPlayVideoPlaying_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigNotificationListenerStartNotifications_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __routingSessionManager_startSessionIfNecessary_block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v1 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  if (OUTLINED_FUNCTION_3_0(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_0_0();
  result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = FigSignalErrorAtGM();
  *(*(*(a2 + 32) + 8) + 24) = result;
  return result;
}

uint64_t MXEndpointDescriptorCacheDoesEndpointIDMatchDeviceID(uint64_t a1, uint64_t a2)
{
  theString = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (v5)
  {
    v6 = *(VTable + 8) + 48;
    v5(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &theString);
    v7 = theString;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    if (!v7)
    {
      return 0;
    }

    location = CFStringFind(a2, v7, 0).location;
    v9 = CFStringFind(theString, a2, 0).location;
    if (FigCFEqual())
    {
      v10 = 0;
    }

    else
    {
      v10 = location == -1;
    }

    a2 = !v10 || v9 != -1;
    v7 = theString;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return a2;
}

const __CFDictionary *FigRoutingSessionCopyFromDictionary(const __CFDictionary *result)
{
  v3 = 0;
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"EstablishedAutomaticallyFromLikelyDestination");
    result = CFDictionaryGetValue(v1, @"Destination");
    if (result)
    {
      FigRoutingSessionCreate(*MEMORY[0x1E695E480], Value == *MEMORY[0x1E695E4D0], result, &v3);
      return v3;
    }
  }

  return result;
}

uint64_t HandleRoutingSessionManagerRemoteMessageWithReply(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t HandleRoutingSessionManagerRemoteMessageWithNoReply(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  else
  {
    return 4294951138;
  }
}

void *CreateCompletionCallbackParametersFromMessageAndConnection_0(void *a1)
{
  uint64 = xpc_dictionary_get_uint64(a1, kFigRoutingSessionManagerXPCMsgParam_CompletionID);
  if (!uint64)
  {
    return 0;
  }

  v3 = uint64;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x108004098BBCF0FuLL);
  if (!v4)
  {
    fig_log_get_emitter();
    if (FigSignalErrorAtGM())
    {
      DestroyCompletionCallbackParameters(0);
    }

    return 0;
  }

  v5 = v4;
  *v4 = v3;
  v4[1] = xpc_dictionary_get_uint64(a1, *MEMORY[0x1E69615A0]);
  v5[2] = FigXPCRetain();
  return v5;
}

uint64_t StartHighConfidenceSessionCompletionCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_11();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, *a1);
      xpc_dictionary_set_int64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionStatus, v1);
      xpc_connection_send_message(*(a1 + 16), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    FigSignalErrorAtGM();
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t PrepareForPlaybackCompletionCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_11();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionID, *a1);
      xpc_dictionary_set_int64(0, kFigRoutingSessionManagerXPCMsgParam_CompletionStatus, v1);
      xpc_connection_send_message(*(a1 + 16), 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    FigSignalErrorAtGM();
  }

  DestroyCompletionCallbackParameters(a1);
  return FigXPCRelease();
}

uint64_t MXAggregateEndpointCreateAggregateEndpoint(const void *a1, const void *a2, int a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (MXAggregateSetUpLoggingOnce_setUpLogging != -1)
  {
    dispatch_once(&MXAggregateSetUpLoggingOnce_setUpLogging, &__block_literal_global_81);
  }

  v8 = *MEMORY[0x1E695E480];
  FigEndpointAggregateGetClassID();
  v9 = CMDerivedObjectCreate();
  if (!v9)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 56) = 0u;
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 104) = 0u;
    *(DerivedStorage + 120) = 0u;
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    *(DerivedStorage + 32) = v11;
    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *(DerivedStorage + 16) = v12;
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 96) = 0;
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 144) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v13 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v14 = [v13 UUIDString];

    *DerivedStorage = v14;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(DerivedStorage + 24);
    if (v16 > 3)
    {
      v17 = @"?";
    }

    else
    {
      v17 = off_1E7AED288[v16];
    }

    *(DerivedStorage + 8) = [v15 initWithFormat:@"MXEndpointAggregate-%@-[{%p}]", v17, 0];
    *(DerivedStorage + 40) = FigSimpleMutexCreate();
    *a4 = 0;
    if (dword_1EB75DDD0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(uint64_t a1)
{
  if (!endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    return 4294950576;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) && (FigEndpointAggregateGetClassID(), CMBaseObjectIsMemberOfClass()) && endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterRemoveWeakListener();
  }

  else
  {
    v3 = 4294950576;
  }

  v4 = *(DerivedStorage + 48);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 32);
  if (v6)
  {
    v7 = *(VTable + 16) + 32;
    v6(v4);
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  *(DerivedStorage + 144) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  return v3;
}

void MXAggregateEndpointUpdateSubEndpoints()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v1 = *(DerivedStorage + 48);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_8;
  }

  v2 = CFRetain(v1);
  if (!v2)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (v5)
  {
    v6 = *(VTable + 8) + 48;
    v5(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v9);
  }

  v7 = 0;
LABEL_9:

  v8 = v9;
  if (!v9)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  *(DerivedStorage + 144) = v8;
  if ((v7 & 1) == 0)
  {
    CFRelease(v2);
  }
}

BOOL endpointAggregate_WithRemoteAggregateEndpoint_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MXGetAssertionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, 2u);
  }

  result = a1 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void endpointAggregate_WithRemoteAggregateEndpoint_cold_2(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MXGetAssertionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, 2u);
  }

  *a1 = -16725;
  v9 = *MEMORY[0x1E69E9840];
}

void endpointAggregate_Deactivate_cold_1(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MXGetAssertionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_22(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, 2u);
  }

  *a1 = 0;
  v9 = *MEMORY[0x1E69E9840];
}

void cmsmInitializeCMSessionManager()
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED6D2FD0 != -1)
  {
    dispatch_once(&qword_1ED6D2FD0, &__block_literal_global_82);
  }

  CMSMDeviceState_UpdateDeviceClass();
  MXCFPreferencesMigrateUserPreferencesToMXDomain();
  MXCFPreferencesMigrateSilentModeUserPreferenceToMXDomain();
  +[MXAppProtectionManager sharedInstance];
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager loadMediaEndowments];
  +[MXSessionManager sharedInstance];
  qword_1ED6D2FF8 = 0;
  qword_1ED6D3000 = "CMSession";
  unk_1ED6D3008 = cmsInit;
  qword_1ED6D3010 = 0;
  unk_1ED6D3018 = CMSessionFinalize;
  qword_1ED6D3020 = 0;
  unk_1ED6D3028 = 0;
  qword_1ED6D3030 = 0;
  unk_1ED6D3038 = cmsCopyDebugDesc;
  qword_1ED6D2FD8 = _CFRuntimeRegisterClass();
  if (qword_1ED6D2FE0 != -1)
  {
    dispatch_once(&qword_1ED6D2FE0, &__block_literal_global_249);
  }

  if (qword_1ED6D2FE8 != -1)
  {
    dispatch_once(&qword_1ED6D2FE8, &__block_literal_global_306);
  }

  IsAudiomxd = CMSMDeviceState_IsAudiomxd();
  v1 = MXGetNotificationSenderQueue();
  if (IsAudiomxd)
  {
    CMSMDeviceState_AddQueueToWatchDogMonitoring(v1);
  }

  else
  {
    FigWatchdogMonitorDispatchQueue();
  }

  gCMSM = FigReentrantMutexCreate();
  qword_1EB75E1D0 = 0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3_0(v3))
    {
      v12 = 136315138;
      v13 = "cmsmInitializeCMSessionManager";
      LODWORD(v11) = 12;
      v10 = &v12;
      OUTLINED_FUNCTION_2_18();
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRouteDiscoveryManagerInit();
  FigRouteDiscoveryManagerStart();
  FigRoutingManagerInit();
  CMScreenInitialize();
  +[MXFrontBoardServices sharedInstance];
  CMSM_IDS_Initialize();
  CMSM_IDSClient_Initialize();
  CMSM_IDSServer_Initialize();
  CMSM_IDSConnection_Initialize();
  MX_CoreServices_Initialize();
  if (!qword_1ED6D2FF0)
  {
    CelestialGetModelSpecificName();
    v4 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
    if (v4)
    {
      v5 = v4;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        Value = CFDictionaryGetValue(v5, @"Category");
        v8 = Value;
        if (Value)
        {
          CFRetain(Value);
        }
      }

      else
      {
        v8 = 0;
      }

      qword_1ED6D2FF0 = v8;
      CFRelease(v5);
    }

    else
    {
      qword_1ED6D2FF0 = 0;
    }
  }

  [MXSessionManager sharedInstance:v10];
  PVMInitialize();
  CMSystemSoundMgr_Initialize();
  v9 = MXGetNotificationSenderQueue();
  CMSMDeviceState_Initialize(v9);
  MX_IOKit_Initialize();
  dword_1EB75E11C = FigGetCFPreferenceNumberWithDefault();
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioCategory:"setCurrentAudioCategory:", @"Audio/Video"];
  [+[MXSessionManager sharedInstance](MXSessionManager setCurrentAudioMode:"setCurrentAudioMode:", @"Default"];
  FigSimpleMutexLock();
  MXVW_CreateVectorCMSRouteInfo();
}

uint64_t MXCoreSessionAddResource(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = 4294954315;
    if (a2 && qword_1EB75E108)
    {
      FigSimpleMutexLock();
      if (dword_1EB75E100 < 1)
      {
        goto LABEL_29;
      }

      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = *(qword_1EB75E108 + v8);
        if (FigCFEqual())
        {
          break;
        }

        ++v9;
        v8 += 24;
        if (v9 >= dword_1EB75E100)
        {
          goto LABEL_29;
        }
      }

      if (!*(qword_1EB75E108 + v8 + 8))
      {
        goto LABEL_29;
      }

      v36 = 0;
      v38[0] = 0;
      *a4 = 0;
      cmsmGetCountAndResourceEntriesOfType(a2, &v36, v38);
      v20 = v38[0];
      if (!v38[0])
      {
        goto LABEL_29;
      }

      v21 = v36;
      if (v36 < 1)
      {
        LODWORD(v22) = 0;
        v25 = -1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = (v38[0] + 8);
        v25 = -1;
        while (*(v24 - 1))
        {
          v27 = *v24;
          v24 += 2;
          v26 = v27;
          if (v27 > v23)
          {
            v25 = v22;
            v23 = v26;
          }

          if (v36 == ++v22)
          {
            LODWORD(v22) = v36;
            goto LABEL_23;
          }
        }

        *(v24 - 1) = a1;
        *v24 = FigGetUpTimeNanoseconds();
        v25 = v22;
      }

LABEL_23:
      if (v25 >= v21)
      {
LABEL_29:
        v5 = 4294954315;
        goto LABEL_30;
      }

      v28 = v20 + 16 * v25;
      if (v22 == v21)
      {
        v29 = *v28;
        if (*v28)
        {
          FigSimpleMutexUnlock();
          v5 = cmsBeginInterruptionGuts(a1, v29, 2);
          FigSimpleMutexLock();
          if (v5)
          {
LABEL_30:
            FigSimpleMutexUnlock();
            goto LABEL_31;
          }

          *v28 = a1;
          *(v28 + 8) = FigGetUpTimeNanoseconds();
        }
      }

      v5 = 0;
      *a4 = v28;
      goto LABEL_30;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = OUTLINED_FUNCTION_17(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, v32, v33, v34, *v35, v35[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_3_0(v19))
    {
      v36 = 136315138;
      v37 = "MXCoreSessionAddResource";
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_2_18();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294954315;
  }

LABEL_31:
  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t cmsSetClientPriority(void *a1, uint64_t a2)
{
  if (a2 <= 0x14 && ((1 << a2) & 0x100401) != 0)
  {
    CanClientsSetEmergencyAlertPriority = MX_FeatureFlags_CanClientsSetEmergencyAlertPriority();
    if (a2 != 20 || !CanClientsSetEmergencyAlertPriority)
    {
      if (!CanClientsSetEmergencyAlertPriority && ([a1 mustUseDefaultClientPriority] & 1) != 0)
      {
        return 4294954309;
      }

      v5 = [a1 isActive];
      if (a2 == 10 && v5 && !CMSUtility_IsAudioCategoryRingtone(a1))
      {
        return 4294954309;
      }

      goto LABEL_12;
    }

    if ([a1 hasEntitlementToSetEmergencyAlertPriority])
    {
      [a1 isActive];
LABEL_12:
      v6 = [a1 clientPriority];
      [a1 setClientPriority:a2];
      [a1 setHasPhoneCallBehavior:CMSUtility_HasPhoneCallBehaviour(a1) != 0];
      [a1 setOptOutOfMutePriority:CMSUtility_HasPhoneCallBehaviour(a1) != 0];
      if ([a1 clientPriority] <= v6 || !objc_msgSend(a1, "isActive") || (result = cmsBeginInterruptionGuts(a1, 0, 2), !result) && (result = objc_msgSend(a1, "sendSessionConfigurationInfoToVA"), !result))
      {
        if ((CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded(), MX_FeatureFlags_IsSmartRoutingOnActivationEnabled()) && ([a1 isActive] & 1) != 0 || (result = objc_msgSend(a1, "isPlaying"), result))
        {
          CMSUtility_RouteToPreferredRouteIfRequired(a1, 0, 12);
          CMSMNotificationUtility_PostHighestArbitrationPriorityForTipiDidChangeIfNeeded();
          return 0;
        }
      }

      return result;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t cmsmActivateEndpointFromRouteDescription(const __CFDictionary *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_15;
  }

  UIDFromRouteDescription = CMSMVAUtility_GetUIDFromRouteDescription(a1);
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  v4 = vaeCopyDeviceIdentifierFromVADPort(CurrentOutputPortAtIndex);
  if (!FigCFEqual())
  {
    CFDictionaryGetValue(a1, @"AVAudioRouteName");
    v14 = vaeCopyNameForPort(CurrentOutputPortAtIndex);
    CFDictionaryGetValue(a1, @"RouteName");
    if (dword_1EB75DE40)
    {
      v15 = OUTLINED_FUNCTION_2_13();
      if (os_log_type_enabled(v15, BYTE3(type)))
      {
        v16 = HIDWORD(type);
      }

      else
      {
        v16 = HIDWORD(type) & 0xFFFFFFFE;
      }

      if (v16)
      {
        OUTLINED_FUNCTION_1_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!FigCFEqual())
    {
      goto LABEL_33;
    }

    v19 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 1, *MEMORY[0x1E69618D0], 0);
    if (UIDFromRouteDescription && CFStringHasSuffix(UIDFromRouteDescription, @"screen"))
    {
      v20 = qword_1EB75E1A0;
    }

    else
    {
      v20 = qword_1EB75E188;
    }

    v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v21)
    {
      v4 = v21(v20, v19, 0);
      if (!v19)
      {
LABEL_32:
        if (v4)
        {
          goto LABEL_16;
        }

LABEL_33:
        if (FigCFEqual() || FigCFEqual())
        {
          if (CFDictionaryGetValue(a1, @"PortNumber"))
          {
            v22 = MEMORY[0x1E69618F8];
          }

          else
          {
            v22 = MEMORY[0x1E69618D8];
          }

          v23 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 0, *v22, 0);
          v24 = qword_1EB75E188;
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v25)
          {
            v4 = 4294954514;
            if (!v23)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          v26 = v25(v24, v23, 0);
        }

        else
        {
          if (!FigCFEqual())
          {
            v27 = FigRoutingManagerPickRouteDescriptorForContext(qword_1EB75E190, a1, 0, 0);
            if (v27)
            {
              v4 = v27;
              goto LABEL_16;
            }

LABEL_43:
            cmsmUpdateFakeSharedAudioRouteAsPicked(1, 0, 0, 0);
            cmsmUpdateEnableSharedAudioRouteSyntheticMute(0, 0, 1, 0, 0, 0);
            goto LABEL_15;
          }

          v23 = FigRoutingManagerCopyEndpointWithDeviceID(UIDFromRouteDescription, 0, *MEMORY[0x1E69618F8], 0);
          v26 = FigRoutingContextSelectRoute(qword_1EB75E188, v23);
        }

        v4 = v26;
        if (!v23)
        {
LABEL_42:
          if (v4)
          {
            goto LABEL_16;
          }

          goto LABEL_43;
        }

LABEL_41:
        CFRelease(v23);
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 4294954514;
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    CFRelease(v19);
    goto LABEL_32;
  }

  if (dword_1EB75DE40)
  {
    v5 = OUTLINED_FUNCTION_2_13();
    v13 = OUTLINED_FUNCTION_17(v5, v6, v7, v8, v9, v10, v11, v12, v28, v29, v30, type, SBYTE2(type), BYTE3(type), SHIDWORD(type));
    if (OUTLINED_FUNCTION_3_0(v13))
    {
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_2_18();
    }

    OUTLINED_FUNCTION_0_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v4)
  {
    CFRelease(v4);
LABEL_15:
    v4 = 0;
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t CMSessionMgrRegisterEndpointManager_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionSetProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_20(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_21(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_22(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_23(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_24(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_25(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_26(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_27(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_28(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_29(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_30(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_31(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_32(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_33(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_34(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_35(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_36(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_37(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_38(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_39(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_40(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_41(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_42(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_43(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_44(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_45(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_46(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_47(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_48(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_49(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_50(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_51(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_52(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_53(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_54(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_55(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_56(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_57(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_58(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_59(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_60(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_61(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_62(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_63(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_64(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_65(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_66(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_67(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_68(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_69(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_70(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_71(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_72(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_73(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_74(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_75(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_76(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_77(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_78(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_79(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_80(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_81(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_82(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_83(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_84(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_85(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_86(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_87(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_88(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_89(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_90(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_91(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_92(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_93(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_94(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_95(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_96(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_97(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_98(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_99(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_100(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_101(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_102(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_103(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_104(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_105(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_106(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_107(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_108(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_109(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_110(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_111(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_112(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_113(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_114(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_115(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_116(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_117(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_118(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_119(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_120(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_121(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_122(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_123(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_124(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_125(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_126(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_127(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_128(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_129(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_130(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_131(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_132(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_133(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_134(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_135(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_136(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_137(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_138(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_139(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_140(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_141(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_142(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_143(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_144(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_145(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_146(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_147(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_148(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_149(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_150(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_151(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_152(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_153(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_154(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_155(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_156(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_157(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_158(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_159(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_160(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_161(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_162(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_163(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_164(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_165(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_166(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_167(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_168(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_169(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_170(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_171(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_172(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_173(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_174(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MXCoreSessionCopyProperty_cold_175(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrCopyPickableRoutesForCategoryAndMode_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrHasRouteSharingPolicyLongFormVideo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrShouldHijackAudioRoute_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMSessionMgrShouldHijackAudioRoute_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _CMSessionMgrCopyPortDescription_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStarkModeControllerSetCurrentInternalMode(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294950566;
  }

  result = fsm_verifyResourceState(a2);
  if (!result)
  {
    result = fsm_verifyResourceState((a2 + 8));
    if (!result)
    {
      v5 = a2[17];
      if (a2[16])
      {
        if (!v5)
        {
          return 4294949811;
        }
      }

      else if (v5)
      {
        return 4294949810;
      }

      memcpy(v14, a2, sizeof(v14));
      v6 = *(a1 + 16);
      OUTLINED_FUNCTION_15();
      MXDispatchSync(v7, v8, v9, v10, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

void FigStarkModeControllerSetExecuteChangeHandler(void *a1, const void *a2)
{
  if (a1)
  {
    CFRetain(a1);
    _Block_copy(a2);
    v4 = a1[2];
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_15();
    MXDispatchAsync(v5, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t FigStarkModeControllerAddStateChangedHandler(void *a1, NSObject *a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E695E480];
  if (qword_1ED6D3070 != -1)
  {
    dispatch_once(&qword_1ED6D3070, &__block_literal_global_60_0);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!a2)
  {
    a2 = MEMORY[0x1E69E96A0];
  }

  *(Instance + 16) = FigAtomicIncrement32();
  *(Instance + 24) = a2;
  dispatch_retain(a2);
  *(Instance + 32) = _Block_copy(a3);
  CFRetain(a1);
  v8 = a1[2];
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_15();
  MXDispatchAsync(v9, v10, v11, v12, v13, v14, v15);
  return Instance;
}

uint64_t mxFigStarkModeController_GetCurrentMode(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v3 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v3)
  {
    CurrentMode = v3;
    FigSignalErrorAtGM();
  }

  else
  {
    CurrentMode = fsmcontroller_GetCurrentMode(cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return CurrentMode;
}

uint64_t mxFigStarkModeController_RequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v9 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v9)
  {
    v10 = v9;
    FigSignalErrorAtGM();
  }

  else
  {
    v10 = fsmcontroller_RequestModeChange(cf, a2, a3, a4, a5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t mxFigStarkModeController_RequestInitialModeChange(uint64_t a1, int *a2, int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294950566;
  }

  v11 = CMSMUtility_CopyFigStarkModeController(&cf);
  if (v11)
  {
    v12 = v11;
    FigSignalErrorAtGM();
  }

  else
  {
    v12 = fsmcontroller_RequestInitialModeChange(cf, a2, a3, a4, a5, a6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void FigStarkModeCopyController_cold_1(int a1, CFTypeRef *a2, _DWORD *a3)
{
  FigSignalErrorAtGM();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t FigStarkModeCreateDictionaryRepresentation_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(CFTypeRef a1, const void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  cf = 0;
  v42 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x1E69626C0];
  if (!FigRoutingManagerIsEndpointOfType(a2) && !FigRoutingManagerUtilities_IsEndpointTypeVehicle(a2))
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    FigEndpoint = FigEndpointAggregateGetFigEndpoint();
    if (!FigEndpoint)
    {
      a1 = 0;
      goto LABEL_6;
    }

    v12 = FigEndpoint;
    v13 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, *MEMORY[0x1E69620F8], v13, &cf);
    }

    a1 = CFRetain(v12);
    if (!a1)
    {
      goto LABEL_6;
    }

    if (FigCFEqual())
    {
      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v16 = OUTLINED_FUNCTION_7_11();
      v24 = OUTLINED_FUNCTION_35(v16, v17, v18, v19, v20, v21, v22, v23, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
      if (OUTLINED_FUNCTION_10(v24))
      {
LABEL_27:
        v43 = 136315138;
        OUTLINED_FUNCTION_0_29();
        OUTLINED_FUNCTION_12();
      }
    }

    else
    {
      v25 = FigEndpointGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_5;
      }

      v26(v25, *MEMORY[0x1E6962270], v13, &v42);
      if (!v42 || CFArrayGetCount(v42) < 2)
      {
        goto LABEL_5;
      }

      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v27 = OUTLINED_FUNCTION_7_11();
      v35 = OUTLINED_FUNCTION_35(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, SBYTE2(v40), BYTE3(v40), SHIDWORD(v40));
      if (OUTLINED_FUNCTION_10(v35))
      {
        goto LABEL_27;
      }
    }

    v36 = *(v2 + 3864);
    OUTLINED_FUNCTION_4_1();
    goto LABEL_6;
  }

  a1 = CFRetain(a2);
  if (a1)
  {
LABEL_5:
    FigRoutingManagerGetSharedManager();
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = *MEMORY[0x1E6961938];
    OUTLINED_FUNCTION_2_19();
    v7 = CMNotificationCenterAddListener();
    routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification(v7, v8, v9, a1);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v42)
  {
    CFRelease(v42);
    v42 = 0;
  }

  if (a1)
  {
    CFRelease(a1);
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
}

void routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    SharedManager = FigRoutingManagerGetSharedManager();
    cf = 0;
    v40 = 0;
    v6 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v9 = *(*(VTable + 8) + 48);
    if (v9)
    {
      v10 = *(VTable + 8) + 48;
      v9(CMBaseObject, *MEMORY[0x1E6961FF0], v6, &v40);
    }

    v11 = FigEndpointGetCMBaseObject();
    v12 = CMBaseObjectGetVTable();
    v13 = *(*(v12 + 8) + 48);
    if (v13)
    {
      v14 = *(v12 + 8) + 48;
      v13(v11, *MEMORY[0x1E69620F8], v6, &cf);
    }

    if (dword_1EB75DF20)
    {
      v15 = OUTLINED_FUNCTION_0_32();
      v23 = OUTLINED_FUNCTION_6_13(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
      if (OUTLINED_FUNCTION_10(v23))
      {
        v41 = 136315650;
        v42 = "routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification";
        v43 = 2114;
        v44 = cf;
        v45 = 2114;
        v46 = v40;
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_12();
      }

      v24 = *(v4 + 3864);
      OUTLINED_FUNCTION_4_1();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v25 = SharedManager[1];
    OUTLINED_FUNCTION_4_15();
    v31 = 3221225472;
    v32 = __routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification_block_invoke;
    v33 = &__block_descriptor_40_e5_v8__0l;
    v34 = v40;
    MXDispatchAsync("routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification", "FigRoutingManager_Utilities_Embedded.m", 470, 0, 0, v26, &v30);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(uint64_t a1, const void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  cf = 0;
  v52 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = *MEMORY[0x1E69626C0];
  if (!FigRoutingManagerIsEndpointOfType(a2) && !FigRoutingManagerUtilities_IsEndpointTypeVehicle(a2))
  {
    if (!a1 || (FigEndpoint = FigEndpointAggregateGetFigEndpoint()) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v12 = FigEndpoint;
    v13 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v16 = *(*(VTable + 8) + 48);
    if (v16)
    {
      v17 = *(VTable + 8) + 48;
      v16(CMBaseObject, *MEMORY[0x1E69620F8], v13, &cf);
    }

    v5 = CFRetain(v12);
    if (!v5)
    {
      goto LABEL_6;
    }

    if (FigCFEqual())
    {
      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v18 = OUTLINED_FUNCTION_0_32();
      v26 = OUTLINED_FUNCTION_6_13(v18, v19, v20, v21, v22, v23, v24, v25, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      if (OUTLINED_FUNCTION_10(v26))
      {
LABEL_28:
        v53 = 136315138;
        v54 = "FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener";
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_12();
      }
    }

    else
    {
      v12 = FigEndpointGetCMBaseObject();
      v27 = CMBaseObjectGetVTable();
      v28 = *(*(v27 + 8) + 48);
      if (v28)
      {
        v29 = *(v27 + 8) + 48;
        v28(v12, *MEMORY[0x1E6962270], v13, &v52);
        if (v52)
        {
          if (CFArrayGetCount(v52) == 1 && FigRoutingManagerIsEndpointPresentInAggregate(a2, a1))
          {
            goto LABEL_5;
          }
        }
      }

      if (!dword_1EB75DF20)
      {
        goto LABEL_6;
      }

      v30 = OUTLINED_FUNCTION_0_32();
      v38 = OUTLINED_FUNCTION_6_13(v30, v31, v32, v33, v34, v35, v36, v37, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      if (OUTLINED_FUNCTION_10(v38))
      {
        goto LABEL_28;
      }
    }

    v39 = v12[483];
    OUTLINED_FUNCTION_4_1();
    goto LABEL_6;
  }

  v5 = CFRetain(a2);
  if (v5)
  {
LABEL_5:
    SharedManager = FigRoutingManagerGetSharedManager();
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = *MEMORY[0x1E6961938];
    OUTLINED_FUNCTION_2_19();
    CMNotificationCenterRemoveListener();
    v8 = SharedManager[1];
    OUTLINED_FUNCTION_4_15();
    v43 = 3221225472;
    v44 = __FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener_block_invoke;
    v45 = &__block_descriptor_40_e5_v8__0l;
    v46 = 0;
    MXDispatchAsync("FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener", "FigRoutingManager_Utilities_Embedded.m", 596, 0, 0, v9, &v42);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v52)
  {
    CFRelease(v52);
    v52 = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointUIAgentXPCRemoteCreate(uint64_t a1, void *a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  if (qword_1ED6D3090 != -1)
  {
    dispatch_once(&qword_1ED6D3090, &__block_literal_global_84);
  }

  v3 = _MergedGlobals_15;
  if (!_MergedGlobals_15)
  {
    v4 = FigXPCCreateBasicMessage();
    if (!v4)
    {
      v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v4)
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (uint64)
        {
          v6 = uint64;
          FigEndpointUIAgentGetClassID();
          v3 = CMDerivedObjectCreate();
          if (!v3)
          {
            *(CMBaseObjectGetDerivedStorage() + 8) = v6;
            FigXPCRemoteClientAssociateObject();
          }

          *a2 = 0;
        }

        else
        {
          v3 = 4294950515;
        }

        goto LABEL_11;
      }
    }

LABEL_13:
    v3 = v4;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t figEndpointUIAgentRemoteXPC_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *(DerivedStorage + 8);
    *DerivedStorage = 1;
    FigXPCRemoteClientDisassociateObject();
    if (!*(v1 + 1) && v2 && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  return FigXPCRelease();
}

uint64_t figEndpointUIAgentRemoteXPC_setAuthValue(uint64_t a1, uint64_t a2, int a3)
{
  v23 = 0;
  if (a2 || a3)
  {
    ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v23);
    if (ObjectID)
    {
      v3 = ObjectID;
    }

    else
    {
      OUTLINED_FUNCTION_25();
      v5 = FigXPCCreateBasicMessage();
      OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, 0);
      if (!v3)
      {
        FigXPCMessageSetCFString();
        OUTLINED_FUNCTION_0_33(MEMORY[0x1E695E4C0]);
        v13 = FigXPCRemoteClientSendSyncMessage();
        OUTLINED_FUNCTION_8_0(v13, v14, v15, v16, v17, v18, v19, v20, v22);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  FigXPCRelease();
  return v3;
}

uint64_t figEndpointUIAgentRemoteXPC_setIsCurrentUIAgent(uint64_t a1)
{
  v21 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    v1 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_1_24(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_0_33(MEMORY[0x1E695E4C0]);
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_1_24(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t figEndpointUIAgentRemoteXPC_deviceWakeStatus(uint64_t a1)
{
  v21 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    v1 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_1_24(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_0_33(MEMORY[0x1E695E4C0]);
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_1_24(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t figEndpointUIAgentRemoteXPC_setPasswordFromKeychain(uint64_t a1)
{
  v21 = 0;
  ObjectID = remoteXPCendpointAgent_GetObjectID(a1, &v21);
  if (ObjectID)
  {
    v1 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v3 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_8_0(v3, v4, v5, v6, v7, v8, v9, v10, 0);
    if (!v1)
    {
      FigXPCMessageSetCFString();
      FigXPCMessageSetCFObject();
      v11 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_0(v11, v12, v13, v14, v15, v16, v17, v18, v20);
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t remoteXPCendpointAgent_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCendpointAgent_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSystemController_HasRouteSharingPolicyLongFormVideo(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, xdict, v17);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = FigXPCMessageSetCFString(), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_1();
    v11 = v10;
    if (a3 && !v10)
    {
      *a3 = xpc_dictionary_get_BOOL(xdicta, kFigSystemControllerXPCMsgParam_HasRouteSharingPolicyLongFormVideo);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29();
  return v11;
}

uint64_t remoteSystemController_ToggleInputMute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v10;
}

uint64_t remoteSystemController_GetInputMute(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_16(a1, a2, a3, a4, a5, a6, a7, a8, cf, v17, v18, v19);
  if (v10 || (OUTLINED_FUNCTION_9_0(), v10 = FigXPCCreateBasicMessage(), v10))
  {
    v13 = v10;
  }

  else
  {
    v8 = CFDataCreate(*MEMORY[0x1E695E480], v8, 32);
    v11 = FigXPCMessageSetCFData();
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_6_1();
      v13 = v12;
      if (a3)
      {
        if (!v12)
        {
          v13 = FigXPCMessageCopyCFBoolean();
          if (!v13)
          {
            *a3 = cfa == *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v8)
  {
    CFRelease(v8);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  OUTLINED_FUNCTION_14_7();
  return v13;
}

uint64_t remoteSystemController_ClearUplinkMutedCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v10;
}

uint64_t remoteSystemController_allowAppToInitiateRecordingTemporarily(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (OUTLINED_FUNCTION_16_5(v13), v9 = FigXPCMessageSetCFString(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v8;
}

uint64_t remoteSystemController_createMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (v9 = FigXPCMessageSetCFString(), v9) || (OUTLINED_FUNCTION_16_5(v13), v9 = FigXPCMessageSetCFDictionary(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v8;
}

uint64_t remoteSystemController_invalidateMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_10_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v9 = FigXPCCreateBasicMessage();
    if (v9 || (OUTLINED_FUNCTION_16_5(v13), v9 = FigXPCMessageSetCFString(), v9))
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_15_8();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23();
  return v8;
}

uint64_t remoteSystemController_SetSilentMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a2;
  v11 = OUTLINED_FUNCTION_13_7(a1, a2, a3, a4, a5, a6, a7, a8, v56, v62);
  if (v11)
  {
    v8 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v12 = FigXPCCreateBasicMessage();
    OUTLINED_FUNCTION_11_8(v12, v13, v14, v15, v16, v17, v18, v19, v57, v63);
    if (!v8)
    {
      v20 = MEMORY[0x1E695E4C0];
      if (v10)
      {
        v20 = MEMORY[0x1E695E4D0];
      }

      v21 = *v20;
      v22 = FigXPCMessageSetCFBoolean();
      OUTLINED_FUNCTION_11_8(v22, v23, v24, v25, v26, v27, v28, v29, v58, v64);
      v30 = FigXPCMessageSetCFDate();
      OUTLINED_FUNCTION_11_8(v30, v31, v32, v33, v34, v35, v36, v37, v59, v65);
      v38 = FigXPCMessageSetCFString();
      v46 = OUTLINED_FUNCTION_11_8(v38, v39, v40, v41, v42, v43, v44, v45, v60, v66);
      xpc_dictionary_set_uint64(v46, kFigSystemControllerXPCMsgParam_ClientType, v9);
      v47 = FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_11_8(v47, v48, v49, v50, v51, v52, v53, v54, v61, v67);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_14_7();
  return v8;
}

uint64_t remoteSystemController_RemoteDeviceControlIsAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_4_16(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16, v17);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = OUTLINED_FUNCTION_6_1(), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFNumber();
    v11 = v10;
    if (v8 && !v10)
    {
      *v8 = [v14 unsignedIntValue];
    }
  }

  FigXPCRelease();
  FigXPCRelease();

  OUTLINED_FUNCTION_29();
  return v11;
}

uint64_t remoteSystemController_GetVolumeButtonDelta(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_25(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, xdict, v18);
  if (v9 || (OUTLINED_FUNCTION_9_0(), v9 = FigXPCCreateBasicMessage(), v9) || (v9 = FigXPCMessageSetCFString(), v9))
  {
    v11 = v9;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_1();
    v11 = v10;
    if (a3 && !v10)
    {
      v12 = xpc_dictionary_get_double(xdicta, kFigSystemControllerXPCMsgParam_VolumeDelta);
      *a3 = v12;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29();
  return v11;
}

uint64_t remoteSystemController_getObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteSystemController_SetInputMute_cold_1(UInt8 *bytes, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 32);
  v7 = *a2;
  v8 = FigXPCMessageSetCFData();
  if (!v8)
  {
    v9 = *a2;
    v8 = FigXPCRemoteClientSendSyncMessage();
  }

  *a4 = v8;
  v10 = *a2;
  FigXPCRelease();
  if (v6)
  {
    CFRelease(v6);
  }

  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t HandleEndpointUIAgentRemoteMessage(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v7 = OpCode;
  }

  else
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    v8 = 0;
    cf = 0;
    v4 = FigXPCServerLookupAndRetainAssociatedObject();
    if (!v4)
    {
      v4 = FigSignalErrorAtGM();
    }

    v7 = v4;
    if (!v4)
    {
      v7 = 4294954516;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t FigEndpointUIAgentCopyCurrentEndpointUIAgent(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  if (!gEndpointAgentServerState)
  {
    return 4294954513;
  }

  v2 = *gEndpointAgentServerState;
  FigSimpleMutexLock();
  if (!*(gEndpointAgentServerState + 16))
  {
    v7 = *(gEndpointAgentServerState + 8);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v9 = Count + 1;
        do
        {
          CFArrayGetValueAtIndex(*(gEndpointAgentServerState + 8), v9 - 2);
          FigCFDictionaryGetIntIfPresent();
          --v9;
        }

        while (v9 > 1);
      }
    }
  }

  v3 = gEndpointAgentServerState;
  v4 = *(gEndpointAgentServerState + 16);
  if (v4)
  {
    v4 = CFRetain(v4);
    v3 = gEndpointAgentServerState;
  }

  *a1 = v4;
  v5 = *v3;
  FigSimpleMutexUnlock();
  return 0;
}

void RefconDestructor(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  CMNotificationCenterGetDefaultLocalCenter();
  v3 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_3_13();
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    v10 = *a1;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(v10, 0, 1);
    }
  }

  v4 = *a1;
  if (gEndpointAgentServerState)
  {
    v5 = *gEndpointAgentServerState;
    FigSimpleMutexLock();
    v6 = *(gEndpointAgentServerState + 8);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(*(gEndpointAgentServerState + 8), v9);
          FigCFDictionaryGetValue();
          if (FigCFEqual())
          {
            break;
          }

          if (v8 == ++v9)
          {
            goto LABEL_29;
          }
        }

        if (FigCFDictionaryGetValue())
        {
          if (dword_1EB75DF80)
          {
            v12 = OUTLINED_FUNCTION_2_20();
            if (os_log_type_enabled(v12, type))
            {
              v13 = v21;
            }

            else
            {
              v13 = v21 & 0xFFFFFFFE;
            }

            if (v13)
            {
              OUTLINED_FUNCTION_5();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_0_0();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CFArrayRemoveValueAtIndex(*(gEndpointAgentServerState + 8), v9);
          v14 = gEndpointAgentServerState;
          if (*(gEndpointAgentServerState + 16) == v4)
          {
            if (dword_1EB75DF80)
            {
              v15 = OUTLINED_FUNCTION_2_20();
              if (os_log_type_enabled(v15, type))
              {
                v16 = v21;
              }

              else
              {
                v16 = v21 & 0xFFFFFFFE;
              }

              if (v16)
              {
                OUTLINED_FUNCTION_5();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_0_0();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v14 = gEndpointAgentServerState;
            }

            *(v14 + 16) = 0;
            FigEndpointUIAgentHelper_SetNewUIAgent(0);
          }
        }
      }
    }

LABEL_29:
    v17 = *gEndpointAgentServerState;
    FigSimpleMutexUnlock();
    v4 = *a1;
  }

  if (v4)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v18)
    {
      v18(v4);
    }
  }

  DisposePerUIAgentState(a1);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t FigEndpointUIAgentStartServer_cold_1(CFTypeRef *a1, void *a2, _DWORD *a3)
{
  v6 = FigSignalErrorAtGM();
  *a3 = v6;
  if (!v6)
  {
    return 1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (*a2)
  {
    FigSimpleMutexDestroy();
  }

  free(a2);
  return 0;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double gotLoadHelper_x8__OBJC_CLASS___BTAudioRoutingRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AudioAccessoryServices))
  {
    return dlopenHelper_AudioAccessoryServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CRPairedVehicleManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CarKit))
  {
    return dlopenHelper_CarKit(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_AudioAccessoryServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AudioAccessoryServices.framework/AudioAccessoryServices", 0);
  atomic_store(1u, &dlopenHelperFlag_AudioAccessoryServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CarKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 0);
  atomic_store(1u, &dlopenHelperFlag_CarKit);
  return a1;
}