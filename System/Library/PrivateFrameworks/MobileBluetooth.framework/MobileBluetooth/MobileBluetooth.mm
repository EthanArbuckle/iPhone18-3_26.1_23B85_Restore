uint64_t getMBXpcConnection(uint64_t a1)
{
  FWSessionByHandle = getFWSessionByHandle(a1);
  if (FWSessionByHandle)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FWSessionByHandle = getFWSessionByUint64(a1);
    if (a1)
    {
LABEL_3:
      if (!FWSessionByHandle)
      {
        return 0;
      }

LABEL_7:
      result = *(FWSessionByHandle + 88);
      if (result)
      {
        return result;
      }

      return 0;
    }
  }

  FWSessionByHandle = getFirstFWSession();
  if (FWSessionByHandle)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t BTLocalDeviceGetModulePower(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetModulePower_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTPowerModule", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetModulePower_block_invoke;
    v11[3] = &unk_1E8517E60;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdLocalDeviceGetModulePowerMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v17 + 6);
    if (!*(v17 + 6))
    {
      *a3 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v9;
}

void *getFWSessionByHandle(int a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  v3 = a1 & 0xFFFF0000;
  while (1)
  {
    v4 = gFWSessionList[v2];
    if (v4)
    {
      if (*v4 == v3)
      {
        break;
      }
    }

    if (++v2 == 100)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_4);
  return v4;
}

void sendMessageWithReplySync(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    sendMessageWithReplySync_cold_2(a1);
  }

  *keys = xmmword_1E85173D0;
  object[0] = xpc_string_create(a2);
  object[1] = a3;
  v8 = xpc_dictionary_create(keys, object, 2uLL);
  v9 = xpc_connection_send_message_with_reply_sync(*(a1 + 2072), v8);
  v10 = v9;
  if (v9 && MEMORY[0x1DA719DD0](v9) == MEMORY[0x1E69E9E98])
  {
    xpc_dictionary_get_string(v10, *MEMORY[0x1E69E9E28]);
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      sendMessageWithReplySync_cold_4();
    }

    xpc_release(v10);
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgResult", 0x515uLL);
  }

  (*(a4 + 16))(a4, v10);
  xpc_release(v10);
  xpc_release(v8);
  xpc_release(object[0]);
  v11 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetModulePower_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTPowerMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "kCBMsgIdLocalDeviceGetModulePowerMsg reply with power state: %llx, result: %llx", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t BTLocalDeviceReadEnhancedPowerProfileStatistics(uint64_t a1, unsigned int a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadEnhancedPowerProfileStatistics_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgReset", a2);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __BTLocalDeviceReadEnhancedPowerProfileStatistics_block_invoke;
    v10[3] = &unk_1E8518338;
    v10[4] = &v11;
    v10[5] = a3;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceReadEnhancedPowerProfileStatisticsMsg", v7, v10);
    if (v7)
    {
      xpc_release(v7);
    }

    v8 = *(v12 + 6);
    _Block_object_dispose(&v11, 8);
    return v8;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTAccessoryManagerGetDevices_cold_4();
  }

  return 1;
}

uint64_t BTLocalDeviceGetDiscoverable(uint64_t a1, _DWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetDiscoverable over XPC localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2000000000;
    v18 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetDiscoverable_block_invoke;
    v11[3] = &unk_1E8517F78;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetDiscoverableMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    *a2 = v13[3];
    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceGetDiscoverable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDiscoverable");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetDiscoverable_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetConnectionStatus(uint64_t a1, _DWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetConnectionStatus localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2000000000;
    v18 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetConnectionStatus_block_invoke;
    v11[3] = &unk_1E8518040;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetConnectionStatusMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    *a2 = v13[3];
    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceGetConnectionStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgConnected");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetConnectionStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetConnectable(uint64_t a1, _DWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetConnectable over XPC localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2000000000;
    v18 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetConnectable_block_invoke;
    v11[3] = &unk_1E8517FC8;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetConnectableMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    *a2 = v13[3];
    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceGetConnectable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgConnectable");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetConnectable_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceAddressFromString(const char *a1, uint64_t a2)
{
  FirstSessionHandle = getFirstSessionHandle();
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceAddressFromString_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(FirstSessionHandle);
  if (MBXpcConnection)
  {
    if (a1)
    {
      v6 = MBXpcConnection;
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v7, "kCBMsgArgAddressString", a1);
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 0;
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2000000000;
      v11[3] = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __BTDeviceAddressFromString_block_invoke;
      v10[3] = &unk_1E8517410;
      v10[4] = &v12;
      v10[5] = v11;
      v10[6] = a2;
      sendMessageWithReplySync(v6, "kCBMsgIdDeviceAddressFromStringMsg", v7, v10);
      if (v7)
      {
        xpc_release(v7);
      }

      v8 = *(v13 + 6);
      _Block_object_dispose(v11, 8);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        BTDeviceAddressFromString_cold_4();
      }

      return 3;
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceAddressToString_cold_4();
    }

    return 1;
  }

  return v8;
}

uint64_t getFirstSessionHandle()
{
  pthread_mutex_lock(&gLock_4);
  v0 = 0;
  while (1)
  {
    v1 = gFWSessionList[v0];
    if (v1)
    {
      break;
    }

    if (++v0 == 100)
    {
      v2 = 0;
      goto LABEL_6;
    }
  }

  v2 = *v1;
LABEL_6:
  pthread_mutex_unlock(&gLock_4);
  return v2;
}

void __BTDeviceAddressFromString_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgAddressBytes", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      if (v6 >= 6)
      {
        v7 = 6;
      }

      else
      {
        v7 = *(*(*(a1 + 40) + 8) + 24);
      }

      memcpy(*(a1 + 48), data, v7);
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __BTDeviceAddressFromString_block_invoke_cold_2(v4);
      }
    }
  }
}

uint64_t getSessionHandle(uint64_t *a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  while (1)
  {
    v3 = gFWSessionList[v2];
    if (v3)
    {
      v4 = *v3;
      if (v3 == a1 || v4 == (a1 & 0xFFFF0000))
      {
        break;
      }
    }

    if (++v2 == 100)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_4);
  return v4;
}

uint64_t BTDeviceFromAddress(uint64_t *a1, const void *a2, void *a3)
{
  SessionHandle = getSessionHandle(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceFromAddress_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v9, "kCBMsgArgAddressBytes", a2, 6uLL);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgSessionID", SessionHandle);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTDeviceFromAddress_block_invoke;
    v12[3] = &unk_1E8517438;
    v12[4] = &v17;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdDeviceFromAddressMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceFromAddress_cold_4();
    }

    return 1;
  }

  return v10;
}

uint64_t getFWSessionByUint64(uint64_t a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  while (1)
  {
    v3 = gFWSessionList[v2];
    if (v3 && v3 == a1)
    {
      break;
    }

    if (++v2 == 100)
    {
      v3 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_4);
  return v3;
}

void __BTDeviceFromAddress_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceFromAddress_block_invoke_cold_2(v5);
  }
}

uint64_t BTSessionAttachWithQueue(const char *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  result = 3;
  if (a1 && a2)
  {
    if (MGGetBoolAnswer() && (MGGetBoolAnswer() & 1) == 0 && ((v10 = IOServiceNameMatching("marconi-bt"), v11 = MEMORY[0x1E696CD60], v10) && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v10)) != 0 || (v13 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(*v11, v13)) != 0))
    {
      IOObjectRelease(MatchingService);
      v14 = malloc_type_malloc(0x60uLL, 0x10B00402E9C0308uLL);
      *v14 = 0;
      v14[21] = 0;
      *(v14 + 1) = strdup(a1);
      *(v14 + 2) = *a2;
      *(v14 + 3) = a3;
      if (a4)
      {
        v15 = a4;
      }

      else
      {
        v15 = MEMORY[0x1E69E96A0];
      }

      *(v14 + 4) = v15;
      dispatch_retain(v15);
      *(v14 + 5) = 0;
      v14[12] = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 7) = 0;
      if (gSessionAttachTries)
      {
        v16 = exp2(gSessionAttachTries) * 100.0 * 1000000.0;
        if (v16 >= 10000000000)
        {
          v17 = 10000000000;
        }

        else
        {
          v17 = v16;
        }
      }

      else
      {
        v17 = 0;
      }

      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      v18 = MBFLogComponent;
      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        v22 = v17;
        v23 = 2048;
        v24 = gSessionAttachTries;
        _os_log_impl(&dword_1D85D5000, v18, OS_LOG_TYPE_DEFAULT, "Delaying BTSessionAttach by %lldmS. Connection attempt:%llu", &v21, 0x16u);
      }

      v19 = dispatch_time(0, v17);
      v20 = _MBTGetAsyncAttachQueue(v14);
      dispatch_after_f(v19, v20, v14, _MBTAsyncAttach);
      result = 0;
    }

    else
    {
      result = 9;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_queue_global_t _MBTGetAsyncAttachQueue(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    _MBTGetAsyncAttachQueue_cold_2(a1);
  }

  if (*(a1 + 32) == MEMORY[0x1E69E96A0])
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      _MBTGetAsyncAttachQueue_cold_6(a1, (a1 + 32));
    }

    return dispatch_get_global_queue(25, 0);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      _MBTGetAsyncAttachQueue_cold_4(a1, (a1 + 32));
    }

    return *(a1 + 32);
  }
}

void _MBTAsyncAttach(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    _MBTAsyncAttach_cold_2(a1);
  }

  if (isDispatchSessionValid(a1))
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      _MBTAsyncAttach_cold_7(a1);
    }
  }

  else
  {
    v8 = 0;
    *(a1 + 88) = createXpcConnection(xpcCBs, *(a1 + 32), *(a1 + 8), 0, a1, &v8);
    *a1 = v8;
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    v2 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      v4 = *a1;
      v5 = *(a1 + 88);
      v6 = *(a1 + 32);
      *buf = 134218752;
      v10 = a1;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      v15 = 2048;
      v16 = v6;
      _os_log_debug_impl(&dword_1D85D5000, v2, OS_LOG_TYPE_DEBUG, "_MBTAsyncAttach fwSession:%llx sessionHandle:%llx xpcConnection:%llx queue:%p", buf, 0x2Au);
    }

    addFWSession(a1);
    if (*(a1 + 88) && v8)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = ___MBTAsyncAttach_block_invoke;
      v7[3] = &__block_descriptor_tmp_5;
      v7[4] = a1;
      _MBTDispachAsyncAttachCompletionBlock(a1, v7);
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTDiscoveryAgentCreate_cold_2();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        _MBTAsyncAttach_cold_5();
      }

      *(a1 + 84) = 3;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

BOOL isDispatchSessionValid(uint64_t a1)
{
  pthread_mutex_lock(&gLock_4);
  if (gFWSessionList[0])
  {
    v2 = gFWSessionList[0] == a1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v7 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v3;
      if (v3 == 99)
      {
        break;
      }

      v5 = gFWSessionList[++v3];
    }

    while (!v5 || v5 != a1);
    v7 = v4 < 0x63;
  }

  pthread_mutex_unlock(&gLock_4);
  return v7;
}

uint64_t createXpcConnection(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (MGGetBoolAnswer())
  {
    v10 = malloc_type_calloc(1uLL, 0xA30uLL, 0x10A0040595E20BAuLL);
    v11 = v10;
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = MEMORY[0x1E69E96A0];
    }

    *v10 = a1;
    v10[325] = a5;
    v13 = (v10 + 292);
    __strlcpy_chk();
    __strlcpy_chk();
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_1();
    }

    v14 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      relative_priority_ptr = 136315650;
      v26 = v13;
      v27 = 2080;
      v28 = v11 + 2080;
      v29 = 2048;
      v30 = a2;
      _os_log_debug_impl(&dword_1D85D5000, v14, OS_LOG_TYPE_DEBUG, "createXpcConnection %s %s queue:%p", &relative_priority_ptr, 0x20u);
    }

    label = dispatch_queue_get_label(v12);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v11 + 2056) = dispatch_queue_create_with_target_V2(label, v16, v12);
    relative_priority_ptr = 0;
    qos_class = dispatch_queue_get_qos_class(v12, &relative_priority_ptr);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, qos_class, relative_priority_ptr);
    v20 = dispatch_queue_create((v11 + 2080), v19);
    *(v11 + 2064) = v20;
    *(v11 + 2072) = xpc_connection_create_mach_service(v13, v20, 0);
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      createXpcConnection_cold_5(v11 + 2080, (v11 + 2072));
    }

    v21 = *(v11 + 2072);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __createXpcConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_15;
    handler[4] = v11;
    xpc_connection_set_event_handler(v21, handler);
    xpc_connection_set_context(*(v11 + 2072), v11);
    xpc_connection_set_finalizer_f(*(v11 + 2072), releaseMBXpcConnection);
    xpc_connection_activate(*(v11 + 2072));
    *a6 = attachSession(v11);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      createXpcConnection_cold_2();
    }

    v11 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t attachSession(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    attachSession_cold_2();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "kCBMsgArgName", (a1 + 2080));
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2000000000;
  v9[2] = 0;
  v6 = 0;
  v7[0] = &v6;
  v7[1] = 0x2000000000;
  v7[2] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __attachSession_block_invoke;
  v5[3] = &unk_1E8517328;
  v5[4] = &v6;
  v5[5] = &v8;
  sendMessageWithReplySync(a1, "kCBMsgIdSessionAttach", v2, v5);
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    attachSession_cold_4(v9, v7);
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2)
  {
LABEL_9:
    xpc_release(v2);
  }

LABEL_10:
  v3 = *(v9[0] + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t __attachSession_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  result = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSessionID");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t addFWSession(uint64_t a1)
{
  if (!a1)
  {
    return 3;
  }

  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  do
  {
    v3 = v2++;
  }

  while (v3 <= 0x63 && gFWSessionList[v3]);
  if (v3 > 0x63)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
    ++sessionCount;
    gFWSessionList[v2 - 1] = a1;
  }

  pthread_mutex_unlock(&gLock_4);
  return v4;
}

void _MBTDispachAsyncAttachCompletionBlock(uint64_t a1, void (**a2)(void))
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    _MBTDispachAsyncAttachCompletionBlock_cold_2(a1);
  }

  if (_MBTGetAsyncAttachQueue(a1) == *(a1 + 32))
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      _MBTDispachAsyncAttachCompletionBlock_cold_6(a1, (a1 + 32));
    }

    a2[2](a2);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      _MBTDispachAsyncAttachCompletionBlock_cold_4(a1, (a1 + 32));
    }

    dispatch_async(*(a1 + 32), a2);
  }
}

uint64_t _MBTSignalSessionEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    _MBTSignalSessionEvent_cold_2();
  }

  return (*(a1 + 16))(v6, a2, a3, *(a1 + 24));
}

void __BTLocalDeviceGetConnectedDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgDeviceArray");
    count = xpc_array_get_count(value);
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        if (i >= *(a1 + 40))
        {
          break;
        }

        *(*(a1 + 48) + 8 * i) = xpc_array_get_uint64(value, i);
        if (MBFLogInitOnce != -1)
        {
          BTAccessoryManagerAddCallbacks_cold_3();
        }

        v8 = MBFLogComponent;
        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(*(a1 + 48) + 8 * i);
          *buf = 134218240;
          v12 = i;
          v13 = 2048;
          v14 = v9;
          _os_log_debug_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEBUG, "i:%lx BTDevie:%llx", buf, 0x16u);
        }
      }
    }

    **(a1 + 56) = count;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetConnectedDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTLocalDeviceGetConnectedDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetConnectedDevices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTLocalDeviceGetConnectedDevices_block_invoke;
    v13[3] = &unk_1E8518068;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdLocalDeviceGetConnectedDevicesMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v11;
}

uint64_t BTDeviceFromIdentifier(uint64_t *a1, const unsigned __int8 *a2, void *a3)
{
  SessionHandle = getSessionHandle(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceFromIdentifier_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uuid(v9, "kCBMsgArgUUID", a2);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgSessionID", SessionHandle);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTDeviceFromIdentifier_block_invoke;
    v12[3] = &unk_1E8517460;
    v12[4] = &v17;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdDeviceFromIdentifierMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceFromAddress_cold_4();
    }

    return 1;
  }

  return v10;
}

void __BTLocalDeviceReadEnhancedPowerProfileStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  length = 0;
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", &length);
  if (length == 248)
  {
    v6 = *(a1 + 40);
    v7 = *data;
    v8 = data[1];
    v9 = data[3];
    *(v6 + 32) = data[2];
    *(v6 + 48) = v9;
    *v6 = v7;
    *(v6 + 16) = v8;
    v10 = data[4];
    v11 = data[5];
    v12 = data[7];
    *(v6 + 96) = data[6];
    *(v6 + 112) = v12;
    *(v6 + 64) = v10;
    *(v6 + 80) = v11;
    v13 = data[8];
    v14 = data[9];
    v15 = data[11];
    *(v6 + 160) = data[10];
    *(v6 + 176) = v15;
    *(v6 + 128) = v13;
    *(v6 + 144) = v14;
    v16 = data[12];
    v17 = data[13];
    v18 = data[14];
    *(v6 + 240) = *(data + 30);
    *(v6 + 208) = v17;
    *(v6 + 224) = v18;
    *(v6 + 192) = v16;
  }

  else
  {
    *(*(*v4 + 8) + 24) = 3;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceReadEnhancedPowerProfileStatistics_block_invoke_cold_2(v4);
  }
}

void handleConnectionEvent(_xpc_connection_s *a1, void *a2)
{
  v4 = MEMORY[0x1DA719DD0](a2);
  context = xpc_connection_get_context(a1);
  if (context)
  {
    v6 = context;
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      handleConnectionEvent_cold_2();
    }

    if (v4 == MEMORY[0x1E69E9E80])
    {
      handleMsg(v6, a2);
    }

    else if (v4 == MEMORY[0x1E69E9E98])
    {
      xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
      if (a2 == MEMORY[0x1E69E9E18])
      {
        if (MBFLogInitOnce != -1)
        {
          attachSession_cold_3();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          handleConnectionEvent_cold_10(v6);
        }

        handleReset(v6);
      }

      else if (a2 == MEMORY[0x1E69E9E20])
      {
        if (MBFLogInitOnce != -1)
        {
          attachSession_cold_3();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          handleConnectionEvent_cold_8(v6);
        }

        handleInvalid(v6);
      }

      else
      {
        if (MBFLogInitOnce != -1)
        {
          attachSession_cold_3();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
        {
          handleConnectionEvent_cold_6();
        }
      }
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        attachSession_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        handleConnectionEvent_cold_4();
      }
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      attachSession_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      handleConnectionEvent_cold_12();
    }
  }
}

void __BTDeviceFromIdentifier_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceFromIdentifier_block_invoke_cold_2(v5);
  }
}

void xpcConnectionDidReceiveMsg(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 2600);
  if (*a2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    v5 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v12 = *(v3 + 8);
      }

      else
      {
        v12 = "UNKNOWN";
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_error_impl(&dword_1D85D5000, v5, OS_LOG_TYPE_ERROR, "Invalid message received for session %s", &v13, 0xCu);
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v11 = *(a1 + 8 * i + 8);
      if (v11)
      {
        if ((*(v11 + 8))(a1, a2, a3))
        {
          break;
        }
      }

      if (i > 0xFE)
      {
        break;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t deviceServiceXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v40 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSessionID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  v25 = uint64;
  Callbacks = _localBTDeviceServiceGetCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v9 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v27 = a2;
    v28 = 2080;
    v29 = (a1 + 2080);
    v30 = 2080;
    v31 = a1 + 2336;
    v32 = 2048;
    v33 = uint64;
    v34 = 2048;
    v35 = v7;
    v36 = 2048;
    v37 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v9, OS_LOG_TYPE_DEBUG, "deviceServiceXpcMsgHandler msg:%s sessionName:%s serviceName:%s session:%llx cbid:%llx cb:%llx", buf, 0x3Eu);
  }

  v10 = strcmp(a2, "kCBMsgIdServiceEvent") || Callbacks == 0;
  v11 = !v10;
  if (!v10)
  {
    v12 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
    v13 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v14 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServiceMask");
    v15 = a2;
    v16 = a1;
    v17 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEventType");
    v18 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
    UserData = _localBTDeviceServiceGetUserData(v25, v7);
    v20 = v17;
    a1 = v16;
    a2 = v15;
    Callbacks(v13, v14, v20, v18, v12, UserData);
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  v21 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v24 = "did not handle";
    *buf = 136316674;
    if (v11)
    {
      v24 = "handled";
    }

    v27 = v24;
    v28 = 2080;
    v29 = a2;
    v30 = 2080;
    v31 = a1 + 2080;
    v32 = 2080;
    v33 = a1 + 2336;
    v34 = 2048;
    v35 = v25;
    v36 = 2048;
    v37 = v7;
    v38 = 2048;
    v39 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v21, OS_LOG_TYPE_DEBUG, "deviceServiceXpcMsgHandler %s %s sessionName:%s serviceName:%s session:%llx cbid:%llx cb:%llx", buf, 0x48u);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t localDeviceXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v50 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgLocalDeviceID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  Callbacks = _localBTLocalDeviceGetCallbacks(uint64, v7);
  StatsCallbacks = _localBTLocalDeviceGetStatsCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v10 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *v35 = 136316674;
    *&v35[4] = a2;
    v36 = 2080;
    v37 = (a1 + 2080);
    v38 = 2080;
    v39 = a1 + 2336;
    v40 = 2048;
    v41 = uint64;
    v42 = 2048;
    v43 = v7;
    v44 = 2048;
    v45 = Callbacks;
    v46 = 2048;
    v47 = StatsCallbacks;
    _os_log_debug_impl(&dword_1D85D5000, v10, OS_LOG_TYPE_DEBUG, "localDeviceXpcMsgHandler msg:%s sessionName:%s serviceName:%s localDeviceId:%llx cbid:%llx cbs:%llx linkCBs:%llx", v35, 0x48u);
  }

  if (!strcmp(a2, "kCBMsgIdLocalDeviceAFHMapChangedEvent"))
  {
    if (Callbacks && Callbacks[2])
    {
      v16 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v17 = StatsCallbacks;
      v18 = a1;
      v19 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
      *v35 = 0;
      data = xpc_dictionary_get_data(xdict, "kCBMsgArgAFHMap", v35);
      v21 = Callbacks[2];
      UserData = _localBTLocalDeviceGetUserData(uint64, v7);
      v23 = v19;
      a1 = v18;
      StatsCallbacks = v17;
      v21(uint64, v23, v16, data, UserData);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (!strcmp(a2, "kCBMsgIdLocalDeviceLETestStoppedEvent"))
  {
    if (Callbacks && Callbacks[1])
    {
      v24 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
      v25 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgNumberOfPackets");
      v26 = Callbacks[1];
      v27 = _localBTLocalDeviceGetUserData(uint64, v7);
      v26(uint64, v24, v25, v27);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (!strcmp(a2, "kCBMsgIdLocalDeviceLinkModeChangedEvent"))
  {
    if (StatsCallbacks && *StatsCallbacks)
    {
      v28 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v29 = *StatsCallbacks;
      v30 = _localBTLocalDeviceGetUserData(uint64, v7);
      v29(uint64, v28, v30);
      goto LABEL_18;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v11 = 0;
  if (!strcmp(a2, "kCBMsgIdLocalDeviceStatusEvent") && Callbacks)
  {
    if (*Callbacks)
    {
      v12 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
      v13 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
      v14 = *Callbacks;
      v15 = _localBTLocalDeviceGetUserData(uint64, v7);
      v14(uint64, v13, v12, v15);
LABEL_18:
      v11 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  v31 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v34 = "did not handle";
    *v35 = 136316930;
    if (v11)
    {
      v34 = "handled";
    }

    *&v35[4] = v34;
    v36 = 2080;
    v37 = a2;
    v38 = 2080;
    v39 = a1 + 2080;
    v40 = 2080;
    v41 = a1 + 2336;
    v42 = 2048;
    v43 = uint64;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = Callbacks;
    v48 = 2048;
    v49 = StatsCallbacks;
    _os_log_debug_impl(&dword_1D85D5000, v31, OS_LOG_TYPE_DEBUG, "localDeviceXpcMsgHandler %s %s sessionName:%s serviceName:%s localDeviceId:%llx cbid:%llx cbs:%llx linkCBs:%llx", v35, 0x52u);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t *_localBTLocalDeviceGetCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &gBTLocalDeviceCallbackList;
  v5 = 64;
  while (*v4 != a1 || v4[5] != a2)
  {
    v4 += 7;
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = v4 + 1;
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return v6;
}

char *_localBTLocalDeviceGetStatsCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &gBTLocalDevicePowerCallbackList;
  v5 = 64;
  while (*v4 != a1 || *(v4 + 3) != a2)
  {
    v4 = (v4 + 40);
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = v4 + 8;
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return v6;
}

void handleMsg(uint64_t a1, xpc_object_t object)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = xpc_copy(object);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = xpc_dictionary_get_string(v8[3], "kCBMsgId");
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = xpc_dictionary_get_value(v8[3], "kCBMsgArgs");
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    handleMsg_cold_2();
  }

  v3 = *(a1 + 2056);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __handleMsg_block_invoke;
  v4[3] = &unk_1E8517390;
  v4[4] = v6;
  v4[5] = v5;
  v4[6] = &v7;
  v4[7] = a1;
  dispatch_async(v3, v4);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
}

void __handleMsg_block_invoke(uint64_t a1)
{
  (*(**(a1 + 56) + 16))(*(a1 + 56), *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(*(a1 + 48) + 8) + 24);

  xpc_release(v2);
}

uint64_t _localBTDeviceServiceGetCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_0);
  v4 = 0;
  v5 = &gBTDeviceServiceCallbackList;
  v6 = 64;
  do
  {
    if (*(v5 + 1) == a1 && *(v5 + 3) == a2)
    {
      v4 = *v5;
    }

    v5 = (v5 + 40);
    --v6;
  }

  while (v6);
  pthread_mutex_unlock(&gLock_0);
  return v4;
}

uint64_t _localBTDeviceServiceGetUserData(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_0);
  v4 = &qword_1ED8FFA50;
  v5 = 64;
  while (*(v4 - 3) != a1 || *(v4 - 1) != a2)
  {
    v4 += 5;
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *v4;
LABEL_7:
  pthread_mutex_unlock(&gLock_0);
  return v6;
}

uint64_t BTDeviceGetAddressString(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetAddressString_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBufferSize", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTDeviceGetAddressString_block_invoke;
    v11[3] = &unk_1E8517488;
    v11[4] = &v12;
    v11[5] = a2;
    v11[6] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdDeviceGetAddressStringMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v9;
}

uint64_t _localBTLocalDeviceGetUserData(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &qword_1ED8FEC60;
  v5 = 64;
  while (*(v4 - 6) != a1 || *(v4 - 1) != a2)
  {
    v4 += 7;
    if (!--v5)
    {
      goto LABEL_5;
    }
  }

  v8 = *v4;
  if (*v4)
  {
    goto LABEL_13;
  }

LABEL_5:
  v6 = &qword_1ECA5DAF8;
  v7 = 64;
  while (*(v6 - 4) != a1 || *(v6 - 1) != a2)
  {
    v6 += 5;
    if (!--v7)
    {
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = *v6;
LABEL_13:
  pthread_mutex_unlock(&gLock_2);
  return v8;
}

void __BTDeviceGetAddressString_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgAddressString");
    if (string)
    {
      strlcpy(*(a1 + 40), string, *(a1 + 48));
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetAddressString_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetDeviceType(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetDeviceType_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceGetDeviceType_block_invoke;
    v9[3] = &unk_1E85174B0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetDeviceTypeMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    *a2 = *(v11 + 6);
    v7 = *(v15 + 6);
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceGetDeviceType_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDeviceType");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetDeviceType_block_invoke_cold_2(v5);
  }
}

BOOL _localBTAccessoryManagerCallbacksRegistered(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock);
  v4 = 0;
  v5 = 1;
  v6 = &gBTAccessoryManagerCallbackList;
  do
  {
    if (*(v6 + 4) == a1)
    {
      v7 = *v6 == *a2 && *(v6 + 1) == a2[1];
      v8 = v7 && *(v6 + 2) == a2[2];
      if (v8 && *(v6 + 3) == a2[3])
      {
        break;
      }
    }

    v5 = v4 < 0x3F;
    v6 += 4;
    ++v4;
  }

  while (v4 != 64);
  pthread_mutex_unlock(&gLock);
  return v5;
}

BOOL _localBTAccessoryManagerCustomCallbacksRegistered(uint64_t a1, void *a2, int a3)
{
  pthread_mutex_lock(&gLock);
  v6 = 0;
  v7 = 1;
  v8 = &gBTAccessoryManagerCustomCallbackList;
  do
  {
    if (*(v8 + 1) == a1 && *v8 == *a2 && *(v8 + 4) == a3)
    {
      break;
    }

    v7 = v6 < 0x3F;
    v8 += 3;
    ++v6;
  }

  while (v6 != 64);
  pthread_mutex_unlock(&gLock);
  return v7;
}

uint64_t _localBTAccessoryManagerAddCallbacks(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gLock);
  v10 = 0;
  v11 = &xmmword_1ED8FDC50;
  while (*v11 || *(v11 + 2))
  {
    ++v10;
    v11 += 4;
    if (v10 == 64)
    {
      v12 = 4;
      goto LABEL_11;
    }
  }

  v13 = ++gCBID;
  *(v11 + 2) = gCBID;
  *(v11 + 3) = a4;
  *v11 = a1;
  v14 = a3[1];
  *(v11 - 2) = *a3;
  *(v11 - 1) = v14;
  *(v11 + 1) = a2;
  *a5 = v13;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v15 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v18 = *v11;
    v19 = *(v11 + 2);
    v20 = *(v11 + 3);
    v21[0] = 67109888;
    v21[1] = v10;
    v22 = 2048;
    v23 = v18;
    v24 = 2048;
    v25 = v19;
    v26 = 2048;
    v27 = v20;
    _os_log_debug_impl(&dword_1D85D5000, v15, OS_LOG_TYPE_DEBUG, "_localBTAccessoryManagerAddCallbacks[%d] manager:%p cbid:%llx userData:%p ", v21, 0x26u);
  }

  v12 = 0;
LABEL_11:
  pthread_mutex_unlock(&gLock);
  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _localBTAccessoryManagerAddCustomCallbacks(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gLock);
  v12 = 0;
  v13 = &qword_1ED8FD058;
  while (*(v13 - 4) || *(v13 - 1))
  {
    ++v12;
    v13 += 6;
    if (v12 == 64)
    {
      v14 = 4;
      goto LABEL_11;
    }
  }

  *(v13 - 6) = a4;
  v15 = ++gCBID;
  *(v13 - 1) = gCBID;
  *v13 = a5;
  *(v13 - 4) = a1;
  *(v13 - 5) = *a3;
  *(v13 - 2) = a2;
  *a6 = v15;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v16 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(v13 - 4);
    v20 = *(v13 - 1);
    v21 = *v13;
    v22[0] = 67110144;
    v22[1] = v12;
    v23 = 2048;
    v24 = v19;
    v25 = 2048;
    v26 = v20;
    v27 = 2048;
    v28 = v21;
    v29 = 1024;
    v30 = a4;
    _os_log_debug_impl(&dword_1D85D5000, v16, OS_LOG_TYPE_DEBUG, "_localBTAccessoryManagerAddCustomCallbacks[%d] manager:%p cbid:%llx userData:%p clientType:0x%X", v22, 0x2Cu);
  }

  v14 = 0;
LABEL_11:
  pthread_mutex_unlock(&gLock);
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t _localBTAccessoryManagerRemoveCallbacks(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &gBTAccessoryManagerCallbackList;
  v5 = 64;
  while (1)
  {
    if (*(v4 + 4) == a1)
    {
      v6 = *v4 == *a2 && *(v4 + 1) == a2[1];
      v7 = v6 && *(v4 + 2) == a2[2];
      if (v7 && *(v4 + 3) == a2[3])
      {
        break;
      }
    }

    v4 += 4;
    if (!--v5)
    {
      goto LABEL_16;
    }
  }

  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
LABEL_16:
  pthread_mutex_unlock(&gLock);
  return 0;
}

uint64_t _localBTAccessoryManagerRemoveAllCallbacksByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock);
  v2 = gBTAccessoryManagerCallbackList;
  v3 = 64;
  do
  {
    if (*(v2 + 5) == a1)
    {
      v2[2] = 0uLL;
      v2[3] = 0uLL;
      *v2 = 0uLL;
      v2[1] = 0uLL;
    }

    v2 += 4;
    --v3;
  }

  while (v3);
  v4 = &gBTAccessoryManagerCustomCallbackList;
  v5 = 64;
  do
  {
    if (*(v4 + 3) == a1)
    {
      v4[1] = 0uLL;
      v4[2] = 0uLL;
      *v4 = 0uLL;
    }

    v4 += 3;
    --v5;
  }

  while (v5);
  pthread_mutex_unlock(&gLock);
  return 0;
}

uint64_t _localBTAccessoryManagerRemoveCustomCallbacks(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &gBTAccessoryManagerCustomCallbackList;
  v5 = 64;
  while (*(v4 + 1) != a1 || *v4 != *a2)
  {
    v4 += 3;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
LABEL_7:
  pthread_mutex_unlock(&gLock);
  return 0;
}

uint64_t _localBTAccessoryManagerGetCallbacksCBID(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &gBTAccessoryManagerCallbackList;
  v5 = 64;
  while (1)
  {
    if (*(v4 + 4) == a1)
    {
      v6 = *v4 == *a2 && *(v4 + 1) == a2[1];
      v7 = v6 && *(v4 + 2) == a2[2];
      if (v7 && *(v4 + 3) == a2[3])
      {
        break;
      }
    }

    v4 += 4;
    if (!--v5)
    {
      v9 = 0;
      goto LABEL_16;
    }
  }

  v9 = *(v4 + 6);
LABEL_16:
  pthread_mutex_unlock(&gLock);
  return v9;
}

uint64_t _localBTAccessoryManagerGetCustomCallbacksCBID(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock);
  v4 = 0;
  v5 = &gBTAccessoryManagerCustomCallbackList;
  while (*(v5 + 1) != a1 || *v5 != *a2)
  {
    v4 += 4;
    v5 += 3;
    if (v4 == 256)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *&gBTAccessoryManagerCallbackList[v4 + 3];
LABEL_7:
  pthread_mutex_unlock(&gLock);
  return v6;
}

__int128 *_localBTAccessoryManagerGetCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock);
  v4 = gBTAccessoryManagerCallbackList;
  v5 = 64;
  while (*(v4 + 4) != a1 || *(v4 + 6) != a2)
  {
    v4 += 4;
    if (!--v5)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock);
  return v4;
}

__int128 *_localBTAccessoryManagerGetCustomCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &gBTAccessoryManagerCustomCallbackList;
  v5 = 64;
  while (*(v4 + 1) != a1 || *(v4 + 4) != a2)
  {
    v4 += 3;
    if (!--v5)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock);
  return v4;
}

uint64_t _localBTAccessoryManagerGetCustomCallbackMsgType(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &xmmword_1ED8FD040;
  v5 = 64;
  while (*(v4 - 1) != a1 || *(v4 + 2) != a2)
  {
    v4 += 3;
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *v4;
LABEL_7:
  pthread_mutex_unlock(&gLock);
  return v6;
}

uint64_t _localBTAccessoryManagerGetUserData(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock);
  v4 = &qword_1ED8FDC68;
  v5 = 64;
  while (*(v4 - 3) != a1 || *(v4 - 1) != a2)
  {
    v4 += 8;
    if (!--v5)
    {
      goto LABEL_5;
    }
  }

  v8 = *v4;
  if (*v4)
  {
    goto LABEL_13;
  }

LABEL_5:
  v6 = &qword_1ED8FD058;
  v7 = 64;
  while (*(v6 - 4) != a1 || *(v6 - 1) != a2)
  {
    v6 += 6;
    if (!--v7)
    {
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = *v6;
LABEL_13:
  pthread_mutex_unlock(&gLock);
  return v8;
}

uint64_t BTAccessoryManagerGetDefault(uint64_t *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  SessionHandle = getSessionHandle(a1);
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    v7 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = v6 + 2336;
      *&buf[12] = 2080;
      *&buf[14] = v6 + 2080;
      *&buf[22] = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = SessionHandle;
      _os_log_debug_impl(&dword_1D85D5000, v7, OS_LOG_TYPE_DEBUG, "BTAccessoryManagerGetDefault service:%s, sessionName:%s session:%llx sessionID:%llx", buf, 0x2Au);
    }

    addXpcMsgHandler(v6, &accessoryManagerXpcCallbacks);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgSessionID", SessionHandle);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v18 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetDefault_block_invoke;
    v12[3] = &unk_1E85166F8;
    v12[4] = buf;
    v12[5] = &v13;
    sendMessageWithReplySync(v6, "kCBMsgIdAccessoryGetDefaultMsg", v8, v12);
    *a2 = *(*&buf[8] + 24);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerGetDefault_cold_3();
    }

    v9 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __BTAccessoryManagerGetDefault_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryManagerID");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDefault_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerAddCallbacks(uint64_t a1, __int128 *a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerAddCallbacks_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      if (_localBTAccessoryManagerCallbacksRegistered(a1, a2))
      {
        if (MBFLogInitOnce != -1)
        {
          BTAccessoryManagerAddCallbacks_cold_3();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTAccessoryManagerAddCallbacks_cold_6();
        }

        return 0;
      }

      else
      {
        value = 0;
        if (_localBTAccessoryManagerAddCallbacks(a1, MBXpcConnection, a2, a3, &value))
        {
          if (MBFLogInitOnce != -1)
          {
            BTAccessoryManagerAddCallbacks_cold_3();
          }

          if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
          {
            BTAccessoryManagerAddCallbacks_cold_4();
          }

          return 4;
        }

        else
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgID", value);
          v11 = 0;
          v12 = &v11;
          v13 = 0x2000000000;
          v14 = 0;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 0x40000000;
          v10[2] = __BTAccessoryManagerAddCallbacks_block_invoke;
          v10[3] = &unk_1E8516720;
          v10[4] = &v11;
          sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdAccessoryAddCallbacksMsg", v8, v10);
          if (v8)
          {
            xpc_release(v8);
          }

          if (v12[3])
          {
            _localBTAccessoryManagerRemoveCallbacks(a1, a2);
            v7 = *(v12 + 6);
          }

          else
          {
            v7 = 0;
          }

          _Block_object_dispose(&v11, 8);
        }
      }

      return v7;
    }
  }

  else if (MBXpcConnection)
  {
    goto LABEL_5;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTAccessoryManagerAddCallbacks_cold_8();
  }

  return 1;
}

void __BTAccessoryManagerAddCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerAddCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerRemoveCallbacks(uint64_t a1, void *a2)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerRemoveCallbacks_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      CallbacksCBID = _localBTAccessoryManagerGetCallbacksCBID(a1, a2);
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 3;
      if (CallbacksCBID)
      {
        v6 = CallbacksCBID;
        _localBTAccessoryManagerRemoveCallbacks(a1, a2);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgAccessoryManagerID", a1);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgID", v6);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __BTAccessoryManagerRemoveCallbacks_block_invoke;
        v10[3] = &unk_1E8516748;
        v10[4] = &v11;
        sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdAccessoryRemoveCallbacksMsg", v7, v10);
        if (v7)
        {
          xpc_release(v7);
        }
      }

      v8 = *(v12 + 6);
      _Block_object_dispose(&v11, 8);
      return v8;
    }
  }

  else if (MBXpcConnection)
  {
    goto LABEL_5;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTAccessoryManagerRemoveCallbacks_cold_4();
  }

  return 1;
}

void __BTAccessoryManagerRemoveCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerRemoveCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerRegisterDevice(uint64_t a1, const void *a2, const char *a3, unsigned int a4, const char *a5, void *a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerRegisterDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    if (a3 && a5)
    {
      v13 = MBXpcConnection;
      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgAccessoryManagerID", a1);
      xpc_dictionary_set_data(v14, "kCBMsgArgAddressBytes", a2, 6uLL);
      xpc_dictionary_set_string(v14, "kCBMsgArgName", a3);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgClassOfDevice", a4);
      xpc_dictionary_set_string(v14, "kCBMsgArgPincode", a5);
      v22 = 0;
      v23 = &v22;
      v24 = 0x2000000000;
      v25 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2000000000;
      v21 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __BTAccessoryManagerRegisterDevice_block_invoke;
      v17[3] = &unk_1E8516770;
      v17[4] = &v22;
      v17[5] = &v18;
      sendMessageWithReplySync(v13, "kCBMsgIdAccessoryRegisterDeviceMsg", v14, v17);
      *a6 = v19[3];
      if (v14)
      {
        xpc_release(v14);
      }

      v15 = *(v23 + 6);
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        BTAccessoryManagerRegisterDevice_cold_4();
      }

      return 3;
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v15;
}

void __BTAccessoryManagerRegisterDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerRegisterDevice_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerPlugInDevice(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerPlugInDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTAccessoryManagerPlugInDevice_block_invoke;
    v9[3] = &unk_1E8516798;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdAccessoryPlugInDeviceMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTAccessoryManagerPlugInDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerPlugInDevice_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerUnplugDevice(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerUnplugDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTAccessoryManagerUnplugDevice_block_invoke;
    v9[3] = &unk_1E85167C0;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdAccessoryUnplugDeviceMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTAccessoryManagerUnplugDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerUnplugDevice_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetDeviceState(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceState_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDeviceState_block_invoke;
    v11[3] = &unk_1E85167E8;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDeviceStateMsg", v8, v11);
    *a3 = *(v13 + 6);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDeviceState_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgState");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceState_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDevices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetDevices_block_invoke;
    v13[3] = &unk_1E8516810;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetDevicesMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgDeviceArray");
  count = xpc_array_get_count(value);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (i >= *(a1 + 40))
      {
        break;
      }

      *(*(a1 + 48) + 8 * i) = xpc_array_get_uint64(value, i);
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      v8 = MBFLogComponent;
      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(*(a1 + 48) + 8 * i);
        *buf = 134218240;
        v12 = i;
        v13 = 2048;
        v14 = v9;
        _os_log_debug_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEBUG, "i:%lx BTDevie:%llx", buf, 0x16u);
      }
    }
  }

  **(a1 + 56) = count;
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetTimeSyncId(uint64_t a1, uint64_t a2, void *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetTimeSyncId_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetTimeSyncId_block_invoke;
    v11[3] = &unk_1E8516838;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetTimeSyncIdMsg", v8, v11);
    *a3 = v13[3];
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetTimeSyncId_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetTimeSyncId_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDeviceBatteryLevel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceBatteryLevel_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDeviceBatteryLevel_block_invoke;
    v11[3] = &unk_1E8516860;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDeviceBatteryLevelMsg", v8, v11);
    *a3 = v13[3];
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDeviceBatteryLevel_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercent");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceBatteryLevel_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDeviceBatteryStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetDeviceBatteryStatus over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v14 = buf;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetDeviceBatteryStatus_block_invoke;
    v12[3] = &unk_1E8516888;
    v12[4] = buf;
    v12[5] = a3;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetDeviceBatteryStatusMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    v10 = *(v14 + 6);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetDeviceBatteryStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  **(a1 + 40) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercentSingle");
  *(*(a1 + 40) + 16) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercentLeft");
  *(*(a1 + 40) + 8) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercentRight");
  *(*(a1 + 40) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercentCase");
  *(*(a1 + 40) + 32) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBatteryPercentCombined");
  *(*(a1 + 40) + 4) = xpc_dictionary_get_BOOL(xdict, "kCBMsgArgBatteryIsChargingSingle");
  *(*(a1 + 40) + 20) = xpc_dictionary_get_BOOL(xdict, "kCBMsgArgBatteryIsChargingLeft");
  *(*(a1 + 40) + 12) = xpc_dictionary_get_BOOL(xdict, "kCBMsgArgBatteryIsChargingRight");
  *(*(a1 + 40) + 28) = xpc_dictionary_get_BOOL(xdict, "kCBMsgArgBatteryIsChargingCase");
  *(*(a1 + 40) + 36) = xpc_dictionary_get_BOOL(xdict, "kCBMsgArgBatteryIsChargingCombined");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "kCBMsgIdAccessoryGetDeviceBatteryStatusMsg reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerIsAccessory(uint64_t a1, uint64_t a2, int *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerIsAccessory_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerIsAccessory_block_invoke;
    v12[3] = &unk_1E85168B0;
    v12[4] = &v17;
    v12[5] = &v13;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryIsAccessoryMsg", v8, v12);
    if (v14[3])
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    if (v8)
    {
      xpc_release(v8);
    }

    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerIsAccessory_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgIsAccessory");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerIsAccessory_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGenerateLinkKey(uint64_t a1, const void *a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGenerateLinkKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_data(v8, "kCBMsgArgAddressBytes", a2, 6uLL);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2000000000;
    v12[3] = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGenerateLinkKey_block_invoke;
    v11[3] = &unk_1E85168D8;
    v11[4] = &v13;
    v11[5] = v12;
    v11[6] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGenerateLinkKeyMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v14 + 6);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGenerateLinkKey_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgLinkKey", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      if (v6 >= 0x10)
      {
        v7 = 16;
      }

      else
      {
        v7 = *(*(*(a1 + 40) + 8) + 24);
      }

      memcpy(*(a1 + 48), data, v7);
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGenerateLinkKey_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSetLinkKeyEx(uint64_t a1, const void *a2, const char *a3, unsigned int a4, unsigned int a5, const void *a6, void *a7)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetLinkKeyEx_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    if (a3)
    {
      v15 = MBXpcConnection;
      v16 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v16, "kCBMsgArgAccessoryManagerID", a1);
      xpc_dictionary_set_data(v16, "kCBMsgArgAddressBytes", a2, 6uLL);
      xpc_dictionary_set_string(v16, "kCBMsgArgName", a3);
      xpc_dictionary_set_uint64(v16, "kCBMsgArgClassOfDevice", a4);
      xpc_dictionary_set_uint64(v16, "kCBMsgArgServiceMask", a5);
      xpc_dictionary_set_data(v16, "kCBMsgArgLinkKey", a6, 0x10uLL);
      v24 = 0;
      v25 = &v24;
      v26 = 0x2000000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2000000000;
      v23 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = __BTAccessoryManagerSetLinkKeyEx_block_invoke;
      v19[3] = &unk_1E8516900;
      v19[4] = &v24;
      v19[5] = &v20;
      sendMessageWithReplySync(v15, "kCBMsgIdAccessorySetLinkKeyExMsg", v16, v19);
      *a7 = v21[3];
      if (v16)
      {
        xpc_release(v16);
      }

      v17 = *(v25 + 6);
      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        BTAccessoryManagerSetLinkKeyEx_cold_4();
      }

      return 3;
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v17;
}

void __BTAccessoryManagerSetLinkKeyEx_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetLinkKeyEx_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerSetDoubleTapAction(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetDoubleTapAction_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDoubleTapAction", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetDoubleTapAction_block_invoke;
    v11[3] = &unk_1E8516928;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetDoubleTapActionMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetDoubleTapAction_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetDoubleTapAction_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSetDoubleTapActionEx(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetDoubleTapActionEx_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgDoubleTapActionLeft", a3);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgDoubleTapActionRight", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSetDoubleTapActionEx_block_invoke;
    v13[3] = &unk_1E8516950;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySetDoubleTapActionExMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSetDoubleTapActionEx_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetDoubleTapActionEx_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSetMicMode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetMicMode_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgMicMode", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetMicMode_block_invoke;
    v11[3] = &unk_1E8516978;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetFirstSettingMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetMicMode_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetMicMode_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerRemoteTimeSyncEnable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerRemoteTimeSyncEnable_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerRemoteTimeSyncEnable_block_invoke;
    v11[3] = &unk_1E85169A0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetRemoteTimeSyncMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerRemoteTimeSyncEnable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerRemoteTimeSyncEnable_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSensorStreamTimeSyncEnable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSensorStreamTimeSyncEnable_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSensorStreamTimeSyncEnable_block_invoke;
    v11[3] = &unk_1E85169C8;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySensorStreamTimeSyncEnableMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSensorStreamTimeSyncEnable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSensorStreamTimeSyncEnable_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSetInEarDetectionEnable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetInEarDetectionEnable_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetInEarDetectionEnable_block_invoke;
    v11[3] = &unk_1E85169F0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetSecondSettingMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetInEarDetectionEnable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetInEarDetectionEnable_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSetIsHidden(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetIsHidden_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetIsHidden_block_invoke;
    v11[3] = &unk_1E8516A18;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetIsHiddenMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetIsHidden_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetIsHidden_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetDoubleTapAction(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDoubleTapAction_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDoubleTapAction_block_invoke;
    v11[3] = &unk_1E8516A40;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDoubleTapActionMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDoubleTapAction_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDoubleTapAction");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDoubleTapAction_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDoubleTapActionEx(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDoubleTapActionEx_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetDoubleTapActionEx_block_invoke;
    v13[3] = &unk_1E8516A68;
    v13[4] = &v22;
    v13[5] = &v18;
    v13[6] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetDoubleTapActionExMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    *a3 = v19[3];
    *a4 = v15[3];
    v11 = *(v23 + 6);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetDoubleTapActionEx_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDoubleTapActionLeft");
  *(*(*(v5 + 16) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDoubleTapActionRight");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDoubleTapActionEx_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDoubleTapCapability(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDoubleTapCapability_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDoubleTapCapability_block_invoke;
    v11[3] = &unk_1E8516A90;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDoubleTapCapabilityMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDoubleTapCapability_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDoubleTapCapability");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDoubleTapCapability_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetFeatureCapability(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetFeatureCapability_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgFeature", a3);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetFeatureCapability_block_invoke;
    v13[3] = &unk_1E8516AB8;
    v13[4] = &v18;
    v13[5] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetFeatureCapabilityMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    *a4 = v15[3];
    v11 = *(v19 + 6);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetFeatureCapability_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSupported");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetFeatureCapability_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetAnnounceMessagesSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetAnnounceMessagesSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke;
    v11[3] = &unk_1E8516AE0;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetAnnounceMessagesSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAnnounceMsgSupport");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetMicMode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetMicMode_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetMicMode_block_invoke;
    v11[3] = &unk_1E8516B08;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetFirstSettingMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetMicMode_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgMicMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetMicMode_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetInEarDetectionEnable(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetInEarDetectionEnable_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetInEarDetectionEnable_block_invoke;
    v11[3] = &unk_1E8516B30;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetSecondSettingMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetInEarDetectionEnable_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgInEarDetect");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetInEarStatus(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetInEarStatus_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetInEarStatus_block_invoke;
    v13[3] = &unk_1E8516B58;
    v13[4] = &v22;
    v13[5] = &v18;
    v13[6] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetInEarStatusMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    *a3 = v19[3];
    *a4 = v15[3];
    v11 = *(v23 + 6);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetInEarStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgInEarStatusPrimary");
  *(*(*(v5 + 16) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgInEarStatusSecondary");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetInEarStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerRegisterCustomMessageClient(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerRegisterCustomMessageClient_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      if (_localBTAccessoryManagerCustomCallbacksRegistered(a1, a2, a3))
      {
        if (MBFLogInitOnce != -1)
        {
          BTAccessoryManagerAddCallbacks_cold_3();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTAccessoryManagerAddCallbacks_cold_6();
        }

        return 0;
      }

      else
      {
        value = 0;
        if (_localBTAccessoryManagerAddCustomCallbacks(a1, MBXpcConnection, a2, a3, a4, &value))
        {
          if (MBFLogInitOnce != -1)
          {
            BTAccessoryManagerAddCallbacks_cold_3();
          }

          if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
          {
            BTAccessoryManagerRegisterCustomMessageClient_cold_4();
          }

          return 4;
        }

        else
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
          xpc_dictionary_set_uint64(v10, "kCBMsgArgID", value);
          xpc_dictionary_set_uint64(v10, "kCBMsgArgEventType", a3);
          if (a4)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0xFFFFFFFFLL;
          }

          xpc_dictionary_set_uint64(v10, "kCBMsgArgUserData", v11);
          v14 = 0;
          v15 = &v14;
          v16 = 0x2000000000;
          v17 = 0;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 0x40000000;
          v13[2] = __BTAccessoryManagerRegisterCustomMessageClient_block_invoke;
          v13[3] = &unk_1E8516B80;
          v13[4] = &v14;
          sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdAccessoryRegisterCustomMessageClientMsg", v10, v13);
          if (v10)
          {
            xpc_release(v10);
          }

          if (v15[3])
          {
            _localBTAccessoryManagerRemoveCustomCallbacks(a1, a2);
            v9 = *(v15 + 6);
          }

          else
          {
            v9 = 0;
          }

          _Block_object_dispose(&v14, 8);
        }
      }

      return v9;
    }
  }

  else if (MBXpcConnection)
  {
    goto LABEL_5;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTAccessoryManagerAddCallbacks_cold_8();
  }

  return 1;
}

void __BTAccessoryManagerRegisterCustomMessageClient_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerRegisterCustomMessageClient_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerDeregisterCustomMessageClient(uint64_t a1, void *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerDeregisterCustomMessageClient_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerRemoveCallbacks_cold_2();
    if (MBXpcConnection)
    {
LABEL_9:
      CustomCallbacksCBID = _localBTAccessoryManagerGetCustomCallbacksCBID(a1, a2);
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 3;
      if (CustomCallbacksCBID)
      {
        v6 = CustomCallbacksCBID;
        _localBTAccessoryManagerRemoveCustomCallbacks(a1, a2);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgAccessoryManagerID", a1);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgID", v6);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __BTAccessoryManagerDeregisterCustomMessageClient_block_invoke;
        v10[3] = &unk_1E8516BA8;
        v10[4] = &v11;
        sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdAccessoryDeregisterCustomMessageClientMsg", v7, v10);
        if (v7)
        {
          xpc_release(v7);
        }
      }

      v8 = *(v12 + 6);
      _Block_object_dispose(&v11, 8);
      return v8;
    }
  }

  else if (MBXpcConnection)
  {
    goto LABEL_9;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTAccessoryManagerRemoveCallbacks_cold_4();
  }

  return 1;
}

void __BTAccessoryManagerDeregisterCustomMessageClient_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerDeregisterCustomMessageClient_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSendCustomMessage(uint64_t a1, unsigned int a2, uint64_t a3, const void *a4, size_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendCustomMessage_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a3);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgClientType", a2);
    xpc_dictionary_set_data(v12, "kCBMsgArgData", a4, a5);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTAccessoryManagerSendCustomMessage_block_invoke;
    v15[3] = &unk_1E8516BD0;
    v15[4] = &v16;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessorySendCustomMessageMsg", v12, v15);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = *(v17 + 6);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v13;
}

void __BTAccessoryManagerSendCustomMessage_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSendCustomMessage_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSimulateAACP(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 2;
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSimulateAACP_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_data(v10, "kCBMsgArgData", a3, a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSimulateAACP_block_invoke;
    v13[3] = &unk_1E8516BF8;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySimulateAACPMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSimulateAACP_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSimulateAACP_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSendAdaptiveVolumeMessage(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendAdaptiveVolumeMessage_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAVMsgLen", a3);
    xpc_dictionary_set_data(v10, "kCBMsgArgData", a4, a3);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSendAdaptiveVolumeMessage_block_invoke;
    v13[3] = &unk_1E8516C20;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySendAdaptiveVolumeMessageMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

uint64_t __BTAccessoryManagerSendAdaptiveVolumeMessage_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BTAccessoryManagerSendPMEConfigMessage(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendPMEConfigMessage_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgPMEMsgLen", a3);
    xpc_dictionary_set_data(v10, "kCBMsgArgData", a4, a3);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSendPMEConfigMessage_block_invoke;
    v13[3] = &unk_1E8516C48;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySendPMEConfigMessageMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

uint64_t __BTAccessoryManagerSendPMEConfigMessage_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BTAccessoryManagerGetDeviceDiagnostics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceDiagnostics_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a5);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerGetDeviceDiagnostics_block_invoke;
    v16[3] = &unk_1E8516C70;
    v16[4] = &v21;
    v16[5] = &v17;
    v16[6] = a3;
    v16[7] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryGetDeviceDiagnosticsMsg", v12, v16);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = v18[3];
    if (v13 >= a5)
    {
      v13 = a5;
    }

    *a4 = v13;
    v14 = *(v22 + 6);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerGetDeviceDiagnostics_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      if (*(a1 + 56) >= v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v7 = *(a1 + 56);
      }

      memcpy(*(a1 + 48), data, v7);
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceDiagnostics_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSendRequestPeriodically(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendRequestPeriodically_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgType", a3);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgInterval", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSendRequestPeriodically_block_invoke;
    v13[3] = &unk_1E8516C98;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySendRequestPeriodicallyMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSendRequestPeriodically_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSendRequestPeriodically_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerCancelRequestPeriodically(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerCancelRequestPeriodically_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgType", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerCancelRequestPeriodically_block_invoke;
    v11[3] = &unk_1E8516CC0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryCancelRequestPeriodicallyMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerCancelRequestPeriodically_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerCancelRequestPeriodically_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSendControlCommand(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendControlCommand_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgValue", a4);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgType", a3);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSendControlCommand_block_invoke;
    v13[3] = &unk_1E8516CE8;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySendControlCommandMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSendControlCommand_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSendControlCommand_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetControlCommand(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetControlCommand_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgType", a3);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgSubType", a4);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTAccessoryManagerGetControlCommand_block_invoke;
    v15[3] = &unk_1E8516D10;
    v15[4] = &v20;
    v15[5] = &v16;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryGetControlCommandMsg", v12, v15);
    if (v12)
    {
      xpc_release(v12);
    }

    *a5 = v17[3];
    v13 = *(v21 + 6);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v13;
}

void __BTAccessoryManagerGetControlCommand_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetControlCommand_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetSettingFeatureBitMask(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetSettingFeatureBitMask_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetSettingFeatureBitMask_block_invoke;
    v11[3] = &unk_1E8516D38;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetSettingFeatureBitMaskMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetSettingFeatureBitMask_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMSgArgFeatureBitMask");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetSettingFeatureBitMask_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetAccessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetAccessoryInfo_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a5);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerGetAccessoryInfo_block_invoke;
    v16[3] = &unk_1E8516D60;
    v16[4] = &v21;
    v16[5] = &v17;
    v16[6] = a3;
    v16[7] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryGetAccessoryInfoMsg", v12, v16);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = v18[3];
    if (v13 >= a5)
    {
      v13 = a5;
    }

    *a4 = v13;
    v14 = *(v22 + 6);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerGetAccessoryInfo_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
    if (data)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      if (v6)
      {
        if (*(a1 + 56) >= v6)
        {
          v7 = *(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v7 = *(a1 + 56);
        }

        memcpy(*(a1 + 48), data, v7);
      }
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetAccessoryInfo_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetAACPCapabilityBits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetAACPCapabilityBits_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a5);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerGetAACPCapabilityBits_block_invoke;
    v16[3] = &unk_1E8516D88;
    v16[4] = &v21;
    v16[5] = &v17;
    v16[6] = a3;
    v16[7] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryGetAACPCapabilityBitsMsg", v12, v16);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = v18[3];
    if (v13 >= a5)
    {
      v13 = a5;
    }

    *a4 = v13;
    v14 = *(v22 + 6);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerGetAACPCapabilityBits_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      if (*(a1 + 56) >= v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v7 = *(a1 + 56);
      }

      memcpy(*(a1 + 48), data, v7);
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetAACPCapabilityBits_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetAACPCapabilityInteger(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v8 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetAACPCapabilityInteger over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v10 = MBXpcConnection;
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgAACPCapabilityInteger", a3);
    *buf = 0;
    v21 = buf;
    v22 = 0x2000000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __BTAccessoryManagerGetAACPCapabilityInteger_block_invoke;
    v14[3] = &unk_1E8516DB0;
    v14[4] = buf;
    v14[5] = &v16;
    v15 = a3;
    sendMessageWithReplySync(v10, "kCBMsgIdAccessoryGetAACPCapabilityIntegerMsg", v11, v14);
    if (v11)
    {
      xpc_release(v11);
    }

    *a4 = v17[3];
    v12 = *(v21 + 6);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v12;
}

void __BTAccessoryManagerGetAACPCapabilityInteger_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v7 = *(a1 + 48);
    v9 = 134218496;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetAACPCapabilityInteger reply result:%llx, value:%llu, index: %u", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerReadDeviceVersionInfo(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, uint64_t a7, _BYTE *a8, uint64_t a9, _BYTE *a10, uint64_t a11, _BYTE *a12, uint64_t a13, _BYTE *a14, uint64_t a15)
{
  *a2 = 0;
  *a4 = 0;
  *a6 = 0;
  *a8 = 0;
  *a10 = 0;
  *a12 = 0;
  *a14 = 0;
  getFirstSessionHandle();
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerReadDeviceVersionInfo_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(0);
  if (MBXpcConnection)
  {
    v21 = MBXpcConnection;
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgAddressStringBuffSize", a3);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgNameBuffSize", a5);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgManufacturerBuffSize", a7);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgModelNumberBuffSize", a9);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgSerialNumberBuffSize", a11);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgFWVersionBuffSize", a13);
    xpc_dictionary_set_uint64(v22, "kCBMsgArgHWVersionBuffSize", a15);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = __BTAccessoryManagerReadDeviceVersionInfo_block_invoke;
    v28[3] = &unk_1E8516DD8;
    v28[4] = &v29;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = a4;
    v28[8] = a5;
    v28[9] = a6;
    v28[10] = a7;
    v28[11] = a8;
    v28[12] = a9;
    v28[13] = a10;
    v28[14] = a11;
    v28[15] = a12;
    v28[16] = a13;
    v28[17] = a14;
    v28[18] = a15;
    sendMessageWithReplySync(v21, "kCBMsgIdAccessoryReadDeviceVersionInfoMsg", v22, v28);
    if (v22)
    {
      xpc_release(v22);
    }

    v23 = *(v30 + 6);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerReadDeviceVersionInfo_cold_4();
    }

    return 1;
  }

  return v23;
}

void __BTAccessoryManagerReadDeviceVersionInfo_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgAddressString");
    if (string)
    {
      strlcpy(*(a1 + 40), string, *(a1 + 48));
    }

    v6 = xpc_dictionary_get_string(xdict, "kCBMsgArgName");
    if (v6)
    {
      strlcpy(*(a1 + 56), v6, *(a1 + 64));
    }

    v7 = xpc_dictionary_get_string(xdict, "kCBMsgArgManufacturer");
    if (v7)
    {
      strlcpy(*(a1 + 72), v7, *(a1 + 80));
    }

    v8 = xpc_dictionary_get_string(xdict, "kCBMsgArgModelNumber");
    if (v8)
    {
      strlcpy(*(a1 + 88), v8, *(a1 + 96));
    }

    v9 = xpc_dictionary_get_string(xdict, "kCBMsgArgSerialNumber");
    if (v9)
    {
      strlcpy(*(a1 + 104), v9, *(a1 + 112));
    }

    v10 = xpc_dictionary_get_string(xdict, "kCBMsgArgFWVersion");
    if (v10)
    {
      strlcpy(*(a1 + 120), v10, *(a1 + 128));
    }

    v11 = xpc_dictionary_get_string(xdict, "kCBMsgArgHWVersion");
    if (v11)
    {
      strlcpy(*(a1 + 136), v11, *(a1 + 144));
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerReadDeviceVersionInfo_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetWirelessSharingSpatial(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetWirelessSharingSpatial over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v18 = buf;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetWirelessSharingSpatial_block_invoke;
    v12[3] = &unk_1E8516E00;
    v12[4] = buf;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetWirelessSharingSpatialMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetWirelessSharingSpatial_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgWSSpatial");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetWirelessSharingSpatial reply result:%llx spatialSupportedWS:%llu", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetDeviceColor(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceColor_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDeviceColor_block_invoke;
    v11[3] = &unk_1E8516E28;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDeviceColorMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDeviceColor_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgColor");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceColor_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerSetupCommand(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetupCommand_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgSetupType", a3);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgOPType", a4);
    xpc_dictionary_set_data(v14, "kCBMsgArgData", a5, a6);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTAccessoryManagerSetupCommand_block_invoke;
    v17[3] = &unk_1E8516E50;
    v17[4] = &v18;
    sendMessageWithReplySync(v13, "kCBMsgIdAccessorySetupCommandMsg", v14, v17);
    if (v14)
    {
      xpc_release(v14);
    }

    v15 = *(v19 + 6);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v15;
}

void __BTAccessoryManagerSetupCommand_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetupCommand_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSendRelayMsg(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSendRelayMsg_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_data(v14, "kCBMsgArgAddressBytes", a3, 6uLL);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgRelayMsgType", a4);
    xpc_dictionary_set_data(v14, "kCBMsgArgData", a5, a6);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTAccessoryManagerSendRelayMsg_block_invoke;
    v17[3] = &unk_1E8516E78;
    v17[4] = &v18;
    sendMessageWithReplySync(v13, "kCBMsgIdAccessorySendRelayMsgMsg", v14, v17);
    if (v14)
    {
      xpc_release(v14);
    }

    v15 = *(v19 + 6);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v15;
}

void __BTAccessoryManagerSendRelayMsg_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSendRelayMsg_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerUpdateConnPriorityList(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, int a5)
{
  LODWORD(v5) = a5;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerUpdateConnPriorityList_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgCmdReqType", a3);
    v13 = xpc_array_create(0, 0);
    if (v5)
    {
      v5 = v5;
      do
      {
        xpc_array_set_data(v13, 0xFFFFFFFFFFFFFFFFLL, a4, 6uLL);
        a4 += 6;
        --v5;
      }

      while (v5);
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerUpdateConnPriorityList_block_invoke;
    v16[3] = &unk_1E8516EA0;
    v16[4] = &v17;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryUpdateConnPriorityListMsg", v12, v16);
    if (v13)
    {
      xpc_release(v13);
    }

    if (v12)
    {
      xpc_release(v12);
    }

    v14 = *(v18 + 6);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerUpdateConnPriorityList_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerUpdateConnPriorityList_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetNonAppleHAEPairedDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetNonAppleHAEPairedDevices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetNonAppleHAEPairedDevices_block_invoke;
    v13[3] = &unk_1E8516EC8;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetNonAppleHAEPairedDevicesMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerGetNonAppleHAEPairedDevices_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetNonAppleHAEPairedDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgDeviceArray");
    count = xpc_array_get_count(value);
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        if (i >= *(a1 + 40))
        {
          break;
        }

        *(*(a1 + 48) + 8 * i) = xpc_array_get_uint64(value, i);
        if (MBFLogInitOnce != -1)
        {
          BTAccessoryManagerAddCallbacks_cold_3();
        }

        v8 = MBFLogComponent;
        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(*(a1 + 48) + 8 * i);
          *buf = 134218240;
          v12 = i;
          v13 = 2048;
          v14 = v9;
          _os_log_debug_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEBUG, "i:%lx BTDevie:%llx", buf, 0x16u);
        }
      }
    }

    **(a1 + 56) = count;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetNonAppleHAEPairedDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerSmartRouteMode(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSmartRouteMode_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryGenericConfigMode", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSmartRouteMode_block_invoke;
    v11[3] = &unk_1E8516EF0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySmartRouteModeMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSmartRouteMode_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSmartRouteMode_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerSpatialAudioConfig(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4, unsigned int a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v10 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v10, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSpatialAudioMode over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v12 = MBXpcConnection;
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_string(v13, "kCBMsgArgAccessoryBundleID", a3);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgAccessoryGenericConfigMode", a4);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgAccessoryHeadTrackingStatus", a5);
    *buf = 0;
    v18 = buf;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerSpatialAudioConfig_block_invoke;
    v16[3] = &unk_1E8516F18;
    v16[4] = buf;
    sendMessageWithReplySync(v12, "kCBMsgIdAccessorySpatialAudioModeMsg", v13, v16);
    if (v13)
    {
      xpc_release(v13);
    }

    v14 = *(v18 + 6);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerSpatialAudioConfig_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v3 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_1D85D5000, v3, OS_LOG_TYPE_DEFAULT, "kCBMsgBTAccessorySmartRouteMode reply result:%llx", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetSpatialAudioConfig(uint64_t a1, uint64_t a2, const char *a3, _DWORD *a4, _DWORD *a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v10 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v10, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSpatialAudioConfig over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v12 = MBXpcConnection;
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_string(v13, "kCBMsgArgAccessoryBundleID", a3);
    *buf = 0;
    v26 = buf;
    v27 = 0x2000000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerGetSpatialAudioConfig_block_invoke;
    v16[3] = &unk_1E8516F40;
    v16[4] = buf;
    v16[5] = &v21;
    v16[6] = &v17;
    sendMessageWithReplySync(v12, "kCBMsgIdAccessoryGetSpatialAudioModeMsg", v13, v16);
    if (v13)
    {
      xpc_release(v13);
    }

    *a4 = v22[3];
    *a5 = v18[3];
    v14 = *(v26 + 6);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerGetSpatialAudioConfig_block_invoke(void *a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  *(*(a1[6] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryHeadTrackingStatus");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1[4] + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSpatialAudioConfig reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetSpatialAudioActive(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSpatialAudioActive over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v18 = buf;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetSpatialAudioActive_block_invoke;
    v12[3] = &unk_1E8516F68;
    v12[4] = buf;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetSpatialAudioActiveMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetSpatialAudioActive_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSpatialAudioActive reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerSpatialAudioAllowed(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSpatialAudioAllowed over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryGenericConfigMode", a3);
    *buf = 0;
    v14 = buf;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerSpatialAudioAllowed_block_invoke;
    v12[3] = &unk_1E8516F90;
    v12[4] = buf;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessorySpatialAudioAllowedMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    v10 = *(v14 + 6);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerSpatialAudioAllowed_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v3 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_1D85D5000, v3, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerSpatialAudioAllowed reply result:%llx", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetSpatialAudioAllowed(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSpatialAudioAllowed over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v18 = buf;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetSpatialAudioAllowed_block_invoke;
    v12[3] = &unk_1E8516FB8;
    v12[4] = buf;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetSpatialAudioAllowedMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetSpatialAudioAllowed_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "kCBMsgIdAccessoryGetSpatialAudioAllowed reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetSmartRouteMode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetSmartRouteMode_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetSmartRouteMode_block_invoke;
    v11[3] = &unk_1E8516FE0;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetSmartRouteModeMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetSmartRouteMode_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetSmartRouteMode_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetSmartRouteSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetSmartRouteSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetSmartRouteSupport_block_invoke;
    v11[3] = &unk_1E8517008;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetSmartRouteSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetSmartRouteSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetSmartRouteSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerSetDeviceStateOnPeerSrc(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetDeviceStateOnPeerSrc_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_data(v10, "kCBMsgArgAddressBytes", a3, 6uLL);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryDeviceState", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSetDeviceStateOnPeerSrc_block_invoke;
    v13[3] = &unk_1E8517030;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySetDeviceStateOnPeerSrcMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSetDeviceStateOnPeerSrc_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetDeviceStateOnPeerSrc_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetStereoHFPSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetStereoHFPSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetStereoHFPSupport_block_invoke;
    v11[3] = &unk_1E8517058;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetStereoHFPSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetStereoHFPSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStereoHFPSupport");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetStereoHFPSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetCallManagementConfigHelper(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetCallManagementConfigHelper_block_invoke;
    v11[3] = &unk_1E8517080;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetCallManagementConfigMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

uint64_t __BTAccessoryManagerGetCallManagementConfigHelper_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  result = xpc_dictionary_get_uint64(xdict, "kCBMsgArgCallManagementMessage");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t BTAccessoryManagerGetCallManagementConfig(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetCallManagementConfig_cold_2();
  }

  v11 = 0;
  result = BTAccessoryManagerGetCallManagementConfigHelper(a1, a2, &v11);
  if (a3)
  {
    v7 = v11;
    if ((v11 & 0xF) == 1)
    {
      *a3 = 1;
      a3[3] = v7 >> 4;
      a3[4] = BYTE1(v7) & 0xF;
      a3[5] = v7 >> 12;
      v9 = HIWORD(v7) & 0xF;
      v10 = 6;
    }

    else
    {
      if ((v11 & 0xF) != 0)
      {
        return result;
      }

      *a3 = 0;
      v8 = v7 >> 4;
      a3[1] = v7 >> 4;
      v9 = (v7 >> 8) & 0xF;
      a3[2] = v9;
      a3[3] = v8;
      v10 = 4;
    }

    a3[v10] = v9;
  }

  return result;
}

uint64_t BTAccessoryManagerGetFeatureProxCardStatus(uint64_t a1, uint64_t a2, void *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetFeatureProxCardStatus_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetFeatureProxCardStatus_block_invoke;
    v11[3] = &unk_1E85170A8;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetFeatureProxCardStatusMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = *(v13 + 6);
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

uint64_t __BTAccessoryManagerGetFeatureProxCardStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  result = xpc_dictionary_get_uint64(xdict, "kCBMsgArgFeatureProxCardStatusMessage");
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t BTAccessoryManagerSetFeatureProxCardStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetFeatureProxCardStatus_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgFeatureProxCardStatusMessage", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetFeatureProxCardStatus_block_invoke;
    v11[3] = &unk_1E85170D0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetFeatureProxCardStatusMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetFeatureProxCardStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetFeatureProxCardStatus_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetDeviceSoundProfileSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceSoundProfileSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke;
    v11[3] = &unk_1E85170F8;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDeviceSoundProfileSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBool");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetDeviceSoundProfileAllowed(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetDeviceSoundProfileAllowed_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetDeviceSoundProfileAllowed_block_invoke;
    v11[3] = &unk_1E8517120;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetDeviceSoundProfileAllowedMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetDeviceSoundProfileAllowed_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBool");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceSoundProfileAllowed_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerSetDeviceSoundProfileAllowed(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetDeviceSoundProfileAllowed_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerSetDeviceSoundProfileAllowed_block_invoke;
    v11[3] = &unk_1E8517148;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessorySetDeviceSoundProfileAllowedMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerSetDeviceSoundProfileAllowed_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetDeviceSoundProfileAllowed_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetSpatialAudioPlatformSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetSpatialAudioPlatformSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetSpatialAudioPlatformSupport_block_invoke;
    v11[3] = &unk_1E8517170;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetSpatialAudioPlatformSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetSpatialAudioPlatformSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryGenericConfigMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetAnnounceCallsSupport(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetAnnounceCallsSupport_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetAnnounceCallsSupport_block_invoke;
    v11[3] = &unk_1E8517198;
    v11[4] = &v16;
    v11[5] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetAnnounceCallsSupportMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    *a3 = v13[3];
    v9 = *(v17 + 6);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetAnnounceCallsSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAnnounceCallsSupport");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetAnnounceCallsSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTAccessoryManagerGetAdaptiveLatencyJitterBufferLevel(uint64_t a1, void *a2, _WORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "kCBMsgIdAccessoryGetJitterBufferLevelMsg over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v22 = buf;
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
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetAdaptiveLatencyJitterBufferLevel_block_invoke;
    v12[3] = &unk_1E85171C0;
    v12[4] = buf;
    v12[5] = &v17;
    v12[6] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetAdaptiveLatencyJitterBufferLevelMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v18[3];
    *a2 = v14[3];
    v10 = *(v22 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetAdaptiveLatencyJitterBufferLevel_block_invoke(void *a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryJBL");
  *(*(a1[6] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1[4] + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "kCBMsgIdAccessoryGetJitterBufferLevelMsg reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetSensorStreamingFrequency(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetSensorStreamingFrequency over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v19 = buf;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2000000000;
    v13[3] = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerGetSensorStreamingFrequency_block_invoke;
    v12[3] = &unk_1E85171E8;
    v12[4] = buf;
    v12[5] = &v14;
    v12[6] = v13;
    sendMessageWithReplySync(v8, "kCBMsgIdAccessoryGetSensorStreamingFrequencyMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v15[3];
    v10 = *(v19 + 6);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerGetSensorStreamingFrequency_block_invoke(void *a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(a1[5] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSensorStreamingFrequency");
  *(*(a1[6] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1[4] + 8) + 24);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "kCBMsgIdAccessoryGetSensorStreamingFrequencyMsg reply result:%llx", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetGyroInformation(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetGyroInformation_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerGetGyroInformation_block_invoke;
    v13[3] = &unk_1E8517210;
    v13[4] = &v18;
    v13[5] = &v14;
    v13[6] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessoryGetGyroInformationMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    *a4 = v15[3];
    v11 = *(v19 + 6);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerGetGyroInformation_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
    if (data)
    {
      v6 = data;
      v7 = *(*(*(a1 + 40) + 8) + 24);
      if (v7)
      {
        **(a1 + 48) = malloc_type_malloc(v7, 0x100004077774924uLL);
        memcpy(**(a1 + 48), v6, *(*(*(a1 + 40) + 8) + 24));
      }
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetGyroInformation_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerIsGenuineAirPods(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerIsGenuineAirPods over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTDevice", a2);
    *buf = 0;
    v18 = buf;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTAccessoryManagerIsGenuineAirPods_block_invoke;
    v12[3] = &unk_1E8517238;
    v12[4] = buf;
    v12[5] = &v13;
    sendMessageWithReplySync(v8, "kCBMsgIdDeviceIsGenuineAirPodsMsg", v9, v12);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v14[3];
    v10 = *(v18 + 6);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v10;
}

void __BTAccessoryManagerIsGenuineAirPods_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgGenuine");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerIsGenuineAirPods reply result:%llx genuine:%llu", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerGetCaseSerialNumbersForAppleProductId(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgProductId", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a5);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_block_invoke;
    v16[3] = &unk_1E8517260;
    v16[4] = &v21;
    v16[5] = &v17;
    v16[6] = a3;
    v16[7] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdMsg", v12, v16);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = v18[3];
    if (v13 >= a5)
    {
      v13 = a5;
    }

    *a4 = v13;
    v14 = *(v22 + 6);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v14;
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
    if (data)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      if (v6)
      {
        if (*(a1 + 56) >= v6)
        {
          v7 = *(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v7 = *(a1 + 56);
        }

        memcpy(*(a1 + 48), data, v7);
      }
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  LODWORD(v9) = a3;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    if (!a2 || !v9)
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_4();
      }
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBufferSize", a6);
    v15 = xpc_array_create(0, 0);
    if (v9)
    {
      v9 = v9;
      do
      {
        v16 = *a2++;
        xpc_array_set_uint64(v15, 0xFFFFFFFFFFFFFFFFLL, v16);
        --v9;
      }

      while (v9);
    }

    xpc_dictionary_set_value(v14, "kCBMsgArgProductIds", v15);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_block_invoke;
    v20[3] = &unk_1E8517288;
    v20[4] = &v25;
    v20[5] = &v21;
    v20[6] = a4;
    v20[7] = a6;
    sendMessageWithReplySync(v13, "kCBMsgIdAccessoryGetCaseSerialNumbersForAppleProductIdsMsg", v14, v20);
    if (v14)
    {
      xpc_release(v14);
    }

    v17 = v22[3];
    if (v17 >= a6)
    {
      v17 = a6;
    }

    *a5 = v17;
    v18 = *(v26 + 6);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v18;
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
    if (data)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      if (v6)
      {
        if (*(a1 + 56) >= v6)
        {
          v7 = *(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v7 = *(a1 + 56);
        }

        memcpy(*(a1 + 48), data, v7);
      }
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetPrimaryBudSide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerGetPrimaryBudSide_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgResult", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTAccessoryManagerGetPrimaryBudSide_block_invoke;
    v11[3] = &unk_1E85172B0;
    v11[4] = &v12;
    v11[5] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdAccessoryGetPrimaryBudSideMsg", v8, v11);
    if (v8)
    {
      xpc_release(v8);
    }

    v9 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTAccessoryManagerGetPrimaryBudSide_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPrimarySide");
    if (uint64)
    {
      **(a1 + 40) = uint64;
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerGetPrimaryBudSide_block_invoke_cold_2(v4);
  }
}

uint64_t BTAccessoryManagerGetHeadphoneFeatureValue(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v8 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetHeadphoneFeatureValue over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v10 = MBXpcConnection;
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgHeadphoneFeatureType", a3);
    *buf = 0;
    v20 = buf;
    v21 = 0x2000000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __BTAccessoryManagerGetHeadphoneFeatureValue_block_invoke;
    v14[3] = &unk_1E85172D8;
    v14[4] = buf;
    v14[5] = &v15;
    sendMessageWithReplySync(v10, "kCBMsgIdAccessoryGetHeadphoneFeatureValueMsg", v11, v14);
    if (v11)
    {
      xpc_release(v11);
    }

    *a4 = v16[3];
    v12 = *(v20 + 6);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v12;
}

void __BTAccessoryManagerGetHeadphoneFeatureValue_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgHeadphoneFeatureValue");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetHeadphoneFeatureValue reply result:%llx value:%llu", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t BTAccessoryManagerSetHeadphoneFeatureValue(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTAccessoryManagerSetDeviceSoundProfileAllowed_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgAccessoryManagerID", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgHeadphoneFeatureType", a3);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgHeadphoneFeatureValue", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTAccessoryManagerSetHeadphoneFeatureValue_block_invoke;
    v13[3] = &unk_1E8517300;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdAccessorySetHeadphoneFeatureValueMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v15 + 6);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v11;
}

void __BTAccessoryManagerSetHeadphoneFeatureValue_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  *(*(v5 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTAccessoryManagerSetHeadphoneFeatureValue_block_invoke_cold_2(v4);
  }
}

uint64_t accessoryManagerXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    accessoryManagerXpcDisconnectedHandler_cold_2();
  }

  return _localBTAccessoryManagerRemoveAllCallbacksByXpcConnection(a1);
}

BOOL accessoryManagerXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v75 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAccessoryManagerID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  Callbacks = _localBTAccessoryManagerGetCallbacks(uint64, v7);
  CustomCallbacks = _localBTAccessoryManagerGetCustomCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v10 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *v70 = 136316674;
    *&v70[4] = a2;
    v71 = 2080;
    *v72 = a1 + 2080;
    *&v72[8] = 2080;
    *&v72[10] = a1 + 2336;
    *&v72[18] = 2048;
    *&v72[20] = uint64;
    *&v72[28] = 2048;
    *&v72[30] = v7;
    *&v72[38] = 2048;
    *&v72[40] = Callbacks;
    *&v72[48] = 2048;
    *&v72[50] = CustomCallbacks;
    _os_log_debug_impl(&dword_1D85D5000, v10, OS_LOG_TYPE_DEBUG, "accessoryManagerXpcMsgHandler msg:%s sessionName:%s serviceName:%s manager:%llx cbid:%llx cb:%llx customCbs:%llx", v70, 0x48u);
  }

  if (!strcmp(a2, "kCBMsgIdAccessoryEvent"))
  {
    if (!Callbacks || !*Callbacks)
    {
      goto LABEL_38;
    }

    v65 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
    v22 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v23 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgState");
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    v24 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      *v70 = 136315906;
      *&v70[4] = a2;
      v71 = 2048;
      *v72 = v65;
      *&v72[8] = 2048;
      *&v72[10] = v22;
      *&v72[18] = 2048;
      *&v72[20] = v23;
      _os_log_debug_impl(&dword_1D85D5000, v24, OS_LOG_TYPE_DEBUG, "accessoryManagerXpcMsgHandler msg:%s, event:%llu, device:%llu, accessoryState:%llu", v70, 0x2Au);
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }
    }

    v25 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      v59 = *Callbacks;
      *v70 = 136316930;
      *&v70[4] = a2;
      v71 = 2080;
      *v72 = a1 + 2080;
      *&v72[8] = 2080;
      *&v72[10] = a1 + 2336;
      *&v72[18] = 2048;
      *&v72[20] = uint64;
      *&v72[28] = 2048;
      *&v72[30] = v7;
      *&v72[38] = 2048;
      *&v72[40] = Callbacks;
      *&v72[48] = 2048;
      *&v72[50] = CustomCallbacks;
      *&v72[58] = 2048;
      *&v72[60] = v59;
      _os_log_debug_impl(&dword_1D85D5000, v25, OS_LOG_TYPE_DEBUG, "accessoryManagerXpcMsgHandler msg:%s sessionName:%s serviceName:%s manager:%llx cbid:%llx cb:%llx customCbs:%llx cb->accevent:%llx", v70, 0x52u);
    }

    v26 = CustomCallbacks;
    v27 = *Callbacks;
    UserData = _localBTAccessoryManagerGetUserData(uint64, v7);
    v27(uint64, v65, v22, v23, UserData);
    CustomCallbacks = v26;
    v13 = 1;
    goto LABEL_39;
  }

  if (!strcmp(a2, "kCBMsgIdAccessorySetupCommand"))
  {
    if (!Callbacks || !*(Callbacks + 1))
    {
      goto LABEL_38;
    }

    v66 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v62 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSetupType");
    v29 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgOPType");
    *v70 = 0;
    data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", v70);
    v31 = a1;
    v32 = *(Callbacks + 1);
    v33 = CustomCallbacks;
    v34 = *v70;
    v35 = _localBTAccessoryManagerGetUserData(uint64, v7);
    v36 = v34;
    CustomCallbacks = v33;
    v32(uint64, v66, v62, v29, data, v36, v35);
    a1 = v31;
    goto LABEL_37;
  }

  if (!strcmp(a2, "kCBMsgIdAccessoryRelayMsgRecv"))
  {
    if (!Callbacks || !*(Callbacks + 2))
    {
      goto LABEL_38;
    }

    v37 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v63 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgRelayMsgType");
    *v70 = 0;
    v38 = xpc_dictionary_get_data(xdict, "kCBMsgArgAddressBytes", v70);
    v13 = *v70 == 6;
    if (*v70 == 6)
    {
      v39 = *(v38 + 2);
      v40 = *v38;
      v67 = CustomCallbacks;
      length = 0;
      v41 = v40 | (v39 << 32);
      v42 = xpc_dictionary_get_data(xdict, "kCBMsgArgData", &length);
      v61 = a1;
      v43 = *(Callbacks + 2);
      v44 = length;
      v45 = _localBTAccessoryManagerGetUserData(uint64, v7);
      v46 = v41;
      CustomCallbacks = v67;
      v43(uint64, v37, v46, v63, v42, v44, v45);
      a1 = v61;
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        accessoryManagerXpcMsgHandler_cold_4();
      }
    }

    goto LABEL_39;
  }

  if (!strcmp(a2, "kCBMsgIdAccessoryCommandStatus"))
  {
    if (!Callbacks || !*(Callbacks + 3))
    {
      goto LABEL_38;
    }

    v68 = CustomCallbacks;
    v47 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v48 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgCmdReqType");
    v49 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
    v50 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgReason");
    v51 = a1;
    v52 = *(Callbacks + 3);
    v53 = _localBTAccessoryManagerGetUserData(uint64, v7);
    v54 = v47;
    CustomCallbacks = v68;
    v52(uint64, v54, v48, v49, v50, v53);
    a1 = v51;
LABEL_37:
    v13 = 1;
    goto LABEL_39;
  }

  if (strcmp(a2, "kCBMsgIdAccessoryCustomMessage"))
  {
    goto LABEL_38;
  }

  CustomCallbackMsgType = _localBTAccessoryManagerGetCustomCallbackMsgType(uint64, v7);
  v12 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgCustomMessageType");
  v13 = 0;
  if (CustomCallbacks && CustomCallbackMsgType && CustomCallbackMsgType == v12)
  {
    if (*CustomCallbacks)
    {
      v64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      length = 0;
      v14 = xpc_dictionary_get_data(xdict, "kCBMsgArgData", &length);
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      v15 = MBFLogComponent;
      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *v70 = 136317442;
        *&v70[4] = a2;
        v71 = 1024;
        *v72 = CustomCallbackMsgType;
        *&v72[4] = 2048;
        *&v72[6] = v64;
        *&v72[14] = 2048;
        *&v72[16] = length;
        *&v72[24] = 2080;
        *&v72[26] = a1 + 2080;
        *&v72[34] = 2080;
        *&v72[36] = a1 + 2336;
        *&v72[44] = 2048;
        *&v72[46] = uint64;
        *&v72[54] = 2048;
        *&v72[56] = v7;
        *&v72[64] = 2048;
        *&v72[66] = Callbacks;
        v73 = 2048;
        v74 = CustomCallbacks;
        _os_log_debug_impl(&dword_1D85D5000, v15, OS_LOG_TYPE_DEBUG, "accessoryManagerXpcMsgHandler msg:%s, clientType:%X, device:%llX, dataLen:%zu sessionName:%s serviceName:%s manager:%llx cbid:%llx cbs:%p customCbs:%p ", v70, 0x62u);
        if ((CustomCallbackMsgType & 0x40) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((CustomCallbackMsgType & 0x40) == 0)
      {
LABEL_18:
        v16 = a1;
        v17 = *CustomCallbacks;
        v18 = CustomCallbacks;
        v19 = length;
        v20 = _localBTAccessoryManagerGetUserData(uint64, v7);
        v21 = v19;
        CustomCallbacks = v18;
        v17(uint64, v64, CustomCallbackMsgType, v14, v21, v20);
        a1 = v16;
LABEL_54:
        v13 = 1;
        goto LABEL_39;
      }

      v60 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgUserData");
      (*CustomCallbacks)(uint64, v64, CustomCallbackMsgType, v14, length, v60);
      goto LABEL_54;
    }

LABEL_38:
    v13 = 0;
  }

LABEL_39:
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  v55 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v58 = "did not handle";
    *v70 = 136316930;
    if (v13)
    {
      v58 = "handled";
    }

    *&v70[4] = v58;
    v71 = 2080;
    *v72 = a2;
    *&v72[8] = 2080;
    *&v72[10] = a1 + 2080;
    *&v72[18] = 2080;
    *&v72[20] = a1 + 2336;
    *&v72[28] = 2048;
    *&v72[30] = uint64;
    *&v72[38] = 2048;
    *&v72[40] = v7;
    *&v72[48] = 2048;
    *&v72[50] = Callbacks;
    *&v72[58] = 2048;
    *&v72[60] = CustomCallbacks;
    _os_log_debug_impl(&dword_1D85D5000, v55, OS_LOG_TYPE_DEBUG, "accessoryManagerXpcMsgHandler %s %s sessionName:%s serviceName:%s manager:%llx cbid:%llx cb:%llx customCbs:%llx", v70, 0x52u);
  }

  v56 = *MEMORY[0x1E69E9840];
  return v13;
}

void OUTLINED_FUNCTION_1(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, MBFLogInit);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

os_log_t MBFLogInit()
{
  result = os_log_create("com.apple.bluetooth", "MobileBluetoothFramework");
  MBFLogComponent = result;
  return result;
}

void handleReset(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    handleReset_cold_2();
  }

  v2 = *(a1 + 2056);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __handleReset_block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  block[4] = a1;
  dispatch_async(v2, block);
}

void handleInvalid(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    handleInvalid_cold_2();
  }

  v2 = *(a1 + 2056);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __handleInvalid_block_invoke;
  block[3] = &__block_descriptor_tmp_9_0;
  block[4] = a1;
  dispatch_async(v2, block);
}