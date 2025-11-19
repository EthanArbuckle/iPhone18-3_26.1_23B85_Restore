uint64_t HTTPConnectionSendBinaryBytes(dispatch_queue_t *a1, char a2, char a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  cf = 0;
  if (a5 >> 16)
  {
    return 4294960553;
  }

  v14 = HTTPMessageCreate(&cf);
  v15 = cf;
  if (v14)
  {
    goto LABEL_3;
  }

  if (a2)
  {
    *(cf + 1065) = a4;
    v15[1066] = a5;
  }

  else
  {
    v14 = HTTPMessageSetBodyLength(cf, a5);
    if (v14)
    {
LABEL_3:
      v16 = v14;
      if (!v15)
      {
        return v16;
      }

      goto LABEL_13;
    }

    if (a5)
    {
      memmove(v15[1065], a4, a5);
    }
  }

  *(v15 + 24) = 36;
  *(v15 + 25) = a3;
  *(v15 + 26) = BYTE1(a5);
  *(v15 + 27) = a5;
  v15[1027] = 4;
  if (a6)
  {
    v15[1213] = a6;
    v15[1209] = a7;
    v15[1214] = _HTTPConnectionSendBinaryCompletion;
  }

  v16 = HTTPConnectionSendEvent(a1, v15);
LABEL_13:
  CFRelease(v15);
  return v16;
}

uint64_t HTTPConnectionSendEvent(dispatch_queue_t *a1, void *a2)
{
  v4 = HTTPHeader_Commit((a2 + 3));
  if (!v4)
  {
    a2[1207] = a1;
    CFRetain(a1);
    CFRetain(a2);
    dispatch_async_f(a1[15], a2, _HTTPConnectionSendEvent);
  }

  return v4;
}

void _HTTPConnectionSendEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 0;
  v8 = *(a1 + 9656);
  *(a1 + 9584) = a1 + 24;
  *(a1 + 9592) = *(a1 + 8216);
  *(a1 + 9624) = 1;
  v9 = *(a1 + 8528);
  if (v9)
  {
    *(a1 + 9600) = *(a1 + 8520);
    *(a1 + 9608) = v9;
    *(a1 + 9624) = 2;
  }

  *(a1 + 9616) = a1 + 9584;
  **(v8 + 320) = a1;
  *(v8 + 320) = a1 + 16;
  if (!*(v8 + 288))
  {
    *(v8 + 288) = 3;
    _HTTPConnectionRunStateMachine(v8, a2, a3, a4, a5, a6, a7, a8);
  }

  CFRelease(v8);
}

uint64_t HTTPServer_Create(void *a1, __int128 *a2)
{
  v3 = *a2;
  if (v3 < 0xE0 || *(a2 + 1) >> 8 < 0x443uLL)
  {
    return 4294960553;
  }

  if (!*(a2 + 8))
  {
    return 4294960591;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x10A0040306FCC46uLL);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  result = 0;
  v8 = *a2;
  v9 = a2[2];
  v6[1] = a2[1];
  v6[2] = v9;
  *v6 = v8;
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  *(v6 + 12) = *(a2 + 12);
  *(v6 + 36) = -1;
  *(v6 + 42) = -1;
  *(v6 + 27) = &gLogCategory_HTTPServerConnections;
  v6[4] = v11;
  v6[5] = v12;
  v6[3] = v10;
  *a1 = v6;
  return result;
}

void HTTPServer_Delete(void *a1)
{
  HTTPServer_Stop(a1);
  v2 = a1[2];
  if (v2)
  {
    v2(a1);
  }

  free(a1);
}

uint64_t HTTPServer_Stop(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 136));
    dispatch_release(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 160));
    dispatch_release(v3);
    *(a1 + 160) = 0;
  }

  if (*(a1 + 112))
  {
    *(a1 + 120) = dispatch_semaphore_create(0);
    dispatch_async_f(*(a1 + 112), a1, __HTTPServer_StopAllConnections);
    dispatch_release(*(a1 + 112));
    v4 = *(a1 + 120);
    if (v4)
    {
      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(a1 + 120));
      *(a1 + 120) = 0;
    }

    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5(a1);
  }

  return 0;
}

void __HTTPServer_StopAllConnections(uint64_t a1)
{
  for (i = *(a1 + 184); i; i = *i)
  {
    NetSocket_Cancel(i[3]);
    dispatch_source_cancel(i[19]);
  }
}

uint64_t HTTPServer_Start(uint64_t a1)
{
  handle[0] = -1;
  v2 = dispatch_queue_create("HTTPServer", 0);
  *(a1 + 112) = v2;
  if (!v2)
  {
    v12 = 4294960568;
LABEL_31:
    HTTPServer_Stop(a1);
    return v12;
  }

  dispatch_set_context(v2, a1);
  dispatch_set_finalizer_f(*(a1 + 112), __HTTPServer_Finalizer);
  v3 = *(a1 + 128);
  if (*(a1 + 80) >= 0 || v3 <= 0)
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = -v3;
  }

  v6 = ServerSocketPairOpen(1, 6, v5, (a1 + 128), *(a1 + 84), handle + 1, handle);
  v11 = HIDWORD(handle[0]);
  if (v6)
  {
    v12 = v6;
    if ((handle[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if ((handle[0] & 0x8000000000000000) == 0)
  {
    v12 = __HTTPServer_SetupListener(a1, HIDWORD(handle[0]), (a1 + 136));
    if (v12)
    {
LABEL_13:
      if (close(v11) && *__error())
      {
        __error();
      }

      goto LABEL_26;
    }
  }

  if ((handle[0] & 0x80000000) == 0)
  {
    v12 = __HTTPServer_SetupListener(a1, LODWORD(handle[0]), (a1 + 160));
    if (v12)
    {
      goto LABEL_26;
    }

    LODWORD(handle[0]) = -1;
  }

  if (gLogCategory_HTTPServer <= 40 && (gLogCategory_HTTPServer != -1 || _LogCategory_Initialize(&gLogCategory_HTTPServer, 0x28u)))
  {
    LogPrintF(&gLogCategory_HTTPServer, "OSStatus HTTPServer_Start(HTTPServerOldRef)", 0x28u, "Listening on port %d\n", v7, v8, v9, v10, *(a1 + 128));
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v12 = v13(a1);
  }

  else
  {
    v12 = 0;
  }

LABEL_26:
  if ((handle[0] & 0x80000000) == 0 && close(handle[0]) && *__error())
  {
    __error();
  }

  if (v12)
  {
    goto LABEL_31;
  }

  return v12;
}

uint64_t __HTTPServer_SetupListener(uint64_t a1, uintptr_t handle, _DWORD *a3)
{
  v4 = handle;
  v6 = *(a1 + 88);
  if (v6)
  {
    SocketSetQoS(v4, v6);
  }

  if (*(a1 + 104))
  {
    SocketSetP2P(v4, 1);
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E96F8], v4, 0, *(a1 + 112));
  *a3 = v7;
  if (!v7)
  {
    return 4294960596;
  }

  a3[2] = v4;
  *(a3 + 2) = a1;
  dispatch_set_context(v7, a3);
  dispatch_set_finalizer_f(*a3, __HTTPServer_ListenerFinalizer);
  dispatch_source_set_event_handler_f(*a3, __HTTPServer_AcceptConnection);
  dispatch_resume(*a3);
  return 0;
}

void __HTTPServer_AcceptConnection(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = malloc_type_calloc(1uLL, *(v2 + 8), 0x107004028676655uLL);
  if (v3)
  {
    v4 = v3;
    v5 = (v3 + 34816);
    v3[1] = v2;
    v6 = *(v2 + 192);
    *(v2 + 192) = v6 + 1;
    *(v3 + 4) = v6 + 1;
    if (v6 == -1)
    {
      *(v2 + 192) = 1;
    }

    v33 = 0;
    dispatch_retain(*(v2 + 112));
    *(v5 + 47) = *(v2 + 200);
    v34 = 28;
    v7 = accept(*(a1 + 8), (v4 + 60), &v34);
    if ((v7 & 0x80000000) != 0 && (!*__error() || *__error()))
    {
      goto LABEL_32;
    }

    v32 = 1;
    setsockopt(v7, 0xFFFF, 4130, &v32, 4u);
    SocketSetNonBlocking(v7, 1);
    v8 = *(v2 + 88);
    if (v8)
    {
      SocketSetQoS(v7, v8);
    }

    if ((v7 & 0x80000000) != 0 || (v35 = 0, NetSocket_Create(&v35)))
    {
      close(v7);
LABEL_32:
      __HTTPServer_RemoveConnection(v4, v9, v10, v11, v12, v13, v14, v15);
      return;
    }

    v16 = v35;
    *(v35 + 4) = v7;
    v4[3] = v16;
    *(v16 + 112) = *(v5 + 95);
    v34 = 28;
    if (getsockname(v7, v4 + 2, &v34) && (!*__error() || *__error()))
    {
      goto LABEL_32;
    }

    SocketGetInterfaceInfo(v7, 0, v4 + 88, v4 + 27, v4 + 116, v4 + 28, v4 + 31, v4 + 16, 0, (v4 + 17));
    v17 = *(v4 + 34);
    if (v17 != 4 && v17 != 64 && v17 != 128)
    {
      SocketSetP2P(v7, 0);
    }

    v18 = (v2 + 184);
    do
    {
      v19 = v18;
      v18 = *v18;
    }

    while (v18);
    *v19 = v4;
    v33 = 1;
    if (setsockopt(v7, 6, 1, &v33, 4u) && (!*__error() || *__error()) && gLogCategory_HTTPServer <= 60 && (gLogCategory_HTTPServer != -1 || _LogCategory_Initialize(&gLogCategory_HTTPServer, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_HTTPServer, "void __HTTPServer_AcceptConnection(void *)", 0x3Cu, "### set TCP_NODELAY failed on sock %d: %#m\n", v20, v21, v22, v23, v7);
    }

    v24 = dispatch_queue_create("HTTPServerConnection", 0);
    v4[18] = v24;
    if (!v24)
    {
      goto LABEL_32;
    }

    dispatch_set_context(v24, v4);
    dispatch_set_finalizer_f(v4[18], __HTTPServer_FinalizeConnection);
    v25 = *(v2 + 40);
    if (v25)
    {
      if (v25(v4))
      {
        goto LABEL_32;
      }
    }

    *(v4 + 20) = 1;
    v26 = dispatch_source_create(MEMORY[0x1E69E96F8], v7, 0, v4[18]);
    v4[19] = v26;
    if (!v26)
    {
      goto LABEL_32;
    }

    dispatch_set_context(v26, v4);
    dispatch_source_set_event_handler_f(v4[19], __HTTPServer_ReadHandler);
    dispatch_source_set_cancel_handler_f(v4[19], __HTTPServer_CancelHandler);
    dispatch_resume(v4[19]);
    v31 = *(v2 + 216);
    if (*v31 <= 40)
    {
      if (*v31 != -1)
      {
LABEL_37:
        LogPrintF(v31, "void __HTTPServer_AcceptConnection(void *)", 0x28u, "Accepted connection from %##a to %##a \n", v27, v28, v29, v30, v4 + 60);
        return;
      }

      if (_LogCategory_Initialize(v31, 0x28u))
      {
        v31 = *(v2 + 216);
        goto LABEL_37;
      }
    }
  }
}

void __HTTPServer_RemoveConnection(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1[1] + 184);
  while (1)
  {
    v10 = v9;
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9 == a1)
    {
      *v10 = *v9;
      break;
    }
  }

  v11 = a1[18];
  if (v11)
  {
    dispatch_release(v11);
    v12 = a1[19];
    if (v12)
    {
      dispatch_source_cancel(v12);
      v13 = a1[19];

      dispatch_release(v13);
    }
  }

  else
  {

    __HTTPServer_FinalizeConnection(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void __HTTPServer_FinalizeConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  if (*(a1 + 33))
  {
    v10 = *(v9 + 216);
    if (*v10 <= 40)
    {
      if (*v10 != -1)
      {
LABEL_4:
        LogPrintF(v10, "void __HTTPServer_FinalizeConnection(void *)", 0x28u, "Closing  connection from %##a to %##a\n", a5, a6, a7, a8, a1 + 60);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(v10, 0x28u))
      {
        v10 = *(v9 + 216);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  v11 = *(a1 + 24);
  if (v11)
  {
    NetSocket_Delete(v11);
    *(a1 + 24) = 0;
  }

  v12 = *(v9 + 48);
  if (v12 && *(a1 + 20))
  {
    v12(a1);
  }

  dispatch_release(*(v9 + 112));

  free(a1);
}

void __HTTPServer_CancelHandler(void *context)
{
  v2 = context[1];
  v3 = *(v2 + 56);
  if (v3)
  {
    v3(context);
    v2 = context[1];
  }

  v4 = *(v2 + 112);

  dispatch_async_f(v4, context, __HTTPServer_RemoveConnection);
}

void __HTTPServer_ReadHandler(uint64_t a1)
{
  if (*(a1 + 21))
  {
    *&v13.tv_usec = 0;
    v2 = *(a1 + 24);
    if (v2 && *v2 == 1853058915)
    {
      v3 = v2[1];
    }

    else
    {
      v3 = -1;
    }

    memset(&v14, 0, sizeof(v14));
    if (__darwin_check_fd_set_overflow(v3, &v14, 0))
    {
      *(v14.fds_bits + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v3;
    }

    v13.tv_sec = 0;
    while (1)
    {
      v4 = select(v3 + 1, &v14, 0, 0, &v13);
      if (v4 > 0)
      {
        break;
      }

      if (!v4)
      {
        return;
      }

      if (!*__error())
      {
        v9 = 4294960596;
        goto LABEL_17;
      }

      v9 = *__error();
      if (v9 != 4)
      {
        if (v9 == -6722)
        {
          return;
        }

        if (v9)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v10 = NetSocket_HTTPReadHeader(*(a1 + 24), a1 + 160, 0xFFFFFFFFLL);
  if (!v10)
  {
    LogHTTP(*(a1 + 279280), *(a1 + 279288), (a1 + 160), *(a1 + 8352), 0, 0, v7, v8);
    v11 = *(a1 + 8632);
    v10 = (*(*(a1 + 8) + 64))(a1);
    if (!v10)
    {
      if (v11)
      {
        v10 = HTTPHeader_Parse((a1 + 139720));
        if (v10)
        {
          goto LABEL_16;
        }

        if (*(a1 + 148192))
        {
          return;
        }
      }

      NetSocket_Disconnect(*(a1 + 24), 3u);
      goto LABEL_26;
    }
  }

LABEL_16:
  v9 = v10;
LABEL_17:
  v12 = *(*(a1 + 8) + 216);
  if (*v12 > 20)
  {
    goto LABEL_26;
  }

  if (*v12 == -1)
  {
    if (!_LogCategory_Initialize(v12, 0x14u))
    {
      goto LABEL_26;
    }

    v12 = *(*(a1 + 8) + 216);
  }

  LogPrintF(v12, "void __HTTPServer_ReadHandler(void *)", 0x14u, "### Connection read error: %#m\n", v5, v6, v7, v8, v9);
LABEL_26:
  dispatch_source_cancel(*(a1 + 152));
}

int *__HTTPServer_ListenerFinalizer(uint64_t a1)
{
  result = *(a1 + 8);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(a1 + 8) = -1;
  }

  return result;
}

NSObject *__HTTPServer_Finalizer(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t HTTPServer_GetNextURLSegment(uint64_t *a1, unsigned __int8 **a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1066];
  v11 = a1[1067];
  if (v10 >= v11 || *v10 == 47)
  {
LABEL_3:
    if (a1[1051])
    {
      if (gLogCategory_HTTPServer <= 50 && (gLogCategory_HTTPServer != -1 || _LogCategory_Initialize(&gLogCategory_HTTPServer, 0x32u)))
      {
        LogPrintF(&gLogCategory_HTTPServer, "Boolean HTTPServer_GetNextURLSegment(HTTPServerConnectionRef, const char **, size_t *, OSStatus *)", 0x32u, "### HTTP URL segment not found: '%.*s %.*s'\n", a5, a6, a7, a8, a1[1048]);
      }
    }

    else if (gLogCategory_HTTPServer <= 60 && (gLogCategory_HTTPServer != -1 || _LogCategory_Initialize(&gLogCategory_HTTPServer, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_HTTPServer, "Boolean HTTPServer_GetNextURLSegment(HTTPServerConnectionRef, const char **, size_t *, OSStatus *)", 0x3Cu, "### Corrupt HTTP request:\n%.*s\n", a5, a6, a7, a8, a1[1044]);
    }

    v16 = HTTPServer_SendStatusResponse(a1, 400, a3, a4, a5, a6, a7, a8);
    v17 = 0;
  }

  else
  {
    v12 = v10 + 1;
    while (v12 != v11)
    {
      v13 = v12;
      v14 = *v12++;
      if (v14 == 47)
      {
        v15 = v13 < v11;
        v11 = v13;
        goto LABEL_16;
      }
    }

    if (v11 == v10)
    {
      goto LABEL_3;
    }

    v15 = 0;
LABEL_16:
    v16 = 0;
    *a2 = v10;
    *a3 = v11 - v10;
    a1[1066] = &v11[v15];
    v17 = 1;
  }

  *a4 = v16;
  return v17;
}

uint64_t HTTPServer_SendStatusResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = HTTPServer_InitResponse(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    HTTPHeader_SetField((a1 + 139720), "Content-Length", "0", v10, v11, v12, v13, v14, v18);
    result = HTTPHeader_Commit(a1 + 139720);
    if (!result)
    {
      LogHTTP(*(a1 + 279280), *(a1 + 279288), (a1 + 139720), *(a1 + 147912), 0, 0, v15, v16);
      v17 = *(*(a1 + 24) + 32);

      return v17();
    }
  }

  return result;
}

uint64_t HTTPServer_InitResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  HTTPHeader_InitResponseEx(a1 + 139720, "HTTP/1.1", a2, 0, 0, a6, a7, a8);
  v10 = time(0);
  v11 = HTTPMakeDateString(v10, v19, 0x40uLL);
  if (*v11)
  {
    HTTPHeader_SetField((a1 + 139720), "Date", "%s", v12, v13, v14, v15, v16, v11);
  }

  v17 = *(*(a1 + 8) + 72);
  if (!v17)
  {
    return 0;
  }

  result = v17(a1, a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t HTTPServer_GetOrCopyFormVariable(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4, char **a5)
{
  result = URLGetOrCopyVariable(*(a1 + 8496), (*(a1 + 8496) + *(a1 + 8504)), a2, a3, a4, a5, 0);
  if (result)
  {
    v11 = (a1 + 8640 + *(a1 + 139712));

    return URLGetOrCopyVariable((a1 + 8640), v11, a2, a3, a4, a5, 0);
  }

  return result;
}

uint64_t HTTPServer_SendSimpleResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = HTTPServer_InitResponse(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (a3)
    {
      HTTPHeader_SetField((a1 + 139720), "Content-Type", "%s", v13, v14, v15, v16, v17, a3);
    }

    HTTPHeader_SetField((a1 + 139720), "Content-Length", "%zu", v13, v14, v15, v16, v17, a5);
    result = HTTPHeader_Commit(a1 + 139720);
    if (!result)
    {
      LogHTTP(*(a1 + 279280), *(a1 + 279288), (a1 + 139720), *(a1 + 147912), a4, a5, v18, v19);
      return (*(*(a1 + 24) + 40))();
    }
  }

  return result;
}

uint64_t HTTPServer_SendUnauthorizedResponse(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = HTTPServer_InitResponse(a1, 401, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    HTTPHeader_SetField((a1 + 139720), "Content-Length", "0", v11, v12, v13, v14, v15, v24);
    HTTPHeader_SetField((a1 + 139720), "WWW-Authenticate", "Digest realm=%s, nonce=%s%s", v16, v17, v18, v19, v20, a2);
    result = HTTPHeader_Commit(a1 + 139720);
    if (!result)
    {
      LogHTTP(*(a1 + 279280), *(a1 + 279288), (a1 + 139720), *(a1 + 147912), 0, 0, v21, v22);
      v23 = *(*(a1 + 24) + 32);

      return v23();
    }
  }

  return result;
}

uint64_t HTTPHeader_Uncommit(uint64_t a1)
{
  if (*(a1 + 8476) != -6721)
  {
    return 4294960587;
  }

  v1 = *(a1 + 0x2000);
  if ((v1 - 0x2000) < 0xFFFFFFFFFFFFE005)
  {
    return 4294960553;
  }

  v2 = a1 + v1;
  if (*(a1 + v1 - 4) != 13)
  {
    return 4294960554;
  }

  if (*(v2 - 3) != 10)
  {
    return 4294960554;
  }

  v3 = v1 - 2;
  if (*(a1 + v1 - 2) != 13 || *(v2 - 1) != 10)
  {
    return 4294960554;
  }

  v4 = 0;
  *(a1 + 0x2000) = v3;
  *(a1 + 8476) = 0;
  return v4;
}

uint64_t HTTPParseParameter(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4, char **a5, void *a6, unsigned __int8 *a7, unsigned __int8 **a8)
{
  if (a1 >= a2)
  {
    return 4294960544;
  }

  v11 = a1;
  v12 = MEMORY[0x1E69E9830];
  do
  {
    v13 = *v11;
    if (v13 < 0)
    {
      if (!__maskrune(*v11, 0x4000uLL))
      {
LABEL_9:
        v14 = v11;
        while (1)
        {
          v15 = *v14;
          if ((v15 - 127) < 0xFFFFFFA1 || memchr("()<>@,;:\\[]?={} \t", v15, 0x13uLL))
          {
            goto LABEL_14;
          }

          if (++v14 == a2)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else if ((*(v12 + 4 * v13 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    ++v11;
  }

  while (v11 != a2);
  v11 = a2;
LABEL_13:
  v14 = a2;
LABEL_14:
  if (v14 >= a2)
  {
    v16 = 0;
    v19 = 0;
    v17 = v14;
    goto LABEL_51;
  }

  v16 = (a2 - v14);
  v17 = v14;
  while (1)
  {
    v18 = *v17;
    if (v18 < 0)
    {
      break;
    }

    if ((*(v12 + 4 * v18 + 60) & 0x4000) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    ++v17;
    if (!--v16)
    {
      v19 = 0;
      v17 = a2;
      goto LABEL_51;
    }
  }

  if (__maskrune(*v17, 0x4000uLL))
  {
    goto LABEL_20;
  }

LABEL_23:
  v20 = (v17 + 1);
  if (*v17 == 61)
  {
    do
    {
      v16 = v20;
      if (v20 >= a2)
      {
        v17 = v20;
        v19 = v20;
        goto LABEL_44;
      }

      v21 = *v20;
      if (v21 < 0)
      {
        v22 = __maskrune(*v16, 0x4000uLL);
      }

      else
      {
        v22 = *(v12 + 4 * v21 + 60) & 0x4000;
      }

      v20 = v16 + 1;
    }

    while (v22);
    if (*v16 == 34)
    {
      if (++v16 >= a2)
      {
        return 4294960554;
      }

      v19 = v16;
      result = 4294960554;
      while (*v19 != 34 || *(v19 - 1) == 92)
      {
        if (++v19 >= a2)
        {
          return result;
        }
      }

      v17 = v19 + 1;
    }

    else
    {
      v17 = v16;
      while (1)
      {
        v24 = *v17;
        if ((v24 - 127) < 0xFFFFFFA1 || memchr("()<>@,;:\\[]?={} \t", v24, 0x13uLL))
        {
          break;
        }

        if (++v17 == a2)
        {
          v17 = a2;
          v19 = a2;
          goto LABEL_44;
        }
      }

      v19 = v17;
    }

LABEL_44:
    if (v17 < a2)
    {
      v25 = a2 - v17;
      do
      {
        v26 = *v17;
        if (v26 < 0)
        {
          if (!__maskrune(*v17, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v12 + 4 * v26 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v17;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v16 = 0;
    v19 = 0;
  }

LABEL_51:
  if (v17 < a2 && (v27 = *v17, memchr("()<>@,;:\\[]?={} \t", *v17, 0x13uLL)))
  {
    v28 = (v17 + 1);
    do
    {
      v17 = v28;
      if (v28 >= a2)
      {
        break;
      }

      v29 = *v28;
      v30 = v29 < 0 ? __maskrune(*v17, 0x4000uLL) : *(v12 + 4 * v29 + 60) & 0x4000;
      v28 = (v17 + 1);
    }

    while (v30);
  }

  else
  {
    v27 = 0;
  }

  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v14 - v11;
  }

  if (a5)
  {
    *a5 = v16;
  }

  if (a6)
  {
    *a6 = v19 - v16;
  }

  if (a7)
  {
    *a7 = v27;
  }

  result = 0;
  if (a8)
  {
    *a8 = v17;
  }

  return result;
}

uint64_t HTTPParseByteRangeRequest(char *__s, int64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 < 6)
  {
    return 4294960546;
  }

  if (*__s != 1702132066 || *(__s + 2) != 15731)
  {
    return 4294960540;
  }

  if (a2 < 7)
  {
    return 4294960546;
  }

  if (__s[6] == 45)
  {
    if (a2 != 7)
    {
      v8 = 0;
      v9 = 7;
      while (1)
      {
        v10 = __s[v9];
        if ((v10 - 48) > 9)
        {
          break;
        }

        v8 = (v10 & 0xF) + 10 * v8;
        if (a2 == ++v9)
        {
          v9 = a2;
          break;
        }
      }

      if (v9 >= 8)
      {
        v11 = -v8;
LABEL_32:
        v17 = -1;
        goto LABEL_33;
      }
    }

    return 4294960559;
  }

  v11 = 0;
  v12 = 6;
  while (1)
  {
    v13 = __s[v12];
    if ((v13 - 48) > 9)
    {
      break;
    }

    v11 = (v13 & 0xF) + 10 * v11;
    if (a2 == ++v12)
    {
      v12 = a2;
      break;
    }
  }

  if (v12 < 7)
  {
    return 4294960559;
  }

  if (v13 != 45)
  {
    return 4294960554;
  }

  v14 = v12 + 1;
  if ((v12 + 1) >= a2)
  {
    goto LABEL_32;
  }

  v15 = 0;
  while (1)
  {
    v16 = __s[v14];
    if ((v16 - 48) > 9)
    {
      break;
    }

    v15 = (v16 & 0xF) + 10 * v15;
    if (a2 == ++v14)
    {
      v14 = a2;
      break;
    }
  }

  if (v14 < 7)
  {
    return 4294960559;
  }

  if (v11 <= v15)
  {
    v17 = v15 + 1;
LABEL_33:
    result = 0;
    *a3 = v11;
    *a4 = v17;
    return result;
  }

  return 4294960586;
}

uint64_t HTTPParseCacheControlHeader(char *__s, size_t a2, uint64_t a3)
{
  __sa = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v5 = &__s[a2];
  v7 = 0;
  v8 = 0;
  while (!HTTPGetHeaderField(__sa, v5 - __sa, "Cache-Control", 0, 0, &v8, &v7, &__sa))
  {
    result = HTTPParseCacheControlValue(v8, v7, a3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t HTTPParseCacheControlValue(char *__s, size_t a2, uint64_t a3)
{
  v4 = a2;
  v23 = __s;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v6 = __s;
  v18 = 0;
  while (1)
  {
    if (HTTPParseParameter(v6, &__s[v4], &v22, &v21, &v20, &v19, 0, &v23))
    {
      return 0;
    }

    if (!strnicmpx(v22, v21, "no-cache"))
    {
      *a3 = 1;
      goto LABEL_13;
    }

    if (!strnicmpx(v22, v21, "max-age"))
    {
      break;
    }

    if (!strnicmpx(v22, v21, "s-maxage"))
    {
      if (SNScanF(v20, v19, "%lld", v12, v13, v14, v15, v16, &v18) != 1)
      {
        return 4294960559;
      }

      *(a3 + 16) = v18;
    }

LABEL_13:
    v6 = v23;
  }

  if (SNScanF(v20, v19, "%lld", v7, v8, v9, v10, v11, &v18) == 1)
  {
    *(a3 + 8) = v18;
    goto LABEL_13;
  }

  return 4294960559;
}

uint64_t HTTPParseRTPInfo(char *a1, int64_t a2, _WORD *a3, _DWORD *a4)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  result = HTTPGetHeaderField(a1, a2, "RTP-Info", 0, 0, &v31, &v30, 0);
  if (!result)
  {
    v24 = a4;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = v30;
    v11 = v31;
    for (i = v31; !HTTPParseParameter(i, &v11[v12], &v29, &v28, &v27, &v26, 0, &v31); i = v31)
    {
      if (strnicmpx(v29, v28, "seq"))
      {
        if (!strnicmpx(v29, v28, "rtptime"))
        {
          if (SNScanF(v27, v26, "%u", v19, v20, v21, v22, v23, &v25) != 1)
          {
            return 4294960554;
          }

          v8 = 1;
          v10 = v25;
        }
      }

      else
      {
        if (SNScanF(v27, v26, "%u", v14, v15, v16, v17, v18, &v25) != 1)
        {
          return 4294960554;
        }

        v9 = v25;
        v7 = 1;
      }
    }

    if (a3)
    {
      if ((v7 & 1) == 0)
      {
        return 4294960569;
      }

      *a3 = v9;
    }

    if (v24)
    {
      result = 4294960569;
    }

    else
    {
      result = 0;
    }

    if (((v24 != 0) & v8) == 1)
    {
      result = 0;
      *v24 = v10;
    }
  }

  return result;
}

uint64_t HTTPMakeTimedNonce(const void *a1, CC_LONG a2, const void *a3, CC_LONG a4, _BYTE *a5, unint64_t a6, void *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 4294960591;
  }

  memset(&c, 0, sizeof(c));
  v24 = 0;
  v14 = time(0);
  v20 = SNPrintF(data, 64, "%u", v15, v16, v17, v18, v19, v14);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, data, v20);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a1, a2);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a3, a4);
  v21 = &data[v20];
  *v21 = 32;
  CC_MD5_Final(v21 + 1, &c);
  result = Base64EncodeEx(data, (v20 + 17), 0, a5, a6, &v24);
  if (!result)
  {
    v23 = v24;
    a5[v24] = 0;
    result = 0;
    if (a7)
    {
      *a7 = v23;
    }
  }

  return result;
}

uint64_t HTTPVerifyTimedNonce(char *a1, size_t a2, unsigned int a3, const void *a4, CC_LONG a5, const void *a6, CC_LONG a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  result = Base64Decode(a1, a2, data, 64, &v22);
  if (!result)
  {
    v13 = time(0);
    if (v22 < 1)
    {
      return 4294960554;
    }

    v14 = 0;
    v15 = &data[v22];
    v16 = data;
    while (1)
    {
      v17 = *v16;
      if ((v17 - 48) > 9)
      {
        break;
      }

      v14 = v17 - 48 + 10 * v14;
      if (++v16 >= v15)
      {
        return 4294960554;
      }
    }

    if (v17 == 32)
    {
      if (v13 - v14 > a3)
      {
        return 4294960574;
      }

      else
      {
        v18 = v16 + 1;
        v22 = v15 - (v16 + 1);
        if (v22 == 16)
        {
          v19 = v16 - data;
          CC_MD5_Init(&v21);
          CC_MD5_Update(&v21, data, v19);
          CC_MD5_Update(&v21, ":", 1u);
          CC_MD5_Update(&v21, a4, a5);
          CC_MD5_Update(&v21, ":", 1u);
          CC_MD5_Update(&v21, a6, a7);
          CC_MD5_Final(md, &v21);
          if (*md == *v18 && v24 == v18[1])
          {
            return 0;
          }

          else
          {
            return 4294960563;
          }
        }

        else
        {
          return 4294960553;
        }
      }
    }

    else
    {
      return 4294960554;
    }
  }

  return result;
}

double HTTPClientAuthorization_Init(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

uint64_t HTTPClientAuthorization_Apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    return 4294960591;
  }

  v10 = *(a1 + 32);
  if (!v10 || !*(v8 + 8224) || !*(v8 + 8248))
  {
    return 4294960591;
  }

  if (*(v10 + 8432) != 401)
  {
    result = *(a1 + 168);
    switch(result)
    {
      case 0:
        return result;
      case 1:

        return _HTTPAddBasicAuth(a1, a2, a3, a4, a5, a6, a7, a8);
      case 2:

        return _HTTPAddDigestAuth(a1);
    }

    return 4294960591;
  }

  v37 = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  HTTPClientAuthorization_Free(a1);
  if (HTTPGetHeaderField(*(a1 + 32), *(*(a1 + 32) + 0x2000), "WWW-Authenticate", 0, 0, &v38, &v37, 0))
  {
    return 4294960554;
  }

  v13 = v37;
  v12 = v38;
  v14 = &v38[v37];
  v15 = v38;
  if (v37 >= 1)
  {
    v15 = v38;
    while (1)
    {
      v16 = *v15;
      if ((v16 - 127) < 0xFFFFFFA1 || memchr("()<>@,;:\\[]?={} \t", v16, 0x13uLL))
      {
        break;
      }

      ++v15;
      if (!--v13)
      {
        v15 = v14;
        break;
      }
    }
  }

  v36 = v15;
  v17 = strndup(v12, v15 - v12);
  if (!v17)
  {
    return 4294960568;
  }

  *(a1 + 56) = v17;
  *(a1 + 64) = v15 - v12;
  while (!HTTPParseParameter(v15, v14, &v35, &v34, &v38, &v37, 0, &v36))
  {
    v18 = strndup(v38, v37);
    if (!v18)
    {
      return 4294960568;
    }

    v19 = v18;
    if (strnicmpx(v35, v34, "realm"))
    {
      if (strnicmpx(v35, v34, "nonce"))
      {
        if (strnicmpx(v35, v34, "qop"))
        {
          if (strnicmpx(v35, v34, "algorithm"))
          {
            if (strnicmpx(v35, v34, "domain"))
            {
              if (strnicmpx(v35, v34, "opaque"))
              {
                if (strnicmpx(v35, v34, "stale"))
                {
                  free(v19);
                }

                else
                {
                  v26 = v37;
                  *(a1 + 152) = v19;
                  *(a1 + 160) = v26;
                }
              }

              else
              {
                v25 = v37;
                *(a1 + 104) = v19;
                *(a1 + 112) = v25;
              }
            }

            else
            {
              v24 = v37;
              *(a1 + 72) = v19;
              *(a1 + 80) = v24;
            }
          }

          else
          {
            v23 = v37;
            *(a1 + 40) = v19;
            *(a1 + 48) = v23;
          }
        }

        else
        {
          v22 = v37;
          *(a1 + 136) = v19;
          *(a1 + 144) = v22;
        }
      }

      else
      {
        v21 = v37;
        *(a1 + 88) = v19;
        *(a1 + 96) = v21;
      }
    }

    else
    {
      v20 = v37;
      *(a1 + 120) = v19;
      *(a1 + 128) = v20;
    }

    v15 = v36;
  }

  if (!strnicmpx(*(a1 + 56), *(a1 + 64), "Basic"))
  {
    return _HTTPAddBasicAuth(a1, v27, v28, v29, v30, v31, v32, v33);
  }

  if (strnicmpx(*(a1 + 56), *(a1 + 64), "Digest"))
  {
    return 4294960561;
  }

  return _HTTPAddDigestAuth(a1);
}

uint64_t _HTTPAddDigestAuth(uint64_t a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if ((*a1 & 2) == 0)
  {
    return 4294960561;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 4294960542;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 4294960542;
  }

  if (*(*(a1 + 32) + 8432) != 401)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14[0] = 0;
  HTTPGetHeaderField(*(a1 + 24), *(*(a1 + 24) + 0x2000), "Authorization", 0, 0, v14, &v13, 0);
  if (v13 && strnicmpx(*(a1 + 152), *(a1 + 160), "true"))
  {
    return 4294960542;
  }

  result = HTTPHeader_Uncommit(*(a1 + 24));
  if (!result)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
LABEL_10:
    v5 = strlen(v2);
    v6 = strlen(v3);
    if (*(a1 + 4))
    {
      v7 = "0123456789ABCDEF";
    }

    else
    {
      v7 = "0123456789abcdef";
    }

    _HTTPMakeAuthDigest(v2, v5, v3, v6, *(*(a1 + 24) + 8216), *(*(a1 + 24) + 8224), *(*(a1 + 24) + 8240), *(*(a1 + 24) + 8248), *(a1 + 120), *(a1 + 128), *(a1 + 88), *(a1 + 96), v7, v14);
    result = HTTPHeader_SetField(*(a1 + 24), "Authorization", "Digest username=%s, realm=%.*s, nonce=%.*s, uri=%.*s, response=%s", v8, v9, v10, v11, v12, *(a1 + 8));
    if (!result)
    {
      *(a1 + 168) = 2;
    }
  }

  return result;
}

uint64_t _HTTPAddBasicAuth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 1) == 0)
  {
    return 4294960561;
  }

  v9 = *(a1 + 8);
  if (!v9 || !*(a1 + 16))
  {
    return 4294960542;
  }

  v31 = 0;
  v32 = 0;
  ASPrintF(&v32, "%s:%s", a3, a4, a5, a6, a7, a8, v9);
  v10 = v32;
  if (!v32)
  {
    return 4294960568;
  }

  v11 = Base64EncodeCopyEx(v32, 0xFFFFFFFFFFFFFFFFLL, 0, &v31, 0);
  free(v10);
  if (v11)
  {
    return v11;
  }

  v30 = 0;
  v19 = v31;
  ASPrintF(&v30, "Basic %s", v12, v13, v14, v15, v16, v17, v31);
  free(v19);
  v25 = v30;
  if (!v30)
  {
    return 4294960568;
  }

  if (*(*(a1 + 32) + 8432) == 401)
  {
    v28 = 0;
    v29 = 0;
    HTTPGetHeaderField(*(a1 + 24), *(*(a1 + 24) + 0x2000), "Authorization", 0, 0, &v29, &v28, 0);
    v26 = 0;
    while (v28 != v26)
    {
      v27 = v25[v26];
      if (v29[v26] != v27)
      {
        goto LABEL_15;
      }

      ++v26;
      if (!v27)
      {
        goto LABEL_18;
      }
    }

    if (!v25[v28])
    {
LABEL_18:
      v11 = 4294960542;
      goto LABEL_19;
    }

LABEL_15:
    v11 = HTTPHeader_Uncommit(*(a1 + 24));
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_19:
    free(v25);
  }

  else
  {
LABEL_16:
    v11 = HTTPHeader_SetField(*(a1 + 24), "Authorization", "%s", v20, v21, v22, v23, v24, v25);
    free(v25);
    if (!v11)
    {
      *(a1 + 168) = 1;
    }
  }

  return v11;
}

uint64_t _HTTPMakeAuthDigest(const void *a1, CC_LONG a2, const void *a3, CC_LONG a4, const void *a5, CC_LONG a6, const void *a7, CC_LONG a8, const void *a9, CC_LONG a10, const void *a11, CC_LONG a12, uint64_t a13, _BYTE *a14)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a1, a2);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a9, a10);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a3, a4);
  CC_MD5_Final(md, &c);
  v21 = 0;
  v22 = __s;
  do
  {
    v23 = md[v21];
    *v22 = *(a13 + (v23 >> 4));
    v22[1] = *(a13 + (v23 & 0xF));
    v22 += 2;
    ++v21;
  }

  while (v21 != 16);
  *v22 = 0;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a5, a6);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a7, a8);
  CC_MD5_Final(md, &c);
  v24 = 0;
  v25 = data;
  do
  {
    v26 = md[v24];
    *v25 = *(a13 + (v26 >> 4));
    v25[1] = *(a13 + (v26 & 0xF));
    v25 += 2;
    ++v24;
  }

  while (v24 != 16);
  *v25 = 0;
  CC_MD5_Init(&c);
  v27 = strlen(__s);
  CC_MD5_Update(&c, __s, v27);
  CC_MD5_Update(&c, ":", 1u);
  CC_MD5_Update(&c, a11, a12);
  CC_MD5_Update(&c, ":", 1u);
  v28 = strlen(data);
  CC_MD5_Update(&c, data, v28);
  result = CC_MD5_Final(md, &c);
  for (i = 0; i != 16; ++i)
  {
    v31 = md[i];
    *a14 = *(a13 + (v31 >> 4));
    a14[1] = *(a13 + (v31 & 0xF));
    a14 += 2;
  }

  *a14 = 0;
  return result;
}

uint64_t HTTPVerifyAuthorization(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  __s = 0;
  if (!*a1)
  {
    return 200;
  }

  v47 = 0;
  v48 = 0;
  v46 = 0;
  v44 = 0;
  if (HTTPGetHeaderField(*(a1 + 64), *(a1 + 72), "Authorization", 0, 0, &v48, &v47, 0))
  {
    return 401;
  }

  v3 = v47;
  v2 = v48;
  v4 = &v48[v47];
  v5 = v48;
  if (v47 >= 1)
  {
    v5 = v48;
    while (1)
    {
      v6 = *v5;
      if ((v6 - 127) < 0xFFFFFFA1 || memchr("()<>@,;:\\[]?={} \t", v6, 0x13uLL))
      {
        break;
      }

      ++v5;
      if (!--v3)
      {
        v5 = v4;
        break;
      }
    }
  }

  v46 = v5;
  if (strnicmpx(v2, v5 - v2, "Basic"))
  {
    if (strnicmpx(v2, v5 - v2, "Digest"))
    {
      return 400;
    }

    v42 = 0;
    v43 = 0;
    if ((*a1 & 2) != 0)
    {
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      while (!HTTPParseParameter(v46, v4, &v43, &v42, &v48, &v47, 0, &v46))
      {
        if (strnicmpx(v43, v42, "username"))
        {
          if (strnicmpx(v43, v42, "realm"))
          {
            if (strnicmpx(v43, v42, "nonce"))
            {
              if (strnicmpx(v43, v42, "uri"))
              {
                if (strnicmpx(v43, v42, "response"))
                {
                  if (strnicmpx(v43, v42, "algorithm"))
                  {
                    if (strnicmpx(v43, v42, "cnonce"))
                    {
                      if (strnicmpx(v43, v42, "opaque"))
                      {
                        if (strnicmpx(v43, v42, "qop"))
                        {
                          if (!strnicmpx(v43, v42, "nc"))
                          {
                            v10 = v47;
                            *(a1 + 272) = v48;
                            *(a1 + 280) = v10;
                          }
                        }

                        else
                        {
                          v19 = v47;
                          *(a1 + 256) = v48;
                          *(a1 + 264) = v19;
                        }
                      }

                      else
                      {
                        v18 = v47;
                        *(a1 + 240) = v48;
                        *(a1 + 248) = v18;
                      }
                    }

                    else
                    {
                      v17 = v47;
                      *(a1 + 224) = v48;
                      *(a1 + 232) = v17;
                    }
                  }

                  else
                  {
                    v16 = v47;
                    *(a1 + 208) = v48;
                    *(a1 + 216) = v16;
                  }
                }

                else
                {
                  v15 = v47;
                  *(a1 + 192) = v48;
                  *(a1 + 200) = v15;
                }
              }

              else
              {
                v14 = v47;
                *(a1 + 176) = v48;
                *(a1 + 184) = v14;
              }
            }

            else
            {
              v13 = v47;
              *(a1 + 160) = v48;
              *(a1 + 168) = v13;
            }
          }

          else
          {
            v12 = v47;
            *(a1 + 144) = v48;
            *(a1 + 152) = v12;
          }
        }

        else
        {
          v11 = v47;
          *(a1 + 112) = v48;
          *(a1 + 120) = v11;
        }
      }

      v20 = *(a1 + 168);
      if (!v20)
      {
        return 400;
      }

      v21 = *(a1 + 48);
      if (v21)
      {
        if (!v21(a1))
        {
          return 401;
        }
      }

      else
      {
        v28 = *(a1 + 16);
        if (!v28)
        {
          return 500;
        }

        v29 = *(a1 + 24);
        if (!v29)
        {
          return 500;
        }

        v30 = HTTPVerifyTimedNonce(*(a1 + 160), v20, 0x78u, "YjM5ODQ4MDE0MmI3YTI4ZmQ1MzdjNGIxMDVmNzYxMDg=", 0x2Cu, v28, v29);
        if (v30)
        {
          if (v30 == -6722)
          {
            *(a1 + 288) = 1;
          }

          return 401;
        }
      }

      v44 = 0;
      v31 = *(a1 + 8);
      if (v31)
      {
        goto LABEL_54;
      }

      v32 = *(a1 + 32);
      if (v32)
      {
        v33 = v32(a1, &v44);
        if (v33 != 200)
        {
          return v33;
        }

        v31 = v44;
LABEL_54:
        v34 = strlen(v31);
        _HTTPMakeAuthDigest(*(a1 + 112), *(a1 + 120), v31, v34, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), "0123456789abcdef", v49);
        if (v44)
        {
          free(v44);
        }

        if (strnicmpx(*(a1 + 192), *(a1 + 200), v49))
        {
          *(a1 + 289) = 1;
          return 401;
        }

        return 200;
      }

      return 500;
    }

    return 401;
  }

  if ((*a1 & 1) == 0)
  {
    return 401;
  }

  v8 = Base64DecodeCopy(v46, v4 - v5, &__s, 0);
  v9 = __s;
  if (v8 || (v22 = strchr(__s, 58)) == 0)
  {
    v7 = 400;
  }

  else
  {
    *v22 = 0;
    v23 = (v22 + 1);
    *(a1 + 112) = v9;
    *(a1 + 120) = v22 + 1 - v9;
    *(a1 + 128) = v22 + 1;
    v24 = strlen(v22 + 1);
    *(a1 + 136) = v24;
    v44 = 0;
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = v24;
      v27 = 0;
      goto LABEL_62;
    }

    v35 = *(a1 + 32);
    if (v35)
    {
      v36 = v35(a1, &v44);
      if (v36 == 200)
      {
        v27 = v44;
        v23 = *(a1 + 128);
        v26 = *(a1 + 136);
        v25 = v44;
LABEL_62:
        v37 = v26;
        v38 = v25;
        while (1)
        {
          if (!v37)
          {
            v40 = v25[v26] == 0;
            goto LABEL_69;
          }

          v39 = *v38;
          if (*v23 != v39)
          {
            break;
          }

          ++v38;
          ++v23;
          --v37;
          if (!v39)
          {
            v40 = 1;
            goto LABEL_69;
          }
        }

        v40 = 0;
LABEL_69:
        if (v27)
        {
          free(v27);
        }

        if (v40)
        {
          v7 = 200;
        }

        else
        {
          *(a1 + 289) = 1;
          v7 = 401;
        }

        goto LABEL_74;
      }

      v7 = v36;
    }

    else
    {
      v7 = 500;
    }
  }

LABEL_74:
  if (v9)
  {
    free(v9);
  }

  return v7;
}

uint64_t HTTPReadLine(char *a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = *(a1 + 1026); ; *(a1 + 1026) = i)
  {
    v13 = *(a1 + 1025);
    if (i >= 1)
    {
      break;
    }

LABEL_6:
    v16 = *(a1 + 1024);
    if (i > (0x2000 - v16))
    {
      if (gLogCategory_HTTPUtils <= 90)
      {
        if (gLogCategory_HTTPUtils != -1)
        {
          goto LABEL_19;
        }

        if (_LogCategory_Initialize(&gLogCategory_HTTPUtils, 0x5Au))
        {
          i = *(a1 + 1026);
LABEL_19:
          LogPrintF_safe(&gLogCategory_HTTPUtils, "OSStatus HTTPReadLine(HTTPHeader *, NetTransportRead_f, void *, const char **, size_t *)", 0x5Au, "### Bad extra data length: %zu vs %zu", a5, a6, a7, a8, i);
        }
      }

      return 4294960553;
    }

    if (&a1[v16] != v13)
    {
      memmove(&a1[v16], v13, i);
      *(a1 + 1025) = &a1[v16];
      i = *(a1 + 1026);
    }

    v20 = 0x2000 - (i + v16);
    if (i + v16 == 0x2000)
    {
      return 4294960533;
    }

    result = a2(&a1[i + v16]);
    if (result)
    {
      return result;
    }

    i = *(a1 + 1026) + v20;
  }

  v14 = &v13[i];
  v15 = *(a1 + 1025);
  while (*v15 != 10)
  {
    if (++v15 >= v14)
    {
      goto LABEL_6;
    }
  }

  if (v15 <= v13 || (v18 = v15 - 1, *(v15 - 1) != 13))
  {
    v18 = v15;
  }

  result = 0;
  *a4 = v13;
  *a5 = v18 - v13;
  v19 = v15 + 1;
  *(a1 + 1025) = v19;
  *(a1 + 1026) = v14 - v19;
  return result;
}

uint64_t NetSocket_HTTPReadHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v14 = 0x2000;
  v7 = 0x2000;
  v8 = a2;
LABEL_2:
  result = (*(a1 + 24))(a1, 1, v7, a2 + v6, &v14, 0, a3);
  if (result)
  {
    return result;
  }

  v6 += v14;
  v10 = a2 + v6;
  if (*a2 != 36 || v6 <= 3)
  {
    while (1)
    {
      if (v8 >= v10)
      {
LABEL_18:
        v7 = 0x2000 - v6;
        v14 = 0x2000 - v6;
        if (v6 != 0x2000)
        {
          goto LABEL_2;
        }

        return 4294960533;
      }

      if (*v8 == 10)
      {
        if (v10 - v8 < 3)
        {
          if (v10 - v8 != 2)
          {
            goto LABEL_18;
          }

          v12 = v8[1];
        }

        else
        {
          v12 = v8[1];
          if (v12 == 13)
          {
            if (v8[2] == 10)
            {
              v13 = v8 + 3;
              goto LABEL_21;
            }

            goto LABEL_17;
          }
        }

        if (v12 == 10)
        {
          v13 = v8 + 2;
          goto LABEL_21;
        }
      }

LABEL_17:
      ++v8;
    }
  }

  v13 = (a2 + 4);
LABEL_21:
  *(a2 + 0x2000) = &v13[-a2];
  result = HTTPHeader_Parse(a2);
  if (!result)
  {
    *(a1 + 64) = v13;
    *(a1 + 72) = v10;
  }

  return result;
}

uint64_t IEGetNext(_BYTE *a1, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  if (a1 == a2)
  {
    return 4294960569;
  }

  if (a1 >= a2)
  {
    return 4294960591;
  }

  if ((a2 - a1) < 2)
  {
    return 4294960569;
  }

  v6 = a1[1];
  v7 = &a1[v6 + 2];
  if (v7 > a2)
  {
    return 4294960546;
  }

  *a3 = *a1;
  *a4 = a1 + 2;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t IEGetVendorSpecific(unsigned __int8 *a1, unint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  if ((a2 - a1) < 2)
  {
    return 4294960569;
  }

  v6 = a1;
  while (1)
  {
    v7 = v6;
    v8 = *v6;
    v9 = v6[1];
    v6 += v9 + 2;
    if (v8 == 221)
    {
      if (v6 < a1 || v6 > a2)
      {
        return 4294960553;
      }

      if (v9 >= 4 && bswap32(*(v7 + 2)) == a3)
      {
        break;
      }
    }

    if ((a2 - v6) <= 1)
    {
      return 4294960569;
    }
  }

  *a4 = v7 + 6;
  *a5 = v9 - 4;
  result = 0;
  if (a6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t IECopyCoalescedVendorSpecific(unsigned __int8 *a1, unint64_t a2, int a3, void *a4, size_t *a5)
{
  v9 = 0;
  v10 = 0;
  __src = 0;
  v18 = a1;
  v16 = 0;
  while (1)
  {
    result = IEGetVendorSpecific(a1, a2, a3, &__src, &v16, &v18);
    if (result)
    {
      break;
    }

    v12 = v16;
    v13 = v16 + v10;
    v14 = malloc_type_malloc(v16 + v10 + 1, 0x100004077774924uLL);
    if (!v14)
    {
      if (v9)
      {
        free(v9);
      }

      return 4294960568;
    }

    v15 = v14;
    if (v9)
    {
      memcpy(v14, v9, v10);
      free(v9);
    }

    memcpy(&v15[v10], __src, v12);
    a1 = v18;
    v9 = v15;
    v10 = v13;
  }

  if (v9)
  {
    result = 0;
    *a4 = v9;
    *a5 = v10;
  }

  return result;
}

uint64_t IEGetAppleGeneral(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, _WORD *a4)
{
  v8 = 0;
  v9 = 0;
  result = IEGetVendorSpecific(a1, a2, 234241, &v9, &v8, 0);
  if (!result)
  {
    if (v8 >= 3)
    {
      result = 0;
      v7 = v9;
      *a3 = *v9;
      *a4 = bswap32(*(v7 + 1)) >> 16;
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t IEBufferAppendIE(uint64_t a1, char a2, char *__s, size_t a4)
{
  result = *(a1 + 264);
  if (!result)
  {
    v6 = __s;
    if (a4 == -1)
    {
      a4 = strlen(__s);
    }

    if (a4 > 0xFF || (v8 = *(a1 + 256), a4 + v8 + 2 > 0xFF))
    {
      result = 4294960553;
    }

    else
    {
      *(a1 + 256) = v8 + 1;
      *(a1 + v8) = a2;
      v9 = *(a1 + 256);
      *(a1 + 256) = v9 + 1;
      *(a1 + v9) = a4;
      if (a4)
      {
        v10 = &v6[a4];
        do
        {
          v11 = *v6++;
          v12 = *(a1 + 256);
          *(a1 + 256) = v12 + 1;
          *(a1 + v12) = v11;
        }

        while (v6 < v10);
      }

      result = 0;
    }

    if (!*(a1 + 264))
    {
      *(a1 + 264) = result;
    }
  }

  return result;
}

uint64_t IEBufferStartVendorIE(uint64_t a1, int a2)
{
  v2 = *(a1 + 264);
  if (!v2)
  {
    v3 = *(a1 + 256);
    if ((v3 - 250) < 0xFFFFFFFFFFFFFF00)
    {
      v4 = 4294960553;
      goto LABEL_4;
    }

    v4 = 0;
    v2 = 0;
    *(a1 + 256) = v3 + 1;
    *(a1 + v3) = -35;
    v5 = *(a1 + 256);
    *(a1 + 272) = v5;
    *(a1 + 256) = v5 + 1;
    *(a1 + v5) = 0;
    v6 = *(a1 + 256);
    *(a1 + 256) = v6 + 1;
    *(a1 + v6) = HIBYTE(a2);
    v7 = *(a1 + 256);
    *(a1 + 256) = v7 + 1;
    *(a1 + v7) = BYTE2(a2);
    v8 = *(a1 + 256);
    *(a1 + 256) = v8 + 1;
    *(a1 + v8) = BYTE1(a2);
    v9 = *(a1 + 256);
    *(a1 + 256) = v9 + 1;
    *(a1 + v9) = a2;
    if (!*(a1 + 264))
    {
LABEL_4:
      *(a1 + 264) = v4;
      return v4;
    }
  }

  return v2;
}

uint64_t IEBufferEndVendorIE(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (!v1)
  {
    v2 = *(a1 + 272);
    if (!v2)
    {
      v3 = 4294960551;
      goto LABEL_4;
    }

    v3 = 0;
    v1 = 0;
    *(a1 + v2) = *(a1 + 256) + ~v2;
    *(a1 + 272) = 0;
    if (!*(a1 + 264))
    {
LABEL_4:
      *(a1 + 264) = v3;
      return v3;
    }
  }

  return v1;
}

uint64_t DataBuffer_AppendIE(uint64_t a1, char a2, char *__s, size_t a4)
{
  v4 = a4;
  v5 = __s;
  if (a4 == -1)
  {
    v4 = strlen(__s);
  }

  if (v4 > 0xFF)
  {
    result = 4294960553;
  }

  else
  {
    v14 = 0;
    result = DataBuffer_Resize(a1, v4 + *(a1 + 32) + 2, &v14);
    if (!result)
    {
      v9 = v14++;
      *v9 = a2;
      v10 = v14++;
      *v10 = v4;
      if (v4)
      {
        v11 = &v5[v4];
        do
        {
          v12 = *v5++;
          v13 = v14++;
          *v13 = v12;
        }

        while (v5 < v11);
      }

      result = 0;
    }
  }

  if (!*(a1 + 52))
  {
    *(a1 + 52) = result;
  }

  return result;
}

uint64_t DataBuffer_AppendAppleGeneralIE(uint64_t a1, char a2, __int16 a3, int *a4, int a5, int *a6, int a7)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4 && a5 || !a6 && a7)
  {
    return 4294960591;
  }

  __s[0] = a2;
  __s[1] = HIBYTE(a3);
  __s[2] = a3;
  v7 = 3;
  if (a5)
  {
    if (a7)
    {
      v10 = 3584;
      v11 = *a4;
      v12 = *(a4 + 2);
      v13 = a5;
      v14 = *a6;
      v15 = *(a6 + 2);
      v7 = 19;
      v16 = a7;
    }
  }

  return DataBuffer_AppendVendorIE(a1, 234241, __s, v7);
}

uint64_t DataBuffer_AppendVendorIE(uint64_t a1, int a2, char *__s, size_t a4)
{
  v4 = a4;
  v5 = __s;
  v16 = *(a1 + 32);
  if (a4 == -1)
  {
    v4 = strlen(__s);
  }

  __dst = 0;
  while (1)
  {
    v8 = v4 >= 0xF9 ? 249 : v4;
    result = DataBuffer_Resize(a1, v8 + *(a1 + 32) + 6, &__dst);
    if (result)
    {
      break;
    }

    v10 = __dst;
    __dst = __dst + 1;
    *v10 = -35;
    v11 = __dst;
    __dst = __dst + 1;
    *v11 = v8 + 4;
    v12 = __dst;
    __dst = __dst + 1;
    *v12 = HIBYTE(a2);
    v13 = __dst;
    __dst = __dst + 1;
    *v13 = BYTE2(a2);
    v14 = __dst;
    __dst = __dst + 1;
    *v14 = BYTE1(a2);
    v15 = __dst;
    __dst = __dst + 1;
    *v15 = a2;
    memcpy(__dst, v5, v8);
    v5 += v8;
    __dst = __dst + v8;
    v4 -= v8;
    if (!v4)
    {
      result = 0;
      goto LABEL_11;
    }
  }

  *(a1 + 32) = v16;
LABEL_11:
  if (!*(a1 + 52))
  {
    *(a1 + 52) = result;
  }

  return result;
}

const void *CFCreateWithJSONBytes(char *__s, size_t a2, char a3, uint64_t a4, int *a5)
{
  v8 = a2;
  if (a2 != -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (CFDictionaryGetTypeID() == a4)
    {
      if ((a3 & 3) != 0)
      {
        Mutable = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }

    else
    {
      if (CFArrayGetTypeID() != a4)
      {
        v10 = 0;
        v13 = 0;
        v14 = -6732;
        goto LABEL_23;
      }

      if ((a3 & 3) != 0)
      {
        Mutable = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      }

      else
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      }
    }

    v13 = Mutable;
    v10 = 0;
    if (Mutable)
    {
      goto LABEL_22;
    }

    v14 = -6728;
    v13 = 0;
    goto LABEL_23;
  }

  v8 = strlen(__s);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__s length:v8];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    if ((a3 & 2) != 0)
    {
      v12 = 7;
    }

    else
    {
      v12 = a3 & 1 | 4;
    }

    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:v12 error:0];
    objc_autoreleasePoolPop(v11);
    if (v13)
    {
      if (a4 && CFGetTypeID(v13) != a4)
      {
        CFRelease(v13);
        v13 = 0;
        v14 = -6756;
        goto LABEL_23;
      }

LABEL_22:
      v14 = 0;
      goto LABEL_23;
    }

    v14 = -6717;
  }

  else
  {
    v13 = 0;
    v14 = -6728;
  }

LABEL_23:
  if (a5)
  {
    *a5 = v14;
  }

  return v13;
}

uint64_t CFCreateJSONData(uint64_t a1, char a2, int *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:v7 error:0];
  objc_autoreleasePoolPop(v6);
  if (a3)
  {
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = -6732;
    }

    *a3 = v9;
  }

  return v8;
}

uint64_t KeychainAddFormatted(CFTypeRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  attributes = 0;
  v10 = CFPropertyListBuildFormatted(0, 0, &attributes, a2, &a9, a6, a7, a8);
  if (!v10)
  {
    v10 = SecItemAdd(attributes, a1);
    CFRelease(attributes);
  }

  return v10;
}

CFTypeRef KeychainCopyMatchingFormatted(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  query = 0;
  result = 0;
  v10 = CFPropertyListBuildFormatted(0, 0, &query, a2, &a9, a6, a7, a8);
  if (!v10)
  {
    v10 = SecItemCopyMatching(query, &result);
    CFRelease(query);
  }

  if (a1)
  {
    *a1 = v10;
  }

  return result;
}

uint64_t KeychainDeleteFormatted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  query = 0;
  v9 = CFPropertyListBuildFormatted(0, 0, &query, a1, &a9, a6, a7, a8);
  if (!v9)
  {
    v9 = SecItemDelete(query);
    CFRelease(query);
  }

  return v9;
}

uint64_t KeychainUpdateFormatted(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  attributesToUpdate = 0;
  v10 = CFPropertyListBuildFormatted(0, 0, &attributesToUpdate, a2, &a9, a6, a7, a8);
  if (!v10)
  {
    v10 = SecItemUpdate(a1, attributesToUpdate);
    CFRelease(attributesToUpdate);
  }

  return v10;
}

uint64_t _LogControlLockedCF(const __CFString *a1, int a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v11.location = 0;
  v11.length = Length;
  if (CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v6, MaximumSizeForEncoding, &usedBufLen) == Length)
  {
    if (usedBufLen < 1)
    {
      v8 = 0;
    }

    else
    {
      v7[usedBufLen] = 0;
      v8 = _LogControlLocked(v7, a2);
    }
  }

  else
  {
    v8 = 4294960596;
  }

  free(v7);
  return v8;
}

uint64_t _LogControlLocked(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    LODWORD(v9) = 0;
    v7 = 0;
    goto LABEL_92;
  }

  v2 = a1 + 1;
  v3 = *a1;
  v4 = (a2 & 2) == 0;
  v5 = v3 == 63;
  if (v3 != 63)
  {
    v2 = a1;
  }

  v6 = *v2;
  v7 = v5 && (a2 & 2) == 0;
  if (v6 == 43)
  {
    ++v2;
  }

  v8 = *v2;
  v9 = v6 == 43 && (a2 & 2) == 0;
  if (v8 != 126)
  {
    v4 = 0;
  }

  if (v7 && v6 == 43)
  {
    if (gLogCFPrefsAppID)
    {
      v10 = gLogCFPrefsAppID;
    }

    else
    {
      v10 = *MEMORY[0x1E695E8A8];
    }

    CFPreferencesSetAppValue(@"logconfig", 0, v10);
    return 0;
  }

  if (v8 == 126)
  {
    v11 = v2 + 1;
  }

  else
  {
    v11 = v2;
  }

  v12 = *v11;
  if (!*v11)
  {
LABEL_92:
    while (1)
    {
      v41 = gLogActionList;
      if (!gLogActionList)
      {
        break;
      }

      gLogActionList = *gLogActionList;
      _LogUtils_FreeAction(v41);
    }

    if (v9 && !v7)
    {
      if (gLogCFPrefsAppID)
      {
        v42 = gLogCFPrefsAppID;
      }

      else
      {
        v42 = *MEMORY[0x1E695E8A8];
      }

      CFPreferencesSetAppValue(@"logconfig", 0, v42);
      CFPreferencesAppSynchronize(v42);
    }

    return 0;
  }

  v13 = &gLogActionList;
  v14 = 0x1ED5BB000uLL;
  v49 = v4;
  while (1)
  {
    v15 = v11;
    if (!v4)
    {
      break;
    }

    if (v12)
    {
      do
      {
        if (v12 == 58)
        {
          break;
        }

        v16 = *++v15;
        v12 = v16;
      }

      while (v16);
    }

    v17 = v15 - v11;
    if (v12)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v15;
    }

    for (i = v18; ; ++i)
    {
      v20 = *i;
      if (v20 <= 0x3D && ((1 << v20) & 0x2000100000000001) != 0)
      {
        break;
      }
    }

    if (*i)
    {
      v23 = i + 1;
    }

    else
    {
      v23 = i;
    }

    do
    {
      v24 = *v23;
      if (!*v23)
      {
        break;
      }

      ++v23;
    }

    while (v24 != 44);
    v25 = *(v14 + 1680);
    if (v25)
    {
      v26 = v9;
      do
      {
        v27 = v13;
        v13 = v25;
        while (!strnicmpx(v11, v17, v13[1]) && (i == v18 || !strnicmpx(v18, i - v18, v13[2])))
        {
          *v27 = *v13;
          _LogUtils_FreeAction(v13);
          v13 = *v27;
          if (!*v27)
          {
            goto LABEL_57;
          }
        }

        v25 = *v13;
      }

      while (*v13);
LABEL_57:
      v9 = v26;
      v4 = v49;
      v13 = &gLogActionList;
LABEL_87:
      v14 = 0x1ED5BB000;
    }

LABEL_88:
    v12 = *v23;
    v11 = v23;
    if (!*v23)
    {
      _LogCategory_ApplyActions(0);
      if ((a2 & 2) == 0)
      {
        if (v7)
        {
          _LogUtils_ReadCFPreferences(a2 | 4u);
        }

        else if (v9)
        {
          _LogUtils_WriteCFPreferences();
        }
      }

      return 0;
    }
  }

  while (v12)
  {
    if (v12 == 58)
    {
      v28 = v15 - v11;
      v29 = v15 + 1;
      for (j = v15 + 1; *j; ++j)
      {
        if (*j == 61)
        {
          v47 = j - v29;
          v31 = j + 1;
          for (k = j + 1; ; ++k)
          {
            v33 = *k;
            if (!*k || v33 == 44)
            {
              break;
            }
          }

          v34 = k - v31;
          if (v33 == 44)
          {
            v23 = k + 1;
          }

          else
          {
            v23 = k;
          }

          if ((a2 & 1) == 0 && (!strnicmpx(v29, v47, "output") || !strnicmpx(v29, v47, "output2")) && !strnicmp_prefix(v31, v34, "callback"))
          {
            v4 = v49;
            goto LABEL_88;
          }

          v45 = v34;
          v46 = v31;
          v35 = *v13;
          if (*v13)
          {
            v36 = v13;
            while (1)
            {
              v37 = v35;
              if (!strnicmpx(v11, v28, *(v35 + 8)) && !strnicmpx(v29, v47, v37[2]))
              {
                break;
              }

              v35 = *v37;
              v36 = v37;
              if (!*v37)
              {
                goto LABEL_80;
              }
            }

            v38 = v13;
            v39 = 0;
          }

          else
          {
            v37 = v13;
LABEL_80:
            v38 = v13;
            v39 = malloc_type_calloc(1uLL, 0x20uLL, 0x30040E3C0B0CCuLL);
            v36 = v37;
            v37 = v39;
            if (!v39)
            {
              return 4294960568;
            }
          }

          v40 = ReplaceString(v37 + 1, 0, v11, v28);
          if (!v40)
          {
            v40 = ReplaceString(v37 + 2, 0, v29, v47);
            if (!v40)
            {
              v40 = ReplaceString(v37 + 3, 0, v46, v45);
              if (!v40)
              {
                v4 = v49;
                if (v39)
                {
                  *v36 = v39;
                }

                v13 = v38;
                goto LABEL_87;
              }
            }
          }

          v43 = v40;
          if (v39)
          {
            _LogUtils_FreeAction(v39);
          }

          return v43;
        }
      }

      return 4294960554;
    }

    v22 = *++v15;
    v12 = v22;
  }

  return 4294960554;
}

void _LogUtils_FreeAction(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
    a1[1] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

void _LogUtils_WriteCFPreferences()
{
  cStr = 0;
  v0 = gLogActionList;
  if (gLogActionList)
  {
    do
    {
      v1 = *(v0 + 16);
      if (strcasecmp(v1, "output") && strcasecmp(v1, "output2") || stricmp_prefix(*(v0 + 24), "callback"))
      {
        if (v0 == gLogActionList)
        {
          v8 = "";
        }

        else
        {
          v8 = ",";
        }

        AppendPrintF(&cStr, "%s%s:%s=%s", v2, v3, v4, v5, v6, v7, v8);
      }

      v0 = *v0;
    }

    while (v0);
    v9 = cStr;
    if (cStr)
    {
      v10 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        if (gLogCFPrefsAppID)
        {
          v12 = gLogCFPrefsAppID;
        }

        else
        {
          v12 = *MEMORY[0x1E695E8A8];
        }

        CFPreferencesSetAppValue(@"logconfig", v10, v12);
        CFPreferencesAppSynchronize(v12);
        v13 = gLogCFLastControlPref;
        CFRetain(v11);
        gLogCFLastControlPref = v11;
        if (v13)
        {
          CFRelease(v13);
        }

        CFRelease(v11);
      }

      free(v9);
    }
  }
}

void _LogOutputDelete(_DWORD *a1)
{
  v2 = a1[10];
  if (v2 == 2)
  {
    v3 = *(a1 + 6);
    if (v3)
    {
      free(v3);
      *(a1 + 6) = 0;
    }

    v4 = *(a1 + 7);
    if (v4)
    {
      if (v4 != *MEMORY[0x1E69E9848] && v4 != *MEMORY[0x1E69E9858])
      {
        fclose(v4);
      }

      *(a1 + 7) = 0;
    }

    v6 = *(a1 + 11);
    if (v6)
    {
      free(v6);
      *(a1 + 11) = 0;
    }

    v2 = a1[10];
  }

  if (v2 == 14)
  {
    v7 = *(a1 + 9);
    if (v7)
    {
      free(v7);
      *(a1 + 9) = 0;
    }

    v8 = *(a1 + 6);
    if (v8)
    {
      free(v8);
      *(a1 + 6) = 0;
    }

    v9 = *(a1 + 7);
    if (v9)
    {

      *(a1 + 7) = 0;
    }
  }

  v10 = *(a1 + 2);
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

uint64_t _LogOutputSysLog_Setup(uint64_t a1, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *(a1 + 48) = 5;
  v3 = *a2;
  if (*a2)
  {
    while (1)
    {
      v4 = a2;
      if (!v3)
      {
        return 4294960554;
      }

      while (v3 != 61)
      {
        v5 = *++v4;
        v3 = v5;
        if (!v5)
        {
          return 4294960554;
        }
      }

      v6 = v4 + 1;
        ;
      }

      if (*i)
      {
        v8 = i + 1;
      }

      else
      {
        v8 = i;
      }

      if (!strnicmpx(a2, v4 - a2, "level"))
      {
        v9 = (i - v6) >= 0x1F ? 31 : i - v6;
        __memcpy_chk();
        __s1[v9] = 0;
        v10 = LUStringToLevel(__s1);
        if (v10 != -1)
        {
          if (v10 <= 119)
          {
            if (v10 <= 109)
            {
              if (v10 <= 99)
              {
                if (v10 <= 89)
                {
                  if (v10 <= 59)
                  {
                    if (v10 <= 49)
                    {
                      if (v10 > 39)
                      {
                        v11 = 6;
                      }

                      else
                      {
                        v11 = 7;
                      }
                    }

                    else
                    {
                      v11 = 5;
                    }
                  }

                  else
                  {
                    v11 = 4;
                  }
                }

                else
                {
                  v11 = 3;
                }
              }

              else
              {
                v11 = 2;
              }
            }

            else
            {
              v11 = 1;
            }
          }

          else
          {
            v11 = 0;
          }

          *(a1 + 48) = v11;
        }
      }

      v3 = *v8;
      a2 = v8;
      if (!*v8)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    result = 0;
    *(a1 + 32) = _LogOutputSysLog_Writer;
    *(a1 + 40) = 6;
  }

  return result;
}

void _LogOutputFile_Writer(int a1, uint64_t a2, void *__ptr, size_t __nitems, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = (a2 + 56);
  v10 = *(a2 + 56);
  if (v10 != *MEMORY[0x1E69E9848] && v10 != *MEMORY[0x1E69E9858])
  {
    v14 = *(a2 + 72);
    v15 = *(a2 + 64) + __nitems;
    *(a2 + 64) = v15;
    if (v14 >= 1 && v15 > v14)
    {
      if (*(a2 + 88) && *(a2 + 96) >= 1)
      {
        SNPrintF(&__p, 1025, "%s.%d", v10, a5, a6, a7, a8, *(a2 + 88));
        remove(&__p, v17);
        v23 = *(a2 + 96);
        if (v23 >= 3)
        {
          v24 = v23 - 2;
          do
          {
            SNPrintF(&__p, 1025, "%s.%d", v18, v19, v20, v21, v22, *(a2 + 88));
            SNPrintF(&__to, 1025, "%s.%d", v25, v26, v27, v28, v29, *(a2 + 88));
            rename(&__p, &__to, v30);
            v31 = v24-- != 0;
          }

          while (v24 != 0 && v31);
        }

        SNPrintF(&__to, 1025, "%s.1", v18, v19, v20, v21, v22, *(a2 + 88));
        rename(*(a2 + 88), &__to, v32);
        SNPrintF(&__to, 1025, "%s", v33, v34, v35, v36, v37, *(a2 + 88));
        v38 = *(a2 + 48);
        v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (v39)
        {
          v40 = v39;
          v41 = fopen(v38, "r");
          if (v41 || *__error() && !*__error())
          {
            v42 = fopen(&__to, "w");
            if (v42)
            {
              goto LABEL_21;
            }

LABEL_19:
            if (*__error() && !*__error())
            {
LABEL_21:
              while (1)
              {
                v43 = fread(v40, 1uLL, 0x1000uLL, v41);
                if (!v43)
                {
                  break;
                }

                if (fwrite(v40, 1uLL, v43, v42) != v43)
                {
                  goto LABEL_19;
                }
              }
            }

            if (v41)
            {
              fclose(v41);
            }

            if (v42)
            {
              fclose(v42);
            }
          }

          free(v40);
        }
      }

      RollLogFiles(v11, "\nLOG ENDED, CONTINUES IN NEXT LOG FILE\n", *(a2 + 48), *(a2 + 80));
      *(a2 + 64) = __nitems;
      v10 = *(a2 + 56);
    }
  }

  if (v10)
  {
    fwrite(__ptr, 1uLL, __nitems, v10);
    fflush(*v11);
  }
}

void _LogOutputSysLog_Writer(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4 - (a3[a4 - 1] == 10);
  }

  else
  {
    v4 = 0;
  }

  syslog(*(a2 + 48), "%.*s", v4, a3);
}

uint64_t _LogOutputCallBack_Writer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    return v4(result, a3, a4, *(a2 + 56));
  }

  return result;
}

uint64_t LogControl(char *a1)
{
  if (a1)
  {
    if (!strcmp(a1, "?:output=syslog"))
    {
      return 0;
    }

    LogUtils_EnsureInitialized();
    pthread_mutex_lock(&gLogUtilsLock);
    v2 = _LogControlLocked(a1, 0);
  }

  else
  {
    LogUtils_EnsureInitialized();
    pthread_mutex_lock(&gLogUtilsLock);
    while (1)
    {
      v3 = gLogActionList;
      if (!gLogActionList)
      {
        break;
      }

      gLogActionList = *gLogActionList;
      _LogUtils_FreeAction(v3);
    }

    v2 = 0;
  }

  pthread_mutex_unlock(&gLogUtilsLock);
  return v2;
}

uint64_t LogControlCF(const __CFString *a1)
{
  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  locked = _LogControlLockedCF(a1, 0);
  pthread_mutex_unlock(&gLogUtilsLock);
  return locked;
}

uint64_t LogSetAppID(CFTypeRef cf1)
{
  if (cf1)
  {
    result = CFEqual(cf1, @"com.apple.CoreRC");
    if (result)
    {
      return result;
    }

    pthread_mutex_lock(&gLogUtilsLock);
    v3 = gLogCFPrefsAppID;
    CFRetain(cf1);
  }

  else
  {
    pthread_mutex_lock(&gLogUtilsLock);
    v3 = gLogCFPrefsAppID;
  }

  gLogCFPrefsAppID = cf1;
  if (v3)
  {
    CFRelease(v3);
  }

  return pthread_mutex_unlock(&gLogUtilsLock);
}

uint64_t LogSetOutputCallback(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  v8 = ".*";
  if (a1)
  {
    v8 = a1;
  }

  ASPrintF(&v12, "%s:output%?d=callback;func=%p;arg=%p", a3, a4, a5, a6, a7, a8, v8);
  v9 = v12;
  if (!v12)
  {
    return 4294960568;
  }

  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  v10 = _LogControlLocked(v9, 1);
  pthread_mutex_unlock(&gLogUtilsLock);
  free(v9);
  return v10;
}

uint64_t LogShow(void **a1)
{
  v72 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gLogUtilsLock);
  v68 = 0;
  v2 = getprogname();
  getpid();
  if (ASPrintF(&v68, "=== LogUtils (%s, PID %llu) ===\n", v3, v4, v5, v6, v7, v8, v2) < 1)
  {
    v51 = 4294960568;
  }

  else
  {
    v9 = gLogCategoryList;
    if (!gLogCategoryList)
    {
      goto LABEL_32;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      v12 = strlen(*(v9 + 24));
      if (v12 > v11)
      {
        v11 = v12;
      }

      _LULevelToString(*v9, __s, v13, v14, v15, v16, v17, v18);
      v19 = strlen(__s);
      if (v19 > v10)
      {
        v10 = v19;
      }

      v9 = *(v9 + 48);
    }

    while (v9);
    v26 = gLogCategoryList;
    if (gLogCategoryList)
    {
      v67 = a1;
      do
      {
        v70[0] = 0;
        v27 = *(v26 + 56);
        if (v27)
        {
          v28 = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v29 != -1)
          {
            _LULevelToString(v29, v70, v20, v21, v22, v23, v24, v25);
          }
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          v28 = "";
        }

        stricmp_prefix(v28, "callback");
        v69[0] = 0;
        v36 = *(v26 + 64);
        if (v36)
        {
          v37 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v38 != -1)
          {
            _LULevelToString(v38, v69, v30, v31, v32, v33, v34, v35);
          }
        }

        else
        {
          v37 = 0;
        }

        if (!v37)
        {
          v37 = "";
        }

        stricmp_prefix(v37, "callback");
        _LULevelToString(*v26, __s, v39, v40, v41, v42, v43, v44);
        UpTicksToMilliseconds(*(v26 + 72));
        if (AppendPrintF(&v68, "  %-*s  L=%-*s  R=%u/%-5llu  O1=%s  O1L=%s  O2=%s  O2L=%s\n", v45, v46, v47, v48, v49, v50, v11) <= 0)
        {
          v51 = 4294960568;
          a1 = v67;
          goto LABEL_43;
        }

        v26 = *(v26 + 48);
      }

      while (v26);
      v51 = 0;
      v52 = gLogActionList;
      if (gLogCategoryList)
      {
        a1 = v67;
        if (!gLogActionList)
        {
          goto LABEL_33;
        }

        if (AppendPrintF(&v68, "\n", v20, v21, v22, v23, v24, v25, v66) <= 0)
        {
          v51 = 4294960568;
        }

        else
        {
          v51 = 0;
        }

        v52 = gLogActionList;
        if (gLogActionList)
        {
          goto LABEL_34;
        }
      }

      else
      {
        a1 = v67;
        if (gLogActionList)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_32:
      v51 = 0;
      v52 = gLogActionList;
LABEL_33:
      if (v52)
      {
LABEL_34:
        while (1)
        {
          if ((v53 = *(v52 + 16), strcasecmp(v53, "output")) && strcasecmp(v53, "output2") || stricmp_prefix(*(v52 + 24), "callback"))
          {
            if (AppendPrintF(&v68, "  Action: %s:%s=%s\n", v54, v55, v56, v57, v58, v59, *(v52 + 8)) < 1)
            {
              break;
            }
          }

          v52 = *v52;
          if (!v52)
          {
            goto LABEL_43;
          }
        }

        v51 = 4294960568;
      }
    }
  }

LABEL_43:
  pthread_mutex_unlock(&gLogUtilsLock);
  v64 = v68;
  if (v68)
  {
    if (a1)
    {
      *a1 = v68;
    }

    else
    {
      if (gLogCategory_LogUtils <= 254 && (gLogCategory_LogUtils != -1 || _LogCategory_Initialize(&gLogCategory_LogUtils, 0xFEu)))
      {
        LogPrintF(&gLogCategory_LogUtils, "OSStatus LogShow(char **)", 0xFEu, "%s", v60, v61, v62, v63, v64);
      }

      free(v64);
    }
  }

  else if (!a1 && gLogCategory_LogUtils <= 90 && (gLogCategory_LogUtils != -1 || _LogCategory_Initialize(&gLogCategory_LogUtils, 0x5Au)))
  {
    LogPrintF(&gLogCategory_LogUtils, "OSStatus LogShow(char **)", 0x5Au, "### ERROR: %#m\n", v60, v61, v62, v63, v51);
  }

  return v51;
}

uint64_t _LULevelToString(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = 0;
  v11 = 0x7FFFFFFF;
  v12 = kLogLevelToStringTable;
  do
  {
    v13 = *v12;
    v12 += 4;
    v14 = a1 - v13;
    if (v14 < 0)
    {
      v14 = -v14;
    }

    if (v14 < v11)
    {
      v11 = v14;
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 18);
  v15 = &kLogLevelToStringTable[4 * v10];
  v16 = a1 - *v15;
  if (v16 < 1)
  {
    if (v16 < 0)
    {
      SNPrintF(a2, 64, "%s-%u", a4, a5, a6, a7, a8, *(v15 + 1));
    }

    else
    {
      SNPrintF(a2, 64, "%s", a4, a5, a6, a7, a8, *(v15 + 1));
    }
  }

  else
  {
    SNPrintF(a2, 64, "%s+%u", a4, a5, a6, a7, a8, *(v15 + 1));
  }

  return a2;
}

BOOL CUFloatsNearlyEqualWithinULPs(int a1, int32x2_t a2, float a3)
{
  *&a2.i32[1] = a3;
  v3 = vbsl_s8(vcltz_s32(a2), vsub_s32(0x8000000080000000, a2), a2);
  v4 = vsub_s32(v3, vdup_lane_s32(v3, 1)).u32[0];
  if (v4 < 0)
  {
    v4 = -v4;
  }

  return v4 <= a1;
}

uint64_t iceil2(int a1)
{
  v1 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  return (v2 | HIWORD(v2)) + 1;
}

unint64_t ifloor2_64(unint64_t a1)
{
  v1 = a1 | (a1 >> 1) | ((a1 | (a1 >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | (v2 >> 16) | ((v2 | (v2 >> 16)) >> 32);
  return v3 - (v3 >> 1);
}

uint64_t ilog2_64(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    LOBYTE(v1) = 0;
    do
    {
      LOBYTE(v1) = v1 + 1;
      v2 = a1 > 3;
      a1 >>= 1;
    }

    while (v2);
  }

  else
  {
    return (__clz(a1 | 1) ^ 0x1F);
  }

  return v1;
}

uint64_t CUFibonacci32(uint64_t result)
{
  if (result)
  {
    if (result <= 0x2E)
    {
      v1 = result - 1;
      if (result != 1)
      {
        v2 = 0;
        LODWORD(result) = 1;
        do
        {
          v3 = result;
          result = (result + v2);
          v2 = v3;
          --v1;
        }

        while (v1);
      }
    }

    else
    {
      return 2971215073;
    }
  }

  return result;
}

uint64_t ValueSmootherInit(uint64_t a1, int a2, unsigned int a3)
{
  *a1 = malloc_type_calloc(a3 * a2, 8uLL, 0x100004000313F17uLL);
  v6 = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  *(a1 + 8) = v6;
  if (*a1)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    ValueSmootherFree(a1);
    return 4294960568;
  }

  else
  {
    result = 0;
    *(a1 + 16) = a2;
    *(a1 + 20) = a3;
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
  }

  return result;
}

void ValueSmootherFree(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }
}

double ValueSmootherUpdate(uint64_t *a1, double a2)
{
  if (*(a1 + 28))
  {
    v3 = *(a1 + 5);
    v2 = *(a1 + 6);
    v4 = *(a1 + 4);
    if (v2 + 1 < v4)
    {
      v5 = v2 + 1;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 6) = v5;
    if (v3)
    {
      v6 = 0;
      v7 = *a1;
      v8 = a1[1];
      do
      {
        *(v8 + 8 * v6) = a2 / v4 + *(v8 + 8 * v6) - *(v7 + 8 * v2) / v4;
        *(v7 + 8 * v2) = a2;
        v2 += v4;
        a2 = *(v8 + 8 * v6++);
      }

      while (v3 != v6);
      LODWORD(v9) = v3;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else
  {
    v9 = *(a1 + 5);
    v10 = (v9 * *(a1 + 4));
    if (v10)
    {
      v11 = vdupq_n_s64(v10 - 1);
      v12 = (v10 + 1) & 0x1FFFFFFFELL;
      v13 = xmmword_191FF9410;
      v14 = (*a1 + 8);
      v15 = vdupq_n_s64(2uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (v16.i8[0])
        {
          *(v14 - 1) = a2;
        }

        if (v16.i8[4])
        {
          *v14 = a2;
        }

        v13 = vaddq_s64(v13, v15);
        v14 += 2;
        v12 -= 2;
      }

      while (v12);
    }

    if (v9)
    {
      v17 = vdupq_n_s64(v9 - 1);
      v18 = (v9 + 1) & 0x1FFFFFFFELL;
      v19 = xmmword_191FF9410;
      v20 = (a1[1] + 8);
      v21 = vdupq_n_s64(2uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (v22.i8[0])
        {
          *(v20 - 1) = a2;
        }

        if (v22.i8[4])
        {
          *v20 = a2;
        }

        v19 = vaddq_s64(v19, v21);
        v20 += 2;
        v18 -= 2;
      }

      while (v18);
    }

    *(a1 + 28) = 1;
  }

  return *(a1[1] + 8 * (v9 - 1));
}

uint64_t MFiPlatform_VerifySignatureEx(const UInt8 *a1, uint64_t a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, uint64_t a6, CFDictionaryRef theDict, uint64_t a8)
{
  error[4] = *MEMORY[0x1E69E9840];
  v142 = 0;
  if (gLogCategory_MFiClientCore <= 30)
  {
    if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x1Eu))
    {
      LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x1Eu, "MFi verify signature: %zu data bytes, %zu sig bytes, %zu cert bytes, extraInfo %s\n", a5, a6, theDict, a8, a2);
    }

    if (gLogCategory_MFiClientCore <= 9)
    {
      if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 9u))
      {
        LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 9u, "MFi challenge:\n%1.2H\n", a5, a6, theDict, a8, a1);
      }

      if (gLogCategory_MFiClientCore <= 9)
      {
        if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 9u))
        {
          LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 9u, "MFi certificate:\n%1.2H\n", a5, a6, theDict, a8, a5);
        }

        if (gLogCategory_MFiClientCore <= 9)
        {
          if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 9u))
          {
            LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 9u, "MFi signature:\n%1.2H\n", a5, a6, theDict, a8, a3);
          }

          if (gLogCategory_MFiClientCore <= 9 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 9u)))
          {
            LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 9u, "MFi extra info: %##@", a5, a6, theDict, a8, theDict);
          }
        }
      }
    }
  }

  if (theDict && CFDictionaryGetValue(theDict, @"baIC"))
  {
    v144 = 0;
    trust = 0;
    error[0] = 0;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v16 = 0;
      v22 = 0;
      v144 = -6728;
LABEL_43:
      if (error[0])
      {
        CFRelease(error[0]);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return v144;
    }

    v16 = CFDataCreate(0, a5, a6);
    if (!v16)
    {
      goto LABEL_170;
    }

    v17 = SecCertificateCreateWithData(0, v16);
    CFRelease(v16);
    if (!v17)
    {
      v144 = -6742;
      if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
      {
        LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _MFiPlatform_VerifySignatureBAA(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### Decode BAA intermediate cert failed", v18, v19, v20, v21, v138);
      }

      v22 = 0;
      v16 = 0;
      goto LABEL_41;
    }

    CFArrayAppendValue(Mutable, v17);
    CFRelease(v17);
    v16 = CFDataCreate(0, a1, a2);
    if (!v16)
    {
LABEL_170:
      v22 = 0;
      goto LABEL_171;
    }

    v22 = CFDataCreate(0, a3, a4);
    if (v22)
    {
      v23 = SecCertificateCopyKey(v17);
      if (v23)
      {
        v28 = v23;
        v29 = SecKeyVerifySignature(v23, *MEMORY[0x1E697B128], v16, v22, error);
        CFRelease(v28);
        v34 = error[0];
        if (!v29 || error[0])
        {
          v144 = -6716;
          if (gLogCategory_MFiClientCore > 90)
          {
            goto LABEL_41;
          }

          if (gLogCategory_MFiClientCore == -1)
          {
            if (!_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
            {
              goto LABEL_41;
            }

            v34 = error[0];
          }

          LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _MFiPlatform_VerifySignatureBAA(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### Verify BAA signature failed: %@", v30, v31, v32, v33, v34);
          goto LABEL_41;
        }

        TypeID = CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue(theDict, @"baIC", TypeID, &v144);
        if (TypedValue)
        {
          v37 = SecCertificateCreateWithData(0, TypedValue);
          if (v37)
          {
            v38 = v37;
            CFArrayAppendValue(Mutable, v37);
            CFRelease(v38);
            AppleBasicAttestationUser = SecPolicyCreateAppleBasicAttestationUser();
            if (AppleBasicAttestationUser)
            {
              v40 = AppleBasicAttestationUser;
              v144 = SecTrustCreateWithCertificates(Mutable, AppleBasicAttestationUser, &trust);
              CFRelease(v40);
              v45 = v144;
              if (v144)
              {
                if (gLogCategory_MFiClientCore > 90)
                {
                  goto LABEL_41;
                }

                if (gLogCategory_MFiClientCore == -1)
                {
                  if (!_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
                  {
                    goto LABEL_41;
                  }

                  v45 = v144;
                }

                LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _MFiPlatform_VerifySignatureBAA(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### Create BAA trust failed: %#m", v41, v42, v43, v44, v45);
                goto LABEL_41;
              }

              v46 = CFDataCreateWithBytesNoCopy(0, BAARootCert, 542, *MEMORY[0x1E695E498]);
              if (!v46)
              {
                goto LABEL_171;
              }

              v47 = v46;
              values = SecCertificateCreateWithData(0, v46);
              CFRelease(v47);
              if (values)
              {
                v48 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
                CFRelease(values);
                if (v48)
                {
                  v144 = SecTrustSetAnchorCertificates(trust, v48);
                  CFRelease(v48);
                  v53 = v144;
                  if (v144)
                  {
                    if (gLogCategory_MFiClientCore > 90)
                    {
                      goto LABEL_41;
                    }

                    if (gLogCategory_MFiClientCore == -1)
                    {
                      if (!_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
                      {
                        goto LABEL_41;
                      }

                      v53 = v144;
                    }

                    LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _MFiPlatform_VerifySignatureBAA(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### Set BAA anchors failed: %#m", v49, v50, v51, v52, v53);
                    goto LABEL_41;
                  }

                  v54 = SecTrustEvaluateWithError(trust, error);
                  v55 = error[0];
                  if (!v54 || error[0])
                  {
                    v144 = -71164;
                    if (gLogCategory_MFiClientCore <= 90)
                    {
                      if (gLogCategory_MFiClientCore != -1)
                      {
LABEL_212:
                        v138 = v55;
                        v137 = "### Verify BAA trust failed: %@";
                        goto LABEL_213;
                      }

                      if (_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
                      {
                        v55 = error[0];
                        goto LABEL_212;
                      }
                    }
                  }

LABEL_41:
                  if (trust)
                  {
                    CFRelease(trust);
                  }

                  goto LABEL_43;
                }

                goto LABEL_171;
              }

              if (gLogCategory_MFiClientCore > 90 || gLogCategory_MFiClientCore == -1 && !_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
              {
                goto LABEL_41;
              }

              v137 = "### Create BAA root cert failed";
            }

            else
            {
              v144 = -6700;
              if (gLogCategory_MFiClientCore > 90 || gLogCategory_MFiClientCore == -1 && !_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
              {
                goto LABEL_41;
              }

              v137 = "### Get BAA policy failed";
            }
          }

          else
          {
            v144 = -6742;
            if (gLogCategory_MFiClientCore > 90 || gLogCategory_MFiClientCore == -1 && !_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
            {
              goto LABEL_41;
            }

            v137 = "### Bad BAA intermediate cert";
          }
        }

        else
        {
          if (gLogCategory_MFiClientCore > 90 || gLogCategory_MFiClientCore == -1 && !_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
          {
            goto LABEL_41;
          }

          v137 = "### No BAA intermediate cert";
        }
      }

      else
      {
        v144 = -71155;
        if (gLogCategory_MFiClientCore > 90 || gLogCategory_MFiClientCore == -1 && !_LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
        {
          goto LABEL_41;
        }

        v137 = "### No BAA leaf public key";
      }

LABEL_213:
      LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _MFiPlatform_VerifySignatureBAA(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, v137, v24, v25, v26, v27, v138);
      goto LABEL_41;
    }

LABEL_171:
    v144 = -6728;
    goto LABEL_41;
  }

  v57 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!v57)
  {
    v79 = 0;
    v60 = 0;
    v80 = 0;
    v58 = 0;
LABEL_174:
    v56 = 4294960568;
    goto LABEL_130;
  }

  v58 = CFDataCreate(0, a5, a6);
  if (!v58)
  {
    v79 = 0;
    v60 = 0;
    v80 = 0;
    goto LABEL_174;
  }

  v59 = SecCMSCertificatesOnlyMessageCopyCertificates();
  v60 = v59;
  if (v59)
  {
    if (CFArrayGetCount(v59) < 1)
    {
      v79 = 0;
      v80 = 0;
      v56 = 4294960532;
      goto LABEL_130;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v60, 0);
    v62 = CFGetTypeID(ValueAtIndex);
    if (v62 != SecCertificateGetTypeID())
    {
      v79 = 0;
      v80 = 0;
      v56 = 4294960540;
      goto LABEL_130;
    }

    CFArrayAppendValue(v57, ValueAtIndex);
    v63 = SecPolicyCreateiAP();
    v139 = 0;
    if (v63)
    {
      goto LABEL_58;
    }

    goto LABEL_68;
  }

  v78 = SecCertificateCreateWithData(0, v58);
  if (v78)
  {
    ValueAtIndex = v78;
    CFArrayAppendValue(v57, v78);
    v63 = SecPolicyCreateiAPSWAuth();
    v139 = ValueAtIndex;
    if (v63)
    {
LABEL_58:
      v56 = SecTrustCreateWithCertificates(v57, v63, &v142);
      CFRelease(v63);
      if (!v56)
      {
        if (a4 == 128)
        {
          v68 = 1;
        }

        else
        {
          v68 = 6;
        }

        theArray = (softLinkmfaa_certificateManager_copyAnchorCertificates[0])(v68);
        if (theArray)
        {
          if (gLogCategory_MFiClientCore <= 30 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x1Eu)))
          {
            Count = CFArrayGetCount(theArray);
            LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x1Eu, "MFi verify signature: %d anchor certs\n", v74, v75, v76, v77, Count);
          }

          v81 = SecTrustSetAnchorCertificates(v142, theArray);
          if (v81)
          {
            v56 = v81;
            if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
            {
              LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### MFi set anchor certs failed: %#m\n", v82, v83, v84, v85, v56);
            }

            goto LABEL_129;
          }

          v86 = SecTrustSetAnchorCertificatesOnly(v142, 1u);
          if (v86)
          {
            v56 = v86;
            if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
            {
              LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### MFi set anchor certs only failed: %#m\n", v87, v88, v89, v90, v56);
            }

            goto LABEL_129;
          }
        }

        else if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
        {
          LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### MFi no certificates from MFA\n", v69, v70, v71, v72, v138);
        }

        err = 0;
        v95 = SecTrustEvaluateWithError(v142, &err);
        if (v95)
        {
          v56 = 0;
        }

        else
        {
          v56 = 4294960563;
        }

        v96 = err;
        if (!v95 && err)
        {
          Code = CFErrorGetCode(err);
          if (Code)
          {
            v56 = Code;
          }

          else
          {
            v56 = 4294960563;
          }

          v96 = err;
        }

        if (v96)
        {
          CFRelease(v96);
        }

        if (v56)
        {
          v80 = v139;
          v79 = theArray;
          if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
          {
            LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### MFi SecTrustEvaluate failed: %#m\n", v91, v92, v93, v94, v56);
          }

          goto LABEL_130;
        }

        v98 = MEMORY[0x193B05B10](v142);
        if (!v98)
        {
          v56 = 4294960596;
          goto LABEL_129;
        }

        v99 = v98;
        trust = 0;
        if (a4 == 128)
        {
          CC_SHA1(a1, a2, error);
          v100 = CFDataCreate(0, error, 20);
          if (v100)
          {
            v101 = v100;
            v102 = MEMORY[0x1E697B180];
            goto LABEL_94;
          }
        }

        else
        {
          CC_SHA256(a1, a2, error);
          v103 = CFDataCreate(0, error, 32);
          if (v103)
          {
            v101 = v103;
            v102 = MEMORY[0x1E697B0E0];
LABEL_94:
            v104 = *v102;
            v105 = CFDataCreate(0, a3, a4);
            if (!v105)
            {
              v56 = 4294960568;
LABEL_109:
              CFRelease(v101);
LABEL_110:
              CFRelease(v99);
              if (!v56)
              {
                if (MFAAuthenticationLibrary_sOnce != -1)
                {
                  dispatch_once(&MFAAuthenticationLibrary_sOnce, &__block_literal_global_11653);
                }

                if (MFAAuthenticationLibrary_sLib && dlsym(MFAAuthenticationLibrary_sLib, "mfaa_certificateManager_validateCertificate"))
                {
                  v115 = (softLinkmfaa_certificateManager_validateCertificate[0])(v58, 0);
                  if (v115 != 1)
                  {
                    v56 = 4294896132;
                    v80 = v139;
                    v79 = theArray;
                    if (gLogCategory_MFiClientCore <= 60)
                    {
                      v120 = v115;
                      if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x3Cu))
                      {
                        LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x3Cu, "### MFi cert rejected (%d)\n", v116, v117, v118, v119, v120);
                      }
                    }

                    goto LABEL_130;
                  }

                  goto LABEL_128;
                }

                if (gLogCategory_MFiClientCore <= 60 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x3Cu)))
                {
                  LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x3Cu, "### MFi cert manager not available\n", v111, v112, v113, v114, v138);
                }

                if (a4 != 128 || (v121 = SecCertificateCopySerialNumberData(ValueAtIndex, 0)) == 0)
                {
LABEL_128:
                  v56 = 0;
                  goto LABEL_129;
                }

                v122 = v121;
                BytePtr = CFDataGetBytePtr(v121);
                Length = CFDataGetLength(v122);
                if (gLogCategory_MFiClientCore <= 40 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x28u)))
                {
                  LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _VerifySerialNumber(const uint8_t *, size_t)", 0x28u, "MFi certificate serial number: %.3H\n", v124, v125, v126, v127, BytePtr);
                }

                if (Length == 15 && (*BytePtr == 0x7AA191212AA3333 ? (v130 = *(BytePtr + 7) == 0x10000AA0600AA07) : (v130 = 0), v130))
                {
                  if (gLogCategory_MFiClientCore > 40)
                  {
                    v56 = 0;
LABEL_156:
                    v80 = v139;
                    v79 = theArray;
LABEL_169:
                    CFRelease(v122);
                    goto LABEL_130;
                  }

                  v80 = v139;
                  v79 = theArray;
                  if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x28u))
                  {
                    v135 = "Allowing MFi test certificate serial number\n";
                    v136 = 40;
                    goto LABEL_163;
                  }
                }

                else
                {
                  if (IAPAuthenticationLibrary_sOnce != -1)
                  {
                    dispatch_once(&IAPAuthenticationLibrary_sOnce, &__block_literal_global_42);
                  }

                  if (IAPAuthenticationLibrary_sLib && dlsym(IAPAuthenticationLibrary_sLib, "MFiVerifyCertificateSerialNumber"))
                  {
                    v56 = softLinkMFiVerifyCertificateSerialNumber(BytePtr, Length);
                    if (v56 && gLogCategory_MFiClientCore <= 60 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x3Cu)))
                    {
                      LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _VerifySerialNumber(const uint8_t *, size_t)", 0x3Cu, "### Bad MFi certificate SN <%.3H>: %#m\n", v131, v132, v133, v134, BytePtr);
                    }

                    goto LABEL_156;
                  }

                  v80 = v139;
                  v79 = theArray;
                  if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
                  {
                    v135 = "Skipping MFi certificate serial number check (no func)\n";
                    v136 = 90;
LABEL_163:
                    LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _VerifySerialNumber(const uint8_t *, size_t)", v136, v135, v124, v125, v126, v127, v138);
                  }
                }

                v56 = 0;
                goto LABEL_169;
              }

LABEL_129:
              v80 = v139;
              v79 = theArray;
              goto LABEL_130;
            }

            v106 = v105;
            if (SecKeyVerifySignature(v99, v104, v101, v105, &trust))
            {
              v56 = 0;
              goto LABEL_108;
            }

            if (trust)
            {
              v56 = CFErrorGetCode(trust);
              if (!v56)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v56 = 4294960596;
            }

            if (gLogCategory_MFiClientCore <= 90 && (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au)))
            {
              LogPrintF(&gLogCategory_MFiClientCore, "OSStatus _SecKeyVerifySignature(SecKeyRef, const uint8_t *, size_t, const uint8_t *, size_t)", 0x5Au, "### MFi SecKeyVerifySignature failed: %#m, %@\n", v107, v108, v109, v110, v56);
            }

LABEL_108:
            CFRelease(v101);
            CFRelease(v106);
            v101 = trust;
            if (!trust)
            {
              goto LABEL_110;
            }

            goto LABEL_109;
          }
        }

        CFRelease(v99);
        v56 = 4294960568;
        goto LABEL_129;
      }

      if (gLogCategory_MFiClientCore <= 90)
      {
        v80 = v139;
        if (gLogCategory_MFiClientCore != -1 || _LogCategory_Initialize(&gLogCategory_MFiClientCore, 0x5Au))
        {
          LogPrintF(&gLogCategory_MFiClientCore, "OSStatus MFiPlatform_VerifySignatureEx(const void *, size_t, const void *, size_t, const void *, size_t, CFDictionaryRef)", 0x5Au, "### MFi create trust failed: %#m\n", v64, v65, v66, v67, v56);
        }

        v79 = 0;
        goto LABEL_130;
      }

      v79 = 0;
LABEL_224:
      v80 = v139;
      goto LABEL_130;
    }

LABEL_68:
    v79 = 0;
    v56 = 4294960596;
    goto LABEL_224;
  }

  v79 = 0;
  v60 = 0;
  v80 = 0;
  v56 = 4294960554;
LABEL_130:
  if (v142)
  {
    CFRelease(v142);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  return v56;
}

uint64_t initMFiVerifyCertificateSerialNumber(uint64_t a1, uint64_t a2)
{
  if (IAPAuthenticationLibrary_sOnce != -1)
  {
    dispatch_once(&IAPAuthenticationLibrary_sOnce, &__block_literal_global_42);
  }

  v4 = dlsym(IAPAuthenticationLibrary_sLib, "MFiVerifyCertificateSerialNumber");
  softLinkMFiVerifyCertificateSerialNumber = v4;

  return (v4)(a1, a2);
}

void *__IAPAuthenticationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IAPAuthentication.framework/IAPAuthentication", 2);
  IAPAuthenticationLibrary_sLib = result;
  return result;
}

uint64_t initmfaa_certificateManager_validateCertificate(uint64_t a1, uint64_t a2)
{
  if (MFAAuthenticationLibrary_sOnce != -1)
  {
    dispatch_once(&MFAAuthenticationLibrary_sOnce, &__block_literal_global_11653);
  }

  v4 = dlsym(MFAAuthenticationLibrary_sLib, "mfaa_certificateManager_validateCertificate");
  softLinkmfaa_certificateManager_validateCertificate[0] = v4;

  return (v4)(a1, a2);
}

void *__MFAAuthenticationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MFAAuthentication.framework/MFAAuthentication", 2);
  MFAAuthenticationLibrary_sLib = result;
  return result;
}

uint64_t initmfaa_certificateManager_copyAnchorCertificates(uint64_t a1)
{
  if (MFAAuthenticationLibrary_sOnce != -1)
  {
    dispatch_once(&MFAAuthenticationLibrary_sOnce, &__block_literal_global_11653);
  }

  v2 = dlsym(MFAAuthenticationLibrary_sLib, "mfaa_certificateManager_copyAnchorCertificates");
  softLinkmfaa_certificateManager_copyAnchorCertificates[0] = v2;

  return (v2)(a1);
}

uint64_t MFiSAP_Create(void *a1, int a2)
{
  if (a2 != 1)
  {
    return 4294960581;
  }

  v3 = malloc_type_calloc(1uLL, 0xB8uLL, 0x1070040EAFE2D55uLL);
  if (!v3)
  {
    return 4294960568;
  }

  v4 = v3;
  result = 0;
  *v4 = 257;
  *a1 = v4;
  return result;
}

void MFiSAP_Delete(_CCCryptor **__s)
{
  if (*(__s + 168))
  {
    AES_CTR_Final(__s + 15);
    *(__s + 168) = 0;
  }

  v2 = __s[13];
  if (v2)
  {
    free(v2);
    __s[13] = 0;
  }

  __s[14] = 0;
  v3 = __s[22];
  if (v3)
  {
    CFRelease(v3);
    __s[22] = 0;
  }

  memset_s(__s, 0xB8uLL, 0, 0xB8uLL);

  free(__s);
}

uint64_t MFiSAP_CopyCertificate(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != 4)
  {
    return 4294960587;
  }

  if (!*(a1 + 104))
  {
    return 4294960569;
  }

  v4 = *(a1 + 112);
  if (!v4)
  {
    return 4294960553;
  }

  v7 = malloc_type_malloc(v4, 0x100004077774924uLL);
  if (!v7)
  {
    return 4294960568;
  }

  v8 = v7;
  memcpy(v7, *(a1 + 104), *(a1 + 112));
  result = 0;
  *a2 = v8;
  *a3 = *(a1 + 112);
  return result;
}

uint64_t MFiSAP_Exchange(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  if (v11 == 1)
  {
    if (a2)
    {
      v11 = 5;
    }

    else
    {
      v11 = 2;
    }

    *a1 = v11;
  }

  if (v11 == 3)
  {
    v46 = 0;
    if (a3 >= 36)
    {
      v15 = bswap32(*(a2 + 32));
      result = 4294960553;
      if (!v15)
      {
        goto LABEL_36;
      }

      if (a3 - 36 < v15)
      {
        goto LABEL_36;
      }

      v17 = (a2 + a3);
      __src = (a2 + 36);
      v44 = v15;
      v18 = (a2 + 36 + v15);
      if ((a3 - (v15 + 36)) < 4)
      {
        goto LABEL_36;
      }

      v20 = *v18;
      v19 = (v18 + 1);
      v21 = bswap32(v20);
      if (!v21 || v17 - v19 < v21)
      {
        goto LABEL_36;
      }

      memset(&c, 0, sizeof(c));
      v23 = &v19[v21];
      if (v17 - &v19[v21] >= 4)
      {
        v25 = *v23;
        v24 = (v23 + 1);
        v26 = bswap32(v25);
        if (v17 - v24 < v26)
        {
          goto LABEL_36;
        }

        v28 = _OPACKDecodeBytes(0, v24, v26, 0, &v46);
        if (!v28)
        {
          if (v46)
          {
            result = v46;
          }

          else
          {
            result = 4294960554;
          }

          goto LABEL_36;
        }

        v29 = v28;
        v30 = CFGetTypeID(v28);
        if (v30 != CFDictionaryGetTypeID())
        {
          v46 = -6756;
          CFRelease(v29);
          v6 = a6;
LABEL_32:
          result = v46;
          if (!v46)
          {
            v13 = 1;
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        v23 = &v24[v26];
        v31 = *(a1 + 22);
        v6 = a6;
        if (v31)
        {
          CFRelease(v31);
        }

        *(a1 + 22) = v29;
        v8 = a4;
        v7 = a5;
      }

      if (v23 == v17)
      {
        cccurve25519();
        v32 = vorrq_s8(*(a1 + 82), *(a1 + 66));
        if (!*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))
        {
          result = 4294960554;
          goto LABEL_36;
        }

        CC_SHA1_Init(&c);
        CC_SHA1_Update(&c, "AES-KEY", 7u);
        CC_SHA1_Update(&c, a1 + 66, 0x20u);
        CC_SHA1_Final(md, &c);
        CC_SHA1_Init(&c);
        CC_SHA1_Update(&c, "AES-IV", 6u);
        CC_SHA1_Update(&c, a1 + 66, 0x20u);
        CC_SHA1_Final(v48, &c);
        v33 = malloc_type_malloc(v21, 0x100004077774924uLL);
        if (!v33)
        {
          goto LABEL_46;
        }

        v34 = v33;
        memcpy(v33, v19, v21);
        *(a1 + 15) = 0;
        v35 = CCCryptorCreate(0, 0, 2u, md, 0x10uLL, 0, a1 + 15);
        if (v35)
        {
          v46 = v35;
        }

        else
        {
          *(a1 + 8) = *v48;
          *(a1 + 20) = 0;
          v46 = 0;
          v46 = AES_CTR_Update((a1 + 120), v19, v21, v34);
          if (!v46 || (AES_CTR_Final(a1 + 15), !v46))
          {
            a1[168] = 1;
            v37 = *(a2 + 16);
            v47[0] = *a2;
            v47[1] = v37;
            v38 = *(a1 + 50);
            v47[2] = *(a1 + 34);
            v47[3] = v38;
            v46 = MFiPlatform_VerifySignatureEx(v47, 64, v34, v21, __src, v44, *(a1 + 22), v36);
            if (!v46)
            {
              v39 = *(a1 + 13);
              if (v39)
              {
                free(v39);
                *(a1 + 13) = 0;
              }

              *(a1 + 14) = 0;
              v40 = malloc_type_malloc(v44, 0x100004077774924uLL);
              *(a1 + 13) = v40;
              if (v40)
              {
                memcpy(v40, __src, v44);
                *(a1 + 14) = v44;
              }

              *v8 = 0;
              *v7 = 0;
            }
          }
        }

        free(v34);
        goto LABEL_32;
      }
    }

    result = 4294960553;
    goto LABEL_36;
  }

  if (v11 == 2)
  {
    RandomBytes(a1 + 2, 0x20uLL);
    ccsha512_di();
    cchkdf();
    cccurve25519_make_pub();
    v12 = malloc_type_malloc(0x21uLL, 0x100004077774924uLL);
    if (v12)
    {
      v13 = 0;
      *v12 = a1[1];
      v14 = *(a1 + 34);
      *(v12 + 17) = *(a1 + 50);
      *(v12 + 1) = v14;
      *v8 = v12;
      *v7 = 33;
LABEL_34:
      result = 0;
      ++*a1;
      *v6 = v13;
      return result;
    }

LABEL_46:
    result = 4294960568;
    goto LABEL_36;
  }

  result = 4294960587;
LABEL_36:
  *a1 = 0;
  return result;
}

uint64_t MFiSAP_Encrypt(_BYTE *a1, char *a2, unint64_t a3, _BYTE *a4)
{
  if ((*a1 & 0xFD) == 4)
  {
    return AES_CTR_Update((a1 + 120), a2, a3, a4);
  }

  else
  {
    return 4294960587;
  }
}

uint64_t MFiSAP_Decrypt(_BYTE *a1, char *a2, unint64_t a3, _BYTE *a4)
{
  if ((*a1 & 0xFD) == 4)
  {
    return AES_CTR_Update((a1 + 120), a2, a3, a4);
  }

  else
  {
    return 4294960587;
  }
}

uint64_t MFiPlatform_CreateSignatureEx(char a1, unsigned __int8 *data, size_t len, void *a4, size_t *a5)
{
  cf[32] = *MEMORY[0x1E69E9840];
  if (IsAppleInternalBuild_sOnce != -1)
  {
    dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
  }

  if (!IsAppleInternalBuild_sIsInternal)
  {
    return 4294960561;
  }

  v32 = 0;
  if ((a1 & 1) == 0)
  {
    CC_SHA1(data, len, md);
    len = 20;
    data = md;
  }

  v31 = 0;
  v10 = _CopyKey(&v31, &v32);
  if (v10)
  {
    v11 = v10;
    v34 = 0;
    v12 = CCRSACryptorImport();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      size = 256;
      v13 = CCRSACryptorSign();
      MEMORY[0x193B04D00](v34);
      if (!v13)
      {
        if (size)
        {
          v18 = malloc_type_malloc(size, 0x100004077774924uLL);
          if (v18)
          {
            v19 = v18;
            memcpy(v18, cf, size);
            v13 = 0;
            *a4 = v19;
            *a5 = size;
          }

          else
          {
            v13 = -6728;
          }
        }

        else
        {
          v13 = -6762;
        }
      }
    }

    v32 = v13;
    free(v11);
    return v32;
  }

  else
  {
    cf[0] = 0;
    v34 = 0;
    v14 = HTTPClientCreate(cf);
    v15 = cf[0];
    if (v14 || (v14 = HTTPClientSetDestination(cf[0], "spc.corp.apple.com", 14000), v14))
    {
      v16 = v14;
      v17 = 0;
    }

    else
    {
      HTTPClientSetTimeout(v15, 30);
      v17 = dispatch_queue_create("MFiProxy", 0);
      if (v17)
      {
        HTTPClientSetDispatchQueue(v15, v17);
        v21 = HTTPMessageCreate(&v34);
        if (v21 || (v26 = v34, HTTPHeader_InitRequestF(v34 + 24, "HTTP/1.1", "POST", "%s", v22, v23, v24, v25, "/mfi-create-signature"), v21 = HTTPMessageSetBody(v26, "application/octet-stream", data, len), v21))
        {
          v16 = v21;
        }

        else
        {
          v27 = HTTPClientSendMessageSync(v15, v26);
          if (!v27 || (v16 = v27, (v27 - 200100) <= 0x1F3))
          {
            v28 = *(v26 + 1066);
            if (v28)
            {
              v29 = malloc_type_malloc(v28, 0xCD9FF26uLL);
              if (v29)
              {
                v30 = v29;
                memcpy(v29, *(v26 + 1065), *(v26 + 1066));
                v16 = 0;
                *a4 = v30;
                *a5 = *(v26 + 1066);
              }

              else
              {
                v16 = 4294960568;
              }
            }

            else
            {
              v16 = 4294960553;
            }
          }
        }
      }

      else
      {
        v16 = 4294960596;
      }
    }

    if (v15)
    {
      CFRetain(v15);
      dispatch_async_f(v15[2], v15, _HTTPClientInvalidate);
      CFRelease(v15);
      cf[0] = 0;
    }

    if (v34)
    {
      CFRelease(v34);
    }
  }

  return v16;
}

uint64_t _CopyKey(int64_t *a1, _DWORD *a2)
{
  v11 = 0;
  v9 = 0;
  v4 = getenv("MFI_KEY_PATH");
  if (!v4)
  {
    v4 = "mfi-key.txt";
  }

  v5 = CopyFileDataByPath(v4, &v11, &v9);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10 = 0;
    v6 = v11;
    v7 = HexToDataCopy(v11, v9, 22, &v10, &v9, 0);
    free(v6);
    if (!v7)
    {
      result = v10;
      *a1 = v9;
      if (!a2)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t MFiPlatform_CopyCertificate(void *a1, void *a2)
{
  if (IsAppleInternalBuild_sOnce != -1)
  {
    dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
  }

  if (!IsAppleInternalBuild_sIsInternal)
  {
    return 4294960561;
  }

  v25 = 0;
  v4 = _CopyKey(&v24, &v25);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      v6 = malloc_type_malloc(0x3B1uLL, 0x1000040AA8296CDuLL);
      if (!v6)
      {
        v8 = -6728;
LABEL_10:
        v25 = v8;
        free(v5);
        return v25;
      }

      v7 = v6;
      memcpy(v6, &kPublicCertificate, 0x3B1uLL);
      *a1 = v7;
    }

    v8 = 0;
    if (a2)
    {
      *a2 = 945;
    }

    goto LABEL_10;
  }

  v26 = 0;
  cf = 0;
  v10 = HTTPClientCreate(&cf);
  v11 = cf;
  if (v10 || (v10 = HTTPClientSetDestination(cf, "spc.corp.apple.com", 14000), v10))
  {
    v9 = v10;
    v12 = 0;
  }

  else
  {
    HTTPClientSetTimeout(v11, 30);
    v12 = dispatch_queue_create("MFiProxy", 0);
    if (v12)
    {
      HTTPClientSetDispatchQueue(v11, v12);
      v14 = HTTPMessageCreate(&v26);
      if (v14)
      {
        v9 = v14;
      }

      else
      {
        v19 = v26;
        HTTPHeader_InitRequestF(v26 + 24, "HTTP/1.1", "GET", "%s", v15, v16, v17, v18, "/mfi-certificate");
        v20 = HTTPClientSendMessageSync(v11, v19);
        if (!v20 || (v9 = v20, (v20 - 200100) <= 0x1F3))
        {
          v21 = *(v19 + 1066);
          if (v21)
          {
            v22 = malloc_type_malloc(v21, 0xCD2F60FAuLL);
            if (v22)
            {
              v23 = v22;
              memcpy(v22, *(v19 + 1065), *(v19 + 1066));
              v9 = 0;
              *a1 = v23;
              *a2 = *(v19 + 1066);
            }

            else
            {
              v9 = 4294960568;
            }
          }

          else
          {
            v9 = 4294960553;
          }
        }
      }
    }

    else
    {
      v9 = 4294960596;
    }
  }

  if (v11)
  {
    CFRetain(v11);
    dispatch_async_f(v11[2], v11, _HTTPClientInvalidate);
    CFRelease(v11);
    cf = 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v9;
}

BOOL CUEnterSandbox(uint64_t a1, const char *a2, const char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_set_user_dir_suffix())
  {
    bzero(buf, 0x400uLL);
    v5 = confstr(65537, buf, 0x400uLL);
    v6 = v5 != 0;
    if (!v5)
    {
      v7 = os_log_create(a2, a3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *__error();
        v12[0] = 67109120;
        v12[1] = v8;
        _os_log_error_impl(&dword_191EAF000, v7, OS_LOG_TYPE_ERROR, "### confstr temp dir failed: %{darwin.errno}d", v12, 8u);
      }
    }
  }

  else
  {
    v9 = os_log_create(a2, a3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      *buf = 67109120;
      v14 = v11;
      _os_log_error_impl(&dword_191EAF000, v9, OS_LOG_TYPE_ERROR, "### _set_user_dir_suffix failed: %{darwin.errno}d", buf, 8u);
    }

    return 0;
  }

  return v6;
}

uint64_t CUNextID32()
{
  if (CUNextID32_sOnce != -1)
  {
    dispatch_once(&CUNextID32_sOnce, &__block_literal_global_11714);
  }

  do
  {
    add = atomic_fetch_add(&CUNextID32_sNextID, 1u);
    result = add + 1;
  }

  while (add == -1);
  return result;
}

uint64_t __CUNextID32_block_invoke()
{
  result = arc4random();
  CUNextID32_sNextID = result & 0xFFFF0000;
  return result;
}

uint64_t CUNextIDDecimal32()
{
  if (CUNextIDDecimal32_sOnce != -1)
  {
    dispatch_once(&CUNextIDDecimal32_sOnce, &__block_literal_global_5);
  }

  do
  {
    add = atomic_fetch_add(&CUNextIDDecimal32_sNextID, 1u);
    result = add + 1;
  }

  while (add == -1);
  return result;
}

uint64_t __CUNextIDDecimal32_block_invoke()
{
  result = arc4random_uniform(0x53E2u);
  CUNextIDDecimal32_sNextID = 100000 * result;
  return result;
}

unint64_t CUNextID64()
{
  if (CUNextID64_sOnce != -1)
  {
    dispatch_once(&CUNextID64_sOnce, &__block_literal_global_8);
  }

  do
  {
    add = atomic_fetch_add(&CUNextID64_sNextID, 1uLL);
    result = add + 1;
  }

  while (add == -1);
  return result;
}

uint64_t __CUNextID64_block_invoke()
{
  result = arc4random();
  CUNextID64_sNextID = result << 32;
  return result;
}

unint64_t CUNextIDDecimal64()
{
  if (CUNextIDDecimal64_sOnce != -1)
  {
    dispatch_once(&CUNextIDDecimal64_sOnce, &__block_literal_global_11);
  }

  do
  {
    add = atomic_fetch_add(&CUNextIDDecimal64_sNextID, 1uLL);
    result = add + 1;
  }

  while (add == -1);
  return result;
}

uint64_t __CUNextIDDecimal64_block_invoke()
{
  result = arc4random_uniform(0xF4240u);
  CUNextIDDecimal64_sNextID = 1000000 * result;
  return result;
}

unsigned __int16 *Swap16Mem(unsigned __int16 *result, unint64_t a2, _WORD *a3)
{
  if (a2 >= 2)
  {
    v3 = (result + (a2 & 0xFFFFFFFFFFFFFFFELL));
    do
    {
      v4 = *result++;
      *a3++ = bswap32(v4) >> 16;
    }

    while (result != v3);
  }

  return result;
}

unint64_t VarIntEncode64(unint64_t result, _BYTE *a2, void *a3)
{
  if (result < 0x80)
  {
    LOBYTE(v4) = result;
    v3 = a2;
  }

  else
  {
    v3 = a2;
    do
    {
      *v3++ = result | 0x80;
      v4 = result >> 7;
      v5 = result >> 14;
      result >>= 7;
    }

    while (v5);
  }

  *v3 = v4;
  *a3 = v3 - a2 + 1;
  return result;
}

uint64_t VarIntDecode64(_BYTE *a1, uint64_t a2, void *a3, int *a4)
{
  v5 = 0;
  result = 0;
  v7 = a1 + 10;
  while (1)
  {
    v8 = a2-- < 1;
    if (v8)
    {
      result = 0;
      v12 = -6750;
      goto LABEL_10;
    }

    v9 = *a1;
    v10 = (*a1 & 0x7F) << v5;
    if (v10 >> v5 != (*a1 & 0x7F))
    {
      break;
    }

    ++a1;
    v11 = __CFADD__(v10, result);
    result += v10;
    if (v11)
    {
      result = 0;
      v12 = -6710;
      goto LABEL_10;
    }

    if ((v9 & 0x80000000) == 0)
    {
      v12 = 0;
LABEL_10:
      v7 = a1;
      if (!a3)
      {
        goto LABEL_12;
      }

LABEL_11:
      *a3 = v7;
      goto LABEL_12;
    }

    v8 = v5 > 0x38;
    v5 += 7;
    if (v8)
    {
      result = 0;
      goto LABEL_17;
    }
  }

  result = 0;
  v7 = a1 + 1;
LABEL_17:
  v12 = -6710;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v12;
  }

  return result;
}

uint64_t CopyFileDataByFile(FILE *__stream, void *a2, unint64_t *a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v6;
    if (v6 >= v5)
    {
      v9 = 160000;
      if (v5 >= 0x27100)
      {
        if (v5 >= 0x3D0900)
        {
          if (v5 > 0xFFFFFFFFFFC2F6FELL)
          {
            v12 = 4294960553;
            goto LABEL_16;
          }

          v9 = v5 + 4000000;
        }

        else
        {
          v9 = 2 * v5;
        }
      }

      v8 = malloc_type_realloc(v4, v9 + 1, 0x100004077774924uLL);
      v5 = v9;
      if (!v8)
      {
        v12 = 4294960568;
        goto LABEL_16;
      }
    }

    else
    {
      v8 = v4;
    }

    v10 = fread(&v8[v7], 1uLL, v5 - v7, __stream);
    v6 = v10 + v7;
    v4 = v8;
  }

  while (v10);
  v11 = malloc_type_realloc(v8, v7 + 1, 0x100004077774924uLL);
  if (v11)
  {
    v11[v7] = 0;
    *a2 = v11;
    v12 = 0;
    if (a3)
    {
      *a3 = v7;
    }

    return v12;
  }

  v12 = 4294960568;
  v4 = v8;
LABEL_16:
  if (v4)
  {
    free(v4);
  }

  return v12;
}

uint64_t CopyFileDataByPath(const char *a1, void *a2, unint64_t *a3)
{
  v5 = fopen(a1, "rb");
  v6 = v5;
  if (v5)
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  v7 = *__error();
  if (!v7)
  {
    v5 = 0;
LABEL_5:
    v7 = CopyFileDataByFile(v5, a2, a3);
    fclose(v6);
  }

  return v7;
}

uint64_t CUSystem(char *a1)
{
  __argv[4] = *MEMORY[0x1E69E9840];
  v6 = 0;
  __argv[0] = "/bin/sh";
  __argv[1] = "-c";
  __argv[2] = a1;
  __argv[3] = 0;
  v1 = _NSGetEnviron();
  result = posix_spawn(&v6, "/bin/sh", 0, 0, __argv, *v1);
  if (!result)
  {
    v5 = 0;
    while (1)
    {
      v3 = waitpid(v6, &v5, 0);
      if (v3 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        return *__error();
      }
    }

    if (v3)
    {
      v4 = BYTE1(v5);
      if ((v5 & 0x7F) != 0)
      {
        v4 = (v5 & 0x7F) + 312700;
      }

      if ((v5 & 0x7F) == 0x7F)
      {
        return ((v5 >> 8) + 312700);
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return 4294960560;
    }
  }

  return result;
}

uint64_t ReadANSIFile(FILE *__stream, char *__ptr, size_t __nitems, void *a4)
{
  v6 = __ptr;
  if (__nitems)
  {
    v7 = __nitems;
    v6 = __ptr;
    do
    {
      v9 = fread(v6, 1uLL, v7, __stream);
      if (!v9)
      {
        break;
      }

      v6 += v9;
      v7 -= v9;
    }

    while (v7);
  }

  if (a4)
  {
    *a4 = v6 - __ptr;
  }

  return 0;
}

uint64_t WriteANSIFile(FILE *__stream, char *__ptr, size_t __nitems)
{
  if (__nitems)
  {
    v3 = __nitems;
    do
    {
      v6 = fwrite(__ptr, 1uLL, v3, __stream);
      if (!v6)
      {
        break;
      }

      __ptr += v6;
      v3 -= v6;
    }

    while (v3);
  }

  return 0;
}

__CFDictionary *CFDictionaryCreateWithTXTRecordBytes(const char *a1, uint64_t a2, int *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = &a1[a2];
    while (1)
    {
      if (v7 - a1 < 1 || (v8 = (a1 + 1), v9 = *a1, v7 - (a1 + 1) < v9))
      {
        v14 = 0;
        goto LABEL_16;
      }

      a1 += v9 + 1;
      v10 = v8;
      if (v9)
      {
        while (*v10 != 61)
        {
          ++v10;
          if (!--v9)
          {
            v10 = a1;
            break;
          }
        }
      }

      v11 = CFStringCreateWithBytes(0, v8, v10 - v8, 0x8000100u, 0);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (v10 >= a1)
      {
        v13 = v10;
      }

      else
      {
        v13 = v10 + 1;
      }

      v14 = CFDictionarySetCString(Mutable, v11, v13, a1 - v13);
      CFRelease(v12);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    v14 = -6728;
LABEL_20:
    CFRelease(Mutable);
    Mutable = 0;
  }

  else
  {
    v14 = -6728;
  }

LABEL_16:
  if (a3)
  {
    *a3 = v14;
  }

  return Mutable;
}

uint64_t TXTRecordGetNextItem(_BYTE *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t *a7)
{
  if (a2 - a1 < 1)
  {
    return 0;
  }

  v7 = a1 + 1;
  v8 = *a1;
  if (a2 - (a1 + 1) < v8)
  {
    return 0;
  }

  v10 = &a1[v8 + 1];
  v11 = a1 + 1;
  if (*a1)
  {
    while (*v11 != 61)
    {
      ++v11;
      if (!--v8)
      {
        v11 = v10;
        break;
      }
    }
  }

  *a3 = v7;
  if (v11 >= v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  *a4 = v11 - v7;
  *a6 = v10 - v12;
  *a5 = v12;
  *a7 = v10;
  return 1;
}

uint64_t CreateTXTRecordWithCString(const char *a1, void *a2, size_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v45 = 0;
  __dst = 0;
  v42[0] = 0;
  v43 = 0;
  v44 = 0;
  v42[1] = 0;
  v42[2] = -1;
  v46 = 0;
  v6 = &a1[strlen(a1)];
  v7 = MEMORY[0x1E69E9830];
  v8 = a1;
LABEL_2:
  v9 = v6;
  if (!a1)
  {
    v9 = &v8[strlen(v8)];
  }

  if (v9 > v8)
  {
    do
    {
      v10 = *v8;
      if (v10 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
LABEL_11:
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v8;
          while (2)
          {
            while (2)
            {
              v8 = v14;
              v15 = v12;
              while (1)
              {
                if (v8 >= v9)
                {
                  goto LABEL_95;
                }

                v12 = v15;
                v14 = v8 + 1;
                v16 = *v8;
                if (!v15)
                {
                  break;
                }

                v15 = 0;
                ++v8;
                if (v16 != 39)
                {
                  goto LABEL_64;
                }
              }

              if (!v13)
              {
                if ((v16 & 0xFFFFFFDF) == 0)
                {
                  ++v8;
LABEL_95:
                  v33 = DataBuffer_Resize(v42, v44 + v11 + 1, &__dst);
                  if (!v33)
                  {
                    v34 = __dst;
                    __dst = __dst + 1;
                    *v34 = v11;
                    memcpy(__dst, __src, v11);
                    goto LABEL_2;
                  }

                  v39 = v33;
                  if (v46 && v43)
                  {
                    free(v43);
                  }

                  return v39;
                }

                if (v16 == 34)
                {
                  v12 = 0;
LABEL_29:
                  v13 = 1;
                  continue;
                }

                v13 = 0;
                v12 = 1;
                if (v16 == 39)
                {
                  continue;
                }

                if (v16 != 92)
                {
                  v12 = 0;
                  goto LABEL_64;
                }

                if (v14 < v9)
                {
                  v16 = *v14;
                  if (v16 == 10)
                  {
                    v12 = 0;
                    v13 = 0;
                    v14 = v8 + 2;
                    continue;
                  }

                  if ((v16 & 0xFFFFFFDF) == 0x58)
                  {
                    v14 = v8 + 2;
                    if (v9 - (v8 + 2) < 2 || (v17 = *v14, (*(v7 + 4 * v17 + 60) & 0x10000) == 0) || (v18 = *(v8 + 3), (*(v7 + 4 * v18 + 60) & 0x10000) == 0))
                    {
                      v12 = 0;
                      v13 = 0;
                      goto LABEL_64;
                    }

                    v25 = v17 - 48;
                    if ((v17 - 48) >= 0xA)
                    {
                      if ((v17 - 65) > 5)
                      {
                        if ((v17 - 97) >= 6)
                        {
                          v25 = 0;
                        }

                        else
                        {
                          v25 = v17 - 87;
                        }
                      }

                      else
                      {
                        v25 = v17 - 55;
                      }
                    }

                    v27 = v18 - 48;
                    if ((v18 - 48) >= 0xA)
                    {
                      if ((v18 - 65) > 5)
                      {
                        v28 = v18 - 97;
                        v29 = v18 - 87;
                        if (v28 >= 6)
                        {
                          v27 = 0;
                        }

                        else
                        {
                          v27 = v29;
                        }
                      }

                      else
                      {
                        v27 = v18 - 55;
                      }
                    }

                    v12 = 0;
                    v13 = 0;
                    LOBYTE(v16) = v27 | (16 * v25);
LABEL_82:
                    v14 = v8 + 4;
                  }

                  else
                  {
                    if ((v16 & 0xF8) == 0x30 && v9 - v14 >= 3 && v16 <= 0x33)
                    {
                      v19 = v8[2];
                      if ((v19 & 0xF8) == 0x30)
                      {
                        v20 = v8[3];
                        if ((v20 & 0xF8) == 0x30)
                        {
                          v12 = 0;
                          v13 = 0;
                          LOBYTE(v16) = v20 + ((v16 << 6) | (8 * (v19 & 7))) - 48;
                          goto LABEL_82;
                        }
                      }
                    }

                    v12 = 0;
                    v13 = 0;
                    v14 = v8 + 2;
                  }

LABEL_64:
                  if (v11 <= 255)
                  {
                    __src[v11++] = v16;
                  }

                  continue;
                }

                v12 = 0;
                v13 = 0;
LABEL_37:
                LOBYTE(v16) = 92;
                goto LABEL_64;
              }

              break;
            }

            if (v16 != 92)
            {
              v12 = 0;
              v13 = 0;
              if (v16 == 34)
              {
                continue;
              }

              goto LABEL_63;
            }

            break;
          }

          if (v14 < v9)
          {
            v16 = *v14;
            if (v16 == 10)
            {
              v12 = 0;
              v14 = v8 + 2;
              goto LABEL_29;
            }

            if (v16 == 92 || v16 == 34)
            {
              v12 = 0;
              v14 = v8 + 2;
LABEL_63:
              v13 = 1;
              goto LABEL_64;
            }

            if ((v16 & 0xFFFFFFDF) == 0x58)
            {
              v14 = v8 + 2;
              if (v9 - (v8 + 2) < 2 || (v21 = *v14, (*(v7 + 4 * v21 + 60) & 0x10000) == 0) || (v22 = *(v8 + 3), (*(v7 + 4 * v22 + 60) & 0x10000) == 0))
              {
                v12 = 0;
                goto LABEL_63;
              }

              v26 = v21 - 48;
              if ((v21 - 48) >= 0xA)
              {
                if ((v21 - 65) > 5)
                {
                  if ((v21 - 97) >= 6)
                  {
                    v26 = 0;
                  }

                  else
                  {
                    v26 = v21 - 87;
                  }
                }

                else
                {
                  v26 = v21 - 55;
                }
              }

              v30 = v22 - 48;
              if ((v22 - 48) >= 0xA)
              {
                if ((v22 - 65) > 5)
                {
                  v31 = v22 - 97;
                  v32 = v22 - 87;
                  if (v31 >= 6)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v32;
                  }
                }

                else
                {
                  v30 = v22 - 55;
                }
              }

              v12 = 0;
              LOBYTE(v16) = v30 | (16 * v26);
LABEL_93:
              v14 = v8 + 4;
              goto LABEL_63;
            }

            v12 = 0;
            v13 = 1;
            if (v16 > 0x33 || (v16 & 0xF8) != 0x30 || v9 - v14 < 3)
            {
              goto LABEL_37;
            }

            v23 = v8[2];
            if ((v23 & 0xF8) == 0x30)
            {
              v24 = v8[3];
              if ((v24 & 0xF8) == 0x30)
              {
                v12 = 0;
                LOBYTE(v16) = v24 + ((v16 << 6) | (8 * (v23 & 7))) - 48;
                goto LABEL_93;
              }
            }
          }

          v12 = 0;
          LOBYTE(v16) = 92;
          goto LABEL_63;
        }
      }

      else if ((*(v7 + 4 * v10 + 60) & 0x4000) == 0)
      {
        goto LABEL_11;
      }

      ++v8;
    }

    while (v8 != v9);
  }

  v35 = v44;
  if (v46)
  {
    v36 = v43;
  }

  else
  {
    if (v44 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v44;
    }

    v38 = malloc_type_malloc(v37, 0x100004077774924uLL);
    if (!v38)
    {
      return 4294960568;
    }

    v36 = v38;
    if (v35)
    {
      memcpy(v38, v43, v35);
    }
  }

  v39 = 0;
  v43 = v42[0];
  *a2 = v36;
  *a3 = v35;
  return v39;
}

void *TXTRecordCreateWithDictionary(const __CFDictionary *a1, size_t *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  txtRecord = 0uLL;
  v14 = 0;
  TXTRecordCreate(&txtRecord, 0x100u, &v12);
  LODWORD(v14) = 0;
  CFDictionaryApplyFunction(a1, _TXTRecordCreateWithDictionaryApplier, &txtRecord);
  LODWORD(v6) = TXTRecordGetLength(&txtRecord);
  v7 = v6;
  if (v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = 1;
  }

  v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (v8)
  {
    if (v7)
    {
      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      memcpy(v8, BytesPtr, v7);
    }
  }

  else
  {
    LODWORD(v14) = -6728;
  }

  TXTRecordDeallocate(&txtRecord);
  if (a2)
  {
    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    *a2 = v10;
  }

  if (a3)
  {
    *a3 = v14;
  }

  return v8;
}

void _TXTRecordCreateWithDictionaryApplier(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v18 = 0;
  v16 = 0;
  if (*(a3 + 16))
  {
    return;
  }

  v19 = 0;
  v17 = 0;
  v15 = 0;
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_20;
  }

  v7 = CFStringGetOrCopyCStringUTF8(a1, &v19, &v18, 0);
  v8 = v19;
  if (!v19)
  {
    goto LABEL_12;
  }

  v9 = CFGetTypeID(a2);
  if (v9 != CFStringGetTypeID())
  {
    if (*MEMORY[0x1E695E4D0] == a2 || v9 == CFNullGetTypeID())
    {
      v12 = a3;
      v13 = v8;
      v11 = 0;
      v10 = 0;
LABEL_11:
      v7 = TXTRecordSetValue(v12, v13, v11, v10);
      goto LABEL_12;
    }

LABEL_20:
    v14 = -6756;
    goto LABEL_13;
  }

  v7 = CFStringGetOrCopyCStringUTF8(a2, &v17, &v16, &v15);
  v10 = v17;
  if (v17)
  {
    if (v15 > 0xFF)
    {
      v14 = -6743;
      goto LABEL_13;
    }

    v11 = v15;
    v12 = a3;
    v13 = v8;
    goto LABEL_11;
  }

LABEL_12:
  v14 = v7;
LABEL_13:
  if (v18)
  {
    free(v18);
  }

  if (v16)
  {
    free(v16);
  }

  if (v14)
  {
    *(a3 + 16) = v14;
  }
}

uint64_t fcopyline(FILE *a1, unint64_t *a2, void *a3)
{
  if (feof(a1))
  {
    return 4294960544;
  }

  v6 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v8 = 0;
  for (i = 128; ; i *= 2)
  {
    memset(&v8[v7], 10, i - v8);
    if (!fgets(&v8[v7], i - v8, a1))
    {
      if (!feof(a1))
      {
        if (*__error())
        {
          v12 = *__error();
        }

        else
        {
          v12 = 4294960596;
        }

        goto LABEL_20;
      }

      if (!v8)
      {
        v12 = 4294960544;
LABEL_20:
        free(v7);
        return v12;
      }

      goto LABEL_15;
    }

    v10 = memchr(&v8[v7], 10, i - v8);
    if (v10)
    {
      break;
    }

    if (i < 0)
    {
      v12 = 4294960553;
      goto LABEL_20;
    }

    v11 = malloc_type_realloc(v7, 2 * i, 0x100004077774924uLL);
    if (!v11)
    {
      v12 = 4294960568;
      goto LABEL_20;
    }

    v8 = (i - 1);
    v7 = v11;
  }

  if ((v10 + 1) >= v7 + i || v10[1])
  {
    v8 = &v10[~v7];
LABEL_15:
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_16:
    *a2 = v7;
    v7 = 0;
    goto LABEL_17;
  }

  v8 = &v10[-v7];
  *v10 = 0;
  if (a2)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (a3)
  {
    *a3 = v8;
  }

  v12 = 0;
  if (v7)
  {
    goto LABEL_20;
  }

  return v12;
}

uint64_t FDWriteAll(int __fd, char *__buf, size_t __nbyte)
{
  if (!__nbyte)
  {
    return 0;
  }

  v3 = __nbyte;
  while (1)
  {
    v6 = write(__fd, __buf, v3);
    if (v6 <= 0)
    {
      break;
    }

LABEL_6:
    __buf += v6;
    v3 -= v6;
    if (!v3)
    {
      return 0;
    }
  }

  if (*__error())
  {
    result = *__error();
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return 4294960596;
}

dispatch_queue_t __CUMainQueue_block_invoke()
{
  result = dispatch_queue_create_with_target_V2("CUMainQueue", 0, MEMORY[0x1E69E96A0]);
  CUMainQueue_sQueue = result;
  if (!result)
  {
    FatalErrorF("Create wrapper main queue failed", v1, v2, v3, v4, v5, v6, v7, vars0);
  }

  return result;
}

uint64_t mkparent(const char *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = &a1[strlen(a1)];
  do
  {
    if (v4 <= a1)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = *--v4;
  }

  while (v5 != 47);
  v6 = v4 - a1;
  if ((v4 - a1) > 0x3FF)
  {
    return 4294960553;
  }

  if (v6)
  {
    memcpy(__dst, a1, v4 - a1);
  }

LABEL_8:
  result = 0;
  __dst[v6] = 0;
  if (__dst[0])
  {
    return mkpath(__dst, a2, a2);
  }

  return result;
}

uint64_t mkpath(const char *a1, unsigned int a2, __int16 a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v15, 0, sizeof(v15));
  v5 = strlen(a1);
  if (v5 >= 0x3FF)
  {
    v6 = 1023;
  }

  else
  {
    v6 = v5;
  }

  v7 = v16;
  __memcpy_chk();
  v16[v6] = 0;
  while (1)
  {
    v8 = &v7[strspn(v7, "/")];
    v7 = &v8[strcspn(v8, "/")];
    v9 = *v7;
    *v7 = 0;
    v10 = v9 ? a3 : a2;
    if ((mkdir(v16, v10) & 0x80000000) == 0 || *__error() == 17)
    {
      break;
    }

    v11 = *__error();
    if (stat(v16, &v15) < 0)
    {
      if (v11)
      {
        return v11;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    v12 = v15.st_mode & 0xF000;
    if (!v9 || v12 != 0x4000)
    {
      if (v12 == 0x4000)
      {
        return 0;
      }

      else
      {
        return 20;
      }
    }

LABEL_13:
    *v7 = 47;
  }

  if (a2 < 0x200 || v9)
  {
    if (!v9)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (chmod(v16, a2) != -1)
  {
    return 0;
  }

  v14 = *__error();
  if (v14)
  {
    return v14;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const char *NormalizePath(char *__s, int64_t a2, char *a3, size_t a4, char a5)
{
  v8 = __s;
  v33 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v9 = 0;
  v10 = &v8[a2];
  memset(&v30, 0, sizeof(v30));
  v29 = 0;
  if ((a5 & 1) != 0 || a2 < 1)
  {
    v13 = 0;
    goto LABEL_36;
  }

  if (*v8 != 126)
  {
    goto LABEL_15;
  }

  v11 = 0;
  while (v8[v11] != 47)
  {
    if (a2 == ++v11)
    {
      v11 = a2;
      v12 = &v8[a2];
      goto LABEL_12;
    }
  }

  v12 = &v8[v11];
LABEL_12:
  v14 = v11 - 1;
  if (!v14)
  {
    v15 = getenv("HOME");
    if (v15)
    {
      pw_dir = v15;
      v17 = strlen(v15);
      v13 = 0;
      goto LABEL_27;
    }

LABEL_15:
    v9 = 0;
    v13 = 0;
    goto LABEL_36;
  }

  if (v14 >= 0x3FF)
  {
    v18 = 1023;
  }

  else
  {
    v18 = v14;
  }

  __memcpy_chk();
  v31[v18] = 0;
  v19 = sysconf(71);
  if (v19 >= 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 4096;
  }

  v13 = malloc_type_calloc(1uLL, v20, 0x100004077774924uLL);
  if (!v13)
  {
    goto LABEL_33;
  }

  v21 = getpwnam_r(v31, &v30, v13, v20, &v29);
  v9 = 0;
  if (v21 || !v29)
  {
    goto LABEL_36;
  }

  pw_dir = v29->pw_dir;
  if (!pw_dir)
  {
LABEL_33:
    v9 = 0;
    goto LABEL_36;
  }

  v17 = strlen(v29->pw_dir);
LABEL_27:
  if (pw_dir >= &pw_dir[v17])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v22 = pw_dir + 1;
    do
    {
      v23 = v9;
      v32[v9++] = *(v22 - 1);
      if (v23 > 0x3FD)
      {
        break;
      }

      v24 = v22++ >= &pw_dir[v17];
    }

    while (!v24);
  }

  v8 = v12;
LABEL_36:
  v25 = &v32[v9];
  if (v9 <= 0x3FE && v8 < v10)
  {
    v26 = v8 + 1;
    do
    {
      *v25++ = *(v26 - 1);
      if (v9 > 0x3FD)
      {
        break;
      }

      ++v9;
      v24 = v26++ >= v10;
    }

    while (!v24);
  }

  *v25 = 0;
  if ((a5 & 2) != 0)
  {
    v27 = v32;
  }

  else
  {
    v27 = v32;
    if (a4 < 0x400)
    {
      if (realpath_DARWIN_EXTSN(v32, v31))
      {
        v27 = v31;
      }
    }

    else if (realpath_DARWIN_EXTSN(v32, a3))
    {
      if (!v13)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  strlcpy(a3, v27, a4);
  if (v13)
  {
LABEL_46:
    free(v13);
  }

LABEL_47:
  if (a4)
  {
    return a3;
  }

  else
  {
    return "";
  }
}

uint64_t RemovePath(const std::__fs::filesystem::path *a1)
{
  result = nftw(a1, _RemovePathCallBack, 64, 15);
  if (result)
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result == 20)
    {
      result = remove(a1, v3);
      if (result)
      {
        if (*__error())
        {
          return *__error();
        }

        return 4294960596;
      }
    }
  }

  return result;
}

uint64_t _RemovePathCallBack(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  result = remove(a1, a2);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t RollLogFiles(FILE **a1, char *a2, const std::__fs::filesystem::path *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = *a1;
    if (*a1)
    {
      if (a2)
      {
        fputs(a2, *a1);
        v7 = *a1;
      }

      fclose(v7);
      *a1 = 0;
    }
  }

  snprintf(__str, 0x401uLL, "%s.%d", a3, a4 - 1);
  remove(__str, v8);
  v9 = a4 - 2;
  if (a4 > 2)
  {
    do
    {
      snprintf(__str, 0x401uLL, "%s.%d", a3, v9);
      snprintf(&__to, 0x401uLL, "%s.%d", a3, v9 + 1);
      rename(__str, &__to, v10);
      v11 = v9-- != 0;
    }

    while (v9 != 0 && v11);
  }

  if (a4 >= 2)
  {
    snprintf(&__to, 0x401uLL, "%s.%d", a3, 1);
    rename(a3, &__to, v12);
  }

  if (!a1)
  {
    return 0;
  }

  v13 = fopen(a3, "w");
  *a1 = v13;
  if (v13)
  {
    return 0;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  result = *__error();
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t RunProcessAndCaptureOutputEx(char *a1, void **a2, void *a3)
{
  v8 = 0u;
  v9[0] = -1;
  v9[1] = 0;
  v10 = 0uLL;
  v11 = 0;
  appended = DataBuffer_RunProcessAndAppendOutput(&v8, a1);
  if (appended || (v12 = 0, appended = DataBuffer_Resize(&v8, v10 + 1, &v12), appended))
  {
    v6 = appended;
  }

  else
  {
    *v12 = 0;
    *a2 = v9[1];
    if (a3)
    {
      *a3 = v10;
    }

    v6 = 0;
    v9[1] = 0;
  }

  if (v11 && v9[1])
  {
    free(v9[1]);
  }

  return v6;
}

uint64_t SwitchToMobileUser()
{
  v0 = getpwnam("mobile");
  if (!v0)
  {
    v11 = *MEMORY[0x1E69E9848];
    v18 = *__error();
    return FPrintF(v11, "error: lookup mobile user failed: %#m\n", v12, v13, v14, v15, v16, v17, v18);
  }

  v1 = v0;
  v2 = getuid();
  result = v1->pw_uid;
  if (v2 != result)
  {
    result = setuid(result);
    if (result)
    {
      if (*__error())
      {
        result = __error();
        v10 = *result;
        if (!v10)
        {
          return result;
        }
      }

      else
      {
        v10 = 4294960596;
      }

      return FPrintF(*MEMORY[0x1E69E9848], "error: setuid failed: %#m\n", v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return result;
}

void *sysctl_copy(int *a1, size_t *a2, int *a3)
{
  v6 = 10;
  while (1)
  {
    v11 = 0;
    if (sysctl(a1, 6u, 0, &v11, 0, 0))
    {
      if (!*__error())
      {
        goto LABEL_14;
      }

      v7 = *__error();
      if (v7)
      {
        v9 = 0;
        goto LABEL_17;
      }
    }

    if (v11 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v11;
    }

    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    if (!v9)
    {
      v7 = -6728;
      goto LABEL_17;
    }

    if (!v11 || !sysctl(a1, 6u, v9, &v11, 0, 0) || *__error() && !*__error())
    {
      break;
    }

    free(v9);
    if (!--v6)
    {
LABEL_14:
      v9 = 0;
      v7 = -6700;
      goto LABEL_17;
    }
  }

  v7 = 0;
  if (a2)
  {
    *a2 = v11;
  }

LABEL_17:
  if (a3)
  {
    *a3 = v7;
  }

  return v9;
}

uint64_t systemf(const char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  *__argv = xmmword_1E73A4978;
  v19 = unk_1E73A4988;
  *v16 = 0;
  v17[1] = &a9;
  VASPrintF(v17, a2, &a9, a4, a5, a6, a7, a8);
  v10 = v17[0];
  if (!v17[0])
  {
    return 4294960596;
  }

  if (a1)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s%s\n", a1, v17[0]);
  }

  *&v19 = v10;
  v11 = _NSGetEnviron();
  v12 = posix_spawn(&v16[1], "/bin/sh", 0, 0, __argv, *v11);
  free(v10);
  if (!v12)
  {
    do
    {
      v13 = waitpid(v16[1], v16, 0);
      if (v13 != -1)
      {
        if (!v13)
        {
          return 4294960560;
        }

        v14 = BYTE1(v16[0]);
        if ((v16[0] & 0x7F) != 0)
        {
          v14 = (v16[0] & 0x7F) + 312700;
        }

        if ((v16[0] & 0x7F) == 0x7F)
        {
          return ((v16[0] >> 8) + 312700);
        }

        else
        {
          return v14;
        }
      }
    }

    while (*__error() == 4);
    if (!*__error())
    {
      return 4294960596;
    }

    return *__error();
  }

  return v12;
}

__CFDictionary *CopyEDIDbyUUID(const void *a1, kern_return_t *a2)
{
  CFProperty = IOServiceMatching("IOAVService");
  if (CFProperty)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      existing = 0;
      CFDictionarySetValue(Mutable, @"EDID UUID", a1);
      CFDictionarySetValue(CFProperty, @"IOPropertyMatch", v6);
      CFRelease(v6);
      MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], CFProperty, &existing);
      if (MatchingServices)
      {
        CFProperty = 0;
      }

      else
      {
        while (1)
        {
          v8 = IOIteratorNext(existing);
          if (!v8)
          {
            break;
          }

          v9 = v8;
          CFProperty = IORegistryEntryCreateCFProperty(v8, @"EDID", 0, 0);
          IOObjectRelease(v9);
          if (!CFProperty)
          {
            goto LABEL_10;
          }

          v10 = CFGetTypeID(CFProperty);
          if (v10 == CFDataGetTypeID())
          {
            goto LABEL_10;
          }

          CFRelease(CFProperty);
        }

        CFProperty = 0;
LABEL_10:
        IOObjectRelease(existing);
        if (CFProperty)
        {
          MatchingServices = 0;
        }

        else
        {
          MatchingServices = -6727;
        }
      }
    }

    else
    {
      CFRelease(CFProperty);
      CFProperty = 0;
      MatchingServices = -6728;
    }
  }

  else
  {
    MatchingServices = -6700;
  }

  if (a2)
  {
    *a2 = MatchingServices;
  }

  return CFProperty;
}

double MirroredRingBufferFree(uint64_t a1)
{
  if (*a1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, (2 * *(a1 + 16)));
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t MorseCode(uint64_t result, int a2, unsigned int a3, uint64_t (*a4)(uint64_t, unint64_t), unint64_t a5)
{
  v7 = a3;
  v8 = result;
  v22[0] = a3;
  v22[1] = a4;
  v23 = a5;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 10;
  }

  v10 = 0x5B8D80u / -v9;
  v11 = v9 < 1;
  v12 = 0x124F80u / v9;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  DWORD2(v23) = v13;
  if ((a3 & 1) == 0)
  {
    a4(0, a5);
    result = usleep(7 * v13);
  }

  v14 = *v8;
  if (*v8)
  {
    v15 = v8 + 1;
    v16 = MEMORY[0x1E69E9830];
    do
    {
      v17 = v14;
      v18 = v14;
      v19 = v16 + 4 * v14;
      if ((v14 & 0x80) != 0)
      {
        if (__maskrune(v14, 0x100uLL))
        {
LABEL_13:
          v20 = &kMorseCodeAlpha + 8 * __toupper(v17) - 520;
LABEL_17:
          result = _MorseCodeDoChar(v22, v20);
          goto LABEL_18;
        }
      }

      else if ((*(v19 + 60) & 0x100) != 0)
      {
        goto LABEL_13;
      }

      if (v18 - 48 <= 9)
      {
        v20 = &kMorseCodeDigit + 8 * v18 - 384;
        goto LABEL_17;
      }

      switch(v17)
      {
        case '!':
          v20 = &unk_191FFACCE;
          goto LABEL_17;
        case '""':
          v20 = &kMorseCodePunct;
          goto LABEL_17;
        case '#':
        case '%':
        case '*':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case '<':
        case '>':
          goto LABEL_32;
        case '$':
          v20 = &unk_191FFACFE;
          goto LABEL_17;
        case '&':
          v20 = &unk_191FFACD6;
          goto LABEL_17;
        case '\'':
          v20 = &unk_191FFAC7E;
          goto LABEL_17;
        case '(':
          v20 = &unk_191FFAC86;
          goto LABEL_17;
        case ')':
          v20 = &unk_191FFAC8E;
          goto LABEL_17;
        case '+':
          v20 = &unk_191FFACEE;
          goto LABEL_17;
        case ',':
          v20 = &unk_191FFAC96;
          goto LABEL_17;
        case '-':
          v20 = &unk_191FFAC9E;
          goto LABEL_17;
        case '.':
          v20 = &unk_191FFACA6;
          goto LABEL_17;
        case '/':
          v20 = &unk_191FFACAE;
          goto LABEL_17;
        case ':':
          v20 = &unk_191FFACB6;
          goto LABEL_17;
        case ';':
          v20 = &unk_191FFACDE;
          goto LABEL_17;
        case '=':
          v20 = &unk_191FFACE6;
          goto LABEL_17;
        case '?':
          v20 = &unk_191FFACBE;
          goto LABEL_17;
        case '@':
          v20 = &unk_191FFACC6;
          goto LABEL_17;
        default:
          if (v17 == 95)
          {
            v20 = &unk_191FFACF6;
            goto LABEL_17;
          }

LABEL_32:
          if (v17 < 0)
          {
            result = __maskrune(v18, 0x4000uLL);
            if (!result)
            {
              break;
            }
          }

          else
          {
            result = *(v16 + 4 * v18 + 60) & 0x4000;
            if (!result)
            {
              break;
            }
          }

          if (v7)
          {
            result = a4(6, a5);
          }

          else
          {
            result = usleep(7 * v13);
          }

          break;
      }

LABEL_18:
      if (!*v15)
      {
        return result;
      }

      if ((v18 & 0x80) != 0)
      {
        result = __maskrune(v18, 0x4000uLL);
        if (!result)
        {
LABEL_23:
          if (v7)
          {
            result = a4(5, a5);
          }

          else
          {
            result = usleep(3 * v13);
          }
        }
      }

      else
      {
        result = *(v19 + 60) & 0x4000;
        if (!result)
        {
          goto LABEL_23;
        }
      }

      v21 = *v15++;
      v14 = v21;
    }

    while (v21);
  }

  return result;
}

uint64_t _MorseCodeDoChar(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    v4 = a2 + 1;
    while (1)
    {
      if (*v3)
      {
        result = (*(v3 + 8))(v2, *(v3 + 16));
        goto LABEL_20;
      }

      if (v2 > 3u)
      {
        switch(v2)
        {
          case 4u:
            v6 = *(v3 + 24);
            break;
          case 5u:
            v6 = 3 * *(v3 + 24);
            break;
          case 6u:
            v6 = 7 * *(v3 + 24);
            break;
          default:
            goto LABEL_20;
        }

        result = usleep(v6);
      }

      else if (v2 == 1)
      {
        result = (*(v3 + 8))(1, *(v3 + 16));
      }

      else
      {
        if (v2 == 2)
        {
          (*(v3 + 8))(1, *(v3 + 16));
          v5 = *(v3 + 24);
        }

        else
        {
          if (v2 != 3)
          {
            goto LABEL_20;
          }

          (*(v3 + 8))(1, *(v3 + 16));
          v5 = 3 * *(v3 + 24);
        }

        usleep(v5);
        result = (*(v3 + 8))(0, *(v3 + 16));
      }

LABEL_20:
      if (*v4)
      {
        result = (*v3 & 1) != 0 ? (*(v3 + 8))(4, *(v3 + 16)) : usleep(*(v3 + 24));
        v7 = *v4++;
        v2 = v7;
        if (v7)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t PIDInit(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(result + 8) = 0;
  *(result + 16) = a6;
  *(result + 24) = a7;
  *(result + 32) = a3;
  *(result + 40) = 0;
  *(result + 48) = 1.0 - a5;
  *(result + 56) = (1.0 - a5) * a4;
  *result = a2;
  return result;
}

double PIDUpdate(double *a1, double a2)
{
  v2 = *a1 * a2;
  v3 = a1[3];
  v4 = a1[1] + a1[4] * a2;
  a1[1] = v4;
  v5 = v2 + v4;
  if (v5 > v3 || (v3 = a1[2], v5 < v3))
  {
    a1[1] = v3 - v2;
    v5 = v3;
  }

  v6 = a1[5];
  v7 = a2 - v6;
  a1[5] = v6 + a1[6] * v7;
  return v5 + v7 * a1[7];
}

uint64_t cced25519_make_key_pair_compat(uint64_t a1, uint64_t a2)
{
  v4 = ccsha512_di();
  v5 = ccrng();

  return MEMORY[0x1EEE6F548](v4, v5, a1, a2);
}

uint64_t cced25519_sign_compat()
{
  ccsha512_di();

  return cced25519_sign();
}

uint64_t cced25519_verify_compat()
{
  ccsha512_di();

  return cced25519_verify();
}

uint64_t Curve25519MakeKeyPair(uint64_t a1, void *a2)
{
  CryptoRandomKey(a2, 0x20uLL);

  return cccurve25519_make_pub();
}

uint64_t TDSBloomFilterAddHash(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 8 * a2;
  do
  {
    *(result + ((a3 % v4) >> 3)) |= 1 << (~a3 & 7);
    a3 /= v4;
  }

  while (v3++ < 3);
  return result;
}

unint64_t TDSBloomFilterAddString(uint64_t a1, uint64_t a2, char *__s, size_t a4)
{
  if (a4 == -1)
  {
    a4 = strlen(__s);
  }

  result = SipHash(qword_191FFAD51, __s, a4);
  v8 = 0;
  v9 = 8 * a2;
  do
  {
    *(a1 + ((result % v9) >> 3)) |= 1 << (~result & 7);
    result /= v9;
  }

  while (v8++ < 3);
  return result;
}

BOOL TDSBloomFilterContainsHash(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 8 * a2;
  do
  {
    v5 = (1 << (~a3 & 7)) & *(a1 + ((a3 % v4) >> 3));
    if (v5)
    {
      v6 = v3 >= 3;
    }

    else
    {
      v6 = 1;
    }

    ++v3;
    a3 /= v4;
  }

  while (!v6);
  return v5 != 0;
}

BOOL TDSBloomFilterContainsString(uint64_t a1, uint64_t a2, char *__s, size_t a4)
{
  if (a4 == -1)
  {
    a4 = strlen(__s);
  }

  v7 = SipHash(qword_191FFAD51, __s, a4);
  v8 = 0;
  v9 = 8 * a2;
  do
  {
    v10 = (1 << (~v7 & 7)) & *(a1 + ((v7 % v9) >> 3));
    if (v10)
    {
      v11 = v8 >= 3;
    }

    else
    {
      v11 = 1;
    }

    ++v8;
    v7 /= v9;
  }

  while (!v11);
  return v10 != 0;
}

uint64_t _NetPerfGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gNetPerfTypeID = result;
  return result;
}

void _NetPerfFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
    a1[2] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }
}

uint64_t NetPerfCreate(void *a1)
{
  if (gNetPerfInitOnce != -1)
  {
    dispatch_once_f(&gNetPerfInitOnce, 0, _NetPerfGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 84) = -1;
  *(Instance + 152) = -1;
  *(Instance + 160) = -1;
  v4 = dispatch_queue_create("NetPerfControl", 0);
  v3[2] = v4;
  if (!v4)
  {
    CFRelease(v3);
    return 4294960568;
  }

  v5 = MEMORY[0x1E69E96A0];
  dispatch_retain(MEMORY[0x1E69E96A0]);
  v6 = v3[5];
  if (v6)
  {
    dispatch_release(v6);
  }

  result = 0;
  v3[5] = v5;
  *a1 = v3;
  return result;
}

void NetPerfSetEventHandler(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  a1[3] = a2;
  a1[4] = a3;
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v5);
  v6 = a1[5];
  if (v6)
  {
    dispatch_release(v6);
  }

  a1[5] = v5;
}

uint64_t _NetPerfControl(unint64_t a1, int a2, CFStringRef theString1, uint64_t a4, const __CFDictionary *a5, __CFDictionary **a6)
{
  if (CFStringCompare(theString1, @"startClientSession", 0) == kCFCompareEqualTo)
  {
    if (*(a1 + 80))
    {
      return 4294960575;
    }

    if (a5)
    {
      *(a1 + 232) = xmmword_191FF95B0;
      *(a1 + 248) = 0xBFF0000000000000;
      *(a1 + 216) = 0;
      *(a1 + 192) = 0;
      if (SecondsToUpTicks_sOnce != -1)
      {
        dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
      }

      *(a1 + 224) = SecondsToUpTicks_sMultiplier;
      *(a1 + 176) = 1500;
      v11 = malloc_type_calloc(1uLL, 0x5DCuLL, 0x100004077774924uLL);
      *(a1 + 168) = v11;
      if (v11)
      {
        v23 = HTTPClientCreate((a1 + 56));
        if (!v23)
        {
          HTTPClientSetDispatchQueue(*(a1 + 56), *(a1 + 16));
          *(*(a1 + 56) + 84) |= 0x81u;
          v12 = CFDictionaryCopyCString(a5, @"destination", &v23);
          if (!v23)
          {
            v13 = v12;
            v23 = HTTPClientSetDestination(*(a1 + 56), v12, 5000);
            free(v13);
            if (!v23)
            {
              v23 = HTTPMessageCreate((a1 + 64));
              if (!v23)
              {
                v21 = *(a1 + 64);
                *(v21 + 9672) = a1;
                *(v21 + 9712) = _NetPerfClientHandleControlCompletion;
                CFRetain(a1);
                *(a1 + 80) = 1;
                _NetPerfClientRunStateMachine(a1);
                return 0;
              }
            }
          }
        }

        goto LABEL_16;
      }

      v22 = -6728;
    }

    else
    {
      v22 = -6705;
    }

    v23 = v22;
LABEL_16:
    _NetPerfClientStop(a1);
    v10 = v23;
    if (v23)
    {
      return v10;
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"stopClientSession", 0) == kCFCompareEqualTo)
  {
    _NetPerfClientStop(a1);
    return 0;
  }

  if (CFStringCompare(theString1, @"setUpServerSession", 0) == kCFCompareEqualTo)
  {
    v24 = 0;
    if (*(a1 + 128))
    {
      v10 = 4294960577;
      goto LABEL_29;
    }

    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 176) = 1500;
    v14 = malloc_type_calloc(1uLL, 0x5DCuLL, 0x100004077774924uLL);
    *(a1 + 168) = v14;
    if (v14)
    {
      v15 = ServerSocketPairOpen(2, 17, 0, &v24, -1, (a1 + 156), (a1 + 160));
      if (v15)
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 156);
      if ((v16 & 0x80000000) == 0)
      {
        SocketSetP2P(v16, 1);
        SocketSetPacketTimestamps(*(a1 + 156), 1);
      }

      v17 = *(a1 + 160);
      if ((v17 & 0x80000000) == 0)
      {
        SocketSetP2P(v17, 1);
        SocketSetPacketTimestamps(*(a1 + 160), 1);
      }

      v15 = OpenSelfConnectedLoopbackSocket((a1 + 152));
      if (v15 || (v15 = pthread_create((a1 + 136), 0, _NetPerfServerDataThread, a1), v15))
      {
LABEL_28:
        v10 = v15;
LABEL_29:
        _NetPerfServerSessionTearDown(a1);
        return v10;
      }

      *(a1 + 144) = a1 + 136;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v20 = Mutable;
        CFDictionarySetInt64(Mutable, @"port", v24);
        *(a1 + 128) = 1;
        CFRetain(a1);
        *a6 = v20;
        return 0;
      }
    }

    v10 = 4294960568;
    goto LABEL_29;
  }

  if (CFStringCompare(theString1, @"tearDownServerSession", 0) == kCFCompareEqualTo)
  {
    _NetPerfServerSessionTearDown(a1);
    return 0;
  }

  if (CFStringCompare(theString1, @"startServerSession", 0) == kCFCompareEqualTo)
  {
    if (!*(a1 + 128))
    {
      return 4294960551;
    }

    if (!*(a1 + 129))
    {
      *(a1 + 129) = 1;
      return 0;
    }

    return 4294960575;
  }

  return 4294960582;
}

unint64_t _NetPerfClientRunStateMachine(unint64_t result)
{
  v1 = result;
  v2 = (result + 112);
  v3 = (result + 96);
  for (i = *(result + 80); i == 3; i = 4)
  {
    result = OpenSelfConnectedLoopbackSocket((v1 + 84));
    if (result)
    {
      return result;
    }

    result = pthread_create(v2, 0, _NetPerfClientReceiveThread, v1);
    if (result)
    {
      return result;
    }

    *(v1 + 120) = v2;
    result = pthread_create(v3, 0, _NetPerfClientSendThread, v1);
    if (result)
    {
      return result;
    }

    *(v1 + 104) = v3;
    *(v1 + 80) = 4;
  }

  if (i == 2)
  {
    v6 = *(v1 + 72);
    *&v9.sa_len = 0;
    *&v9.sa_data[6] = 0;
    v11 = 0;
    v10 = 0;
    *v8 = 0;
    result = HTTPClientGetPeerAddress(*(v1 + 56), &v9, 0x1Cu, v8);
    if (!result)
    {
      v7 = (v1 + 88);
      result = ServerSocketOpenEx2(v9.sa_family, 2, 17, 0, 0, -6100, 0, -1, 0, (v1 + 88));
      v12 = result;
      if (!result)
      {
        SocketSetP2P(*v7, 1);
        result = SocketSetPacketTimestamps(*v7, 1);
        if (v6)
        {
          result = CFDictionaryGetInt64(v6, @"port", &v12);
          if (!v12)
          {
            if (v9.sa_family == 30 || v9.sa_family == 2)
            {
              *v9.sa_data = bswap32(result) >> 16;
            }

            v12 = connect(*v7, &v9, v8[0]);
            if (!v12 || (result = __error(), *result) && (result = __error(), !*result))
            {
              result = _NetPerfClientSendControlMessage(v1, @"startServerSession");
              if (!result)
              {
                v5 = 3;
                goto LABEL_11;
              }
            }
          }
        }
      }
    }
  }

  else if (i == 1)
  {
    result = _NetPerfClientSendControlMessage(v1, @"setUpServerSession");
    if (!result)
    {
      v5 = 2;
LABEL_11:
      *(v1 + 80) = v5;
    }
  }

  return result;
}

void _NetPerfClientStop(char *cf)
{
  if (*(cf + 13))
  {
    SendSelfConnectedLoopbackMessage(*(cf + 21), "q", 1uLL);
    pthread_join(*(cf + 12), 0);
    *(cf + 13) = 0;
  }

  if (*(cf + 15))
  {
    SendSelfConnectedLoopbackMessage(*(cf + 21), "q", 1uLL);
    pthread_join(*(cf + 14), 0);
    *(cf + 15) = 0;
  }

  v2 = *(cf + 7);
  if (v2)
  {
    CFRetain(*(cf + 7));
    dispatch_async_f(v2[2], v2, _HTTPClientInvalidate);
    CFRelease(*(cf + 7));
    *(cf + 7) = 0;
  }

  v3 = *(cf + 8);
  if (v3)
  {
    CFRelease(v3);
    *(cf + 8) = 0;
  }

  v4 = *(cf + 9);
  if (v4)
  {
    CFRelease(v4);
    *(cf + 9) = 0;
  }

  v5 = *(cf + 21);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(cf + 21) = -1;
  }

  v6 = *(cf + 22);
  if ((v6 & 0x80000000) == 0)
  {
    if (close(v6) && *__error())
    {
      __error();
    }

    *(cf + 22) = -1;
  }

  v7 = *(cf + 21);
  if (v7)
  {
    free(v7);
    *(cf + 21) = 0;
  }

  if (*(cf + 20))
  {
    if (*(cf + 3))
    {
      v8 = malloc_type_malloc(0x20uLL, 0x10E0040E15455BBuLL);
      if (v8)
      {
        *v8 = 4;
        v8[1] = 0;
        *(v8 + 1) = *(cf + 24);
        dispatch_async_f(*(cf + 5), v8, _PostEventOnEventQueue);
      }
    }

    *(cf + 20) = 0;

    CFRelease(cf);
  }
}

void _NetPerfServerSessionTearDown(CFTypeRef cf)
{
  if (*(cf + 18))
  {
    SendSelfConnectedLoopbackMessage(*(cf + 38), "q", 1uLL);
    pthread_join(*(cf + 17), 0);
    *(cf + 18) = 0;
  }

  v2 = *(cf + 38);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(cf + 38) = -1;
  }

  v3 = *(cf + 39);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(cf + 39) = -1;
  }

  v4 = *(cf + 40);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(cf + 40) = -1;
  }

  v5 = *(cf + 21);
  if (v5)
  {
    free(v5);
    *(cf + 21) = 0;
  }

  if (*(cf + 128))
  {
    *(cf + 128) = 0;

    CFRelease(cf);
  }
}

uint64_t _NetPerfServerDataThread(uint64_t a1)
{
  v2 = *(a1 + 156);
  v1 = *(a1 + 160);
  v3 = *(a1 + 152);
  SetCurrentThreadPriority(62);
  memset(&v16, 0, sizeof(v16));
  if (v2 <= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  v5 = v3 >> 5;
  v15 = 1 << v2;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  v6 = v2 >> 5;
  v7 = 1 << v1;
  if (v4 < 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v4;
  }

  v9 = v1 >> 5;
  v10 = 1 << v3;
  do
  {
    while (1)
    {
      if ((v2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v2, &v16, 0))
      {
        v16.fds_bits[v6] |= v15;
      }

      if ((v1 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v1, &v16, 0))
      {
        v16.fds_bits[v9] |= v7;
      }

      if (__darwin_check_fd_set_overflow(v3, &v16, 0))
      {
        v16.fds_bits[v5] |= v10;
      }

      v11 = select(v8 + 1, &v16, 0, 0, 0);
      if (v11 > 0)
      {
        break;
      }

      if (v11 && *__error())
      {
        v12 = *__error();
        if (!v12)
        {
          break;
        }

        if (v12 == 4)
        {
          continue;
        }
      }

      sleep(1u);
    }

    if ((v2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v2, &v16, 0) && (v16.fds_bits[v6] & v15) != 0)
    {
      _NetPerfServerDataHandler(a1, v2);
    }

    if ((v1 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v1, &v16, 0) && (v16.fds_bits[v9] & v7) != 0)
    {
      _NetPerfServerDataHandler(a1, v1);
    }
  }

  while (!__darwin_check_fd_set_overflow(v3, &v16, 0) || (v16.fds_bits[v5] & v10) == 0);
  return 0;
}

int *_NetPerfServerDataHandler(uint64_t a1, int a2)
{
  v16 = 0;
  *&v13.sa_len = 0;
  *&v13.sa_data[6] = 0;
  v15 = 0;
  v14 = 0;
  v11 = 0;
  *v12 = 0;
  v4 = *(a1 + 168);
  result = SocketRecvFrom(a2, v4, *(a1 + 176), &v16, &v13, 0x1Cu, v12, &v11, 0, 0);
  if (result)
  {
    return result;
  }

  v6 = UpTicksToNTP(v11);
  v7 = bswap32(v4->i32[0]);
  v8 = *(a1 + 184);
  v9 = v7 - (v8 + 1);
  if (v7 == v8 + 1)
  {
    goto LABEL_5;
  }

  if (v9 >= 1)
  {
    *(a1 + 204) += v9;
LABEL_5:
    *(a1 + 184) = v7;
    goto LABEL_6;
  }

  if (v7 == v8)
  {
    ++*(a1 + 208);
  }

  else
  {
    ++*(a1 + 200);
  }

LABEL_6:
  ++*(a1 + 192);
  v4[1] = v4[3];
  v4[2] = bswap64(v6);
  v10 = mach_absolute_time();
  v4[3] = bswap64(UpTicksToNTP(v10));
  v4[4] = vrev64_s32(vrev32_s8(*(a1 + 200)));
  v4[5].i32[0] = bswap32(*(a1 + 208));
  result = sendto(a2, v4, 0x30uLL, 0, &v13, v12[0]);
  if (result != 48)
  {
    result = __error();
    if (*result)
    {
      return __error();
    }
  }

  return result;
}

void _PostEventOnEventQueue(unsigned int *a1)
{
  (*(a1 + 2))(*a1, *(a1 + 1), *(a1 + 3));
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t _NetPerfClientSendControlMessage(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 64);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v6 = Mutable;
  CFDictionarySetValue(Mutable, @"controlCommand", a2);
  Data = CFPropertyListCreateData(0, v6, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v6);
  if (!Data)
  {
    return 4294960596;
  }

  HTTPHeader_InitRequestF(v4 + 24, "HTTP/1.1", "POST", "%s", v8, v9, v10, v11, "/perf");
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v14 = HTTPMessageSetBody(v4, "application/x-apple-binary-plist", BytePtr, Length);
  CFRelease(Data);
  if (v14)
  {
    return v14;
  }

  v22 = *(a1 + 56);

  return HTTPClientSendMessage(v22, v4, v15, v16, v17, v18, v19, v20);
}

uint64_t _NetPerfClientSendThread(uint64_t a1)
{
  v1 = *(a1 + 88);
  SetCurrentThreadPriority(62);
  v2 = mach_absolute_time();
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  v3 = UpTicksPerSecond_sTicksPerSecond / 0x3CuLL;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = v2 + UpTicksPerSecond_sTicksPerSecond / 0x3CuLL;
  for (i = 1; ; ++i)
  {
    v8 = bswap32(i);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v6 = mach_absolute_time();
    v12 = bswap64(UpTicksToNTP(v6));
    if (send(v1, &v8, 0x30uLL, 0) != 48 && (!*__error() || *__error()))
    {
      break;
    }

    SleepUntilUpTicks(v4);
    v4 += v3;
  }

  return 0;
}

uint64_t _NetPerfClientReceiveThread(uint64_t a1)
{
  v3 = *(a1 + 84);
  v2 = *(a1 + 88);
  SetCurrentThreadPriority(62);
  memset(&v20, 0, 96);
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  memset(&v20.fds_bits[24], 0, 32);
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v3 >> 5;
  v7 = 1 << v2;
  v8 = v2 >> 5;
  v9 = 1 << v3;
  v19 = v5;
  do
  {
    while (1)
    {
      if (__darwin_check_fd_set_overflow(v2, &v20, 0))
      {
        v20.fds_bits[v8] |= v7;
      }

      if (__darwin_check_fd_set_overflow(v3, &v20, 0))
      {
        v20.fds_bits[v6] |= v9;
      }

      v10 = select(v5 + 1, &v20, 0, 0, 0);
      if (v10 > 0)
      {
        break;
      }

      if (v10 && *__error())
      {
        v17 = *__error();
        if (!v17)
        {
          break;
        }

        if (v17 == 4)
        {
          continue;
        }
      }

      sleep(1u);
    }

    if (__darwin_check_fd_set_overflow(v2, &v20, 0))
    {
      if ((v20.fds_bits[v8] & v7) != 0)
      {
        v21 = 0;
        v22[0] = 0;
        v11 = *(a1 + 168);
        if (!SocketRecvFrom(v2, v11, *(a1 + 176), v22, 0, 0, 0, &v21, 0, 0))
        {
          ++*(a1 + 192);
          v12 = vcvtd_n_f64_s64(UpTicksToNTP(v21) - bswap64(*(v11 + 8)), 0x20uLL) - (bswap64(*(v11 + 24)) - bswap64(*(v11 + 16))) * 2.32830644e-10;
          v13 = *(a1 + 232);
          if (v12 < v13)
          {
            *(a1 + 232) = v12;
            v13 = v12;
          }

          v14 = *(a1 + 240);
          if (v12 > v14)
          {
            *(a1 + 240) = v12;
            v14 = v12;
          }

          v15 = *(a1 + 248);
          if (v15 >= 0.0)
          {
            v16 = v12 * 0.1 + v15 * 0.9;
          }

          else
          {
            v16 = v12;
          }

          *(a1 + 248) = v16;
          v7 = 1 << v2;
          v5 = v19;
          v9 = 1 << v3;
          if (v12 <= v16 * 3.0)
          {
            if (v21 >= *(a1 + 216))
            {
              fprintf(*MEMORY[0x1E69E9858], "%4llu: Min RTT %10f ms, Max RTT %10f, Avg RTT %10f, Recent RTT %10f Lost %u%s\n", *(a1 + 192), v13 * 1000.0, v14 * 1000.0, v16 * 1000.0, v12 * 1000.0, bswap32(*(v11 + 32)), "");
              *(a1 + 216) = *(a1 + 224) + v21;
            }
          }

          else
          {
            fprintf(*MEMORY[0x1E69E9858], "%4llu: Min RTT %10f ms, Max RTT %10f, Avg RTT %10f, Recent RTT %10f Lost %u%s\n", *(a1 + 192), v13 * 1000.0, v14 * 1000.0, v16 * 1000.0, v12 * 1000.0, bswap32(*(v11 + 32)), " (bad)");
          }
        }
      }
    }
  }

  while (!__darwin_check_fd_set_overflow(v3, &v20, 0) || (v20.fds_bits[v6] & v9) == 0);
  return 0;
}

unint64_t _NetPerfClientHandleControlCompletion(unint64_t result)
{
  if (!*(result + 9648))
  {
    v1 = result;
    v2 = *(result + 9672);
    v3 = *(v2 + 72);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 72) = 0;
    }

    v4 = *(v1 + 8528);
    if (!v4 || (result = CFDataCreate(0, *(v1 + 8520), v4)) != 0 && (v5 = result, *(v2 + 72) = CFPropertyListCreateWithData(0, result, 0, 0, 0), CFRelease(v5), (result = *(v2 + 72)) != 0) && (v6 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v6 == result))
    {

      return _NetPerfClientRunStateMachine(v2);
    }
  }

  return result;
}

uint64_t NetSocketChaCha20Poly1305Configure(void *a1, _OWORD *a2, void *a3, _OWORD *a4, void *a5)
{
  v10 = a1[12];
  if (!v10)
  {
    v10 = malloc_type_calloc(1uLL, 0x8278uLL, 0x10100408667D46EuLL);
    if (!v10)
    {
      return 4294960568;
    }

    a1[12] = v10;
  }

  v11 = a2[1];
  v10[16] = *a2;
  v10[17] = v11;
  if (a3)
  {
    *(v10 + 36) = *a3;
  }

  v12 = a4[1];
  *(v10 + 16936) = *a4;
  *(v10 + 16952) = v12;
  if (a5)
  {
    *(v10 + 2121) = *a5;
  }

  result = 0;
  a1[3] = _NetSocketTransportRead;
  a1[4] = _NetSocketTransportWrite;
  a1[5] = _NetSocketTransportWriteV;
  a1[6] = NetSocket_WriteFileSlow;
  a1[7] = _NetSocketTransportFree;
  return result;
}

void _NetSocketTransportFree(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    memset_s(*(a1 + 96), 0x8278uLL, 0, 0x8278uLL);
    free(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _NetSocketTransportWriteV(uint64_t a1, unint64_t *a2, int a3, unsigned int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v4 = a2;
  v5 = *(a1 + 96);
  v6 = (v5 + 16976);
  v7 = (v5 + 16978);
  v8 = v5 + 33362;
  v9 = &a2[2 * a3];
  v10 = v5 + 16968;
  while (v4 < v9)
  {
    v11 = 0;
    v12 = v7;
    v13 = v4;
    while (1)
    {
      v14 = *(v13 + 8);
      if (v8 - v12 < v14)
      {
        break;
      }

      v11 += v14;
      v12 = (v12 + v14);
      v13 += 16;
      if (v13 >= v9)
      {
        if (!v11)
        {
          return 0;
        }

        goto LABEL_12;
      }
    }

    v11 += v8 - v12;
    if (!v11)
    {
      return 0;
    }

LABEL_12:
    chacha20_poly1305_init_64x64((v5 + 16680), (v5 + 16936), (v5 + 16968));
    *(v5 + 16976) = v11;
    poly1305_update((v5 + 16816), v6, 2uLL);
    *(v5 + 16912) += 2;
    v15 = v4 + 1;
    v16 = v7;
    v17 = 16978;
    while (1)
    {
      v4 = v15 - 1;
      v18 = *(v15 - 1);
      v19 = v8 - v7;
      if (v8 - v7 < *v15)
      {
        break;
      }

      v20 = chacha20_poly1305_encrypt(v5 + 16680, v18, *v15, v16);
      v21 = v15 + 2;
      v7 = (v7 + *v15);
      v17 += v20;
      v16 = (v5 + v17);
      v22 = (v15 + 1) >= v9;
      v15 += 2;
      if (v22)
      {
        v4 = v21 - 1;
        goto LABEL_18;
      }
    }

    v23 = chacha20_poly1305_encrypt(v5 + 16680, v18, v8 - v7, v16);
    v24 = *v15 - v19;
    *(v15 - 1) += v19;
    *v15 = v24;
    v17 += v23;
LABEL_18:
    v25 = chacha20_poly1305_final((v5 + 16680), (v5 + v17), &v33);
    v26 = (v5 + v25 + v17);
    v7 = (v5 + 16978);
    if ((v25 + v17) > 33362 || v26 != (v5 + 16978 + v11))
    {
      return 4294960534;
    }

    v28 = 0;
    *v26 = v33;
    do
    {
      v29 = (*(v10 + v28))++ + 1;
      if ((v29 & 0x100) == 0)
      {
        break;
      }

      v22 = v28++ >= 7;
    }

    while (!v22);
    v6 = (v5 + 16976);
    result = NetSocket_WriteInternal(a1, (v5 + 16976), v25 + v17 - 16960, a4);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t _NetSocketTransportWrite(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  return _NetSocketTransportWriteV(a1, v5, 1, a4);
}

uint64_t _NetSocketTransportRead(uint64_t a1, size_t a2, size_t a3, char *__dst, size_t *a5, uint64_t a6, unsigned int a7)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a1 != 1853058915)
  {
    v15 = 0;
    v33 = 4294960556;
    goto LABEL_42;
  }

  if (*(a1 + 8))
  {
    v15 = 0;
    v33 = 4294960573;
    goto LABEL_42;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    v15 = 0;
    v33 = 4294960551;
    goto LABEL_42;
  }

  v9 = __dst;
  v10 = a3;
  v11 = *(a1 + 96);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72) - v12;
  if (v13)
  {
    if (v13 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = *(a1 + 72) - v12;
    }

    memcpy(__dst, v12, v14);
    v15 = v14;
    *(a1 + 64) += v14;
    v10 -= v14;
    if (v14 >= a2 || v10 == 0)
    {
      goto LABEL_40;
    }

    v9 += v14;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(v11 + 33384);
  v18 = *(v11 + 33392) - v17;
  if (v18)
  {
    if (v18 >= v10)
    {
      v19 = v10;
    }

    else
    {
      v19 = *(v11 + 33392) - v17;
    }

    v20 = v15;
    memcpy(v9, v17, v19);
    *(v11 + 33384) += v19;
    v15 = v19 + v20;
    v10 -= v19;
    if (v10)
    {
      v21 = v15 >= a2;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v39 = v11 + 0x8000;
      v22 = a7;
      v9 += v19;
      goto LABEL_25;
    }

LABEL_40:
    v33 = 0;
    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_40;
  }

  v39 = v11 + 0x8000;
  v22 = a7;
LABEL_25:
  v23 = v11 + 296;
  v24 = v11 + 288;
  while (1)
  {
    v42 = v15;
    Internal = NetSocket_ReadInternal(a1, 2uLL, 2, &__dsta, 0, 0, v22);
    if (Internal)
    {
LABEL_45:
      v33 = Internal;
      goto LABEL_57;
    }

    v26 = __dsta;
    if (__dsta > 0x4000u)
    {
      v33 = 4294960553;
      goto LABEL_57;
    }

    Internal = NetSocket_ReadInternal(a1, __dsta, __dsta, (v11 + 296), 0, 0, v22);
    if (Internal)
    {
      goto LABEL_45;
    }

    Internal = NetSocket_ReadInternal(a1, 0x10uLL, 16, v45.i8, 0, 0, v22);
    v44 = Internal;
    if (Internal)
    {
      goto LABEL_45;
    }

    chacha20_poly1305_init_64x64(v11, (v11 + 256), (v11 + 288));
    poly1305_update((v11 + 136), &__dsta, 2uLL);
    *(v11 + 232) += 2;
    v27 = chacha20_poly1305_decrypt(v11, (v11 + 296), v26, (v11 + 296));
    v28 = chacha20_poly1305_verify(v11, (v23 + v27), &v45, &v44);
    v33 = v44;
    if (v44)
    {
      break;
    }

    v34 = v28 + v27;
    if (v34 != v26)
    {
      if (gLogCategory_NetSocketChaCha20Poly1305 <= 60 && (gLogCategory_NetSocketChaCha20Poly1305 != -1 || _LogCategory_Initialize(&gLogCategory_NetSocketChaCha20Poly1305, 0x3Cu)))
      {
        LogPrintF(&gLogCategory_NetSocketChaCha20Poly1305, "OSStatus _NetSocketTransportRead(NetSocketRef, size_t, size_t, void *, size_t *, int, int32_t)", 0x3Cu, "### NSTCP verify len failed: %zu vs %zu\n", v29, v30, v31, v32, v34);
      }

      v33 = 4294960534;
      goto LABEL_57;
    }

    v35 = 0;
    do
    {
      v36 = (*(v24 + v35))++ + 1;
      if ((v36 & 0x100) == 0)
      {
        break;
      }

      v21 = v35++ >= 7;
    }

    while (!v21);
    v37 = v10 - v26;
    if (v10 < v26)
    {
      memcpy(v9, (v11 + 296), v10);
      v33 = 0;
      *(v39 + 616) = v23 + v10;
      *(v39 + 624) = v23 + v26;
      v15 = v10 + v42;
      goto LABEL_42;
    }

    memcpy(v9, (v11 + 296), v26);
    v33 = 0;
    v15 = v42 + v26;
    if (v42 + v26 < a2)
    {
      v9 += v26;
      v10 -= v26;
      if (v37)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  if (gLogCategory_NetSocketChaCha20Poly1305 <= 60 && (gLogCategory_NetSocketChaCha20Poly1305 != -1 || _LogCategory_Initialize(&gLogCategory_NetSocketChaCha20Poly1305, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_NetSocketChaCha20Poly1305, "OSStatus _NetSocketTransportRead(NetSocketRef, size_t, size_t, void *, size_t *, int, int32_t)", 0x3Cu, "### NSTCP verify failed: %#m\n", v29, v30, v31, v32, v33);
  }

LABEL_57:
  v15 = v42;
LABEL_42:
  if (a5)
  {
    *a5 = v15;
  }

  return v33;
}

void NetSocketGCM_Configure(void *a1, void *a2, __n128 *a3, void *a4, __n128 *a5)
{
  v10 = a1[12];
  if (!v10)
  {
    v11 = malloc_type_calloc(1uLL, 0x40040uLL, 0x1030040D575C2F1uLL);
    if (!v11)
    {
      return;
    }

    v10 = v11;
    a1[12] = v11;
  }

  AES_GCM_Final(v10);
  AES_GCM_InitEx(v10, 1u, a2, a3);
  if (!v12)
  {
    AES_GCM_Final(v10 + 3);
    AES_GCM_InitEx(v10 + 3, 0, a4, a5);
    if (!v13)
    {
      a1[3] = _NetSocketGCM_Read;
      a1[4] = _NetSocketGCM_Write;
      a1[5] = _NetSocketGCM_WriteV;
      a1[6] = NetSocket_WriteFileSlow;
      a1[7] = _NetSocketGCM_Free;
    }
  }
}

void _NetSocketGCM_Free(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    AES_GCM_Final(*(a1 + 96));
    AES_GCM_Final(v1 + 3);
    free(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _NetSocketGCM_WriteV(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v23 = 0;
  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v7 = a2;
  v8 = v4 + 262192;
  v9 = &a2[2 * a3];
  while (v7 < v9)
  {
    v10 = 0;
    v11 = v7;
    v12 = v4 + 48;
    while (1)
    {
      v13 = v11[1];
      if (v8 - v12 < v13)
      {
        break;
      }

      v10 += v13;
      v12 += v13;
      v11 += 2;
      if (v11 >= v9)
      {
        goto LABEL_11;
      }
    }

    v10 += v8 - v12;
LABEL_11:
    result = AES_GCM_InitMessage((v4 + 24), 0);
    if (!result)
    {
      v23 = bswap32(v10);
      result = CCCryptorGCMAddAAD();
      if (!result)
      {
        v15 = v7 + 1;
        v16 = v4 + 48;
        while (1)
        {
          v7 = v15 - 1;
          v17 = *(v15 - 1);
          v18 = v8 - v16;
          v19 = *(v4 + 24);
          if (v8 - v16 < *v15)
          {
            break;
          }

          result = MEMORY[0x193B04C80](v19, v17);
          if (result)
          {
            return result;
          }

          v20 = v15;
          v15 += 2;
          v21 = *v20;
          v7 = v20 + 1;
          v16 += v21;
          if (v7 >= v9)
          {
            goto LABEL_20;
          }
        }

        result = MEMORY[0x193B04C80](v19, v17, v8 - v16, v16);
        if (result)
        {
          return result;
        }

        v22 = *v15 - v18;
        *(v15 - 1) += v18;
        *v15 = v22;
        v16 = v4 + 262192;
LABEL_20:
        result = CCCryptorGCMFinalize();
        if (!result)
        {
          v25.iov_base = &v23;
          v25.iov_len = 4;
          v26 = v4 + 48;
          v27 = v16 - (v4 + 48);
          v28 = &v24;
          v29 = 16;
          result = NetSocket_WriteVInternal(a1, &v25, 3, a4);
          if (!result)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  return 0;
}