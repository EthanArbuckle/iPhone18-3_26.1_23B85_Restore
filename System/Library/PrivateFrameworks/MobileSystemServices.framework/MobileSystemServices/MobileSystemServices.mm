void MOLogWriteV(uint64_t a1, int a2, uint64_t a3, const __CFString *a4, va_list a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = __dst;
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  v11 = CFStringCreateWithFormatAndArguments(0, 0, a4, a5);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
  if (!CStringPtr)
  {
    if (CFStringGetCString(v12, __dst, 1024, 0x8000100u))
    {
      v10 = __dst;
      CStringPtr = __dst;
      goto LABEL_6;
    }

    maxBufLen = 0;
    Length = CFStringGetLength(v12);
    v28.location = 0;
    v28.length = Length;
    Bytes = CFStringGetBytes(v12, v28, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    if (maxBufLen >= 1 && Bytes == Length)
    {
      v17 = malloc_type_malloc(maxBufLen + 1, 0xC7FA48C7uLL);
      if (v17)
      {
        v10 = v17;
        usedBufLen = 0;
        v29.location = 0;
        v29.length = Length;
        v18 = CFStringGetBytes(v12, v29, 0x8000100u, 0, 0, v17, maxBufLen, &usedBufLen);
        v19 = v18 == Length;
        if (v18 == Length)
        {
          v14 = usedBufLen;
          v10[usedBufLen] = 0;
        }

        else
        {
          free(v10);
          v10 = __dst;
          __strlcpy_chk();
          v14 = 0;
        }

        goto LABEL_16;
      }
    }

    v10 = __dst;
    __strlcpy_chk();
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v10 = CStringPtr;
LABEL_6:
  v14 = strlen(CStringPtr);
LABEL_15:
  v19 = 0;
LABEL_16:
  pthread_self();
  if (a3)
  {
    asl_log(0, 0, a2, "%p %s: %s\n");
  }

  else
  {
    asl_log(0, 0, a2, "%p %s\n");
  }

  if (a1 && *(a1 + 8))
  {
    v20 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __MOLogWriteV_block_invoke;
    block[3] = &__block_descriptor_tmp_19_0;
    block[4] = a1;
    block[5] = a3;
    v23 = a2;
    block[6] = v10;
    block[7] = v14;
    dispatch_sync(v20, block);
  }

  if (v19)
  {
    free(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void *MOXPCTransportOpen(const char *a1, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  memcpy(__dst, "com.apple.MobileSystemServices.XPCConnectionQueue.", sizeof(__dst));
  __strlcat_chk();
  v4 = dispatch_queue_create(__dst, MEMORY[0x277D85CD8]);
  mach_service = xpc_connection_create_mach_service(a1, v4, a2);
  if (mach_service)
  {
    v10 = mach_service;
    v11 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A004046B7DE22uLL);
    v12 = v11;
    if (v11)
    {
      v11[1] = v10;
      v13 = dispatch_semaphore_create(0);
      v12[2] = v4;
      v12[3] = v13;
      *(v12 + 64) = v12[8] & 0xFE | a2;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __MOXPCTransportOpen_block_invoke;
      handler[3] = &__block_descriptor_tmp_15;
      handler[4] = v12;
      v18 = a2;
      xpc_connection_set_event_handler(v10, handler);
    }

    else
    {
      xpc_release(v10);
    }
  }

  else
  {
    MOLogWrite(0, 3, "MOXPCTransportOpen", @"Failed to create xpc_connection!", v6, v7, v8, v9, v16);
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __MOXPCTransportOpen_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!*(*(a1 + 32) + 8))
  {
    MOLogWrite(0, 3, "MOXPCTransportOpen_block_invoke", @"Got event on connection for %p when connection was NULL!", a5, a6, a7, a8, *(a1 + 32));
    return;
  }

  v11 = MEMORY[0x25F84B870](a2);
  if (v11 == MEMORY[0x277D86450])
  {
    if (*(a1 + 40) == 1)
    {
      v22 = xpc_retain(a2);
      v23 = *(a1 + 32);
      v24 = *(v23 + 16);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 0x40000000;
      aBlock[2] = __MOXPCTransportOpen_block_invoke_2;
      aBlock[3] = &__block_descriptor_tmp;
      aBlock[4] = v23;
      aBlock[5] = a2;
      MEMORY[0x25F84B8A0](v22);
      v25 = _Block_copy(aBlock);
      dispatch_async_f(v24, v25, transactionRunner);
      return;
    }

    v38 = @"Got connection on non-listener connection!?";
    goto LABEL_31;
  }

  if (v11 == MEMORY[0x277D86480])
  {
    v26 = *(a1 + 32);
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v32 = MEMORY[0x277D863F8];
    v34 = a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8];
    if (a2 != MEMORY[0x277D86420] && !v34)
    {
      MOLogWrite(0, 3, "_HandleConnectionError", @"unknown server connection error: %s", v28, v29, v30, v31, string);
    }

    v35 = !v34;
    if (!*v26)
    {
      v35 = 1;
    }

    if ((v35 & 1) == 0)
    {
      pthread_mutex_lock(*v26);
      v36 = *v26;
      v37 = *(*v26 + 112);
      if (v37)
      {
        CFRelease(v37);
        v36 = *v26;
        *(*v26 + 112) = 0;
      }

      pthread_cond_broadcast(&v36[1]);
      pthread_mutex_unlock(*v26);
    }

    if (a2 == v32)
    {
      v39 = *(v26 + 24);

      dispatch_semaphore_signal(v39);
    }
  }

  else
  {
    if (v11 != MEMORY[0x277D86468])
    {
      v17 = MEMORY[0x25F84B850](a2);
      MOLogWrite(0, 3, "MOXPCTransportOpen_block_invoke", @"received unhandled event from server: %s", v18, v19, v20, v21, v17);

      free(v17);
      return;
    }

    if (*(a1 + 40) == 1)
    {
      v38 = @"Got dictionary on listener connection! Ignoring.";
LABEL_31:

      MOLogWrite(0, 3, "MOXPCTransportOpen_block_invoke", v38, v13, v14, v15, v16, a9);
      return;
    }

    v40 = *(a1 + 32);
    v41 = *(v40 + 8);

    _HandleIncomingMessage(v40, v41, a2, v12, v13, v14, v15, v16, a9);
  }
}

void MOXPCTransportRunTransactionalTask(NSObject *a1, const void *a2)
{
  MEMORY[0x25F84B8A0]();
  v4 = _Block_copy(a2);

  dispatch_async_f(a1, v4, transactionRunner);
}

void __MOXPCTransportOpen_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 48))
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      handler = 0;
      p_handler = &handler;
      v8 = 0x2000000000;
      LOBYTE(v9) = 0;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___HandleListenerConnection_block_invoke;
      block[3] = &unk_279917290;
      block[4] = &handler;
      block[5] = v3;
      block[6] = v2;
      dispatch_sync(v4, block);
      if (*(p_handler + 24) != 1)
      {
        xpc_connection_cancel(v2);
        _Block_object_dispose(&handler, 8);
        goto LABEL_6;
      }

      _Block_object_dispose(&handler, 8);
    }
  }

  v5 = xpc_retain(v2);
  MEMORY[0x25F84B8A0](v5);
  xpc_connection_set_target_queue(v2, *(v3 + 16));
  handler = MEMORY[0x277D85DD0];
  p_handler = 0x40000000;
  v8 = ___HandleListenerConnection_block_invoke_2;
  v9 = &__block_descriptor_tmp_48;
  v10 = v3;
  v11 = v2;
  xpc_connection_set_event_handler(v2, &handler);
  xpc_connection_resume(v2);
LABEL_6:
  xpc_release(*(a1 + 40));
}

void _HandleIncomingMessage(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = _CFXPCCreateCFObjectFromXPCMessage();
  if (v12)
  {
    v17 = v12;
    v18 = CFGetTypeID(v12);
    if (v18 == CFDictionaryGetTypeID())
    {
      if (*(a1 + 32) && *(a1 + 40))
      {
        if ((*(a1 + 64) & 1) != 0 && !xpc_connection_get_context(a2))
        {
          xpc_retain(a3);
          xpc_connection_set_context(a2, a3);
        }

        CFRetain(v17);
        v23 = xpc_retain(a2);
        v24 = *(a1 + 40);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___HandleIncomingMessage_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_55;
        aBlock[4] = a1;
        aBlock[5] = a2;
        aBlock[6] = v17;
        MEMORY[0x25F84B8A0](v23);
        v25 = _Block_copy(aBlock);
        dispatch_async_f(v24, v25, transactionRunner);
        goto LABEL_18;
      }

      if (*a1)
      {
        pthread_mutex_lock(*a1);
        v27 = *a1;
        if (*(*a1 + 112))
        {
          CFArrayAppendValue(*(*a1 + 112), v17);
          pthread_cond_signal((*a1 + 64));
          v27 = *a1;
        }

        pthread_mutex_unlock(v27);
        goto LABEL_18;
      }

      v26 = @"No message handler set and no support for receiving messages; dropping message.";
    }

    else
    {
      v26 = @"Message received was not a CFDictionary";
    }

    MOLogWrite(0, 3, "_HandleIncomingMessage", v26, v19, v20, v21, v22, v28);
LABEL_18:
    CFRelease(v17);
    return;
  }

  MOLogWrite(0, 3, "_HandleIncomingMessage", @"Payload data received from client did not contain a CF object or failed to deserialize.", v13, v14, v15, v16, a9);
}

void *MOXPCTransportSetConnectionAuthHandler(uint64_t a1, dispatch_object_t object, void *aBlock)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    MOXPCTransportSetConnectionAuthHandler_cold_1();
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    MOXPCTransportSetConnectionAuthHandler_cold_2();
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    _Block_release(v7);
  }

  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 56) = object;
  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 48) = result;
  return result;
}

void *MOXPCTransportSetMessageHandler(uint64_t a1, dispatch_object_t object, void *aBlock)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    MOXPCTransportSetMessageHandler_cold_1();
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    _Block_release(v7);
  }

  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 40) = object;
  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

void MOXPCTransportResume(void **a1)
{
  if ((a1[8] & 2) == 0)
  {
    *(a1 + 64) |= 2u;
    if (!a1[4])
    {
      *a1 = malloc_type_malloc(0x78uLL, 0x1020040DDEB3994uLL);
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v3 = *a1;
      *&v3[1].__opaque[40] = Mutable;
      pthread_mutex_init(v3, 0);
      pthread_cond_init((*a1 + 64), 0);
    }

    v4 = a1[1];

    xpc_connection_resume(v4);
  }
}

void MOXPCTransportClose(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = a1[3];
    if (v3)
    {
      dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    }

    xpc_release(a1[1]);
    a1[1] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_barrier_sync(v4, &__block_literal_global);
    dispatch_release(a1[2]);
    a1[2] = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    dispatch_release(v5);
    a1[3] = 0;
  }

  v6 = a1[4];
  if (v6)
  {
    _Block_release(v6);
    a1[4] = 0;
  }

  v7 = a1[5];
  if (v7)
  {
    dispatch_release(v7);
    a1[5] = 0;
  }

  v8 = a1[6];
  if (v8)
  {
    _Block_release(v8);
    a1[6] = 0;
  }

  v9 = a1[7];
  if (v9)
  {
    dispatch_release(v9);
    a1[7] = 0;
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = *(v10 + 112);
    if (v11)
    {
      CFRelease(v11);
      v10 = *a1;
      *(*a1 + 112) = 0;
    }

    pthread_cond_destroy((v10 + 64));
    pthread_mutex_destroy(*a1);
    free(*a1);
  }

  free(a1);
}

BOOL MOXPCTransportSendMessageOnConnection(_xpc_connection_s *a1)
{
  v6 = _CFXPCCreateXPCMessageWithCFObject();
  if (v6)
  {
    xpc_connection_send_message(a1, v6);
    xpc_release(v6);
  }

  else
  {
    MOLogWrite(0, 3, "MOXPCTransportSendMessageOnConnection", @"Failed to create xpc dictionary", v2, v3, v4, v5, v8);
  }

  return v6 != 0;
}

BOOL MOXPCTransportSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 64))
  {
    MOLogWrite(0, 3, "MOXPCTransportSendMessage", @"Can't send a message on a server transport handle!", a5, a6, a7, a8, v8);
    return 0;
  }

  else
  {
    v10 = *(a1 + 8);

    return MOXPCTransportSendMessageOnConnection(v10);
  }
}

const void *MOXPCTransportReceiveMessage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31.tv_sec = 0;
  v31.tv_nsec = 0;
  v9 = *a1;
  if (v9 && !*(a1 + 32))
  {
    if (a2 == 0x7FFFFFFF)
    {
      pthread_mutex_lock(v9);
      v17 = *a1;
    }

    else
    {
      v30.tv_sec = 0;
      *&v30.tv_usec = 0;
      if (gettimeofday(&v30, 0))
      {
        v29 = *__error();
        MOLogWrite(0, 3, "MOXPCTransportReceiveMessage", @"gettimeofday returned error %d", v22, v23, v24, v25, v29);
        return 0;
      }

      v31.tv_sec = v30.tv_sec + a2;
      v31.tv_nsec = 1000 * v30.tv_usec;
      pthread_mutex_lock(*a1);
      v17 = *a1;
      if (!a2)
      {
LABEL_19:
        v26 = *&v17[1].__opaque[40];
        if (v26)
        {
          if (CFArrayGetCount(v26))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(*a1 + 112), 0);
            CFRetain(ValueAtIndex);
            CFArrayRemoveValueAtIndex(*(*a1 + 112), 0);
LABEL_24:
            pthread_mutex_unlock(*a1);
            return ValueAtIndex;
          }
        }

        else
        {
          MOLogWrite(0, 3, "MOXPCTransportReceiveMessage", @"Connection blew up while waiting for messages on %p", v13, v14, v15, v16, a1);
        }

        ValueAtIndex = 0;
        goto LABEL_24;
      }
    }

    v18 = *&v17[1].__opaque[40];
    if (v18)
    {
      while (1)
      {
        Count = CFArrayGetCount(v18);
        v17 = *a1;
        if (Count)
        {
          goto LABEL_19;
        }

        v20 = &v17[1];
        if (a2 == 0x7FFFFFFF)
        {
          if (pthread_cond_wait(v20, v17))
          {
            v27 = @"pthread_cond_wait failed";
            goto LABEL_28;
          }
        }

        else
        {
          v21 = pthread_cond_timedwait(v20, v17, &v31);
          if (v21)
          {
            if (v21 == 60)
            {
              MOLogWrite(0, 3, "MOXPCTransportReceiveMessage", @"Timed out waiting for message on %p", v13, v14, v15, v16, a1);
LABEL_29:
              pthread_mutex_unlock(*a1);
              return 0;
            }

            v28 = v21;
            v27 = @"pthread_cond_timedwait returned error %d\n";
LABEL_28:
            MOLogWrite(0, 3, "MOXPCTransportReceiveMessage", v27, v13, v14, v15, v16, v28);
            goto LABEL_29;
          }
        }

        v17 = *a1;
        v18 = *(*a1 + 112);
        if (!v18)
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_19;
  }

  MOLogWrite(0, 3, "MOXPCTransportReceiveMessage", @"Can't call MOXPCTransportReceiveMessage with a message handler set!", a5, a6, a7, a8, v28);
  return 0;
}

void transactionRunner(uint64_t (**a1)(void))
{
  v2 = a1[2]();
  MEMORY[0x25F84B8B0](v2);

  _Block_release(a1);
}

char *MOLogOpen(const char *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x10700405B918952uLL);
  *v4 = dispatch_queue_create("com.apple.MobileSystemServices.Logging", 0);
  *(v4 + 2) = strdup(a1);
  *(v4 + 11) = a2;
  *(v4 + 12) = a2;
  *(v4 + 36) = -1;
  v14 = 0;
  asprintf(&v14, "com.apple.MobileSystemServices.Logging.%s", a1);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __MOLogOpen_block_invoke;
  handler[3] = &__block_descriptor_tmp_0;
  handler[4] = v4;
  v5 = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  if (notify_register_dispatch(v5, v4 + 10, global_queue, handler))
  {
    MOLogWrite(v4, 5, 0, @"failed to register for %s notification", v7, v8, v9, v10, v14);
    *(v4 + 10) = -1;
  }

  free(v14);
  v11 = *v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___MOLogLoadPreferences_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = v4;
  dispatch_sync(v11, block);
  return v4;
}

void __MOLogOpen_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___MOLogLoadPreferences_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = v2;
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  v9 = levelNames[*(v4 + 44)];
  MOLogWrite(v4, 5, 0, @"%s: set log level to %s", v5, v6, v7, v8, *(v4 + 16));
}

void MOLogEnableDiskLogging(NSObject **a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __MOLogEnableDiskLogging_block_invoke;
  v5[3] = &__block_descriptor_tmp_8;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a4;
  v6 = a3;
  dispatch_sync(v4, v5);
}

char *__MOLogEnableDiskLogging_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    free(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 36);
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
    v2 = *(a1 + 32);
    *(v2 + 36) = -1;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = strdup(result);
  }

  *(v2 + 8) = result;
  v6 = *(a1 + 32);
  *(v6 + 24) = *(a1 + 48);
  *(v6 + 32) = *(a1 + 56);
  return result;
}

void MOLogClose(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 0x80000000) == 0)
  {
    notify_cancel(v2);
  }

  dispatch_release(*a1);
  v3 = *(a1 + 36);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

uint64_t __MOLogWriteV_block_invoke(uint64_t result)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    v26 = 0;
    time(&v26);
    v2 = ctime(&v26);
    v2[strlen(v2) - 1] = 0;
    v3 = *(v1 + 40);
    getpid();
    v4 = levelNames[*(v1 + 64)];
    pthread_self();
    if (v3)
    {
      v5 = *(v1 + 40);
      snprintf(__str, 0x400uLL, "%s [%d] <%s> (%p) %s: ");
    }

    else
    {
      snprintf(__str, 0x400uLL, "%s [%d] <%s> (%p) ");
    }

    v6 = *(v1 + 32);
    v7 = *(v6 + 36);
    if (v7 != -1)
    {
      goto LABEL_23;
    }

    v8 = *(v6 + 8);
    __strlcpy_chk();
    if (__s.__pn_.__r_.__value_.__s.__data_[0])
    {
      v9 = (&__s + strlen(&__s) - 1);
      while (v9 > &__s)
      {
        v10 = v9->__pn_.__r_.__value_.__s.__data_[0];
        v9 = (v9 - 1);
        if (v10 != 47)
        {
          while (v9 > &__s)
          {
            v11 = v9->__pn_.__r_.__value_.__s.__data_[0];
            v9 = (v9 - 1);
            if (v11 == 47)
            {
              v9 = (v9 + 1);
              goto LABEL_13;
            }
          }

          goto LABEL_18;
        }
      }

LABEL_13:
      if (v9 != &__s)
      {
        v12 = &v9[-1].__pn_.__r_.__value_.__r.__words[2] + 7;
        do
        {
          v13 = v9;
          if (v12 <= &__s)
          {
            break;
          }

          v14 = *v12--;
          v9 = (v9 - 1);
        }

        while (v14 == 47);
        v13->__pn_.__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_22;
      }

LABEL_18:
      if (__s.__pn_.__r_.__value_.__s.__data_[0] == 47)
      {
        v15 = 47;
      }

      else
      {
        v15 = 46;
      }

      LOWORD(__s.__pn_.__r_.__value_.__l.__data_) = v15;
    }

LABEL_22:
    mkpath_np(&__s, 0x1EDu);
    snprintf(&__s, 0x400uLL, "%s.0", *(*(v1 + 32) + 8));
    result = open(&__s, 521, 420);
    v7 = result;
    *(*(v1 + 32) + 36) = result;
    if (result != -1)
    {
LABEL_23:
      v16 = strlen(__str);
      memset(&v25, 0, sizeof(v25));
      v27.iov_base = __str;
      v27.iov_len = v16;
      v17 = *(v1 + 56);
      v28 = *(v1 + 48);
      v29 = v17;
      v30 = "\n";
      v31 = 1;
      writev(v7, &v27, 3);
      result = fstat(*(*(v1 + 32) + 36), &v25);
      if (!result)
      {
        v18 = *(v1 + 32);
        if (v25.st_size >= *(v18 + 24))
        {
          close(*(v18 + 36));
          v19 = *(v1 + 32);
          *(v19 + 36) = -1;
          snprintf(&__s, 0x400uLL, "%s.%d", *(v19 + 8), *(v19 + 32));
          result = unlink(&__s);
          v20 = *(*(v1 + 32) + 32) - 1;
          if (v20 >= 0)
          {
            do
            {
              snprintf(&__s, 0x400uLL, "%s.%d", *(*(v1 + 32) + 8), v20);
              v21 = v20 + 1;
              snprintf(&__to, 0x400uLL, "%s.%d", *(*(v1 + 32) + 8), v20 + 1);
              rename(&__s, &__to, v22);
              result = open(&__to, 265);
              if (result != -1)
              {
                v23 = result;
                fcntl(result, 64, 3);
                result = close(v23);
              }

              v20 = v21 - 2;
            }

            while (v21 - 1 > 0);
          }
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MOLogSetLogLevel(const char *a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  if (sysconf(71) == -1)
  {
    abort();
  }

  v4 = MEMORY[0x28223BE20]();
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  if (getpwnam_r("mobile", &v15, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, &v14))
  {
    v6 = 1;
  }

  else
  {
    v6 = v14 == 0;
  }

  if (v6 || geteuid() == v15.pw_uid)
  {
    v7 = CFStringCreateWithFormat(0, 0, @"MobileSystemServices-%s-%s", a1, "LogLevel");
    if (a2 == -1)
    {
      v8 = 0;
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        valuePtr = 0;
      }

      else if (a2 >= 8)
      {
        valuePtr = 7;
      }

      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    }

    v10 = *MEMORY[0x277CBF008];
    v11 = *MEMORY[0x277CBF030];
    CFPreferencesSetValue(v7, v8, *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF030]);
    CFPreferencesSynchronize(v10, @"mobile", v11);
    if (v8)
    {
      CFRelease(v8);
    }

    CFRelease(v7);
    v13 = 0;
    asprintf(&v13, "com.apple.MobileSystemServices.Logging.%s", a1);
    notify_post(v13);
    free(v13);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MOLogGetLogLevel(uint64_t a1)
{
  v2 = 0xFFFFFFFFLL;
  v5 = -1;
  CFPreferencesSynchronize(*MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF030]);
  if (_MOLogGetPreferenceIntValue(a1, &v5))
  {
    if (v5 >= 7)
    {
      v3 = 7;
    }

    else
    {
      v3 = v5;
    }

    if ((v5 & 0x80000000) == 0)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _MOLogGetPreferenceIntValue(uint64_t a1, SInt32 *a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"MobileSystemServices-%s-%s", a1, "LogLevel");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFPreferencesCopyValue(v3, *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF030]);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      v8 = CFNumberGetValue(v6, kCFNumberIntType, a2) != 0;
    }

    else
    {
      v9 = CFGetTypeID(v6);
      if (v9 == CFStringGetTypeID())
      {
        *a2 = CFStringGetIntValue(v6);
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

CFDataRef MOCreateSerializedData(CFPropertyListRef propertyList)
{
  error = 0;
  v5 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], propertyList, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (!v5)
  {
    MOLogWrite(0, 3, "MOCreateSerializedData", @"Failed to serialize: %@\n", v1, v2, v3, v4, error);
    if (error)
    {
      CFRelease(error);
    }
  }

  return v5;
}

CFPropertyListRef MOCreateCFTypeFromSerializedBuffer(UInt8 *bytes, CFIndex length)
{
  error = 0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
  if (v3)
  {
    v8 = v3;
    v13 = CFPropertyListCreateWithData(v2, v3, 0, 0, &error);
    if (!v13)
    {
      MOLogWrite(0, 3, "MOCreateCFTypeFromSerializedBuffer", @"Unserialization failed: %@\n", v9, v10, v11, v12, error);
      if (error)
      {
        CFRelease(error);
      }
    }

    CFRelease(v8);
  }

  else
  {
    MOLogWrite(0, 3, "MOCreateCFTypeFromSerializedBuffer", @"Failed to create data from buffer", v4, v5, v6, v7, v15);
    return 0;
  }

  return v13;
}