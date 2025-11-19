void releaseMBXpcConnection(void *a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    releaseMBXpcConnection_cold_2(a1);
  }

  if (a1[259])
  {
    a1[259] = 0;
  }

  if (*a1)
  {
    *a1 = 0;
  }

  v2 = a1[258];
  if (v2)
  {
    dispatch_release(v2);
    a1[258] = 0;
  }

  v3 = a1[257];
  if (v3)
  {
    dispatch_release(v3);
  }

  free(a1);
}

void releaseXPCConnection(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    releaseXPCConnection_cold_2(a1);
  }

  xpc_release(*(a1 + 2072));
}

void sendMsg(uint64_t a1, const char *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    sendMsg_cold_2(a1);
  }

  *keys = xmmword_1E85173D0;
  object[0] = xpc_string_create(a2);
  object[1] = a3;
  v6 = xpc_dictionary_create(keys, object, 2uLL);
  xpc_connection_send_message(*(a1 + 2072), v6);
  xpc_release(v6);
  xpc_release(object[0]);
  v7 = *MEMORY[0x1E69E9840];
}

void disconnect(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    attachSession_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    disconnect_cold_2(a1);
  }

  bzero((a1 + 8), 0x800uLL);
  *(a1 + 2600) = 0;
  xpc_connection_cancel(*(a1 + 2072));
}

BOOL _localBTDeviceServiceCallbacksRegistered(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_0);
  v4 = 0;
  v5 = 1;
  v6 = &gBTDeviceServiceCallbackList + 1;
  do
  {
    if (*v6 == a1 && *(v6 - 1) == a2)
    {
      break;
    }

    v5 = v4 < 0x3F;
    v6 += 5;
    ++v4;
  }

  while (v4 != 64);
  pthread_mutex_unlock(&gLock_0);
  return v5;
}

uint64_t _localBTDeviceServiceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock(&gLock_0);
  v10 = &qword_1ED8FFA40;
  v11 = 64;
  while (*(v10 - 1) || v10[1])
  {
    v10 += 5;
    if (!--v11)
    {
      v12 = 4;
      goto LABEL_7;
    }
  }

  v12 = 0;
  v10[1] = a5;
  v10[2] = a4;
  *(v10 - 1) = a1;
  *v10 = a2;
  *(v10 - 2) = a3;
LABEL_7:
  pthread_mutex_unlock(&gLock_0);
  return v12;
}

uint64_t _localBTDeviceServiceGetCBID(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_0);
  v4 = &gBTDeviceServiceCallbackList;
  v5 = 64;
  while (*(v4 + 1) != a1 || *v4 != a2)
  {
    v4 = (v4 + 40);
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *(v4 + 3);
LABEL_7:
  pthread_mutex_unlock(&gLock_0);
  return v6;
}

uint64_t _localBTDeviceServiceRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_0);
  v4 = &gBTDeviceServiceCallbackList;
  v5 = 64;
  while (*(v4 + 1) != a1 || *v4 != a2)
  {
    v4 = (v4 + 40);
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  *(v4 + 4) = 0;
  *v4 = 0u;
  v4[1] = 0u;
LABEL_7:
  pthread_mutex_unlock(&gLock_0);
  return 0;
}

uint64_t _localBTDeviceServiceRemoveCallbacksByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_0);
  v2 = &qword_1ED8FFA40;
  v3 = 64;
  do
  {
    if (*v2 == a1)
    {
      v2[2] = 0;
      *(v2 - 1) = 0uLL;
      *v2 = 0uLL;
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  pthread_mutex_unlock(&gLock_0);
  return 0;
}

uint64_t BTDeviceAddressToString(const void *a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *a2 = 0;
  FirstSessionHandle = getFirstSessionHandle();
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceAddressToString_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(FirstSessionHandle);
  if (!MBXpcConnection)
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

  v8 = MBXpcConnection;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v9, "kCBMsgArgAddressBytes", a1, 6uLL);
  xpc_dictionary_set_uint64(v9, "kCBMsgArgAddressStringBuffSize", a3);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __BTDeviceAddressToString_block_invoke;
  v12[3] = &unk_1E85173E8;
  v12[4] = &v13;
  v12[5] = a2;
  v12[6] = a3;
  sendMessageWithReplySync(v8, "kCBMsgIdDeviceAddressToStringMsg", v9, v12);
  if (v9)
  {
    xpc_release(v9);
  }

  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __BTDeviceAddressToString_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    v5 = a1[5];
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgAddressString");
    strlcpy(v5, string, a1[6]);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceAddressToString_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetDeviceClass(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetDeviceClass_cold_2();
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
    v9[2] = __BTDeviceGetDeviceClass_block_invoke;
    v9[3] = &unk_1E85174D8;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetDeviceClassMsg", v6, v9);
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

void __BTDeviceGetDeviceClass_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDeviceClass");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetDeviceClass_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetDefaultName(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *a2 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetDefaultName_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (!MBXpcConnection)
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
  v11[2] = __BTDeviceGetDefaultName_block_invoke;
  v11[3] = &unk_1E8517500;
  v11[4] = &v12;
  v11[5] = a2;
  v11[6] = a3;
  sendMessageWithReplySync(v7, "kCBMsgIdDeviceGetDefaultNameMsg", v8, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __BTDeviceGetDefaultName_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgName");
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
    __BTDeviceGetDefaultName_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetProductName(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *a2 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetProductName_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (!MBXpcConnection)
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
  v11[2] = __BTDeviceGetProductName_block_invoke;
  v11[3] = &unk_1E8517528;
  v11[4] = &v12;
  v11[5] = a2;
  v11[6] = a3;
  sendMessageWithReplySync(v7, "kCBMsgIdDeviceGetProductNameMsg", v8, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __BTDeviceGetProductName_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgName");
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
    __BTDeviceGetProductName_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetName(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  *a2 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetName_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (!MBXpcConnection)
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
  v11[2] = __BTDeviceGetName_block_invoke;
  v11[3] = &unk_1E8517550;
  v11[4] = &v12;
  v11[5] = a2;
  v11[6] = a3;
  sendMessageWithReplySync(v7, "kCBMsgIdDeviceGetNameMsg", v8, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __BTDeviceGetName_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgName");
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
    __BTDeviceGetName_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceSetUserName(uint64_t a1, const char *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetUserName_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_string(v6, "kCBMsgArgName", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceSetUserName_block_invoke;
    v9[3] = &unk_1E8517578;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSetUserNameMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceSetUserName_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetUserName_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetSyncSettings(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetSyncSettings_cold_2();
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
    v9[2] = __BTDeviceGetSyncSettings_block_invoke;
    v9[3] = &unk_1E85175A0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetSyncSettingsMsg", v6, v9);
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

void __BTDeviceGetSyncSettings_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSyncSettings");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetSyncSettings_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSetSyncSettings(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetSyncSettings_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgSyncSettings", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceSetSyncSettings_block_invoke;
    v9[3] = &unk_1E85175C8;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSetSyncSettingsMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceSetSyncSettings_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetSyncSettings_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetGroups(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetGroups_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgGrouIdArraySize", a4);
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
    v13[2] = __BTDeviceGetGroups_block_invoke;
    v13[3] = &unk_1E85175F0;
    v13[4] = &v18;
    v13[5] = &v14;
    v13[6] = a2;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceGetGroupsMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    *a3 = v15[3];
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceGetGroups_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  array = xpc_dictionary_get_array(xdict, "kCBMsgArgGrouIdArray");
  *(*(a1[5] + 8) + 24) = xpc_array_get_count(array);
  if (*(*(a1[5] + 8) + 24))
  {
    v6 = 0;
    do
    {
      *(a1[6] + 4 * v6) = xpc_array_get_uint64(array, v6);
      ++v6;
    }

    while (*(*(a1[5] + 8) + 24) > v6);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetGroups_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceSetGroup(uint64_t a1, int a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetGroup_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgGrouId", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTDeviceSetGroup_block_invoke;
    v11[3] = &unk_1E8517618;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdDeviceSetGroupMsg", v8, v11);
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

void __BTDeviceSetGroup_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetGroup_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetPairingStatus(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetPairingStatus_cold_2();
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
    v9[2] = __BTDeviceGetPairingStatus_block_invoke;
    v9[3] = &unk_1E8517640;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetPairingStatusMsg", v6, v9);
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

void __BTDeviceGetPairingStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPaired");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetPairingStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetCloudPairingStatus(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetCloudPairingStatus_cold_2();
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
    v9[2] = __BTDeviceGetCloudPairingStatus_block_invoke;
    v9[3] = &unk_1E8517668;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetCloudPairingStatusMsg", v6, v9);
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

void __BTDeviceGetCloudPairingStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPaired");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetCloudPairingStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetMagicPairingStatus(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetMagicPairingStatus_cold_2();
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
    v9[2] = __BTDeviceGetMagicPairingStatus_block_invoke;
    v9[3] = &unk_1E8517690;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetMagicPairingStatusMsg", v6, v9);
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

void __BTDeviceGetMagicPairingStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPaired");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetMagicPairingStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetConnectionStatus(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetMagicPairingStatus_cold_2();
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
    v9[2] = __BTDeviceGetConnectionStatus_block_invoke;
    v9[3] = &unk_1E85176B8;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetConnectionStatusMsg", v6, v9);
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

void __BTDeviceGetConnectionStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceGetConnectionStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceIsAppleAudioDevice(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsAppleAudioDevice_cold_2();
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
    v9[2] = __BTDeviceIsAppleAudioDevice_block_invoke;
    v9[3] = &unk_1E85176E0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceIsAppleAudioDeviceMsg", v6, v9);
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

void __BTDeviceIsAppleAudioDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceIsAppleAudioDevice_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSupportsHS(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSupportsHS_cold_2();
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
    v9[2] = __BTDeviceSupportsHS_block_invoke;
    v9[3] = &unk_1E8517708;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSupportsHSMsg", v6, v9);
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

void __BTDeviceSupportsHS_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSupportsHS_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceIsProController(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsProController_cold_2();
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
    v9[2] = __BTDeviceIsProController_block_invoke;
    v9[3] = &unk_1E8517730;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceIsProControllerMsg", v6, v9);
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

void __BTDeviceIsProController_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceIsProController_block_invoke_cold_2(v5);
  }
}

uint64_t BTServiceAddCallbacksWithFilter(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTServiceAddCallbacksWithFilter_cold_2();
  }

  SessionHandle = getSessionHandle(a1);
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTServiceAddCallbacksWithFilter_cold_4();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v10 = MBXpcConnection;
    v11 = ++gCBID_0;
    addXpcMsgHandler(MBXpcConnection, &deviceServiceManagerXpcCallbacks);
    if (_localBTDeviceServiceCallbacksRegistered(SessionHandle, a2))
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        BTAccessoryManagerAddCallbacks_cold_6();
      }

      v12 = 0;
    }

    else if (_localBTDeviceServiceAddCallbacks(SessionHandle, v10, a2, a4, v11))
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        BTServiceAddCallbacksWithFilter_cold_6();
      }

      v12 = 4;
    }

    else
    {
      if (MBFLogInitOnce != -1)
      {
        BTAccessoryManagerAddCallbacks_cold_3();
      }

      v13 = MBFLogComponent;
      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = SessionHandle;
        *&buf[22] = 2048;
        v19 = v11;
        _os_log_debug_impl(&dword_1D85D5000, v13, OS_LOG_TYPE_DEBUG, "BTServiceAddCallbacksWithFilter session :%llx, sessionHandle:%llx, cbid:%llx", buf, 0x20u);
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgSessionID", SessionHandle);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgID", v11);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgServiceMask", a3);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v19 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __BTServiceAddCallbacksWithFilter_block_invoke;
      v17[3] = &unk_1E8517758;
      v17[4] = buf;
      sendMessageWithReplySync(v10, "kCBMsgIdDeviceServiceAddCallbacksMsg", v14, v17);
      if (v14)
      {
        xpc_release(v14);
      }

      if (*(*&buf[8] + 24))
      {
        _localBTDeviceServiceRemoveCallbacks(SessionHandle, a2);
        v12 = *(*&buf[8] + 24);
      }

      else
      {
        v12 = 0;
      }

      _Block_object_dispose(buf, 8);
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
      BTDeviceFromAddress_cold_4();
    }

    v12 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

void __BTServiceAddCallbacksWithFilter_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTServiceAddCallbacksWithFilter_block_invoke_cold_2(v4);
  }
}

uint64_t BTServiceAddCallbacks(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTServiceAddCallbacks_cold_2();
  }

  return BTServiceAddCallbacksWithFilter(a1, a2, 0xFFFFFFFF, a3);
}

uint64_t BTServiceRemoveCallbacks(uint64_t *a1, uint64_t a2)
{
  SessionHandle = getSessionHandle(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTServiceRemoveCallbacks_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    CBID = _localBTDeviceServiceGetCBID(SessionHandle, a2);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v8 = 3;
    v16 = 3;
    if (CBID)
    {
      v9 = CBID;
      v10 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v10, "kCBMsgArgSessionID", SessionHandle);
      xpc_dictionary_set_uint64(v10, "kCBMsgArgID", v9);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __BTServiceRemoveCallbacks_block_invoke;
      v12[3] = &unk_1E8517780;
      v12[4] = &v13;
      sendMessageWithReplySync(v6, "kCBMsgIdDeviceServiceRemoveCallbacksMsg", v10, v12);
      if (v10)
      {
        xpc_release(v10);
      }

      v8 = v14[3];
      if (!v8)
      {
        _localBTDeviceServiceRemoveCallbacks(SessionHandle, a2);
        v8 = v14[3];
      }
    }

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

  return v8;
}

void __BTServiceRemoveCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTServiceRemoveCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceConnect(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceConnect_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgBTDevice", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDeviceConnect_block_invoke;
    v7[3] = &unk_1E85177A8;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDeviceConnectMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
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

  return v5;
}

void __BTDeviceConnect_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceConnect_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceConnectServices(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceConnectServices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgServices", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceConnectServices_block_invoke;
    v9[3] = &unk_1E85177D0;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceConnectServicesMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceConnectServices_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceConnectServices_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceConnectServicesWithParameters(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceConnectServicesWithParameters_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgServices", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgConnectionMode", a3);
    xpc_dictionary_set_data(v10, "kCBMsgArgKey", a4, 0x10uLL);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDeviceConnectServicesWithParameters_block_invoke;
    v13[3] = &unk_1E85177F8;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceConnectServicesWithParametersMsg", v10, v13);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceConnectServicesWithParameters_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceConnectServicesWithParameters_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceDisconnect(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceDisconnect_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgBTDevice", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDeviceDisconnect_block_invoke;
    v7[3] = &unk_1E8517820;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDeviceDisconnectMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
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

  return v5;
}

void __BTDeviceDisconnect_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceDisconnect_block_invoke_cold_2(v4);
  }
}

uint64_t BTDevicePhysicalLinkDisconnect(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDevicePhysicalLinkDisconnect_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgBTDevice", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDevicePhysicalLinkDisconnect_block_invoke;
    v7[3] = &unk_1E8517848;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDevicePhysicalLinkDisconnectMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
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

  return v5;
}

void __BTDevicePhysicalLinkDisconnect_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDevicePhysicalLinkDisconnect_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceDisconnectServices(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceDisconnectServices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgServiceMask", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceDisconnectServices_block_invoke;
    v9[3] = &unk_1E8517870;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceDisconnectServicesMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceDisconnectServices_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceDisconnectServices_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetConnectedServices(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetConnectedServices_cold_2();
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
    v9[2] = __BTDeviceGetConnectedServices_block_invoke;
    v9[3] = &unk_1E8517898;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetConnectedServicesMsg", v6, v9);
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

void __BTDeviceGetConnectedServices_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServiceMask");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetConnectedServices_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetSupportedServices(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetSupportedServices_cold_2();
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
    v9[2] = __BTDeviceGetSupportedServices_block_invoke;
    v9[3] = &unk_1E85178C0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetSupportedServicesMsg", v6, v9);
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

void __BTDeviceGetSupportedServices_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServiceMask");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetSupportedServices_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSetServiceSettings(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetServiceSettings_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgServiceMask", a2);
    xpc_dictionary_set_string(v10, "kCBMsgArgKey", a3);
    xpc_dictionary_set_string(v10, "kCBMsgArgValue", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDeviceSetServiceSettings_block_invoke;
    v13[3] = &unk_1E85178E8;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceSetServiceSettingsMsg", v10, v13);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceSetServiceSettings_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetServiceSettings_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetServiceSettings(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetServiceSettings_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgServiceMask", a2);
    xpc_dictionary_set_string(v10, "kCBMsgArgKey", a3);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDeviceGetServiceSettings_block_invoke;
    v13[3] = &unk_1E8517910;
    v13[4] = &v14;
    v13[5] = a4;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceGetServiceSettingsMsg", v10, v13);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceGetServiceSettings_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    v5 = *(a1 + 40);
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgValue");
    strcpy(v5, string);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetServiceSettings_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetComPortForService(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  *a3 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetComPortForService_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgServiceID", a2);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBufferSize", a4);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2000000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDeviceGetComPortForService_block_invoke;
    v13[3] = &unk_1E8517938;
    v13[4] = &v15;
    v13[5] = v14;
    v13[6] = a4;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceGetComPortForServiceMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v16 + 6);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);
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

  return v11;
}

void __BTDeviceGetComPortForService_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      if (v6 >= *(*(*(a1 + 40) + 8) + 24))
      {
        v7 = *(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v7 = *(a1 + 48);
      }

      memcpy(*(a1 + 56), data, v7);
    }
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetComPortForService_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetComPortForServiceWithSandboxExtension(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetComPortForServiceWithSandboxExtension_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgServiceID", a2);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a4);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2000000000;
    v16[3] = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTDeviceGetComPortForServiceWithSandboxExtension_block_invoke;
    v15[3] = &unk_1E8517960;
    v15[4] = &v17;
    v15[5] = v16;
    v15[6] = a3;
    v15[7] = a4;
    v15[8] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdDeviceGetComPortForServiceWithSandboxExtensionMsg", v12, v15);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = *(v18 + 6);
    _Block_object_dispose(v16, 8);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v13;
}

void __BTDeviceGetComPortForServiceWithSandboxExtension_block_invoke(uint64_t a1, xpc_object_t xdict)
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

  length = 0;
  v8 = xpc_dictionary_get_data(xdict, "kCBMsgArgExtensionToken", &length);
  v9 = *(a1 + 64);
  if (v9 && v8 && length)
  {
    memcpy(v9, v8, length);
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetComPortForServiceWithSandboxExtension_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceSetVirtualType(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetVirtualType_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgType", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceSetVirtualType_block_invoke;
    v9[3] = &unk_1E8517988;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSetVirtualTypeMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceSetVirtualType_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetVirtualType_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetVirtualType(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetVirtualType_cold_2();
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
    v9[2] = __BTDeviceGetVirtualType_block_invoke;
    v9[3] = &unk_1E85179B0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetVirtualTypeMsg", v6, v9);
    *a2 = *(v11 + 6);
    if (v6)
    {
      xpc_release(v6);
    }

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

void __BTDeviceGetVirtualType_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgType");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetVirtualType_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceMatchesAdvertisedKey(uint64_t a1, const void *a2, size_t a3, _DWORD *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceMatchesAdvertisedKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_data(v10, "kCBMsgArgKey", a2, a3);
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
    v13[2] = __BTDeviceMatchesAdvertisedKey_block_invoke;
    v13[3] = &unk_1E85179D8;
    v13[4] = &v18;
    v13[5] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceMatchesAdvertisedKeyMsg", v10, v13);
    *a4 = *(v15 + 6);
    if (v10)
    {
      xpc_release(v10);
    }

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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceMatchesAdvertisedKey_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceMatchesAdvertisedKey_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetAdvertisedValueForKey(uint64_t a1, const void *a2, size_t a3, uint64_t a4, unint64_t *a5, unsigned int a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetAdvertisedValueForKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_data(v14, "kCBMsgArgKey", a2, a3);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBufferSize", a6);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __BTDeviceGetAdvertisedValueForKey_block_invoke;
    v18[3] = &unk_1E8517A00;
    v18[4] = &v24;
    v18[5] = &v20;
    v18[6] = a4;
    v19 = a6;
    sendMessageWithReplySync(v13, "kCBMsgIdDeviceGetAdvertisedValueForKeyMsg", v14, v18);
    if (v14)
    {
      xpc_release(v14);
    }

    v15 = v21[3];
    if (v15 >= a6)
    {
      v15 = a6;
    }

    *a5 = v15;
    v16 = *(v25 + 6);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v16;
}

void __BTDeviceGetAdvertisedValueForKey_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", (*(*(a1 + 40) + 8) + 24));
  if (data)
  {
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      if (v6 >= *(a1 + 56))
      {
        v7 = *(a1 + 56);
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
    __BTDeviceGetAdvertisedValueForKey_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceGetDeviceId(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetDeviceId_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a1);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
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
    v15[2] = __BTDeviceGetDeviceId_block_invoke;
    v15[3] = &unk_1E8517A28;
    v15[4] = &v32;
    v15[5] = &v28;
    v15[6] = &v24;
    v15[7] = &v20;
    v15[8] = &v16;
    sendMessageWithReplySync(v11, "kCBMsgIdDeviceGetDeviceIdMsg", v12, v15);
    if (v12)
    {
      xpc_release(v12);
    }

    *a2 = *(v29 + 6);
    *a3 = *(v25 + 6);
    *a4 = *(v21 + 6);
    *a5 = *(v17 + 6);
    v13 = *(v33 + 6);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
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

  return v13;
}

void __BTDeviceGetDeviceId_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(*(v6 + 8) + 24) = uint64;
  *(*(v5[1] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgVendorIdSource");
  *(*(v5[2] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgVendorId");
  *(*(v5[3] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgProductId");
  *(*(v5[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgVersionId");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetDeviceId_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSetHIDProperties(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetHIDProperties_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAuthStatus", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgHIDType", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTDeviceSetHIDProperties_block_invoke;
    v11[3] = &unk_1E8517A50;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdDeviceSetHIDPropertiesMsg", v8, v11);
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

void __BTDeviceSetHIDProperties_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetHIDProperties_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceConfigureLinkKey(uint64_t a1, const void *a2, const void *a3, unsigned int a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceConfigureLinkKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a1);
    if (a4)
    {
      xpc_dictionary_set_data(v10, "kCBMsgArgKey", a3, 0x10uLL);
    }

    xpc_dictionary_set_uint64(v10, "kCBMsgArgBool", a4);
    xpc_dictionary_set_data(v10, "kCBMsgArgAddressBytes", a2, 6uLL);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDeviceConfigureLinkKey_block_invoke;
    v13[3] = &unk_1E8517A78;
    v13[4] = &v14;
    sendMessageWithReplySync(v9, "kCBMsgIdDeviceConfigureLinkKeyMsg", v10, v13);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDeviceConfigureLinkKey_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceConfigureLinkKey_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceIsTemporaryPaired(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsTemporaryPaired_cold_2();
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
    v9[2] = __BTDeviceIsTemporaryPaired_block_invoke;
    v9[3] = &unk_1E8517AA0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceIsTemporaryPairedMsg", v6, v9);
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

void __BTDeviceIsTemporaryPaired_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPaired");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceIsTemporaryPaired_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceIsWirelessSplitterSupported(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsWirelessSplitterSupported_cold_2();
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
    v9[2] = __BTDeviceIsWirelessSplitterSupported_block_invoke;
    v9[3] = &unk_1E8517AC8;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceIsWirelessSplitterSupportedMsg", v6, v9);
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

void __BTDeviceIsWirelessSplitterSupported_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceIsWirelessSplitterSupported_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceIsTemporaryPairedNotInContacts(uint64_t a1, _DWORD *a2)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsTemporaryPairedNotInContacts_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgBTDevice", a1);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __BTDeviceIsTemporaryPairedNotInContacts_block_invoke;
    v8[3] = &unk_1E8517AF0;
    v8[4] = &v13;
    v8[5] = &v9;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdDeviceIsTemporaryPairedNotInContactsMsg", v5, v8);
    if (v5)
    {
      xpc_release(v5);
    }

    *a2 = *(v10 + 6);
    v6 = *(v14 + 6);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    return v6;
  }

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

void __BTDeviceIsTemporaryPairedNotInContacts_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceIsTemporaryPairedNotInContacts_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetLowSecurityStatus(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetLowSecurityStatus_cold_2();
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
    v9[2] = __BTDeviceGetLowSecurityStatus_block_invoke;
    v9[3] = &unk_1E8517B18;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetLowSecurityStatusMsg", v6, v9);
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

void __BTDeviceGetLowSecurityStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgLowSecurityStatus");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetLowSecurityStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetHIDDeviceBehavior(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetHIDDeviceBehavior_cold_2();
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
    v9[2] = __BTDeviceGetHIDDeviceBehavior_block_invoke;
    v9[3] = &unk_1E8517B40;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceGetHIDDeviceBehaviorMsg", v6, v9);
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

void __BTDeviceGetHIDDeviceBehavior_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMSgArgHIDDeviceBehavior");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetHIDDeviceBehavior_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSetHijackAudioRoute(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetHijackAudioRoute_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBool", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceSetHijackAudioRoute_block_invoke;
    v9[3] = &unk_1E8517B68;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSetHijackAudioRouteMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceSetHijackAudioRoute_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetHijackAudioRoute_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceSetACLHighPriority(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetACLHighPriority_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgRequesterID", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTDeviceSetACLHighPriority_block_invoke;
    v11[3] = &unk_1E8517B90;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdDeviceSetACLHighPriorityMsg", v8, v11);
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

void __BTDeviceSetACLHighPriority_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetACLHighPriority_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceIsMaster(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTDeviceIsMaster_cold_2();
  }

  return BTDeviceIsCentral(a1, a2);
}

uint64_t BTDeviceIsCentral(uint64_t a1, _DWORD *a2)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsCentral_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgBTDevice", a1);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __BTDeviceIsCentral_block_invoke;
    v8[3] = &unk_1E8517BB8;
    v8[4] = &v13;
    v8[5] = &v9;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdDeviceIsCentralMsg", v5, v8);
    if (v5)
    {
      xpc_release(v5);
    }

    *a2 = *(v10 + 6);
    v6 = *(v14 + 6);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    return v6;
  }

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

void __BTDeviceIsCentral_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceIsCentral_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceGetUserSelectedDeviceType(uint64_t a1, _DWORD *a2)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceGetUserSelectedDeviceType_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgBTDevice", a1);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __BTDeviceGetUserSelectedDeviceType_block_invoke;
    v8[3] = &unk_1E8517BE0;
    v8[4] = &v13;
    v8[5] = &v9;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdDeviceGetUserSelectedDeviceTypeMsg", v5, v8);
    if (v5)
    {
      xpc_release(v5);
    }

    *a2 = *(v10 + 6);
    v6 = *(v14 + 6);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    return v6;
  }

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

void __BTDeviceGetUserSelectedDeviceType_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDeviceType");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceGetUserSelectedDeviceType_block_invoke_cold_2(v5);
  }
}

uint64_t BTDeviceSetUserSelectedDeviceType(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceSetUserSelectedDeviceType_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDeviceType", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTDeviceSetUserSelectedDeviceType_block_invoke;
    v9[3] = &unk_1E8517C08;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceSetUserSelectedDeviceTypeMsg", v6, v9);
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
      BTDeviceGetAddressString_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTDeviceSetUserSelectedDeviceType_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDeviceSetUserSelectedDeviceType_block_invoke_cold_2(v4);
  }
}

uint64_t BTDeviceIsGenuineAirPods(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDeviceIsGenuineAirPods_cold_2();
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
    v9[2] = __BTDeviceIsGenuineAirPods_block_invoke;
    v9[3] = &unk_1E8517C30;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdDeviceIsGenuineAirPodsMsg", v6, v9);
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

void __BTDeviceIsGenuineAirPods_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgGenuine");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDeviceIsGenuineAirPods_block_invoke_cold_2(v4);
  }
}

uint64_t deviceServiceXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    deviceServiceXpcDisconnectedHandler_cold_2();
  }

  return _localBTDeviceServiceRemoveCallbacksByXpcConnection(a1);
}

BOOL _localBTDiscoveryAgentCallbacksRegistered(uint64_t a1)
{
  pthread_mutex_lock(&gLock_1);
  if (xmmword_1ECA5CEE8 == a1)
  {
    v6 = 1;
  }

  else
  {
    v2 = 0;
    v3 = &qword_1ECA5CF18;
    do
    {
      v4 = v2;
      if (v2 == 63)
      {
        break;
      }

      v5 = *v3;
      v3 += 6;
      ++v2;
    }

    while (v5 != a1);
    v6 = v4 < 0x3F;
  }

  pthread_mutex_unlock(&gLock_1);
  return v6;
}

uint64_t _localBTDiscoveryAgentAddCallbacks(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock(&gLock_1);
  v10 = &xmmword_1ECA5CEE8 + 1;
  v11 = 64;
  while (*(v10 - 1) || v10[1])
  {
    v10 += 6;
    if (!--v11)
    {
      v12 = 4;
      goto LABEL_7;
    }
  }

  v12 = 0;
  *(v10 - 3) = *a3;
  v10[1] = a5;
  v10[2] = a4;
  *(v10 - 1) = a1;
  *v10 = a2;
LABEL_7:
  pthread_mutex_unlock(&gLock_1);
  return v12;
}

uint64_t _localBTDiscoveryAgentRemoveCallbacks(uint64_t a1)
{
  pthread_mutex_lock(&gLock_1);
  v2 = &xmmword_1ECA5CEE8;
  v3 = 64;
  while (*v2 != a1)
  {
    v2 += 3;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  *v2 = 0u;
  v2[1] = 0u;
  *(v2 - 1) = 0u;
LABEL_6:
  pthread_mutex_unlock(&gLock_1);
  return 0;
}

uint64_t _localBTDiscoveryAgentRemoveCallbacksByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_1);
  v2 = &gBTDiscoveryAgentCallbackList;
  v3 = 64;
  do
  {
    if (*(v2 + 3) == a1)
    {
      v2[1] = 0uLL;
      v2[2] = 0uLL;
      *v2 = 0uLL;
    }

    v2 += 3;
    --v3;
  }

  while (v3);
  pthread_mutex_unlock(&gLock_1);
  return 0;
}

__int128 *_localBTDiscoveryAgentGetCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_1);
  v4 = &gBTDiscoveryAgentCallbackList;
  v5 = 64;
  while (*(v4 + 2) != a1 || *(v4 + 4) != a2)
  {
    v4 += 3;
    if (!--v5)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_1);
  return v4;
}

uint64_t _localBTDiscoveryAgentGetUserData(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_1);
  v4 = &qword_1ECA5CF00;
  v5 = 64;
  while (*(v4 - 3) != a1 || *(v4 - 1) != a2)
  {
    v4 += 6;
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *v4;
LABEL_7:
  pthread_mutex_unlock(&gLock_1);
  return v6;
}

uint64_t BTDiscoveryAgentCreate(uint64_t *a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v8 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEBUG, "BTDiscoveryAgentCreate session :%llx", &buf, 0xCu);
  }

  SessionHandle = getSessionHandle(a1);
  MBXpcConnection = getMBXpcConnection(a1);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2000000000;
  v24 = 0;
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = ++gCBID_1;
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgSessionID", SessionHandle);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgID", v12);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTDiscoveryAgentCreate_block_invoke;
    v17[3] = &unk_1E8517C58;
    v17[4] = &buf;
    v17[5] = &v18;
    sendMessageWithReplySync(v11, "kCBMsgIdDiscoveryAgentCreateMsg", v13, v17);
    if (v13)
    {
      xpc_release(v13);
    }

    v14 = v19[3];
    if (!v14)
    {
      addXpcMsgHandler(v11, &deviceServiceManagerXpcCallbacks_0);
      if (_localBTDiscoveryAgentCallbacksRegistered(*(*(&buf + 1) + 24)))
      {
        if (MBFLogInitOnce != -1)
        {
          BTDiscoveryAgentCreate_cold_2();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTAccessoryManagerAddCallbacks_cold_6();
        }

        v14 = 0;
      }

      else if (_localBTDiscoveryAgentAddCallbacks(*(*(&buf + 1) + 24), v11, a2, a3, v12))
      {
        if (MBFLogInitOnce != -1)
        {
          BTDiscoveryAgentCreate_cold_2();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTDiscoveryAgentCreate_cold_3();
        }

        v14 = 4;
      }

      else
      {
        *a4 = *(*(&buf + 1) + 24);
        v14 = v19[3];
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentCreate_cold_7();
    }

    v14 = 1;
  }

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __BTDiscoveryAgentCreate_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDiscoveryAgentID");
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 40);
  v5 = a1 + 40;
  *(*(v6 + 8) + 24) = uint64;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDiscoveryAgentCreate_block_invoke_cold_2(v5);
  }
}

uint64_t BTDiscoveryAgentDestroy(uint64_t *a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentDestroy_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(*a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgDiscoveryAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDiscoveryAgentDestroy_block_invoke;
    v7[3] = &unk_1E8517C80;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDiscoveryAgentDestroyMsg", v4, v7);
    if (!v9[3])
    {
      _localBTDiscoveryAgentRemoveCallbacks(*a1);
      removeXpcMsgHandler(v3, &deviceServiceManagerXpcCallbacks_0);
      *a1 = 0;
    }

    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  return v5;
}

void __BTDiscoveryAgentDestroy_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentDestroy_block_invoke_cold_2(v4);
  }
}

uint64_t BTDiscoveryAgentStartScan(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentStartScan_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDiscoveryAgentID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDiscoveryMode", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgServices", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTDiscoveryAgentStartScan_block_invoke;
    v11[3] = &unk_1E8517CA8;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdDiscoveryAgentStartScanMsg", v8, v11);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  return v9;
}

void __BTDiscoveryAgentStartScan_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentStartScan_block_invoke_cold_2(v4);
  }
}

uint64_t BTDiscoveryAgentStartScanForAdvertizedData(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentStartScanForAdvertizedData_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgDiscoveryAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDiscoveryAgentStartScanForAdvertizedData_block_invoke;
    v7[3] = &unk_1E8517CD0;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDiscoveryAgentStartScanForAdvertizedDataMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  return v5;
}

void __BTDiscoveryAgentStartScanForAdvertizedData_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentStartScanForAdvertizedData_block_invoke_cold_2(v4);
  }
}

uint64_t BTDiscoveryAgentStopScan(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentStopScan_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgDiscoveryAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTDiscoveryAgentStopScan_block_invoke;
    v7[3] = &unk_1E8517CF8;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdDiscoveryAgentStopScanMsg", v4, v7);
    if (v4)
    {
      xpc_release(v4);
    }

    v5 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  return v5;
}

void __BTDiscoveryAgentStopScan_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentStopScan_block_invoke_cold_2(v4);
  }
}

uint64_t BTDiscoveryAgentGetDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentGetDevices_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgDiscoveryAgentID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTDiscoveryAgentGetDevices_block_invoke;
    v13[3] = &unk_1E8517D20;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdDiscoveryAgentGetDevicesMsg", v10, v13);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTDiscoveryAgentGetDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
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
        BTDiscoveryAgentCreate_cold_2();
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
    BTDiscoveryAgentCreate_cold_2();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTDiscoveryAgentGetDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTDiscoveryAgentAddKey(uint64_t a1, const void *a2, size_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentAddKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (!MBXpcConnection)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  if (!a2)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentAddKey_cold_6();
    }

    return 1;
  }

  if (!a3)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentAddKey_cold_4();
    }

    return 1;
  }

  v7 = MBXpcConnection;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "kCBMsgArgDiscoveryAgentID", a1);
  xpc_dictionary_set_data(v8, "kCBMsgArgKey", a2, a3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __BTDiscoveryAgentAddKey_block_invoke;
  v11[3] = &unk_1E8517D48;
  v11[4] = &v12;
  sendMessageWithReplySync(v7, "kCBMsgIdDiscoveryAgentAddKeyMsg", v8, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __BTDiscoveryAgentAddKey_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentAddKey_block_invoke_cold_2(v4);
  }
}

uint64_t BTDiscoveryAgentRemoveKey(uint64_t a1, const void *a2, size_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTDiscoveryAgentRemoveKey_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (!MBXpcConnection)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentDestroy_cold_4();
    }

    return 1;
  }

  if (!a2)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentAddKey_cold_6();
    }

    return 1;
  }

  if (!a3)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDiscoveryAgentAddKey_cold_4();
    }

    return 1;
  }

  v7 = MBXpcConnection;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "kCBMsgArgDiscoveryAgentID", a1);
  xpc_dictionary_set_data(v8, "kCBMsgArgKey", a2, a3);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __BTDiscoveryAgentRemoveKey_block_invoke;
  v11[3] = &unk_1E8517D70;
  v11[4] = &v12;
  sendMessageWithReplySync(v7, "kCBMsgIdDiscoveryAgentRemoveKeyMsg", v8, v11);
  if (v8)
  {
    xpc_release(v8);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __BTDiscoveryAgentRemoveKey_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTDiscoveryAgentAddKey_block_invoke_cold_2(v4);
  }
}

uint64_t discoveryAgentXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    discoveryAgentXpcDisconnectedHandler_cold_2();
  }

  return _localBTDiscoveryAgentRemoveCallbacksByXpcConnection(a1);
}

uint64_t discoveryAgentXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v36 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDiscoveryAgentID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  Callbacks = _localBTDiscoveryAgentGetCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v9 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v23 = a2;
    v24 = 2080;
    v25 = (a1 + 2080);
    v26 = 2080;
    v27 = a1 + 2336;
    v28 = 2048;
    v29 = uint64;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v9, OS_LOG_TYPE_DEBUG, "discoveryAgentXpcMsgHandler msg:%s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", buf, 0x3Eu);
  }

  if (!strcmp(a2, "kCBMsgIdDiscoveryAgentStatusEvent"))
  {
    if (Callbacks && *Callbacks)
    {
      v21 = a1;
      v12 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v14 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
      v13 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatus");
      v11 = Callbacks;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = 0;
  if (!strcmp(a2, "kCBMsgIdDiscoveryAgentDiscoveryEvent") && Callbacks)
  {
    v11 = (Callbacks + 8);
    if (*(Callbacks + 1))
    {
      v21 = a1;
      v12 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v13 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
      v14 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAttributes");
LABEL_13:
      v15 = *v11;
      UserData = _localBTDiscoveryAgentGetUserData(uint64, v7);
      v15(uint64, v13, v12, v14, UserData);
      v10 = 1;
      a1 = v21;
      goto LABEL_15;
    }

LABEL_14:
    v10 = 0;
  }

LABEL_15:
  if (MBFLogInitOnce != -1)
  {
    BTDiscoveryAgentCreate_cold_2();
  }

  v17 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v20 = "did not handle";
    *buf = 136316674;
    if (v10)
    {
      v20 = "handled";
    }

    v23 = v20;
    v24 = 2080;
    v25 = a2;
    v26 = 2080;
    v27 = a1 + 2080;
    v28 = 2080;
    v29 = a1 + 2336;
    v30 = 2048;
    v31 = uint64;
    v32 = 2048;
    v33 = v7;
    v34 = 2048;
    v35 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v17, OS_LOG_TYPE_DEBUG, "discoveryAgentXpcMsgHandler %s %s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", buf, 0x48u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL _localBTLocalDeviceCallbacksRegistered(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = 0;
  v5 = 1;
  v6 = &qword_1ED8FEC38;
  do
  {
    if (*(v6 - 1) == a1)
    {
      v7 = *v6 == *a2 && v6[1] == a2[1];
      if (v7 && v6[2] == a2[2])
      {
        break;
      }
    }

    v5 = v4 < 0x3F;
    v6 += 7;
    ++v4;
  }

  while (v4 != 64);
  pthread_mutex_unlock(&gLock_2);
  return v5;
}

uint64_t _localBTLocalDeviceGetCallbacksCBID(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &gBTLocalDeviceCallbackList;
  v5 = 64;
  while (1)
  {
    if (*v4 == a1)
    {
      v6 = v4[1] == *a2 && v4[2] == a2[1];
      if (v6 && v4[3] == a2[2])
      {
        break;
      }
    }

    v4 += 7;
    if (!--v5)
    {
      v8 = 0;
      goto LABEL_13;
    }
  }

  v8 = v4[5];
LABEL_13:
  pthread_mutex_unlock(&gLock_2);
  return v8;
}

BOOL _localBTLocalDeviceStatsCallbacksRegistered(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = 0;
  v5 = 1;
  v6 = &gBTLocalDevicePowerCallbackList + 1;
  do
  {
    if (*(v6 - 1) == a1 && *v6 == *a2)
    {
      break;
    }

    v5 = v4 < 0x3F;
    v6 += 5;
    ++v4;
  }

  while (v4 != 64);
  pthread_mutex_unlock(&gLock_2);
  return v5;
}

uint64_t _localBTLocalDeviceStatsGetCallbacksCBID(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &gBTLocalDevicePowerCallbackList;
  v5 = 64;
  while (*v4 != a1 || *(v4 + 1) != *a2)
  {
    v4 = (v4 + 40);
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = *(v4 + 3);
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return v6;
}

uint64_t _localBTLocalDeviceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  pthread_mutex_lock(&gLock_2);
  v10 = &gBTLocalDeviceCallbackList;
  v11 = 64;
  while (*v10 || v10[5])
  {
    v10 += 7;
    if (!--v11)
    {
      v12 = 4;
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = *(a3 + 16);
  *(v10 + 1) = *a3;
  v14 = ++gCBID_2;
  *v10 = a1;
  v10[5] = v14;
  v10[6] = a4;
  v10[3] = v13;
  v10[4] = a2;
  *a5 = v14;
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return v12;
}

uint64_t _localBTLocalDeviceAddStatsCallbacks(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  pthread_mutex_lock(&gLock_2);
  v10 = &gBTLocalDevicePowerCallbackList;
  v11 = 64;
  while (*v10 || *(v10 + 3))
  {
    v10 = (v10 + 40);
    if (!--v11)
    {
      v12 = 4;
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = *a3;
  v14 = ++gCBID_2;
  *v10 = a1;
  *(v10 + 1) = v13;
  *(v10 + 3) = v14;
  *(v10 + 4) = a4;
  *(v10 + 2) = a2;
  *a5 = v14;
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return v12;
}

uint64_t _localBTLocalDeviceRemoveCallbacks(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&gLock_2);
  v4 = &qword_1ED8FEC38;
  v5 = 64;
  while (1)
  {
    if (*(v4 - 1) == a1)
    {
      v6 = *v4 == *a2 && v4[1] == a2[1];
      if (v6 && v4[2] == a2[2])
      {
        break;
      }
    }

    v4 += 7;
    if (!--v5)
    {
      goto LABEL_13;
    }
  }

  v4[5] = 0;
  *(v4 + 3) = 0u;
  *(v4 + 1) = 0u;
  *(v4 - 1) = 0u;
LABEL_13:
  pthread_mutex_unlock(&gLock_2);
  return 0;
}

uint64_t _localBTLocalDeviceRemoveAllCallbacksByXPCConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_2);
  v2 = &qword_1ED8FEC50;
  v3 = 64;
  do
  {
    if (*v2 == a1)
    {
      v2[2] = 0;
      *(v2 - 1) = 0uLL;
      *v2 = 0uLL;
      *(v2 - 2) = 0uLL;
    }

    v2 += 7;
    --v3;
  }

  while (v3);
  v4 = &qword_1ECA5DAE8;
  v5 = 64;
  do
  {
    if (*v4 == a1)
    {
      v4[2] = 0;
      *(v4 - 1) = 0uLL;
      *v4 = 0uLL;
    }

    v4 += 5;
    --v5;
  }

  while (v5);
  pthread_mutex_unlock(&gLock_2);
  return 0;
}

uint64_t _localBTLocalDeviceRemoveStatsCallbacks(uint64_t a1)
{
  pthread_mutex_lock(&gLock_2);
  v2 = &gBTLocalDevicePowerCallbackList;
  v3 = 64;
  while (*v2 != a1 || !*(v2 + 1))
  {
    v2 = (v2 + 40);
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  *(v2 + 4) = 0;
  *v2 = 0u;
  v2[1] = 0u;
LABEL_7:
  pthread_mutex_unlock(&gLock_2);
  return 0;
}

uint64_t BTLocalDeviceGetDefault(uint64_t *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  SessionHandle = getSessionHandle(a1);
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetDefault_cold_2();
  }

  if (MBXpcConnection)
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    v6 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = MBXpcConnection + 2336;
      *&buf[12] = 2080;
      *&buf[14] = MBXpcConnection + 2080;
      *&buf[22] = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = SessionHandle;
      _os_log_debug_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetDefault service:%s, sessionName:%s session:%llx sessionID:%llx", buf, 0x2Au);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgSessionID", SessionHandle);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v17 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetDefault_block_invoke;
    v11[3] = &unk_1E8517D98;
    v11[4] = buf;
    v11[5] = &v12;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceGetDefaultMsg", v7, v11);
    *a2 = *(*&buf[8] + 24);
    if (v7)
    {
      xpc_release(v7);
    }

    v8 = *(v13 + 6);
    _Block_object_dispose(&v12, 8);
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
      BTAccessoryManagerGetDefault_cold_3();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceGetDefault_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgLocalDeviceID");
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetDefault_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceAddCallbacks(uint64_t a1, void *a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceAddCallbacks_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      addXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
      if (_localBTLocalDeviceCallbacksRegistered(a1, a2))
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
        if (_localBTLocalDeviceAddCallbacks(a1, MBXpcConnection, a2, a3, &value))
        {
          if (MBFLogInitOnce != -1)
          {
            BTAccessoryManagerAddCallbacks_cold_3();
          }

          if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
          {
            BTDiscoveryAgentCreate_cold_3();
          }

          return 4;
        }

        else
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgID", value);
          v11 = 0;
          v12 = &v11;
          v13 = 0x2000000000;
          v14 = 0;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 0x40000000;
          v10[2] = __BTLocalDeviceAddCallbacks_block_invoke;
          v10[3] = &unk_1E8517DC0;
          v10[4] = &v11;
          sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceAddCallbacksMsg", v8, v10);
          if (v8)
          {
            xpc_release(v8);
          }

          if (v12[3])
          {
            _localBTLocalDeviceRemoveCallbacks(a1, a2);
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
    BTLocalDeviceAddCallbacks_cold_8();
  }

  return 1;
}

void __BTLocalDeviceAddCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceAddCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceRemoveCallbacks(uint64_t a1, void *a2)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceRemoveCallbacks_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      CallbacksCBID = _localBTLocalDeviceGetCallbacksCBID(a1, a2);
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 3;
      if (CallbacksCBID)
      {
        v6 = CallbacksCBID;
        _localBTLocalDeviceRemoveCallbacks(a1, a2);
        removeXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
        xpc_dictionary_set_uint64(v7, "kCBMsgArgID", v6);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __BTLocalDeviceRemoveCallbacks_block_invoke;
        v10[3] = &unk_1E8517DE8;
        v10[4] = &v11;
        sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceRemoveCallbacksMsg", v7, v10);
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
    BTLocalDeviceAddCallbacks_cold_8();
  }

  return 1;
}

void __BTLocalDeviceRemoveCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceRemoveCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceMaskCallbacks(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceMaskCallbacks_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceEventMask", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceMaskCallbacks_block_invoke;
    v9[3] = &unk_1E8517E10;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceMaskCallbacks", v6, v9);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceMaskCallbacks_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceMaskCallbacks_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetModulePower(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceSetModulePower_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTPowerModule", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTPowerMode", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceSetModulePower_block_invoke;
    v11[3] = &unk_1E8517E38;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdLocalDeviceSetModulePowerMsg", v8, v11);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v9;
}

void __BTLocalDeviceSetModulePower_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetModulePower_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetSpatialPlatformSupport(uint64_t a1, _DWORD *a2)
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
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
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
    v9[2] = __BTLocalDeviceGetSpatialPlatformSupport_block_invoke;
    v9[3] = &unk_1E8517E88;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceGetSpatialPlatformSupportMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    *a2 = v11[3];
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceGetSpatialPlatformSupport_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgSpatialPlatformSupport");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetSpatialPlatformSupport_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDevicePowerReset(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v2 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v2, OS_LOG_TYPE_DEBUG, "BTLocalDevicePowerReset over XPC localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v4 = MBXpcConnection;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2000000000;
    v12 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDevicePowerReset_block_invoke;
    v9[3] = &unk_1E8517EB0;
    v9[4] = &buf;
    sendMessageWithReplySync(v4, "kCBMsgIdLocalDevicePowerResetMsg", v5, v9);
    if (v5)
    {
      xpc_release(v5);
    }

    v6 = *(*(&buf + 1) + 24);
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

    v6 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __BTLocalDevicePowerReset_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDevicePowerReset_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetAirplaneModeStatus(uint64_t a1, _DWORD *a2)
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
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetAirplaneModeStatus over XPC localDevice:%llx", &buf, 0xCu);
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
    v11[2] = __BTLocalDeviceGetAirplaneModeStatus_block_invoke;
    v11[3] = &unk_1E8517ED8;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetAirplaneModeStatusMsg", v7, v11);
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

void __BTLocalDeviceGetAirplaneModeStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAirplaneMode");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetAirplaneModeStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetAddressString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetAddressString_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBufferSize", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetAddressString_block_invoke;
    v11[3] = &unk_1E8517F00;
    v11[4] = &v12;
    v11[5] = a2;
    v11[6] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdLocalDeviceGetAddressStringMsg", v8, v11);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v9;
}

void __BTLocalDeviceGetAddressString_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    v5 = a1[5];
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgAddressString");
    strlcpy(v5, string, a1[6]);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetAddressString_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetName_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBufferSize", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceGetName_block_invoke;
    v11[3] = &unk_1E8517F28;
    v11[4] = &v12;
    v11[5] = a2;
    v11[6] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdLocalDeviceGetNameMsg", v8, v11);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v9;
}

void __BTLocalDeviceGetName_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    v5 = a1[5];
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgDeviceName");
    strlcpy(v5, string, a1[6]);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetName_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetDiscoverable(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceSetDiscoverable over XPC localDevice:%llx discoverable:%d", buf, 0x12u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgDiscoverable", a2);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v13 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceSetDiscoverable_block_invoke;
    v11[3] = &unk_1E8517F50;
    v11[4] = buf;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceSetDiscoverableMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    v8 = *(*&buf[8] + 24);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceSetDiscoverable_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetDiscoverable_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetConnectable(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceSetConnectable over XPC localDevice:%llx connectable:%d", buf, 0x12u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgConnectable", a2);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v13 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceSetConnectable_block_invoke;
    v11[3] = &unk_1E8517FA0;
    v11[4] = buf;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceSetConnectableMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    v8 = *(*&buf[8] + 24);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceSetConnectable_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetConnectable_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetPairingStatus(uint64_t a1, _DWORD *a2)
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
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetPairingStatus over XPC localDevice:%llx", &buf, 0xCu);
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
    v11[2] = __BTLocalDeviceGetPairingStatus_block_invoke;
    v11[3] = &unk_1E8517FF0;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetPairingStatusMsg", v7, v11);
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

void __BTLocalDeviceGetPairingStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPaired");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetPairingStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetPairedDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetPairedDevices_cold_2();
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
    v13[2] = __BTLocalDeviceGetPairedDevices_block_invoke;
    v13[3] = &unk_1E8518018;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdLocalDeviceGetPairedDevicesMsg", v10, v13);
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

void __BTLocalDeviceGetPairedDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceGetPairedDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTLocalDeviceGetConnectingDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetConnectingDevices_cold_2();
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
    v13[2] = __BTLocalDeviceGetConnectingDevices_block_invoke;
    v13[3] = &unk_1E8518090;
    v13[4] = &v14;
    v13[5] = a4;
    v13[6] = a2;
    v13[7] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdLocalDeviceGetConnectingDevicesMsg", v10, v13);
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

void __BTLocalDeviceGetConnectingDevices_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceGetConnectingDevices_block_invoke_cold_3(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t BTLocalDeviceGetAdvertisingStatus(uint64_t a1, _DWORD *a2)
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
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetAdvertisingStatus over XPC localDevice:%llx", &buf, 0xCu);
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
    v11[2] = __BTLocalDeviceGetAdvertisingStatus_block_invoke;
    v11[3] = &unk_1E85180B8;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetAdvertisingStatusMsg", v7, v11);
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

void __BTLocalDeviceGetAdvertisingStatus_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgAdvertising");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetAdvertisingStatus_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceEnableDUTMode(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v2 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v2, OS_LOG_TYPE_DEBUG, "BTLocalDeviceEnableDUTMode over XPC localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v4 = MBXpcConnection;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2000000000;
    v12 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceEnableDUTMode_block_invoke;
    v9[3] = &unk_1E85180E0;
    v9[4] = &buf;
    sendMessageWithReplySync(v4, "kCBMsgIdLocalDeviceEnableDUTModeMsg", v5, v9);
    if (v5)
    {
      xpc_release(v5);
    }

    v6 = *(*(&buf + 1) + 24);
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

    v6 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __BTLocalDeviceEnableDUTMode_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetConnectable_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetScanning(uint64_t a1, _DWORD *a2)
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
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetScanning over XPC localDevice:%llx", &buf, 0xCu);
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
    v11[2] = __BTLocalDeviceGetScanning_block_invoke;
    v11[3] = &unk_1E8518108;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetScanningMsg", v7, v11);
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

void __BTLocalDeviceGetScanning_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgScanning");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetScanning_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetDUTModeEnabled(uint64_t a1, _DWORD *a2)
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
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceGetDUTModeEnabled over XPC localDevice:%llx", &buf, 0xCu);
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
    v11[2] = __BTLocalDeviceGetDUTModeEnabled_block_invoke;
    v11[3] = &unk_1E8518130;
    v11[4] = &buf;
    v11[5] = &v12;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceGetDUTModeEnabledMsg", v7, v11);
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

void __BTLocalDeviceGetDUTModeEnabled_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgDutModeEnabled");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetDUTModeEnabled_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceEnableLeTxTestMode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v8 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    LOWORD(v17) = 1024;
    *(&v17 + 2) = a4;
    _os_log_debug_impl(&dword_1D85D5000, v8, OS_LOG_TYPE_DEBUG, "BTLocalDeviceEnableLeTxTestMode over XPC localDevice:%llx testFrequency:%d payloadSize:%d payload:%d", buf, 0x1Eu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v10 = MBXpcConnection;
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgTestFrequency", a2);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgPayloadSize", a3);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgPayload", a4);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v17 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTLocalDeviceEnableLeTxTestMode_block_invoke;
    v15[3] = &unk_1E8518158;
    v15[4] = buf;
    sendMessageWithReplySync(v10, "kCBMsgIdLocalDeviceEnableLeTxTestModeMsg", v11, v15);
    if (v11)
    {
      xpc_release(v11);
    }

    v12 = *(*&buf[8] + 24);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v12 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __BTLocalDeviceEnableLeTxTestMode_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceEnableLeTxTestMode_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceEnableLeRxTestMode(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceEnableLeTxTestMode over XPC localDevice:%llx testFrequency:%d", buf, 0x12u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v6 = MBXpcConnection;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v7, "kCBMsgArgTestFrequency", a2);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v13 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceEnableLeRxTestMode_block_invoke;
    v11[3] = &unk_1E8518180;
    v11[4] = buf;
    sendMessageWithReplySync(v6, "kCBMsgIdLocalDeviceEnableLeRxTestModeMsg", v7, v11);
    if (v7)
    {
      xpc_release(v7);
    }

    v8 = *(*&buf[8] + 24);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __BTLocalDeviceEnableLeRxTestMode_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceEnableLeRxTestMode_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceDisableLeTestMode(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v2 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v2, OS_LOG_TYPE_DEBUG, "BTLocalDeviceDisableLeTestMode over XPC localDevice:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v4 = MBXpcConnection;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2000000000;
    v12 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceDisableLeTestMode_block_invoke;
    v9[3] = &unk_1E85181A8;
    v9[4] = &buf;
    sendMessageWithReplySync(v4, "kCBMsgIdLocalDeviceDisableLeTestModeMsg", v5, v9);
    if (v5)
    {
      xpc_release(v5);
    }

    v6 = *(*(&buf + 1) + 24);
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

    v6 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __BTLocalDeviceDisableLeTestMode_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceDisableLeTestMode_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSupportsService(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_debug_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEBUG, "BTLocalDeviceSupportsService over XPC localDevice:%llx service:%d", buf, 0x12u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgServices", a2);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v19 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTLocalDeviceSupportsService_block_invoke;
    v13[3] = &unk_1E85181D0;
    v13[4] = buf;
    v13[5] = &v14;
    sendMessageWithReplySync(v8, "kCBMsgIdLocalDeviceSupportsServiceMsg", v9, v13);
    if (v9)
    {
      xpc_release(v9);
    }

    *a3 = v15[3];
    v10 = *(*&buf[8] + 24);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __BTLocalDeviceSupportsService_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServiceSuppored");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceSupportsService_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceAdvertiseData(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 3;
  if (a5 && a3 && a2 && a4)
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    v11 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_debug_impl(&dword_1D85D5000, v11, OS_LOG_TYPE_DEBUG, "BTLocalDeviceAdvertiseData over XPC localDevice:%llx", &buf, 0xCu);
    }

    MBXpcConnection = getMBXpcConnection(a1);
    if (MBXpcConnection)
    {
      v13 = MBXpcConnection;
      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgLocalDeviceID", a1);
      xpc_dictionary_set_data(v14, "kCBMsgArgKey", a2, a3);
      xpc_dictionary_set_data(v14, "kCBMsgArgValue", a4, a5);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v19 = 0x2000000000;
      v20 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __BTLocalDeviceAdvertiseData_block_invoke;
      v17[3] = &unk_1E85181F8;
      v17[4] = &buf;
      sendMessageWithReplySync(v13, "kCBMsgIdLocalDeviceAdvertiseDataMsg", v14, v17);
      if (v14)
      {
        xpc_release(v14);
      }

      v5 = *(*(&buf + 1) + 24);
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
        BTLocalDeviceAdvertiseData_cold_3();
      }

      v5 = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void __BTLocalDeviceAdvertiseData_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceAdvertiseData_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceRemoveData(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = 3;
  if (a5 && a3 && a2 && a4)
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    v11 = MBFLogComponent;
    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_debug_impl(&dword_1D85D5000, v11, OS_LOG_TYPE_DEBUG, "BTLocalDeviceRemoveData over XPC localDevice:%llx", &buf, 0xCu);
    }

    MBXpcConnection = getMBXpcConnection(a1);
    if (MBXpcConnection)
    {
      v13 = MBXpcConnection;
      v14 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v14, "kCBMsgArgLocalDeviceID", a1);
      xpc_dictionary_set_data(v14, "kCBMsgArgKey", a2, a3);
      xpc_dictionary_set_data(v14, "kCBMsgArgValue", a4, a5);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v19 = 0x2000000000;
      v20 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __BTLocalDeviceRemoveData_block_invoke;
      v17[3] = &unk_1E8518220;
      v17[4] = &buf;
      sendMessageWithReplySync(v13, "kCBMsgIdLocalDeviceRemoveDataMsg", v14, v17);
      if (v14)
      {
        xpc_release(v14);
      }

      v5 = *(*(&buf + 1) + 24);
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
        BTLocalDeviceAdvertiseData_cold_3();
      }

      v5 = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

void __BTLocalDeviceRemoveData_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceRemoveData_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceRegisterForPowerUpdates(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceRegisterForPowerUpdates_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      addXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
      if (_localBTLocalDeviceStatsCallbacksRegistered(a1, a2))
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
        if (_localBTLocalDeviceAddStatsCallbacks(a1, MBXpcConnection, a2, a3, &value))
        {
          if (MBFLogInitOnce != -1)
          {
            BTAccessoryManagerAddCallbacks_cold_3();
          }

          if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
          {
            BTDiscoveryAgentCreate_cold_3();
          }

          return 4;
        }

        else
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgID", value);
          v11 = 0;
          v12 = &v11;
          v13 = 0x2000000000;
          v14 = 0;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 0x40000000;
          v10[2] = __BTLocalDeviceRegisterForPowerUpdates_block_invoke;
          v10[3] = &unk_1E8518248;
          v10[4] = &v11;
          sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceRegisterForPowerUpdatesMsg", v8, v10);
          if (v8)
          {
            xpc_release(v8);
          }

          if (v12[3])
          {
            _localBTLocalDeviceRemoveStatsCallbacks(a1);
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
    BTLocalDeviceAddCallbacks_cold_8();
  }

  return 1;
}

void __BTLocalDeviceRegisterForPowerUpdates_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceRegisterForPowerUpdates_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceUnregisterForPowerUpdates(uint64_t a1)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceUnregisterForPowerUpdates_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    _localBTLocalDeviceRemoveStatsCallbacks(a1);
    removeXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kCBMsgArgLocalDeviceID", a1);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __BTLocalDeviceUnregisterForPowerUpdates_block_invoke;
    v6[3] = &unk_1E8518270;
    v6[4] = &v7;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceUnregisterForPowerUpdatesMsg", v3, v6);
    if (v3)
    {
      xpc_release(v3);
    }

    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
    return v4;
  }

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

void __BTLocalDeviceUnregisterForPowerUpdates_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceUnregisterForPowerUpdates_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceReadPowerConsumption(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v4 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "BTLocalDeviceReadPowerConsumption device:%llx", &buf, 0xCu);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadPowerConsumption_cold_3();
    if (MBXpcConnection)
    {
      goto LABEL_9;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_9:
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2000000000;
    v17 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __BTLocalDeviceReadPowerConsumption_block_invoke;
    v10[3] = &unk_1E8518298;
    v10[4] = &buf;
    v10[5] = &v11;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceReadPowerConsumptionMsg", v6, v10);
    if (v6)
    {
      xpc_release(v6);
    }

    *a2 = v12[3];
    v7 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&buf, 8);
    goto LABEL_18;
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    BTLocalDeviceAddCallbacks_cold_8();
  }

  v7 = 1;
LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __BTLocalDeviceReadPowerConsumption_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = a1 + 32;
  *(*(v6 + 8) + 24) = uint64;
  *(*(*(v5 + 8) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgPowerConsumed");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceReadPowerConsumption_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceRegisterForPowerProfileStatistics(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceRegisterForPowerProfileStatistics_cold_2();
    if (MBXpcConnection)
    {
LABEL_5:
      addXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
      if (_localBTLocalDeviceStatsCallbacksRegistered(a1, a2))
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
        if (_localBTLocalDeviceAddStatsCallbacks(a1, MBXpcConnection, a2, a3, &value))
        {
          if (MBFLogInitOnce != -1)
          {
            BTAccessoryManagerAddCallbacks_cold_3();
          }

          if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
          {
            BTDiscoveryAgentCreate_cold_3();
          }

          return 4;
        }

        else
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
          xpc_dictionary_set_uint64(v8, "kCBMsgArgID", value);
          v11 = 0;
          v12 = &v11;
          v13 = 0x2000000000;
          v14 = 0;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 0x40000000;
          v10[2] = __BTLocalDeviceRegisterForPowerProfileStatistics_block_invoke;
          v10[3] = &unk_1E85182C0;
          v10[4] = &v11;
          sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceRegisterForPowerProfileStatisticsMsg", v8, v10);
          if (v8)
          {
            xpc_release(v8);
          }

          if (v12[3])
          {
            _localBTLocalDeviceRemoveStatsCallbacks(a1);
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
    BTLocalDeviceAddCallbacks_cold_8();
  }

  return 1;
}

void __BTLocalDeviceRegisterForPowerProfileStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceRegisterForPowerProfileStatistics_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceUnregisterForPowerProfileStatistics(uint64_t a1)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceUnregisterForPowerProfileStatistics_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    _localBTLocalDeviceRemoveStatsCallbacks(a1);
    removeXpcMsgHandler(MBXpcConnection, &localDeviceXpcCallbacks);
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kCBMsgArgLocalDeviceID", a1);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __BTLocalDeviceUnregisterForPowerProfileStatistics_block_invoke;
    v6[3] = &unk_1E85182E8;
    v6[4] = &v7;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceUnregisterForPowerProfileStatisticsMsg", v3, v6);
    if (v3)
    {
      xpc_release(v3);
    }

    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
    return v4;
  }

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

void __BTLocalDeviceUnregisterForPowerProfileStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceUnregisterForPowerProfileStatistics_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceReadPowerProfileStatistics(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadPowerProfileStatistics_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgReset", a2);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __BTLocalDeviceReadPowerProfileStatistics_block_invoke;
    v16[3] = &unk_1E8518310;
    v16[4] = &v17;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a5;
    v16[8] = a6;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceReadPowerProfileStatisticsMsg", v13, v16);
    if (v13)
    {
      xpc_release(v13);
    }

    v14 = *(v18 + 6);
    _Block_object_dispose(&v17, 8);
    return v14;
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

void __BTLocalDeviceReadPowerProfileStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(*(v6 + 8) + 24) = uint64;
  *v5[1] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsTransmitting");
  *v5[2] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsReceiving");
  *v5[3] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsSleep");
  *v5[4] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsOthers");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceReadPowerProfileStatistics_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceReadEnhancedPowerStatsPerCore(uint64_t a1, unsigned int a2, uint64_t a3)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadEnhancedPowerStatsPerCore_cold_2();
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
    v10[2] = __BTLocalDeviceReadEnhancedPowerStatsPerCore_block_invoke;
    v10[3] = &unk_1E8518360;
    v10[4] = &v11;
    v10[5] = a3;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceReadEnhancedPowerStatsPerCoreMsg", v7, v10);
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

void __BTLocalDeviceReadEnhancedPowerStatsPerCore_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  length = 0;
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgData", &length);
  if (length == 92)
  {
    v6 = *(a1 + 40);
    v7 = data[1];
    *v6 = *data;
    v6[1] = v7;
    v8 = data[2];
    v9 = data[3];
    v10 = data[4];
    *(v6 + 76) = *(data + 76);
    v6[3] = v9;
    v6[4] = v10;
    v6[2] = v8;
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
    __BTLocalDeviceReadEnhancedPowerStatsPerCore_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceReadTransportSwitchStatistics(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadTransportSwitchStatistics_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgReset", a2);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTLocalDeviceReadTransportSwitchStatistics_block_invoke;
    v17[3] = &unk_1E8518388;
    v17[4] = &v18;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a5;
    v17[8] = a6;
    sendMessageWithReplySync(v13, "kCBMsgIdLocalDeviceReadTransportSwitchStatisticsMsg", v14, v17);
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
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v15;
}

void __BTLocalDeviceReadTransportSwitchStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(*(v6 + 8) + 24) = uint64;
  *v5[1] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsTotal");
  *v5[2] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsSuccesful");
  *v5[3] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDowngraded");
  *v5[4] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsInvolundaryDowngraded");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceReadTransportSwitchStatistics_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceReadDetailedPowerProfileStatistics(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadDetailedPowerProfileStatistics_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v24 = MBXpcConnection;
    v25 = a4;
    v26 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v26, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v26, "kCBMsgArgReset", a2);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = __BTLocalDeviceReadDetailedPowerProfileStatistics_block_invoke;
    v30[3] = &unk_1E85183B0;
    v30[4] = &v31;
    v30[5] = a3;
    v30[6] = v25;
    v30[7] = a5;
    v30[8] = a6;
    v30[9] = a7;
    v30[10] = a8;
    v30[11] = a9;
    v30[12] = a10;
    v30[13] = a11;
    v30[14] = a12;
    v30[15] = a13;
    v30[16] = a14;
    v30[17] = a15;
    v30[18] = a16;
    sendMessageWithReplySync(v24, "kCBMsgIdLocalDeviceReadDetailedPowerProfileStatisticsMsg", v26, v30);
    if (v26)
    {
      xpc_release(v26);
    }

    v27 = *(v32 + 6);
    _Block_object_dispose(&v31, 8);
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

  return v27;
}

void __BTLocalDeviceReadDetailedPowerProfileStatistics_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(*(v6 + 8) + 24) = uint64;
  *v5[1] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDurationTotal");
  *v5[2] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDurationActive");
  *v5[3] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDurationIdle");
  *v5[4] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDurationSleep");
  *v5[5] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsDisableCounter");
  *v5[6] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsiPATxBT");
  *v5[7] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsePATxBT");
  *v5[8] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsiPATxLE");
  *v5[9] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsePATxLE");
  *v5[10] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsConnectedRxBT");
  *v5[11] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsConnectedRxLE");
  *v5[12] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsScanRxBT");
  *v5[13] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsScanRxLE");
  *v5[14] = xpc_dictionary_get_uint64(xdict, "kCBMsgArgStatsTotalPHYCal");
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceReadDetailedPowerProfileStatistics_block_invoke_cold_2(v5);
  }
}

uint64_t BTStartHCITraces(uint64_t a1)
{
  MBXpcConnection = getMBXpcConnection(a1);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTStartHCITraces_cold_2();
    if (MBXpcConnection)
    {
      goto LABEL_5;
    }
  }

  else if (MBXpcConnection)
  {
LABEL_5:
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kCBMsgArgLocalDeviceID", a1);
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __BTStartHCITraces_block_invoke;
    v6[3] = &unk_1E85183D8;
    v6[4] = &v7;
    sendMessageWithReplySync(MBXpcConnection, "kCBMsgIdLocalDeviceStartHCITracesMsg", v3, v6);
    if (v3)
    {
      xpc_release(v3);
    }

    v4 = *(v8 + 6);
    _Block_object_dispose(&v7, 8);
    return v4;
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

void __BTStartHCITraces_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTStartHCITraces_block_invoke_cold_2(v4);
  }
}

uint64_t BTStopHCITraces(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTStopHCITraces_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v11 = MBXpcConnection;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_string(v12, "kCBMsgArgPath", a2);
    xpc_dictionary_set_string(v12, "kCBMsgArgExtensionToken", a3);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgBufferSize", a5);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTStopHCITraces_block_invoke;
    v15[3] = &unk_1E8518400;
    v15[4] = &v16;
    v15[5] = a4;
    v15[6] = a5;
    sendMessageWithReplySync(v11, "kCBMsgIdLocalDeviceStopHCITracesMsg", v12, v15);
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
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v13;
}

void __BTStopHCITraces_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgName");
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
    __BTStopHCITraces_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceShowPowerPrompt(uint64_t a1, const char *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceShowPowerPrompt_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_string(v6, "kCBMsgArgBundleIdString", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceShowPowerPrompt_block_invoke;
    v9[3] = &unk_1E8518428;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceShowPowerPromptMsg", v6, v9);
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
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceShowPowerPrompt_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceShowPowerPrompt_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetAFHMap(uint64_t a1, const void *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceSetAFHMap_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_data(v6, "kCBMsgArgData", a2, 0xAuLL);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceSetAFHMap_block_invoke;
    v9[3] = &unk_1E8518450;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceSetAFHMapMsg", v6, v9);
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
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceSetAFHMap_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetAFHMap_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceReadAFHMap(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceReadAFHMap_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceReadAFHMap_block_invoke;
    v9[3] = &unk_1E8518478;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceReadAFHMapMsg", v6, v9);
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
      BTAccessoryManagerGetDevices_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceReadAFHMap_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceReadAFHMap_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetDelayedWake(unsigned int a1)
{
  FirstSessionHandle = getFirstSessionHandle();
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceSetDelayedWake_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(FirstSessionHandle);
  if (MBXpcConnection)
  {
    v4 = MBXpcConnection;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kCBMsgArgDelay", a1);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __BTLocalDeviceSetDelayedWake_block_invoke;
    v8[3] = &unk_1E85184A0;
    v8[4] = &v9;
    sendMessageWithReplySync(v4, "kCBMsgIdLocalDeviceSetDelayedWakeMsg", v5, v8);
    if (v5)
    {
      xpc_release(v5);
    }

    v6 = *(v10 + 6);
    _Block_object_dispose(&v9, 8);
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

  return v6;
}

void __BTLocalDeviceSetDelayedWake_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetDelayedWake_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceSetDenylistEnabled(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceSetDenylistEnabled_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBool", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceSetDenylistEnabled_block_invoke;
    v9[3] = &unk_1E85184C8;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceSetDenylistEnabledMsg", v6, v9);
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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceSetDenylistEnabled_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetDenylistEnabled_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceGetDenylistEnabled(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetDenylistEnabled_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
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
    v9[2] = __BTLocalDeviceGetDenylistEnabled_block_invoke;
    v9[3] = &unk_1E85184F0;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceGetDenylistEnabledMsg", v6, v9);
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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceGetDenylistEnabled_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceGetDenylistEnabled_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceGetDeviceNamesThatMayBeDenylisted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2000000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_block_invoke;
    v13[3] = &unk_1E8518518;
    v13[4] = &v15;
    v13[5] = v14;
    v13[6] = a4;
    v13[7] = a2;
    v13[8] = a3;
    sendMessageWithReplySync(v9, "kCBMsgIdLocalDeviceGetDeviceNamesThatMayBeDenylistedMsg", v10, v13);
    if (v10)
    {
      xpc_release(v10);
    }

    v11 = *(v16 + 6);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTAccessoryManagerAddCallbacks_cold_3();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgDeviceArray");
  *(*(*(a1 + 40) + 8) + 24) = xpc_array_get_count(value);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(a1 + 48) <= v6)
      {
        break;
      }

      v7 = *(a1 + 56);
      string = xpc_array_get_string(value, v6);
      strlcpy((v7 + v5), string, 0xF8uLL);
      ++v6;
      v5 += 248;
    }

    while (*(*(*(a1 + 40) + 8) + 24) > v6);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_block_invoke_cold_2(a1 + 32);
  }

  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 >= *(a1 + 48))
  {
    v9 = *(a1 + 48);
  }

  **(a1 + 64) = v9;
}

uint64_t BTLocalDeviceGetSharingAddresses(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceGetSharingAddresses_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v9 = MBXpcConnection;
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v10, "kCbMsgArgDeviceArrayMaxSize", a4);
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
    v13[2] = __BTLocalDeviceGetSharingAddresses_block_invoke;
    v13[3] = &unk_1E8518540;
    v13[4] = &v18;
    v13[5] = &v14;
    v13[6] = a4;
    v13[7] = a2;
    sendMessageWithReplySync(v9, "kCBMsgIdLocalDeviceGetSharingAddressesMsg", v10, v13);
    *a3 = v15[3];
    if (v10)
    {
      xpc_release(v10);
    }

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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v11;
}

void __BTLocalDeviceGetSharingAddresses_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgDeviceArray");
  *(*(a1[5] + 8) + 24) = xpc_array_get_count(value);
  if (*(*(a1[5] + 8) + 24))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (a1[6] <= v7)
      {
        break;
      }

      length = 0;
      v8 = a1[7];
      data = xpc_array_get_data(value, v7, &length);
      v10 = length >= 6 ? 6 : length;
      memcpy((v8 + v6), data, v10);
      ++v7;
      v6 += 6;
    }

    while (*(*(a1[5] + 8) + 24) > v7);
  }

  if (MBFLogInitOnce != -1)
  {
    BTAccessoryManagerAddCallbacks_cold_3();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceGetSharingAddresses_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceIsSharingEnabled(uint64_t a1, _DWORD *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceIsSharingEnabled_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
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
    v9[2] = __BTLocalDeviceIsSharingEnabled_block_invoke;
    v9[3] = &unk_1E8518568;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceIsSharingEnabledMsg", v6, v9);
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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceIsSharingEnabled_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceIsSharingEnabled_block_invoke_cold_2(v5);
  }
}

uint64_t BTLocalDeviceDumpExposureNotificationDatabase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceDumpExposureNotificationDatabase_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBufferSize", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTLocalDeviceDumpExposureNotificationDatabase_block_invoke;
    v11[3] = &unk_1E8518590;
    v11[4] = &v12;
    v11[5] = a2;
    v11[6] = a3;
    sendMessageWithReplySync(v7, "kCBMsgIdLocalDeviceDumpExposureNotificationDatabaseMsg", v8, v11);
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
      BTLocalDeviceAddCallbacks_cold_8();
    }

    return 1;
  }

  return v9;
}

void __BTLocalDeviceDumpExposureNotificationDatabase_block_invoke(void *a1, xpc_object_t xdict)
{
  v4 = (a1 + 4);
  *(*(a1[4] + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  if (!*(*(*v4 + 8) + 24))
  {
    v5 = a1[5];
    string = xpc_dictionary_get_string(xdict, "kCBMsgArgBufferName");
    strlcpy(v5, string, a1[6]);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceDumpExposureNotificationDatabase_block_invoke_cold_2(v4);
  }
}

uint64_t BTLocalDeviceLinkQualityGetData(uint64_t a1, void *a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTLocalDeviceLinkQualityGetData_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgLocalDeviceID", a1);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x23800000000;
    bzero(&v13, 0x21AuLL);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTLocalDeviceLinkQualityGetData_block_invoke;
    v9[3] = &unk_1E85185B8;
    v9[4] = &v14;
    v9[5] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdLocalDeviceLinkQualityGetDataMsg", v6, v9);
    if (v6)
    {
      xpc_release(v6);
    }

    memcpy(a2, v11 + 3, 0x21AuLL);
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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v7;
}

void __BTLocalDeviceLinkQualityGetData_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
  array = xpc_dictionary_get_array(xdict, "kCBMsgArgBTLinkQualityData");
  *(*(*(a1 + 40) + 8) + 24) = xpc_array_get_count(array);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
    do
    {
      value = xpc_array_get_value(array, v5);
      v7 = 268 * v5;
      *(*(*(a1 + 40) + 8) + 268 * v5 + 28) = xpc_dictionary_get_uint64(value, "kCBMsgArgRetX");
      *(*(*(a1 + 40) + 8) + v7 + 29) = xpc_dictionary_get_uint64(value, "kCBMsgArgRssi");
      *(*(*(a1 + 40) + 8) + v7 + 30) = xpc_dictionary_get_uint64(value, "kCBMsgArgNoise");
      *(*(*(a1 + 40) + 8) + v7 + 31) = xpc_dictionary_get_uint64(value, "kCBMsgArgSnr");
      *(*(*(a1 + 40) + 8) + v7 + 32) = xpc_dictionary_get_uint64(value, "kCBMsgArgDataRate");
      *(*(*(a1 + 40) + 8) + v7 + 34) = xpc_dictionary_get_uint64(value, "kCBMsgArgJitterBuffer");
      *(*(*(a1 + 40) + 8) + v7 + 36) = xpc_dictionary_get_uint64(value, "kCBMsgArgCodecType");
      v8 = *(*(a1 + 40) + 8) + 268 * v5;
      string = xpc_dictionary_get_string(value, "kCBMsgArgName");
      strlcpy((v8 + 38), string, 0x100uLL);
      v10 = v5 + 1;
      if (*(*(*(a1 + 40) + 8) + 24) >= 2u)
      {
        v11 = 2;
      }

      else
      {
        v11 = *(*(*(a1 + 40) + 8) + 24);
      }

      v5 = 1;
    }

    while (v10 < v11);
  }

  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __BTLocalDeviceLinkQualityGetData_block_invoke_cold_2(a1 + 32);
  }
}

uint64_t BTLocalDeviceSetCallScreening(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v6 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D85D5000, v6, OS_LOG_TYPE_DEFAULT, "BTLocalDeviceSetCallScreening over XPC", buf, 2u);
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v8 = MBXpcConnection;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgLocalDeviceID", a1);
    xpc_dictionary_set_uuid(v9, "kCBMsgArgUUID", a2);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBool", a3);
    *buf = 0;
    v14 = buf;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __BTLocalDeviceSetCallScreening_block_invoke;
    v12[3] = &unk_1E85185E0;
    v12[4] = buf;
    sendMessageWithReplySync(v8, "kCBMsgIdLocalDeviceSetCallScreeningMsg", v9, v12);
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
      BTLocalDeviceSetDenylistEnabled_cold_4();
    }

    return 1;
  }

  return v10;
}

void __BTLocalDeviceSetCallScreening_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTLocalDeviceSetCallScreening_block_invoke_cold_2(v4);
  }
}

uint64_t localDeviceXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    localDeviceXpcDisconnectedHandler_cold_2();
  }

  return _localBTLocalDeviceRemoveAllCallbacksByXPCConnection(a1);
}

BOOL _localBTPairingAgentCallbacksRegistered(uint64_t a1, const void *a2)
{
  pthread_mutex_lock(&gLock_3);
  v4 = 0;
  v5 = 1;
  v6 = &gBTPairingAgentCallbackList;
  do
  {
    if (*(v6 + 7) == a1 && !memcmp(v6, a2, 0x30uLL))
    {
      break;
    }

    v5 = v4 < 0x3F;
    v6 += 5;
    ++v4;
  }

  while (v4 != 64);
  pthread_mutex_unlock(&gLock_3);
  return v5;
}

uint64_t _localBTPairingAgentAddCallbacks(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  pthread_mutex_lock(&gLock_3);
  v10 = &qword_1ECA5E520;
  v11 = 64;
  while (*(v10 - 2) || *(v10 - 1))
  {
    v10 += 10;
    if (!--v11)
    {
      v12 = 4;
      goto LABEL_7;
    }
  }

  v12 = 0;
  v13 = *a3;
  v14 = a3[1];
  *(v10 - 5) = a3[2];
  *(v10 - 7) = v14;
  *(v10 - 9) = v13;
  *(v10 - 1) = a5;
  *v10 = a4;
  *(v10 - 3) = a2;
  *(v10 - 2) = a1;
LABEL_7:
  pthread_mutex_unlock(&gLock_3);
  return v12;
}

uint64_t _localBTPairingAgentRemoveCallbacks(uint64_t a1)
{
  pthread_mutex_lock(&gLock_3);
  v2 = &gBTPairingAgentCallbackList;
  v3 = 64;
  while (*(v2 + 7) != a1)
  {
    v2 += 5;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }

  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
LABEL_6:
  pthread_mutex_unlock(&gLock_3);
  return 0;
}

uint64_t _localBTPairingAgentRemoveCallbacksByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_3);
  v2 = &gBTPairingAgentCallbackList;
  v3 = 64;
  do
  {
    if (*(v2 + 6) == a1)
    {
      v2[3] = 0uLL;
      v2[4] = 0uLL;
      v2[1] = 0uLL;
      v2[2] = 0uLL;
      *v2 = 0uLL;
    }

    v2 += 5;
    --v3;
  }

  while (v3);
  pthread_mutex_unlock(&gLock_3);
  return 0;
}

__int128 *_localBTPairingAgentGetCallbacks(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gLock_3);
  v4 = &gBTPairingAgentCallbackList;
  v5 = 64;
  while (*(v4 + 7) != a1 || *(v4 + 8) != a2)
  {
    v4 += 5;
    if (!--v5)
    {
      v4 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&gLock_3);
  return v4;
}

uint64_t _localBTPairingAgentGetUserData(uint64_t a1)
{
  pthread_mutex_lock(&gLock_3);
  v2 = &qword_1ECA5E520;
  v3 = 64;
  while (*(v2 - 2) != a1)
  {
    v2 += 10;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  pthread_mutex_unlock(&gLock_3);
  return v4;
}

uint64_t BTPairingAgentCreate(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentCreate_cold_2();
  }

  SessionHandle = getSessionHandle(a1);
  MBXpcConnection = getMBXpcConnection(SessionHandle);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  if (MBXpcConnection)
  {
    v10 = MBXpcConnection;
    v11 = ++gCBID_3;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgSessionID", SessionHandle);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgID", v11);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __BTPairingAgentCreate_block_invoke;
    v15[3] = &unk_1E8518608;
    v15[4] = &v20;
    v15[5] = &v16;
    sendMessageWithReplySync(v10, "kCBMsgIdPairingAgentCreateMsg", v12, v15);
    if (v12)
    {
      xpc_release(v12);
    }

    v13 = v17[3];
    if (!v13)
    {
      addXpcMsgHandler(v10, &pairingAgentXpcCallbacks);
      if (_localBTPairingAgentCallbacksRegistered(v21[3], a2))
      {
        if (MBFLogInitOnce != -1)
        {
          BTDiscoveryAgentCreate_cold_2();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTAccessoryManagerAddCallbacks_cold_6();
        }

        v13 = 0;
      }

      else if (_localBTPairingAgentAddCallbacks(v21[3], v10, a2, a3, v11))
      {
        if (MBFLogInitOnce != -1)
        {
          BTDiscoveryAgentCreate_cold_2();
        }

        if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
        {
          BTDiscoveryAgentCreate_cold_3();
        }

        v13 = 4;
      }

      else
      {
        *a4 = v21[3];
        v13 = v17[3];
      }
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTDeviceFromAddress_cold_4();
    }

    v13 = 1;
  }

  _Block_object_dispose(&v20, 8);
  return v13;
}