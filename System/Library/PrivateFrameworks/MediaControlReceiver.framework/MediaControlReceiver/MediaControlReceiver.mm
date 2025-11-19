void AirPlayReceiverXPCClient_SetDelegateWithQueue(NSObject *a1, NSObject *a2)
{
  v2 = gAirPlayReceiverXPCClient;
  if (a1)
  {
    if (!gAirPlayReceiverXPCClient)
    {
      v5 = malloc_type_calloc(1uLL, 0x48uLL, 0x108004037DC1CDFuLL);
      if (v5)
      {
        v6 = v5;
        v7 = dispatch_queue_create("AirPlayReceiverXPCClient", 0);
        *v6 = v7;
        if (v7)
        {
          dispatch_set_context(v7, v6);
          dispatch_set_finalizer_f(*v6, _AirPlayReceiverXPCClient_Finalize);
          if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          gAirPlayReceiverXPCClient = v6;
          v6[4] = a1;
          if (a2)
          {
            v10 = a2;
          }

          else
          {
            v10 = MEMORY[0x277D85CD0];
          }

          v6[1] = v10;
          dispatch_retain(v10);
          v11 = *gAirPlayReceiverXPCClient;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __AirPlayReceiverXPCClient_Connect_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = gAirPlayReceiverXPCClient;
          dispatch_async(v11, block);
        }

        else
        {
          APSLogErrorAt();

          free(v6);
        }
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }

  else if (gAirPlayReceiverXPCClient)
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = dispatch_semaphore_create(0);
    *(v2 + 16) = v8;
    dispatch_async_f(*v2, v2, _AirPlayReceiverXPCClient_Delete);
    if (v8)
    {
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8);
    }

    v9 = *(v2 + 8);
    if (v9)
    {
      dispatch_release(v9);
    }

    gAirPlayReceiverXPCClient = 0;
  }
}

void _AirPlayReceiverXPCClient_Delete(uint64_t a1)
{
  _AirPlayReceiverXPCClient_StopAllActiveSessions(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_connection_cancel(*(a1 + 24));
    xpc_release(v2);
    *(a1 + 24) = 0;
  }

  dispatch_release(*a1);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void _AirPlayReceiverXPCClient_StopAllActiveSessions(_BYTE *a1)
{
  if (!a1[56])
  {
    if (a1[57])
    {
      _AirPlayReceiverXPCClient_StopAudio(a1, 0);
    }

    if (a1[58])
    {
      _AirPlayReceiverXPCClient_StopPresentation(a1, 0);
    }

    if (a1[59])
    {

      _AirPlayReceiverXPCClient_StopVideo(a1, 0);
    }
  }
}

void _AirPlayReceiverXPCClient_StopAudio(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
LABEL_7:
        reply = xpc_dictionary_create_reply(a2);
        xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
        xpc_connection_send_message(*(a1 + 24), reply);
        xpc_release(reply);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 57) = 0;
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StopAudio_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v8;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v8, 8);
}

void sub_2585664F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StopPresentation(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 48) removeFromSuperlayer];

  *(a1 + 48) = 0;
  *(a1 + 58) = 0;
  *(a1 + 64) = 0;
  [MEMORY[0x277CD9FF0] flush];
  [MEMORY[0x277CD9FF0] synchronize];
  if (*(a1 + 40))
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 40) = 0;
    if (*(a1 + 32))
    {
      v5 = *(a1 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverXPCClient_StopPresentation_block_invoke;
      block[3] = &unk_27989A228;
      block[5] = &v8;
      block[6] = a1;
      block[4] = v4;
      dispatch_sync(v5, block);
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      APSLogErrorAt();
      *(v9 + 6) = -6745;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (gLogCategory_AirPlayReceiverXPCClientCore <= 50 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(v9 + 6) = 0;
  if (a2)
  {
LABEL_19:
    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
    xpc_connection_send_message(*(a1 + 24), reply);
    xpc_release(reply);
  }

LABEL_20:

  _Block_object_dispose(&v8, 8);
}

void sub_258566794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StopVideo(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v4 = xpc_dictionary_copy_cf_object();
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        APSLogErrorAt();
        *(v9 + 6) = -6756;
LABEL_7:
        reply = xpc_dictionary_create_reply(a2);
        xpc_dictionary_set_int64(reply, "error", *(v9 + 6));
        xpc_connection_send_message(*(a1 + 24), reply);
        xpc_release(reply);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 59) = 0;
  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StopVideo_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v8;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v8, 8);
}

void sub_258566904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258567BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_SendPingMsg(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "function", "ping");
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 24);
    LogPrintF();
  }

  xpc_connection_send_message(*(a1 + 24), v2);

  xpc_release(v2);
}

void _AirPlayReceiverXPCClient_HideProgress(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___AirPlayReceiverXPCClient_HideProgress_block_invoke;
    v6[3] = &unk_27989A308;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v4, v6);
  }

  else
  {
    APSLogErrorAt();
    *(v8 + 6) = -6745;
  }

  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v8 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);
  _Block_object_dispose(&v7, 8);
}

void sub_258568044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StartVideo(uint64_t a1, void *a2)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [v4 objectForKey:@"Content-Location"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    APSLogErrorAt();
    *(v31 + 6) = -6756;
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(v4, @"cookies");
  v7 = Value;
  if (!Value)
  {
    goto LABEL_23;
  }

  v8 = CFGetTypeID(Value);
  if (v8 != CFArrayGetTypeID())
  {
    goto LABEL_23;
  }

  if (_CFHTTPCookieStorageGetDefault())
  {
    v9 = CFURLCreateWithString(0, v5, 0);
    if (v9)
    {
      v10 = CFHTTPCookieStorageCopyCookiesForURL();
      CFRelease(v9);
      if (v10)
      {
        Count = CFArrayGetCount(v10);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            CFArrayGetValueAtIndex(v10, i);
            CFHTTPCookieStorageDeleteCookie();
          }
        }

        CFRelease(v10);
      }

      v13 = CFArrayGetCount(v7);
      if (v13 < 1)
      {
LABEL_19:
        *(v31 + 6) = 0;
        if (gLogCategory_AirPlayReceiverXPCClientCore <= 20 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v14);
        if (!ValueAtIndex || (v16 = CFGetTypeID(ValueAtIndex), v16 != CFDictionaryGetTypeID()))
        {
          v21 = -6756;
          goto LABEL_33;
        }

        v17 = CFHTTPCookieCreateWithProperties();
        if (!v17)
        {
          break;
        }

        CFHTTPCookieStorageSetCookie();
        CFRelease(v17);
        if (v13 == ++v14)
        {
          goto LABEL_19;
        }
      }

      v21 = -6700;
    }

    else
    {
      v21 = -6700;
    }
  }

  else
  {
    v21 = -6700;
  }

LABEL_33:
  APSLogErrorAt();
  *(v31 + 6) = v21;
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 60)
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore != -1)
    {
LABEL_21:
      LogPrintF();
      goto LABEL_23;
    }

    if (_LogCategory_Initialize())
    {
      v22 = *(v31 + 6);
      goto LABEL_21;
    }
  }

LABEL_23:
  *(v31 + 6) = -6700;
  v18 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_StartVideo_block_invoke;
  block[3] = &unk_27989A2E0;
  block[4] = v4;
  block[5] = &v30;
  block[6] = &v24;
  block[7] = a1;
  dispatch_sync(v18, block);
  if (!*(v31 + 6))
  {
    *(a1 + 59) = 1;
    if (v4)
    {
      Int64 = CFDictionaryGetInt64();
    }

    else
    {
      Int64 = 0;
    }

    *(a1 + 68) = Int64;
  }

LABEL_28:
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v31 + 6));
  if (v25[5])
  {
    xpc_dictionary_set_cf_object();
  }

  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void sub_25856850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_StartAudio(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    APSLogErrorAt();
    *(v16 + 6) = -6756;
  }

  else
  {
    *(v16 + 6) = -6700;
    v5 = *(a1 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___AirPlayReceiverXPCClient_StartAudio_block_invoke;
    v8[3] = &unk_27989A2E0;
    v8[4] = v4;
    v8[5] = &v15;
    v8[6] = &v9;
    v8[7] = a1;
    dispatch_sync(v5, v8);
    if (!*(v16 + 6))
    {
      *(a1 + 57) = 1;
      if (v4)
      {
        Int64 = CFDictionaryGetInt64();
      }

      else
      {
        Int64 = 0;
      }

      *(a1 + 60) = Int64;
    }
  }

  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v16 + 6));
  if (v10[5])
  {
    xpc_dictionary_set_cf_object();
  }

  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_25856873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_UpdateAudioMetaData(uint64_t a1, void *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = xpc_dictionary_copy_cf_object();
  if (!v4)
  {
    APSLogErrorAt();
    v7 = v11;
    v8 = -6705;
LABEL_7:
    *(v7 + 6) = v8;
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    APSLogErrorAt();
    v7 = v11;
    v8 = -6756;
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverXPCClient_UpdateAudioMetaData_block_invoke;
  block[3] = &unk_27989A228;
  block[5] = &v10;
  block[6] = a1;
  block[4] = v4;
  dispatch_sync(v5, block);
LABEL_4:
  reply = xpc_dictionary_create_reply(a2);
  xpc_dictionary_set_int64(reply, "error", *(v11 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);

  _Block_object_dispose(&v10, 8);
}

void sub_2585688D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_UpdateAudioProgress(uint64_t a1, xpc_object_t xdict)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = xpc_dictionary_get_double(xdict, "position");
  v5 = xpc_dictionary_get_double(xdict, "duration");
  v6 = *(a1 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___AirPlayReceiverXPCClient_UpdateAudioProgress_block_invoke;
  v8[3] = &unk_27989A330;
  v8[4] = &v9;
  v8[5] = a1;
  *&v8[6] = v4;
  *&v8[7] = v5;
  dispatch_sync(v6, v8);
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "error", *(v10 + 6));
  xpc_connection_send_message(*(a1 + 24), reply);
  xpc_release(reply);
  _Block_object_dispose(&v9, 8);
}

void sub_2585689F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverXPCClient_Detach(uint64_t a1, xpc_object_t original)
{
  *(a1 + 56) = 1;
  reply = xpc_dictionary_create_reply(original);
  xpc_dictionary_set_int64(reply, "error", 0);
  xpc_connection_send_message(*(a1 + 24), reply);

  xpc_release(reply);
}

void _AirPlayReceiverXPCClient_Finalize(void *a1)
{
  *a1 = 0;
  v2 = a1[2];
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  free(a1);
}

void AirPlayReceiverXPCClient_PostEvent(char *__s1, CFTypeRef cf)
{
  v2 = gAirPlayReceiverXPCClient;
  if (!gAirPlayReceiverXPCClient)
  {
    return;
  }

  if (!cf)
  {
    v7 = strdup(__s1);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:

    APSLogErrorAt();
    return;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFDictionaryGetTypeID())
  {
    v6 = strdup(__s1);
    if (v6)
    {
      v7 = v6;
      CFRetain(cf);
LABEL_7:
      v8 = *v2;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __AirPlayReceiverXPCClient_PostEvent_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v2;
      block[5] = v7;
      block[6] = cf;
      dispatch_async(v8, block);
      return;
    }

    goto LABEL_9;
  }

  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 60 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

id APReceiverMediaRemoteXPCClient_SetDelegate(void *a1)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v2 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  APSXPCClientAddEventHandler();
  result = a1;
  *v2 = result;
  return result;
}

void aprmrc_handleEvents(CFTypeRef cf1, const __CFDictionary *a2)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v4 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 40 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    v17 = cf1;
    LogPrintF();
  }

  if (!CFEqual(cf1, @"didReceiveMediaRemoteData"))
  {
    if (CFEqual(cf1, @"didCloseCommChannel"))
    {
      Value = CFDictionaryGetValue(a2, @"objectID");
      pthread_mutex_lock((v4 + 24));
      v8 = CFDictionaryGetValue(*(v4 + 8), Value);
      v9 = v8;
      if (v8)
      {
        CFRetain(v8);
        [(APReceiverMediaRemoteCommunicationChannel *)v9 invalidate];
        CFDictionaryRemoveValue(*(v4 + 8), Value);
        CFDictionaryRemoveValue(*(v4 + 16), Value);
      }

      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        v18 = *(v4 + 8);
        LogPrintF();
      }

      pthread_mutex_unlock((v4 + 24));
      [*v4 didCloseCommunicationChannel:v9];
      if (v9)
      {
        v15 = v9;
LABEL_38:

        CFRelease(v15);
        return;
      }

      return;
    }

    if (!CFEqual(cf1, @"didSetupReverseCommChannel"))
    {
      if (CFEqual(cf1, @"failedToSetupReverseCommChannel"))
      {
        CFDictionaryGetInt64Ranged();
        v14 = CFDictionaryGetValue(a2, @"clientUUID");
        if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v16 = *v4;

        [v16 failedToSetupReverseCommunicationChannel:v14];
      }

      else if (!CFEqual(cf1, @"connectAck") && gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }

    v10 = CFDictionaryGetValue(a2, @"objectID");
    pthread_mutex_lock((v4 + 24));
    v11 = CFDictionaryGetValue(*(v4 + 8), v10);
    if (v11)
    {
      v12 = v11;
      CFRetain(v11);
      if (gLogCategory_APReceiverMediaRemoteXPCClient < 91 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        [(APReceiverMediaRemoteCommunicationChannel *)v12 uuid];
        v21 = *(v4 + 8);
LABEL_44:
        LogPrintF();
      }
    }

    else
    {
      v12 = [[APReceiverMediaRemoteCommunicationChannel alloc] initWithDictionary:a2];
      CFDictionaryAddValue(*(v4 + 8), v10, v12);
      CFDictionaryAddValue(*(v4 + 16), v10, v12);
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        v20 = *(v4 + 8);
        goto LABEL_44;
      }
    }

    pthread_mutex_unlock((v4 + 24));
    [*v4 didSetupReverseCommunicationChannel:v12];
    if (!v12)
    {
      return;
    }

    goto LABEL_37;
  }

  v5 = CFDictionaryGetValue(a2, @"objectID");
  v6 = CFDictionaryGetValue(a2, @"data");
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(v6);
    LogPrintF();
  }

  pthread_mutex_lock((v4 + 24));
  v13 = CFDictionaryGetValue(*(v4 + 8), v5);
  if (v13)
  {
    v12 = v13;
    CFRetain(v13);
  }

  else
  {
    v12 = [[APReceiverMediaRemoteCommunicationChannel alloc] initWithDictionary:a2];
    CFDictionaryAddValue(*(v4 + 8), v5, v12);
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      v19 = *(v4 + 8);
      LogPrintF();
    }
  }

  pthread_mutex_unlock((v4 + 24));
  [*v4 didReceiveData:v6 fromCommunicationChannel:v12];
  if (v12)
  {
LABEL_37:
    v15 = v12;
    goto LABEL_38;
  }
}

uint64_t __APReceiverMediaRemoteXPCClientGetShared_block_invoke()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A004096F084F8uLL);
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CBECE8];
    v3 = MEMORY[0x277CBF138];
    v4 = MEMORY[0x277CBF150];
    v0[1] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v1 + 16) = CFDictionaryCreateMutable(v2, 0, v3, v4);
    pthread_mutex_init((v1 + 24), 0);
    APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient = v1;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v6 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
    DisconnectNotificationName = APSXPCClientGetDisconnectNotificationName();
    CFNotificationCenterAddObserver(LocalCenter, v6, aprmrc_handleServerDeath, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    APSLogErrorAt();
    APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient = 0;
  }

  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    v14 = @"com.apple.airplay.receiver.mediaremote.agent.services";
    LogPrintF();
  }

  v15 = *MEMORY[0x277CEA3A0];
  v16[0] = @"com.apple.airplay.receiver.mediaremote.agent.services.allow";
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:{1, v14}];
  result = APSXPCServerStart();
  if (result)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCClient != -1)
      {
        goto LABEL_16;
      }

      v10 = result;
      v11 = _LogCategory_Initialize();
      result = v10;
      if (v11)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    result = APSXPCServerAddCommandHandler();
    if (result)
    {
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90)
      {
        if (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || (v12 = result, v13 = _LogCategory_Initialize(), result = v12, v13))
        {
LABEL_16:
          result = LogPrintF();
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _HandleReceiverProcessConnect(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v4 = APSXPCClientSendCommandCreatingReply();
  if (v4 && gLogCategory_APReceiverMediaRemoteXPCClient <= 90 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a3 = 0;
  return v4;
}

void aprmrc_handleServerDeath()
{
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    getprogname();
    LogPrintF();
  }

  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_89);
}

uint64_t __aprmrc_handleServerDeath_block_invoke()
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v0 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  pthread_mutex_lock((APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient + 24));
  v1 = *(v0 + 8);
  if (v1)
  {
    Count = CFDictionaryGetCount(v1);
    v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(v0 + 8), v3, 0);
    if (Count >= 1)
    {
      v4 = v3;
      do
      {
        v5 = *v4;
        Value = CFDictionaryGetValue(*(v0 + 8), *v4);
        if (Value)
        {
          v7 = Value;
          [Value invalidate];
          [*v0 didCloseCommunicationChannel:v7];
          CFDictionaryRemoveValue(*(v0 + 8), v5);
        }

        ++v4;
        --Count;
      }

      while (Count);
    }

    free(v3);
  }

  else if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = pthread_mutex_unlock((v0 + 24));
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50)
  {
    if (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      v9 = *(v0 + 8);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APReceiverMediaRemoteXPCClient_CopyProperty(const void *a1, int *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"propertyKey", a1);
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = APSXPCClientSendCommandCreatingReply();
    v7 = v6;
    if (v6 != -6727)
    {
      if (v6)
      {
        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v7 = -6700;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = -6728;
  }

  if (a2)
  {
    *a2 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t APReceiverMediaRemoteXPCClient_SetProperty(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"propertyKey", a1);
      CFDictionarySetValue(v5, @"propertyValue", a2);
      if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = APSXPCClientSendCommandCreatingReply();
      if (v6)
      {
        APSLogErrorAt();
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v6;
}

void APReceiverMediaRemoteXPCClient_SetupReverseRemoteCommunicationChannel(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"clientUUID", a1);
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (APSXPCClientSendCommandCreatingReply())
    {
      APSLogErrorAt();
      CFDictionarySetInt64();
      aprmrc_handleEvents(@"failedToSetupReverseCommChannel", v3);
    }

    CFRelease(v3);
  }

  else
  {
    APSLogErrorAt();
    CFDictionarySetInt64();

    aprmrc_handleEvents(@"failedToSetupReverseCommChannel", 0);
  }
}

uint64_t APReceiverMediaRemoteXPCClient_TeardownReverseRemoteCommunicationChannel(void *a1)
{
  if (APReceiverMediaRemoteXPCClientGetShared_once != -1)
  {
    dispatch_once(&APReceiverMediaRemoteXPCClientGetShared_once, &__block_literal_global);
  }

  v2 = APReceiverMediaRemoteXPCClientGetShared_mediaRemoteXPCClient;
  v3 = [a1 objectID];
  if (a1)
  {
    v4 = v3;
    pthread_mutex_lock((v2 + 24));
    v5 = CFDictionaryContainsValue(*(v2 + 16), a1);
    pthread_mutex_unlock((v2 + 24));
    if (v5)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        CFDictionarySetValue(Mutable, @"objectID", v4);
        if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v8 = APSXPCClientSendCommandCreatingReply();
        if (v8)
        {
          APSLogErrorAt();
        }

        CFRelease(v7);
      }

      else
      {
        APSLogErrorAt();
        return 4294960568;
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v8;
}