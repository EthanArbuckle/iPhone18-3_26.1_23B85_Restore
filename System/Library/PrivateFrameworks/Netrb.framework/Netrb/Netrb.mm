void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 2000;
  v7 = 0;
  if (!NETRBLogCreate())
  {
    v9 = *MEMORY[0x277CBECE8];
    if (__NETRBClientGetTypeID_pred != -1)
    {
      _NETRBClientCreateInternal_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v11 = __NETRBClientGetQueue___netrbQueue;
      if (!__NETRBClientGetQueue___netrbQueue)
      {
        goto LABEL_19;
      }

      if (__NETRBClientGetXpcQueue_predXpc != -1)
      {
        _NETRBClientCreateInternal_cold_3();
      }

      if (__NETRBClientGetXpcQueue___netrbXpcQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientCreateInternal_block_invoke;
        block[3] = &unk_2799673C0;
        block[6] = v7;
        block[7] = __NETRBClientGetXpcQueue___netrbXpcQueue;
        block[4] = &v18;
        block[5] = &v14;
        block[8] = v11;
        block[9] = a4;
        dispatch_sync(v11, block);
        if (*(v19 + 24) == 1 && (v15[3] | 2) == 0x7D2)
        {
          *(v19 + 24) = 0;
        }
      }

      else
      {
LABEL_19:
        NETRBErrorLog();
      }

      if ((v19[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v12 = __error();
      strerror(*v12);
      NETRBErrorLog();
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

uint64_t NETRBLogCreate()
{
  if (NETRBLogCreate_predLog != -1)
  {
    NETRBLogCreate_cold_1();
  }

  if (NETRBLogCreate_error)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void __NETRBLogCreate_block_invoke()
{
  __netrbLog = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!__netrbLog)
  {
    NETRBLogCreate_error = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NETRBLogCreate_block_invoke_cold_1();
    }
  }
}

BOOL NETRBXPCCreate(dispatch_queue_t targetq, uint64_t a2)
{
  if (__netrbConnection)
  {
    NETRBDebugLog();
    return 1;
  }

  __netrbConnection = xpc_connection_create_mach_service(netrbXPCService, targetq, 2uLL);
  if (!__netrbConnection)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x25F870830]() != MEMORY[0x277D86450])
  {
    if (__netrbConnection)
    {
      xpc_release(__netrbConnection);
LABEL_8:
      result = 0;
      __netrbConnection = 0;
      return result;
    }

LABEL_7:
    NETRBErrorLog();
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __NETRBXPCCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_77;
  handler[4] = __netrbConnection;
  handler[5] = a2;
  xpc_connection_set_event_handler(__netrbConnection, handler);
  NETRBInfoLog();
  xpc_connection_resume(__netrbConnection);
  return __netrbConnection != 0;
}

uint64_t NETRBXPCEndPointCreate(dispatch_queue_t targetq)
{
  if (__netrbReceiverConnection)
  {
    NETRBDebugLog();
  }

  else
  {
    v2 = xpc_connection_create(0, targetq);
    __netrbReceiverConnection = v2;
    if (!v2)
    {
      NETRBErrorLog();
      return 0;
    }

    v3 = v2;
    NETRBInfoLog();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __NETRBXPCEndPointCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_72;
    handler[4] = v3;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(__netrbReceiverConnection);
  }

  return 1;
}

BOOL NETRBXPCSetupAndSend(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, netrbXPCKey) == 1000)
  {
    if (!__netrbReceiverConnection)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, netrbXPCClientComm, __netrbReceiverConnection);
  }

  if (a1)
  {
    v6 = __netrbConnection != 0;
    if (__netrbConnection)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ____NETRBXPCSendMessage_block_invoke;
      handler[3] = &unk_279967370;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(__netrbConnection, xdict, a1, handler);
    }

    else
    {
      NETRBDebugLog();
    }

    return v6;
  }

  if (!__netrbConnection)
  {
    NETRBDebugLog();
    return 0;
  }

  v7 = xpc_connection_send_message_with_reply_sync(__netrbConnection, xdict);
  v8 = v7;
  v9 = MEMORY[0x277D86468];
  if (v7)
  {
    v10 = MEMORY[0x25F870830](v7);
    if (v10 != MEMORY[0x277D86480])
    {
      v11 = v10;
      if (v10 == v9)
      {
        if (xpc_dictionary_get_uint64(v8, netrbXPCResponse) == 2002)
        {
          NETRBErrorLog();
          NETRBXPCCleanup();
        }

        v11 = MEMORY[0x277D86468];
      }

      else
      {
        NETRBErrorLog();
        NETRBXPCCleanup();
      }

      goto LABEL_18;
    }

    xpc_dictionary_get_string(v8, *MEMORY[0x277D86400]);
    NETRBErrorLog();
    NETRBXPCCleanup();
  }

  else
  {
    NETRBXPCCleanup();
    NETRBErrorLog();
  }

  v11 = MEMORY[0x277D86480];
LABEL_18:
  if (v11 == v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  (*(a3 + 16))(a3, v12);
  if (v8)
  {
    xpc_release(v8);
  }

  return 1;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v7 = a1;
    _NETRBClientCreateInternal_cold_2();
    a1 = v7;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetGlobalServiceState_block_invoke;
    block[3] = &unk_279967518;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t __NETRBClientValidateClient(_BYTE *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!__netrbClientList || (Count = CFArrayGetCount(__netrbClientList)) == 0 || (v3 = Count, Count < 1))
  {
LABEL_9:
    NETRBErrorLog();
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(__netrbClientList, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientDestroy_block_invoke;
    block[3] = &unk_279967410;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    NETRBErrorLog();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __NETRBClientRemoveFromList(const void *a1)
{
  if (__netrbClientList && CFArrayGetCount(__netrbClientList) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(__netrbClientList, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(__netrbClientList))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(__netrbClientList, v2);
    if (!CFArrayGetCount(__netrbClientList))
    {
      NETRBXPCCleanup();
      NETRBEndPointCleanup();
      CFRelease(__netrbClientList);
      __netrbClientList = 0;
    }
  }
}

BOOL NETRBXPCCleanup()
{
  v0 = __netrbConnection;
  if (__netrbConnection)
  {
    NETRBInfoLog();
    xpc_connection_cancel(__netrbConnection);
    xpc_release(__netrbConnection);
    __netrbConnection = 0;
  }

  return v0 != 0;
}

BOOL NETRBEndPointCleanup()
{
  v0 = __netrbReceiverConnection;
  if (__netrbReceiverConnection)
  {
    NETRBInfoLog();
    xpc_connection_cancel(__netrbReceiverConnection);
    xpc_release(__netrbReceiverConnection);
    __netrbReceiverConnection = 0;
  }

  return v0 != 0;
}

uint64_t __NETRBClientRelease(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  return NETRBInfoLog();
}

void __NETRBXPCCreate_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __NETRBXPCCreate_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_76;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void __NETRBXPCEndPointCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x25F870830](a2);
  v5 = *(a1 + 32);
  if (v5 && (v5 == __netrbReceiverConnection ? (v6 = v4 == MEMORY[0x277D86480]) : (v6 = 0), v6))
  {
    if (a2 == MEMORY[0x277D86420] || a2 == MEMORY[0x277D863F8])
    {
      NETRBInfoLog();
    }
  }

  else if (v4 == MEMORY[0x277D86450])
  {
    v7 = *(a1 + 40);
    NETRBInfoLog();
    if (__netrbNotificationConnection)
    {
      xpc_connection_cancel(__netrbNotificationConnection);
      xpc_release(__netrbNotificationConnection);
      __netrbNotificationConnection = 0;
    }

    __netrbNotificationConnection = xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____NETRBXPCNewNotificationConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void __NETRBXPCCreate_block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x25F870830](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    if (*(a1 + 40) == __netrbConnection)
    {
      v3 = *(a1 + 40);
      xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
      NETRBErrorLog();
      NETRBXPCCleanup();
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v2 = *(a1 + 32);

  xpc_release(v2);
}

uint64_t netrbInitIfnetTrafficDescriptor(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x25F870830]();
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    goto LABEL_3;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam);
  if (!value)
  {
    goto LABEL_3;
  }

  v8 = value;
  if (MEMORY[0x25F870830]() != v5)
  {
    goto LABEL_3;
  }

  v35 = 0uLL;
  v34 = 0uLL;
  v9 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorIpVersion);
  v10 = MEMORY[0x277D864C8];
  if (v9 && (v11 = v9, MEMORY[0x25F870830]() == v10))
  {
    v19 = xpc_uint64_get_value(v11);
    v20 = v19;
    if (v19 != 4 && v19 != 96)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v19;
    }

    v21 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorLocalIp);
    v22 = MEMORY[0x277D864C0];
    if (v21 && (v23 = v21, MEMORY[0x25F870830]() == v22))
    {
      string_ptr = xpc_string_get_string_ptr(v23);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      NETRBInfoLog();
      string_ptr = 0;
    }

    v25 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorRemoteIp);
    if (v25 && (v26 = v25, MEMORY[0x25F870830]() == v22))
    {
      v27 = xpc_string_get_string_ptr(v26);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      NETRBInfoLog();
      v27 = 0;
    }

    if (v20 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v35 + 12) != 1 || v27 && inet_pton(2, v27, &v34 + 12) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v35);
        *(a2 + 40) = HIDWORD(v34);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v35) != 1 || v27 && inet_pton(30, v27, &v34) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        v33 = v34;
        *(a2 + 12) = v35;
        *(a2 + 28) = v33;
      }
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v12 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorIpProtocol);
  if (v12 && (v13 = v12, MEMORY[0x25F870830]() == v10))
  {
    v28 = xpc_uint64_get_value(v13);
    if (v28 != 17 && v28 != 6)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v28;
    }
  }

  else
  {
    NETRBInfoLog();
  }

  v14 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorLocalPort);
  if (v14)
  {
    v15 = v14;
    if (MEMORY[0x25F870830]() != v10)
    {
      goto LABEL_3;
    }

    v16 = xpc_uint64_get_value(v15);
    if (v16 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v16) >> 16;
    }
  }

  else
  {
    NETRBInfoLog();
  }

  v17 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorRemotePort);
  if (v17)
  {
    v18 = v17;
    if (MEMORY[0x25F870830]() != v10)
    {
      goto LABEL_3;
    }

    v32 = xpc_uint64_get_value(v18);
    if (v32 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v32) >> 16;
    }
  }

  else
  {
    NETRBErrorLog();
  }

  v30 = xpc_dictionary_get_value(v8, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout);
  if (v30)
  {
    v31 = v30;
    if (MEMORY[0x25F870830]() != v10 || xpc_uint64_get_value(v31) >= 0x69781)
    {
LABEL_3:
      NETRBErrorLog();
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  if (!a1 || (a3 - 205) <= 0xFFFFFFFA || (a4 - 304) <= 0xFFFFFFFB || __s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1) || (v10 = xpc_dictionary_create(0, 0, 0)) == 0)
  {
    NETRBErrorLog();
    goto LABEL_22;
  }

  v11 = v10;
  if (!a5)
  {
    goto LABEL_18;
  }

  v12 = MEMORY[0x25F870830](a5);
  v13 = MEMORY[0x277D86468];
  if (v12 != MEMORY[0x277D86468])
  {
    goto LABEL_18;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType);
  if (!value)
  {
    goto LABEL_18;
  }

  v15 = value;
  v16 = MEMORY[0x25F870830]();
  v17 = MEMORY[0x277D864C8];
  if (v16 != MEMORY[0x277D864C8])
  {
    goto LABEL_18;
  }

  v18 = xpc_uint64_get_value(v15);
  if (v18 >= 7)
  {
    goto LABEL_18;
  }

  v22 = v18;
  xpc_dictionary_set_uint64(v11, netrbXPCDeviceType, v18);
  if (v22 != 1)
  {
    v25 = xpc_dictionary_get_value(a5, netrbClientInterfaceName);
    if (!v25)
    {
      goto LABEL_18;
    }

    v26 = v25;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    string_ptr = xpc_string_get_string_ptr(v26);
    if (!if_nametoindex(string_ptr))
    {
      goto LABEL_18;
    }

    v32 = netrbXPCInterfaceName;
    v33 = xpc_string_get_string_ptr(v26);
    xpc_dictionary_set_string(v11, v32, v33);
  }

  v23 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU);
  if (v23)
  {
    v24 = v23;
    if (MEMORY[0x25F870830]() != v17)
    {
      goto LABEL_18;
    }

    v27 = netrbXPCInterfaceMTU;
    v28 = xpc_uint64_get_value(v24);
    xpc_dictionary_set_uint64(v11, v27, v28);
  }

  v29 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance);
  if (v29)
  {
    v30 = v29;
    if (MEMORY[0x25F870830]() != v17)
    {
      goto LABEL_18;
    }

    v34 = netrbXPCInterfaceInstance;
    v35 = xpc_uint64_get_value(v30);
    xpc_dictionary_set_uint64(v11, v34, v35);
  }

  v36 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v36)
  {
    v37 = v36;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    v38 = netrbXPCStartAddress;
    v39 = xpc_string_get_string_ptr(v37);
    xpc_dictionary_set_string(v11, v38, v39);
  }

  v40 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v40)
  {
    v41 = v40;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      goto LABEL_18;
    }

    v42 = netrbXPCEndAddress;
    v43 = xpc_string_get_string_ptr(v41);
    xpc_dictionary_set_string(v11, v42, v43);
  }

  v44 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (!v44)
  {
    goto LABEL_46;
  }

  v45 = v44;
  if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
  {
LABEL_18:
    NETRBErrorLog();
LABEL_19:
    v19 = v11;
LABEL_20:
    xpc_release(v19);
    goto LABEL_22;
  }

  v46 = netrbXPCNetworkMask;
  v47 = xpc_string_get_string_ptr(v45);
  xpc_dictionary_set_string(v11, v46, v47);
LABEL_46:
  v48 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v48)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v11, netrbXPCNatType, 0x1F5uLL);
LABEL_56:
      v52 = 0;
      goto LABEL_57;
    }

    xpc_dictionary_set_uint64(v11, netrbXPCNatType, 0x1F4uLL);
LABEL_51:
    if (!insert_nat66_params(a5, v11))
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  v49 = v48;
  if (MEMORY[0x25F870830]() != v17)
  {
    goto LABEL_18;
  }

  v50 = xpc_uint64_get_value(v49);
  v51 = v50;
  if (v50 - 503 <= 0xFFFFFFFC)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(v11, netrbXPCNatType, v50);
  if (v51 == 500)
  {
    goto LABEL_51;
  }

  if (v51 != 502)
  {
    goto LABEL_56;
  }

  v53 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v53)
  {
    goto LABEL_56;
  }

  v54 = v53;
  if (MEMORY[0x25F870830]() != v13)
  {
    goto LABEL_18;
  }

  v55 = xpc_dictionary_create(0, 0, 0);
  if (!v55)
  {
    goto LABEL_18;
  }

  v52 = v55;
  v56 = xpc_dictionary_get_value(v54, netrbClientDns64Prefix);
  if (v56)
  {
    v57 = v56;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      goto LABEL_76;
    }

    v58 = netrbXPCDns64Prefix;
    v59 = xpc_string_get_string_ptr(v57);
    xpc_dictionary_set_string(v52, v58, v59);
  }

  v60 = xpc_dictionary_get_value(v54, netrbClientRaPrefix);
  if (v60)
  {
    v61 = v60;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
LABEL_76:
      NETRBErrorLog();
      xpc_release(v11);
LABEL_63:
      v19 = v52;
      goto LABEL_20;
    }

    v62 = netrbXPCRaPrefix;
    v63 = xpc_string_get_string_ptr(v61);
    xpc_dictionary_set_string(v52, v62, v63);
  }

  xpc_dictionary_set_value(v11, netrbXPCNat64Param, v52);
LABEL_57:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStartService_block_invoke;
    block[3] = &unk_279967458;
    block[4] = &v67;
    block[5] = a1;
    v65 = a3;
    v66 = a4;
    block[6] = v11;
    block[7] = __s1;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
    NETRBErrorLog();
  }

  xpc_release(v11);
  if (v52)
  {
    goto LABEL_63;
  }

LABEL_22:
  v20 = *(v68 + 24);
  _Block_object_dispose(&v67, 8);
  return v20;
}

uint64_t insert_nat66_params(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D86468] || (string = xpc_dictionary_get_string(v4, netrbClientRaPrefix)) == 0)
    {
      NETRBErrorLog();
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, netrbXPCRaPrefix, v7);
    xpc_dictionary_set_value(a2, netrbXPCNat66Param, v8);
  }

  return 1;
}

void __NETRBClientResponseHandler(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v17 = (&off_279967CA0)[a2 - 1001];
  NETRBInfoLog();
  if (__NETRBClientValidateClient(a1) || !*(a1 + 16) || !*(a1 + 24))
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) != 2003)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v8 = v9;
      if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) != 2002)
      {
        uint64 = xpc_dictionary_get_uint64(a3, netrbXPCResponse);
        if (uint64 == 2001)
        {
          v15 = 5002;
        }

        else
        {
          v15 = 5003;
        }

        xpc_dictionary_set_uint64(v8, netrbClientNotificationKey, v15);
        if (a2 != 1014 || uint64 != 2000)
        {
          if (a2 == 1014 && uint64 == 2001)
          {
            notification_insert_keys(v8, a3);
          }

          goto LABEL_16;
        }

        v16 = xpc_dictionary_get_uint64(a3, netrbXPCErrorCode);
        if (!v16)
        {
LABEL_16:
          v13 = *(a1 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ____NETRBClientResponseHandler_block_invoke;
          block[3] = &__block_descriptor_tmp_228;
          v19 = a2;
          block[4] = a1;
          block[5] = a4;
          block[6] = v8;
          dispatch_async(v13, block);
          return;
        }

        v12 = v16;
        v10 = netrbClientErrorCode;
        v11 = v8;
LABEL_15:
        xpc_dictionary_set_uint64(v11, v10, v12);
        goto LABEL_16;
      }

LABEL_14:
      v10 = netrbClientNotificationKey;
      v11 = v8;
      v12 = 5003;
      goto LABEL_15;
    }

LABEL_17:
    NETRBErrorLog();
    goto LABEL_7;
  }

LABEL_6:
  NETRBDebugLog();
LABEL_7:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStopService_block_invoke;
    block[3] = &unk_2799674A0;
    block[4] = &v5;
    block[5] = a1;
    block[6] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
LABEL_6:
    NETRBErrorLog();
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientGetDynamicStoreKey_block_invoke;
    v6[3] = &unk_2799674C8;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v8 + 24) == 1)
    {
      strcpy(a2, "com.apple.MobileInternetSharing");
    }
  }

  else
  {
LABEL_8:
    NETRBErrorLog();
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (!a1 || (a2 - 1024) <= 0xFFFFFFFB)
  {
    goto LABEL_10;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientSetGlobalServiceState_block_invoke;
    block[3] = &unk_279967568;
    v7 = a2;
    block[4] = &v12;
    block[5] = &v8;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v13 + 24) == 1)
    {
      *(v13 + 24) = v9[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    NETRBErrorLog();
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientGetExtName_block_invoke;
    v6[3] = &unk_2799675B8;
    v6[4] = &v11;
    v6[5] = &v7;
    v6[6] = a1;
    v6[7] = a2;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_8:
    NETRBErrorLog();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    NETRBErrorLog();
    goto LABEL_12;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (!__NETRBClientGetQueue___netrbQueue)
  {
    NETRBErrorLog();
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke;
  block[3] = &unk_279967608;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort, *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort, *(v14 + 12));
  }

  else
  {
    NETRBErrorLog();
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (!a1 || !a2 || MEMORY[0x25F870830](a2) != MEMORY[0x277D86468])
  {
    goto LABEL_4;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke;
    v6[3] = &unk_279967658;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = &v11;
    v6[5] = &v7;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
    if (*(v12 + 24) == 1)
    {
      *(v12 + 24) = v8[3] == 2001;
    }
  }

  else
  {
LABEL_4:
    NETRBErrorLog();
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientIsAllowedMoreHost_block_invoke;
    block[3] = &unk_2799676A8;
    block[4] = &v9;
    block[5] = &v5;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v10 + 24) == 1)
    {
      *(v10 + 24) = v6[3] == 2001;
    }
  }

  else
  {
LABEL_7:
    NETRBErrorLog();
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (a2 && MEMORY[0x25F870830](a2) == MEMORY[0x277D86468] && (v6 = xpc_dictionary_get_value(a2, netrbClientHostIftype)) != 0 && (v7 = v6, v8 = MEMORY[0x25F870830](), v9 = MEMORY[0x277D864C8], v8 == MEMORY[0x277D864C8]) && (v10 = xpc_uint64_get_value(v7), (v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId)) != 0) && (v12 = v11, MEMORY[0x25F870830]() == v9))
  {
    value = xpc_uint64_get_value(v12);
    if (!a1 || (v10 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v14 = value;
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientAddHostExt_block_invoke;
      block[3] = &unk_2799676F8;
      v16 = v10;
      block[6] = a1;
      block[7] = v14;
      block[4] = &v21;
      block[5] = &v17;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v22 + 24) == 1)
      {
        *(v22 + 24) = v18[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      NETRBErrorLog();
    }
  }

  else
  {
    NETRBErrorLog();
    *(v22 + 24) = 0;
  }

  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (a2 && MEMORY[0x25F870830](a2) == MEMORY[0x277D86468] && (v6 = xpc_dictionary_get_value(a2, netrbClientHostIftype)) != 0 && (v7 = v6, v8 = MEMORY[0x25F870830](), v9 = MEMORY[0x277D864C8], v8 == MEMORY[0x277D864C8]) && (v10 = xpc_uint64_get_value(v7), (v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId)) != 0) && (v12 = v11, MEMORY[0x25F870830]() == v9))
  {
    value = xpc_uint64_get_value(v12);
    if (!a1 || (v10 - 7) <= 0xFFFFFFFA)
    {
      goto LABEL_20;
    }

    v14 = value;
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientRemoveHostExt_block_invoke;
      block[3] = &unk_279967748;
      v16 = v10;
      block[6] = a1;
      block[7] = v14;
      block[4] = &v21;
      block[5] = &v17;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v22 + 24) == 1)
      {
        *(v22 + 24) = v18[3] == 2001;
      }
    }

    else
    {
LABEL_20:
      NETRBErrorLog();
    }
  }

  else
  {
    NETRBErrorLog();
    *(v22 + 24) = 0;
  }

  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v7 = a1;
    _NETRBClientCreateInternal_cold_2();
    a1 = v7;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetHostCount_block_invoke;
    block[3] = &unk_279967798;
    block[4] = &v13;
    block[5] = &v9;
    block[6] = &v21;
    block[7] = &v17;
    block[8] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v14 + 24) == 1)
    {
      *(v14 + 24) = v10[3] == 2001;
      *a2 = *(v22 + 6);
      *a3 = *(v18 + 6);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (!a1 || (a2 - 7) <= 0xFFFFFFFA)
  {
    goto LABEL_10;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientSetHostCount_block_invoke;
    block[3] = &unk_2799677E8;
    v9 = a2;
    v10 = a3;
    block[4] = &v15;
    block[5] = &v11;
    block[6] = a1;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    if (*(v16 + 24) == 1)
    {
      *(v16 + 24) = v12[3] == 2001;
    }
  }

  else
  {
LABEL_10:
    NETRBErrorLog();
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  if (!a1)
  {
    goto LABEL_40;
  }

  v41[3] = xpc_dictionary_create(0, 0, 0);
  if (a4)
  {
    string = xpc_dictionary_get_string(a4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((a2 - 201) >= 3)
  {
    if (a2 != 204 || !string || !*string)
    {
      goto LABEL_40;
    }

    if (a4)
    {
      uint64 = 0;
      goto LABEL_16;
    }

LABEL_22:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_36;
  }

  if (string)
  {
    goto LABEL_40;
  }

  if (!a4)
  {
    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(a4, netrbClientInterfaceMTU);
LABEL_16:
  v9 = v41[3];
  v10 = xpc_dictionary_get_string(a4, netrbClientInterfaceStartAddress);
  v11 = xpc_dictionary_get_string(a4, netrbClientInterfaceEndAddress);
  v12 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
  if (v10 && v11 && (v13 = v12) != 0)
  {
    xpc_dictionary_set_string(v9, netrbXPCStartAddress, v10);
    xpc_dictionary_set_string(v9, netrbXPCEndAddress, v11);
    xpc_dictionary_set_string(v9, netrbXPCNetworkMask, v13);
  }

  else if (v10 | v11)
  {
    goto LABEL_40;
  }

  if (!insert_nat66_params(a4, v41[3]))
  {
    goto LABEL_41;
  }

  v20 = v41[3];
  uuid = xpc_dictionary_get_uuid(a4, netrbClientNetworkIdentifier);
  if (uuid)
  {
    xpc_dictionary_set_uuid(v20, netrbXPCNetworkIdentifier, uuid);
    v22 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv4Address);
    v23 = xpc_dictionary_get_string(a4, netrbClientInterfaceNetworkMask);
    v24 = v23;
    if (v22 && v23)
    {
      xpc_dictionary_set_string(v20, netrbXPCInterfaceIPv4Address, v22);
      xpc_dictionary_set_string(v20, netrbXPCNetworkMask, v24);
    }

    else if (v22 | v23)
    {
      goto LABEL_40;
    }

    v25 = xpc_dictionary_get_string(a4, netrbClientInterfaceIPv6Address);
    if (v25)
    {
      xpc_dictionary_set_string(v20, netrbXPCInterfaceIPv6Address, v25);
    }
  }

  if (xpc_dictionary_get_value(a4, netrbClientAllocateMACAddress))
  {
    v19 = xpc_dictionary_get_BOOL(a4, netrbClientAllocateMACAddress);
  }

  else
  {
    v19 = 1;
  }

  v17 = xpc_dictionary_get_BOOL(a4, netrbClientEnableTSO);
  v16 = xpc_dictionary_get_BOOL(a4, netrbClientEnableIsolation);
  v15 = xpc_dictionary_get_BOOL(a4, netrbClientEnableChecksumOffload);
  v18 = xpc_dictionary_get_BOOL(a4, netrbClientEnableMACNAT);
  LOBYTE(a4) = xpc_dictionary_get_BOOL(a4, netrbClientEnableVirtIOHeader);
  v14 = uint64;
LABEL_36:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    v30 = v14;
    _NETRBClientCreateInternal_cold_2();
    v14 = v30;
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientNewInterface_block_invoke;
    block[3] = &unk_279967830;
    block[6] = a1;
    block[7] = string;
    v34 = v19;
    v35 = v17;
    v36 = a4;
    v37 = v18;
    v38 = v16;
    v39 = v15;
    v32 = a2;
    v33 = v14;
    block[4] = &v40;
    block[5] = &v44;
    block[8] = a3;
    block[9] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    goto LABEL_41;
  }

LABEL_40:
  NETRBErrorLog();
LABEL_41:
  v26 = v41[3];
  if (v26)
  {
    xpc_release(v26);
  }

  v27 = *(v45 + 24);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v27;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v10 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v14 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke;
    block[3] = &unk_2799678A8;
    v20 = a2;
    v18 = a3;
    v21 = v10;
    block[6] = cf;
    block[7] = a5;
    v19 = a6;
    block[4] = a7;
    block[5] = &v22;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v14, block);
    if ((v23[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void *netrbMakePortForwardingRuleDict(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((a3 == 30 || a3 == 2) && (a4 || !a5) && (!a4 || a5) && (!a4 || inet_ntop(a3, a4, string, 0x2Eu)))
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v10 = v13;
    if (a1)
    {
      xpc_dictionary_set_uint64(v13, netrbXPCPortForwardingRuleProtocol, a1);
    }

    if (a2)
    {
      xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleExternalPort, a2);
    }

    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleAddressFamily, a3);
    if (a5)
    {
      xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleInternalPort, a5);
    }

    if (a4)
    {
      xpc_dictionary_set_string(v10, netrbXPCPortForwardingRuleInternalAddress, string);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, char a2, __int16 a3, int a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v6 = a4;
  if (a4 != 2 && a4 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v10 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke;
    block[3] = &unk_279967920;
    v15 = a2;
    v14 = a3;
    v16 = v6;
    block[4] = a5;
    block[5] = &v17;
    block[6] = cf;
    block[7] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v10, block);
    if ((v18[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (!cf)
  {
    goto LABEL_9;
  }

  v4 = a2;
  if (a2 != 2 && a2 != 30)
  {
    goto LABEL_9;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v6 = __NETRBClientGetQueue___netrbQueue;
  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke;
    block[3] = &unk_279967998;
    v10 = v4;
    block[4] = a3;
    block[5] = &v11;
    block[6] = cf;
    block[7] = __NETRBClientGetQueue___netrbQueue;
    CFRetain(cf);
    dispatch_sync(v6, block);
    if ((v12[3] & 1) == 0)
    {
      CFRelease(cf);
    }
  }

  else
  {
LABEL_9:
    NETRBErrorLog();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, int a4, void *a5, _WORD *a6)
{
  if (!xdict || a4 != 2 && a4 != 30)
  {
    goto LABEL_10;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleProtocol);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleExternalPort);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleInternalPort);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleAddressFamily) != a4)
  {
LABEL_10:
    NETRBErrorLog();
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, netrbXPCPortForwardingRuleInternalAddress);
  if (result)
  {
    return (inet_pton(a4, result, a5) != 0);
  }

  return result;
}

uint64_t NETRBClientSendNotification(void *a1)
{
  if (__netrbClientList && (Count = CFArrayGetCount(__netrbClientList)) != 0 && (v3 = Count, (v4 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v5 = v4;
    v6 = netrbClientNotificationKey;
    uint64 = xpc_dictionary_get_uint64(a1, netrbXPCNotification);
    xpc_dictionary_set_uint64(v5, v6, uint64);
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(__netrbClientList, i);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          if (ValueAtIndex[2])
          {
            if (ValueAtIndex[3])
            {
              xpc_retain(v5);
              CFRetain(v10);
              v11 = v10[2];
              v13[0] = MEMORY[0x277D85DD0];
              v13[1] = 0x40000000;
              v13[2] = __NETRBClientSendNotification_block_invoke;
              v13[3] = &__block_descriptor_tmp_179;
              v13[4] = v10;
              v13[5] = v5;
              dispatch_async(v11, v13);
            }
          }
        }
      }
    }

    xpc_release(v5);
    return 1;
  }

  else
  {
    NETRBErrorLog();
    return 0;
  }
}

void __NETRBClientSendNotification_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __NETRBClientSendNotification_block_invoke_2;
  block[3] = &unk_2799679C0;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t __NETRBClientSendNotification_block_invoke_2(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 40) + 24) + 16);

    return v4();
  }

  return result;
}

uint64_t _NETRBClientModifyLowLatencyFlow(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  inited = netrbInitIfnetTrafficDescriptor(a2, 0);
  *(v12 + 24) = inited;
  if ((inited & 1) == 0)
  {
    goto LABEL_6;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke;
    v9[3] = &unk_279967B78;
    v9[4] = &v11;
    v9[5] = a1;
    v9[6] = a2;
    v10 = a3;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, v9);
  }

  else
  {
LABEL_6:
    NETRBErrorLog();
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      NETRBErrorLog();
      CFRelease(v6);
      v6 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v6[10] |= 2u;
        v6[14] |= 4u;
      }
    }
  }

  else
  {
    NETRBErrorLog();
    result = 6003;
  }

  *a2 = v6;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7 = 0;
  if (NETRBLogCreate())
  {
    *(v13 + 6) = 6003;
  }

  else
  {
    GlobalClient = __NETRBNetworkCreateGlobalClient();
    *(v13 + 6) = GlobalClient;
    if (GlobalClient)
    {
      NETRBErrorLog();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v7);
      *(v13 + 6) = 0;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBCreateNetwork_block_invoke;
        block[3] = &unk_279967A30;
        v3 = v7;
        block[6] = a1;
        block[7] = v7;
        block[4] = &v12;
        block[5] = &v8;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if ((v9[3] & 1) == 0)
        {
          NETRBErrorLog();
          *(v13 + 6) = 1;
        }
      }

      else
      {
        NETRBErrorLog();
        *(v13 + 6) = 6003;
        v3 = v7;
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  v4 = *(v13 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t __NETRBNetworkCreateGlobalClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    __NETRBNetworkCreateGlobalClient_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBNetworkCreateGlobalClient_block_invoke;
  block[3] = &unk_279967C00;
  block[4] = &v3;
  dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, netrbXPCNetworkSerialization, a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationDHCPReservation, v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationPortForwarding, v13, v12);
    free(v13);
  }

  return 0;
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v28 = 0;
  if (NETRBLogCreate())
  {
    goto LABEL_2;
  }

  GlobalClient = __NETRBNetworkCreateGlobalClient();
  *(v34 + 6) = GlobalClient;
  if (GlobalClient)
  {
    NETRBErrorLog();
    goto LABEL_5;
  }

  v9 = *MEMORY[0x277CBECE8];
  if (_NETRBInterfaceGetTypeId_pred != -1)
  {
    _NETRBNetworkStartVirtualMachineInterface_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    NETRBErrorLog();
LABEL_2:
    *(v34 + 6) = 6003;
    goto LABEL_5;
  }

  v11 = Instance;
  *(Instance + 48) = 0;
  NETRBInfoLog();
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v12 = __NETRBClientGetQueue___netrbQueue;
  if (!__NETRBClientGetQueue___netrbQueue)
  {
    v14 = 0;
    v15 = 6003;
LABEL_25:
    NETRBErrorLog();
    *(v34 + 6) = v15;
LABEL_26:
    CFRelease(v11);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v28);
  *(v34 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v13 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v13 = 1;
    }

    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v20 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v13 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke;
  block[3] = &unk_279967A80;
  v22 = v13;
  v14 = v28;
  block[6] = a1;
  block[7] = v28;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v16;
  v27 = v20;
  block[4] = &v33;
  block[5] = &v29;
  block[8] = a3;
  block[9] = v11;
  dispatch_sync(v12, block);
  if (!*(v30 + 24))
  {
    v15 = 1;
    goto LABEL_25;
  }

  if (*(v34 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v11;
  CFRetain(a1);
  if (*(v34 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v14)
  {
    xpc_release(v14);
  }

LABEL_5:
  v7 = *(v34 + 6);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v7;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v11 = v10;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v10 + 9) = a3;
    *(v10 + 5) = a4;
    *(v10 + 6) = a5;
    __memcpy_chk();
    v12 = 0;
    *v11 = *(a1 + 144);
    *(a1 + 144) = v11;
  }

  else
  {
    NETRBErrorLog();
    v12 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v11);
  }

  return v12;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, netrbXPCNetworkSerialization, &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationDHCPReservation, &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationPortForwarding, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    NETRBErrorLog();
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v7)
    {
      CFRelease(v6);
      v6 = 0;
    }
  }

  else
  {
    NETRBErrorLog();
    v7 = 6003;
  }

  *a2 = v6;
  return v7;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

void notification_insert_keys(void *a1, xpc_object_t xdict)
{
  v17 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v16 = 0uLL;
  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID);
  if (uuid)
  {
    *v16 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v16);
  }

  v6 = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, netrbXPCStartAddress);
  v8 = xpc_dictionary_get_string(xdict, netrbXPCEndAddress);
  v9 = xpc_dictionary_get_string(xdict, netrbXPCNetworkMask);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, netrbXPCInterfaceMTU);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU, value);
  }

  v14 = xpc_dictionary_get_value(xdict, netrbXPCNat66Param);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void *__NETRBNetworkRelease(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (__NETRBClientValidateClient(_NETRBNetworkClient))
    {
      NETRBErrorLog();
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x401uLL);
      xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
      NETRBXPCSetupAndSend(0, v2, &__block_literal_global_265);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

void __NETRBInterfaceRelease(uint64_t a1)
{
  value = 0;
  if (__NETRBClientValidateClient(_NETRBNetworkClient) || !*(a1 + 56))
  {
    NETRBErrorLog();
  }

  else
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3FFuLL);
    xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCInterfaceId, *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
    NETRBXPCSetupAndSend(0, v2, &__block_literal_global_282);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
    {
      ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
    }

    dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_285);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }
}