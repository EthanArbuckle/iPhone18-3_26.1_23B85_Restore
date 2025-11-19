void __BTPairingAgentCreate_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPairingAgentID");
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
    __BTPairingAgentCreate_block_invoke_cold_2(v5);
  }
}

uint64_t BTPairingAgentDestroy(uint64_t *a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentDestroy_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(*a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", *a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentDestroy_block_invoke;
    v7[3] = &unk_1E8518630;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentDestroyMsg", v4, v7);
    if (!v9[3])
    {
      _localBTPairingAgentRemoveCallbacks(*a1);
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
      BTPairingAgentDestroy_cold_4(a1);
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentDestroy_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentDestroy_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentStart(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentStart_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentStart_block_invoke;
    v7[3] = &unk_1E8518658;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentStartMsg", v4, v7);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentStart_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentStart_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentStop(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentStop_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentStop_block_invoke;
    v7[3] = &unk_1E8518680;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentStopMsg", v4, v7);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentStop_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentStop_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentCancelPairing(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentCancelPairing_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentCancelPairing_block_invoke;
    v7[3] = &unk_1E85186A8;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentCancelPairingMsg", v4, v7);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentCancelPairing_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentCancelPairing_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentSetPincode(uint64_t a1, uint64_t a2, const char *a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentSetPincode_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_string(v8, "kCBMsgIdPairingAgentPincode", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTPairingAgentSetPincode_block_invoke;
    v11[3] = &unk_1E85186D0;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdPairingAgentSetPincodeMsg", v8, v11);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTPairingAgentSetPincode_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentSetPincode_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentAcceptSSP(uint64_t a1, uint64_t a2, int a3)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentAcceptSSP_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v7 = MBXpcConnection;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBTDevice", a2);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgError", a3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __BTPairingAgentAcceptSSP_block_invoke;
    v11[3] = &unk_1E85186F8;
    v11[4] = &v12;
    sendMessageWithReplySync(v7, "kCBMsgIdPairingAgentAcceptSSPMsg", v8, v11);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v9;
}

void __BTPairingAgentAcceptSSP_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentAcceptSSP_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentDeletePairedDevice(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentDeletePairedDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTPairingAgentDeletePairedDevice_block_invoke;
    v9[3] = &unk_1E8518720;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdPairingAgentDeletePairedDeviceMsg", v6, v9);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTPairingAgentDeletePairedDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentDeletePairedDevice_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentSetIOCapability(uint64_t a1, unsigned int a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentSetIOCapability_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgIOCapabilities", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTPairingAgentSetIOCapability_block_invoke;
    v9[3] = &unk_1E8518748;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdPairingAgentSetIOCapabilityMsg", v6, v9);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTPairingAgentSetIOCapability_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentSetIOCapability_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentClearOOBDataForDevice(uint64_t a1, uint64_t a2)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentClearOOBDataForDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v5 = MBXpcConnection;
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v6, "kCBMsgArgBTDevice", a2);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __BTPairingAgentClearOOBDataForDevice_block_invoke;
    v9[3] = &unk_1E8518770;
    v9[4] = &v10;
    sendMessageWithReplySync(v5, "kCBMsgIdPairingAgentClearOOBDataForDeviceMsg", v6, v9);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v7;
}

void __BTPairingAgentClearOOBDataForDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentClearOOBDataForDevice_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentSetOOBDataForDevice(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentSetOOBDataForDevice_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v13 = MBXpcConnection;
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgPairingAgentID", a1);
    xpc_dictionary_set_uint64(v14, "kCBMsgArgBTDevice", a2);
    if (a3)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgC192", a3, 0x10uLL);
    }

    if (a5)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgC256", a5, 0x10uLL);
    }

    if (a4)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgR192", a4, 0x10uLL);
    }

    if (a6)
    {
      xpc_dictionary_set_data(v14, "kCBMsgArgR256", a6, 0x10uLL);
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __BTPairingAgentSetOOBDataForDevice_block_invoke;
    v17[3] = &unk_1E8518798;
    v17[4] = &v18;
    sendMessageWithReplySync(v13, "kCBMsgIdPairingAgentSetOOBDataForDeviceMsg", v14, v17);
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
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v15;
}

void __BTPairingAgentSetOOBDataForDevice_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentSetOOBDataForDevice_block_invoke_cold_2(v4);
  }
}

uint64_t BTPairingAgentGetLocalOOBData(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTPairingAgentGetLocalOOBData_cold_2();
  }

  MBXpcConnection = getMBXpcConnection(a1);
  if (MBXpcConnection)
  {
    v3 = MBXpcConnection;
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "kCBMsgArgPairingAgentID", a1);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __BTPairingAgentGetLocalOOBData_block_invoke;
    v7[3] = &unk_1E85187C0;
    v7[4] = &v8;
    sendMessageWithReplySync(v3, "kCBMsgIdPairingAgentGetLocalOOBDataMsg", v4, v7);
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
      BTAccessoryManagerRegisterDevice_cold_6();
    }

    return 1;
  }

  return v5;
}

void __BTPairingAgentGetLocalOOBData_block_invoke(uint64_t a1, xpc_object_t xdict)
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
    __BTPairingAgentGetLocalOOBData_block_invoke_cold_2(v4);
  }
}

uint64_t pairingAgentXpcDisconnectedHandler(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
  {
    pairingAgentXpcDisconnectedHandler_cold_2();
  }

  return _localBTPairingAgentRemoveCallbacksByXpcConnection(a1);
}

uint64_t pairingAgentXpcMsgHandler(uint64_t a1, const char *a2, xpc_object_t xdict)
{
  v64 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgPairingAgentID");
  v7 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgID");
  Callbacks = _localBTPairingAgentGetCallbacks(uint64, v7);
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  v9 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    *length = 136316418;
    *&length[4] = a2;
    v52 = 2080;
    v53 = (a1 + 2080);
    v54 = 2080;
    v55 = a1 + 2336;
    v56 = 2048;
    v57 = uint64;
    v58 = 2048;
    v59 = v7;
    v60 = 2048;
    v61 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v9, OS_LOG_TYPE_DEBUG, "pairingAgentXpcMsgHandler msg:%s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", length, 0x3Eu);
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentStatusEvent"))
  {
    if (!Callbacks || !*Callbacks)
    {
      goto LABEL_35;
    }

    v21 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgResult");
    v22 = a1;
    v23 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v24 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgEvent");
    v25 = *Callbacks;
    UserData = _localBTPairingAgentGetUserData(uint64);
    v27 = v23;
    a1 = v22;
    v25(uint64, v24, v27, v21, UserData);
    goto LABEL_34;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentPincode"))
  {
    if (!Callbacks || !*(Callbacks + 1))
    {
      goto LABEL_35;
    }

    v28 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgMinLength");
    v29 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v30 = *(Callbacks + 1);
    v31 = _localBTPairingAgentGetUserData(uint64);
    v30(uint64, v29, v28, v31);
    goto LABEL_34;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentAuthorization"))
  {
    if (Callbacks && *(Callbacks + 2))
    {
      v32 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v33 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgServices");
      v34 = *(Callbacks + 2);
LABEL_33:
      v42 = _localBTPairingAgentGetUserData(uint64);
      v34(uint64, v32, v33, v42);
      goto LABEL_34;
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentUserConfirmation"))
  {
    if (!Callbacks || !*(Callbacks + 3))
    {
      goto LABEL_35;
    }

    v35 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
    v36 = a1;
    v37 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
    v38 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgMITM");
    v39 = *(Callbacks + 3);
    v40 = _localBTPairingAgentGetUserData(uint64);
    v41 = v37;
    a1 = v36;
    v39(uint64, v35, v41, v38, v40);
LABEL_34:
    v10 = 1;
    goto LABEL_36;
  }

  if (!strcmp(a2, "kCBMsgIdPairingAgentPassKeyDisplay"))
  {
    if (Callbacks && *(Callbacks + 4))
    {
      v32 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgBTDevice");
      v33 = xpc_dictionary_get_uint64(xdict, "kCBMsgArgValue");
      v34 = *(Callbacks + 4);
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v10 = 0;
  if (strcmp(a2, "kCBMsgIdPairingAgentOOBDataReady") || !Callbacks)
  {
    goto LABEL_36;
  }

  if (!*(Callbacks + 5))
  {
    goto LABEL_35;
  }

  *length = 0;
  data = xpc_dictionary_get_data(xdict, "kCBMsgArgC192", length);
  if (*length != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_3();
    }

    goto LABEL_59;
  }

  v12 = data;
  v13 = a1;
  v50 = 0;
  v14 = xpc_dictionary_get_data(xdict, "kCBMsgArgC256", &v50);
  if (v50 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_5();
    }

    goto LABEL_59;
  }

  v15 = v14;
  v49 = 0;
  v16 = xpc_dictionary_get_data(xdict, "kCBMsgArgR192", &v49);
  if (v49 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_7();
    }

    goto LABEL_59;
  }

  v47 = v16;
  v48 = 0;
  v17 = xpc_dictionary_get_data(xdict, "kCBMsgArgR256", &v48);
  if (v48 != 16)
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_FAULT))
    {
      pairingAgentXpcMsgHandler_cold_9();
    }

LABEL_59:
    v10 = 0;
    goto LABEL_39;
  }

  v18 = v17;
  v19 = *(Callbacks + 5);
  v20 = _localBTPairingAgentGetUserData(uint64);
  v19(uint64, v12, v47, v15, v18, v20);
  v10 = 1;
  a1 = v13;
LABEL_36:
  if (MBFLogInitOnce != -1)
  {
    BTDiscoveryAgentCreate_cold_2();
  }

  v43 = MBFLogComponent;
  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    v46 = "did not handle";
    *length = 136316674;
    if (v10)
    {
      v46 = "handled";
    }

    *&length[4] = v46;
    v52 = 2080;
    v53 = a2;
    v54 = 2080;
    v55 = a1 + 2080;
    v56 = 2080;
    v57 = a1 + 2336;
    v58 = 2048;
    v59 = uint64;
    v60 = 2048;
    v61 = v7;
    v62 = 2048;
    v63 = Callbacks;
    _os_log_debug_impl(&dword_1D85D5000, v43, OS_LOG_TYPE_DEBUG, "pairingAgentXpcMsgHandler %s %s sessionName:%s serviceName:%s agentID:%llx cbid:%llx cbs:%llx", length, 0x48u);
  }

LABEL_39:
  v44 = *MEMORY[0x1E69E9840];
  return v10;
}

void OUTLINED_FUNCTION_8_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t removeFWSession(uint64_t a1)
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

  while (v3 <= 0x63 && gFWSessionList[v3] != a1);
  if (v3 > 0x63)
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
    --sessionCount;
    gFWSessionList[v2 - 1] = 0;
  }

  pthread_mutex_unlock(&gLock_4);
  return v4;
}

BOOL isSessionValid(int a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  v3 = a1 & 0xFFFF0000;
  v4 = 1;
  do
  {
    v5 = gFWSessionList[v2];
    if (v5 && *v5 == v3)
    {
      break;
    }

    v4 = v2++ < 0x63;
  }

  while (v2 != 100);
  pthread_mutex_unlock(&gLock_4);
  return v4;
}

uint64_t getFWSessionByXpcConnection(uint64_t a1)
{
  pthread_mutex_lock(&gLock_4);
  v2 = 0;
  while (1)
  {
    v3 = gFWSessionList[v2];
    if (v3)
    {
      if (*(v3 + 88) == a1)
      {
        break;
      }
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

uint64_t getFirstFWSession()
{
  pthread_mutex_lock(&gLock_4);
  v0 = 0;
  do
  {
    v1 = gFWSessionList[v0];
    if (v1)
    {
      break;
    }
  }

  while (v0++ != 99);
  pthread_mutex_unlock(&gLock_4);
  return v1;
}

uint64_t addXpcMsgHandler(uint64_t a1, uint64_t a2)
{
  result = 3;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 8;
    v6 = -1;
    do
    {
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 == -1;
      }

      if (v8)
      {
        v6 = v4;
      }

      else if (v7 == a2)
      {
        return 15;
      }

      ++v4;
    }

    while (v4 != 256);
    if (v6 == -1)
    {
      return 4;
    }

    else
    {
      result = 0;
      *(v5 + 8 * v6) = a2;
    }
  }

  return result;
}

uint64_t removeXpcMsgHandler(uint64_t a1, uint64_t a2)
{
  result = 3;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 8;
    while (*(v5 + v4) != a2)
    {
      v4 += 8;
      if (v4 == 2048)
      {
        return 3;
      }
    }

    result = 0;
    *(v5 + v4) = 0;
  }

  return result;
}

uint64_t BTSessionDetachWithQueue(uint64_t *a1)
{
  if (!a1)
  {
    return 3;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 3;
  }

  if (!isDispatchSessionValid(*a1))
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      BTSessionDetachWithQueue_cold_2();
    }

    return 3;
  }

  *a1 = 0;
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    BTSessionDetachWithQueue_cold_4();
  }

  notifyStubsOfDisconnection(*(v2 + 88));
  *(v2 + 84) = 1;
  disconnect(*(v2 + 88));
  return 0;
}

void notifyStubsOfDisconnection(uint64_t a1)
{
  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3 = FWSessionByXpcConnection;
    for (i = 8; i != 2056; i += 8)
    {
      v5 = *(*(v3 + 88) + i);
      if (v5)
      {
        (*v5)(a1);
      }
    }
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      _localBTAccessoryManagerAddCallbacks_cold_1();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      notifyStubsOfDisconnection_cold_2();
    }
  }
}

void xpcConnectionDidReset(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    xpcConnectionDidReset_cold_2(a1);
  }

  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3 = FWSessionByXpcConnection;
    notifyStubsOfDisconnection(a1);
    *(v3 + 84) = 2;
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      xpcConnectionDidReset_cold_4();
    }

    disconnect(*(v3 + 88));
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
    {
      xpcConnectionDidReset_cold_6();
    }
  }
}

void xpcConnectionInvalid(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    xpcConnectionInvalid_cold_2(a1);
  }

  FWSessionByXpcConnection = getFWSessionByXpcConnection(a1);
  if (FWSessionByXpcConnection)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __xpcConnectionInvalid_block_invoke;
    v3[3] = &__block_descriptor_tmp_5;
    v3[4] = FWSessionByXpcConnection;
    _MBTDispachAsyncAttachCompletionBlock(FWSessionByXpcConnection, v3);
  }

  else
  {
    if (MBFLogInitOnce != -1)
    {
      BTDiscoveryAgentCreate_cold_2();
    }

    if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
    {
      xpcConnectionInvalid_cold_4();
    }
  }
}

void __xpcConnectionInvalid_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 84);
  switch(v2)
  {
    case 3:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_4(v1);
      }

      _MBTSignalSessionEvent(*v1, 0, 1);
      ++gSessionAttachTries;
      break;
    case 2:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_2(v1);
      }

      _MBTSignalSessionEvent(*v1, 2, 0);
      gSessionAttachTries = 0;
      break;
    case 1:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
      {
        __xpcConnectionInvalid_block_invoke_cold_6(v1);
      }

      _MBTSignalSessionEvent(*v1, 1, 0);
      break;
    default:
      if (MBFLogInitOnce != -1)
      {
        _localBTAccessoryManagerAddCallbacks_cold_1();
      }

      if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_ERROR))
      {
        __xpcConnectionInvalid_block_invoke_cold_8();
      }

      break;
  }

  removeFWSession(*v1);
  releaseXPCConnection(*(*v1 + 88));
  dispatch_release(*(*v1 + 32));
  free(*(*v1 + 8));
  free(*v1);
}

uint64_t OUTLINED_FUNCTION_6_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 88) + 2072);
  return result;
}

void BTAccessoryManagerGetDefault_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Failed to get a valid XPC connection for session %llx sessionHandle:%llx", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerGetDefault_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(*v1 + 8) + 24);
  OUTLINED_FUNCTION_8();
  WORD2(v8) = 2048;
  HIWORD(v8) = v3;
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v4, v5, "kCBMsgIdAccessoryGetDefaultMsg reply accessoryManagerID:%llx result:%llx", v7, v8);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerAddCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerAddCallbacks_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerAddCallbacks_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerAddCallbacks_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection for BTAccessoryManager:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerAddCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRemoveCallbacks_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection for sessionHandle:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerRemoveCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerRegisterDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRegisterDevice_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRegisterDevice_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection agent:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerRegisterDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerPlugInDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerPlugInDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerUnplugDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerUnplugDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDeviceState_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceState_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetDevices_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection localDevice:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerGetDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdAccessoryGetDevicesMsg reply result:%llx count:%lx", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetTimeSyncId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetTimeSyncId_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDeviceBatteryLevel_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceBatteryLevel_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerIsAccessory_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerIsAccessory_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGenerateLinkKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGenerateLinkKey_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetLinkKeyEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSetLinkKeyEx_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetLinkKeyEx_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetDoubleTapAction_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDoubleTapAction_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetDoubleTapActionEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDoubleTapActionEx_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetMicMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetMicMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerRemoteTimeSyncEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRemoteTimeSyncEnable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSensorStreamTimeSyncEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSensorStreamTimeSyncEnable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetInEarDetectionEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetInEarDetectionEnable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetIsHidden_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetIsHidden_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDoubleTapAction_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapAction_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDoubleTapActionEx_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapActionEx_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDoubleTapCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDoubleTapCapability_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetFeatureCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetFeatureCapability_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetAnnounceMessagesSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAnnounceMessagesSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetMicMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetMicMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetInEarDetectionEnable_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetInEarStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetInEarStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerRegisterCustomMessageClient_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerRegisterCustomMessageClient_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerRegisterCustomMessageClient_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerDeregisterCustomMessageClient_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerDeregisterCustomMessageClient_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSendCustomMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendCustomMessage_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSimulateAACP_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSimulateAACP_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSendAdaptiveVolumeMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSendPMEConfigMessage_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetDeviceDiagnostics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceDiagnostics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSendRequestPeriodically_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendRequestPeriodically_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerCancelRequestPeriodically_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerCancelRequestPeriodically_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSendControlCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendControlCommand_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetControlCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetControlCommand_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetSettingFeatureBitMask_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSettingFeatureBitMask_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetAccessoryInfo_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAccessoryInfo_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetAACPCapabilityBits_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAACPCapabilityBits_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerReadDeviceVersionInfo_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerReadDeviceVersionInfo_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection sessionhandle:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerReadDeviceVersionInfo_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDeviceColor_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceColor_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetupCommand_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetupCommand_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSendRelayMsg_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSendRelayMsg_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerUpdateConnPriorityList_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerUpdateConnPriorityList_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetNonAppleHAEPairedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetNonAppleHAEPairedDevices_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection manager:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerGetNonAppleHAEPairedDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdAccessoryGetNonAppleHAEPairedDevicesMsg reply result:%llx count:%lx", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSmartRouteMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSmartRouteMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetSmartRouteMode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSmartRouteMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetSmartRouteSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetSmartRouteSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetDeviceStateOnPeerSrc_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDeviceStateOnPeerSrc_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetStereoHFPSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetStereoHFPSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetCallManagementConfig_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetFeatureProxCardStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerSetFeatureProxCardStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetFeatureProxCardStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDeviceSoundProfileSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceSoundProfileSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetDeviceSoundProfileAllowed_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetDeviceSoundProfileAllowed_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerSetDeviceSoundProfileAllowed_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerSetDeviceSoundProfileAllowed_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetSpatialAudioPlatformSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetAnnounceCallsSupport_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetAnnounceCallsSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetGyroInformation_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetGyroInformation_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductId_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "Invalid product ID parameters. productID = %p, numProductIds = %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTAccessoryManagerGetPrimaryBudSide_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTAccessoryManagerGetPrimaryBudSide_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTAccessoryManagerSetHeadphoneFeatureValue_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void accessoryManagerXpcDisconnectedHandler_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void accessoryManagerXpcMsgHandler_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void attachSession_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void attachSession_cold_4(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sendMessageWithReplySync_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2600);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void sendMessageWithReplySync_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void handleReset_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void handleInvalid_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void handleMsg_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Unexpected XPC type: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "Unexpected XPC error: %s", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_10(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void handleConnectionEvent_cold_12()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_FAULT, "MBFXPC LOG Skipped handleConnectionEvent because MBXpcConnection for connection %p was NULL", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void createXpcConnection_cold_5(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void releaseMBXpcConnection_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void releaseXPCConnection_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void sendMsg_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2600);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void disconnect_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2600);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void BTDeviceAddressToString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDeviceAddressToString_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection sessionHandle:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTDeviceAddressToString_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceAddressFromString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceAddressFromString_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  OUTLINED_FUNCTION_8();
  v17 = 1024;
  v18 = v8;
  v19 = 1024;
  v20 = v9;
  v21 = 1024;
  v22 = v10;
  v23 = 1024;
  v24 = v11;
  v25 = 1024;
  v26 = v12;
  v27 = 1024;
  v28 = v13;
  _os_log_debug_impl(&dword_1D85D5000, v14, OS_LOG_TYPE_DEBUG, "kCBMsgIdDeviceAddressFromStringMsg reply result:%llx address:%x%x%x%x%x%x", v16, 0x30u);
  v15 = *MEMORY[0x1E69E9840];
}

void BTDeviceFromAddress_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDeviceFromAddress_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection session:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTDeviceFromAddress_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceFromIdentifier_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceFromIdentifier_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetAddressString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDeviceGetAddressString_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection device:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTDeviceGetAddressString_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceType_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetDeviceClass_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceClass_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetDefaultName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDefaultName_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetProductName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetProductName_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetName_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetUserName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetUserName_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetSyncSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetSyncSettings_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetSyncSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetSyncSettings_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetGroups_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetGroups_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetGroup_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetGroup_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetPairingStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetCloudPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetCloudPairingStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetMagicPairingStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetMagicPairingStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTDeviceGetConnectionStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsAppleAudioDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsAppleAudioDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSupportsHS_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSupportsHS_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsProController_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsProController_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTServiceAddCallbacksWithFilter_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void BTServiceAddCallbacksWithFilter_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTServiceAddCallbacksWithFilter_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTServiceAddCallbacksWithFilter_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTServiceAddCallbacks_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void BTServiceRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTServiceRemoveCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceConnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnect_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceConnectServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnectServices_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceConnectServicesWithParameters_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConnectServicesWithParameters_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceDisconnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceDisconnect_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDevicePhysicalLinkDisconnect_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDevicePhysicalLinkDisconnect_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceDisconnectServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceDisconnectServices_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetConnectedServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetConnectedServices_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetSupportedServices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetSupportedServices_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetServiceSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetServiceSettings_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetServiceSettings_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetServiceSettings_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetComPortForService_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetComPortForService_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetComPortForServiceWithSandboxExtension_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetComPortForServiceWithSandboxExtension_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetVirtualType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetVirtualType_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetVirtualType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetVirtualType_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceMatchesAdvertisedKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceMatchesAdvertisedKey_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetAdvertisedValueForKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetAdvertisedValueForKey_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetDeviceId_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetDeviceId_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetHIDProperties_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetHIDProperties_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceConfigureLinkKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceConfigureLinkKey_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsTemporaryPaired_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsTemporaryPaired_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsWirelessSplitterSupported_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsWirelessSplitterSupported_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsTemporaryPairedNotInContacts_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsTemporaryPairedNotInContacts_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetLowSecurityStatus_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetLowSecurityStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetHIDDeviceBehavior_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetHIDDeviceBehavior_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetHijackAudioRoute_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetHijackAudioRoute_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetACLHighPriority_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetACLHighPriority_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsCentral_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsCentral_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceGetUserSelectedDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceGetUserSelectedDeviceType_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceSetUserSelectedDeviceType_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceSetUserSelectedDeviceType_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDeviceIsGenuineAirPods_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDeviceIsGenuineAirPods_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(*v1 + 8) + 24);
  OUTLINED_FUNCTION_8();
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_1D85D5000, v4, OS_LOG_TYPE_DEBUG, "kCBMsgIdDeviceIsGenuineAirPodsMsg reply result:%llx genuine:%u", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void deviceServiceXpcDisconnectedHandler_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v4 = 2080;
  v5 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: deviceServiceXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentCreate_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentCreate_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __BTDiscoveryAgentCreate_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentDestroy_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentDestroy_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __BTDiscoveryAgentDestroy_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentStartScan_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStartScan_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentStartScanForAdvertizedData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStartScanForAdvertizedData_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentStopScan_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentStopScan_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentGetDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentGetDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  v5 = 2048;
  v6 = v1;
  _os_log_debug_impl(&dword_1D85D5000, v2, OS_LOG_TYPE_DEBUG, "kCBMsgIdDiscoveryAgentGetDevicesMsg reply result:%llx count:%lx", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentAddKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentAddKey_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void BTDiscoveryAgentAddKey_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTDiscoveryAgentAddKey_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTDiscoveryAgentRemoveKey_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void discoveryAgentXpcDisconnectedHandler_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetDefault_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDefault_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *(*(*v1 + 8) + 24);
  OUTLINED_FUNCTION_8();
  WORD2(v8) = 2048;
  HIWORD(v8) = v3;
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v4, v5, "kCBMsgIdLocalDeviceGetDefaultMsg reply deviceID:%llx result:%llx", v7, v8);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceAddCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTLocalDeviceAddCallbacks_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection for sessionHandle:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceAddCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceRemoveCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRemoveCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceMaskCallbacks_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceMaskCallbacks_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceSetModulePower_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetModulePower_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetModulePower_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetSpatialPlatformSupport_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDevicePowerReset_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetAirplaneModeStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetAddressString_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetAddressString_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetName_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetName_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceSetDiscoverable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetDiscoverable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceSetConnectable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetConnectable_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetPairingStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetPairedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetPairedDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdLocalDeviceGetPairedDevicesMsg reply result:%llx count:%lx", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetConnectionStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetConnectedDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetConnectedDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdLocalDeviceGetConnectedDevicesMsg reply result:%llx count:%lx", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetConnectingDevices_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetConnectingDevices_block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1D85D5000, v1, v2, "kCBMsgIdLocalDeviceGetConnectingDevicesMsg reply result:%llx count:%lx", v4, v5);
  v3 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetAdvertisingStatus_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetScanning_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceGetDUTModeEnabled_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceEnableLeTxTestMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceEnableLeRxTestMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceDisableLeTestMode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceSupportsService_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceAdvertiseData_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection for device:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceAdvertiseData_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceRemoveData_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceRegisterForPowerUpdates_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRegisterForPowerUpdates_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceUnregisterForPowerUpdates_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceUnregisterForPowerUpdates_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadPowerConsumption_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadPowerConsumption_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceRegisterForPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceRegisterForPowerProfileStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceUnregisterForPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceUnregisterForPowerProfileStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadPowerProfileStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadEnhancedPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadEnhancedPowerProfileStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadEnhancedPowerStatsPerCore_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadEnhancedPowerStatsPerCore_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadTransportSwitchStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadTransportSwitchStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadDetailedPowerProfileStatistics_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadDetailedPowerProfileStatistics_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTStartHCITraces_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTStartHCITraces_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTStopHCITraces_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTStopHCITraces_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceShowPowerPrompt_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceShowPowerPrompt_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceSetAFHMap_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetAFHMap_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceReadAFHMap_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceReadAFHMap_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceSetDelayedWake_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceSetDelayedWake_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceSetDenylistEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTLocalDeviceSetDenylistEnabled_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v0, v1, "Failed to get a valid XPC connection localDeviceHandle:%llx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceSetDenylistEnabled_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetDenylistEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDenylistEnabled_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetDeviceNamesThatMayBeDenylisted_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceGetSharingAddresses_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceGetSharingAddresses_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceIsSharingEnabled_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceIsSharingEnabled_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceDumpExposureNotificationDatabase_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceDumpExposureNotificationDatabase_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTLocalDeviceLinkQualityGetData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTLocalDeviceLinkQualityGetData_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __BTLocalDeviceSetCallScreening_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void localDeviceXpcDisconnectedHandler_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v4 = 2080;
  v5 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: localDeviceXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentCreate_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentCreate_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentDestroy_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTPairingAgentDestroy_cold_4(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_1D85D5000, v2, v3, "Failed to get a valid XPC connection agent:%llx", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __BTPairingAgentDestroy_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentStart_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentStart_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentStop_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentStop_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentCancelPairing_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentCancelPairing_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentSetPincode_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetPincode_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentAcceptSSP_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentAcceptSSP_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentDeletePairedDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentDeletePairedDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentSetIOCapability_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetIOCapability_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentClearOOBDataForDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentClearOOBDataForDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentSetOOBDataForDevice_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentSetOOBDataForDevice_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void BTPairingAgentGetLocalOOBData_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __BTPairingAgentGetLocalOOBData_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void pairingAgentXpcDisconnectedHandler_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  v4 = 2080;
  v5 = v0;
  _os_log_error_impl(&dword_1D85D5000, v1, OS_LOG_TYPE_ERROR, "WARNING: pairingAgentXpcDisconnectedHandler Disconnected from bluetoothd serviceName:%s sessionName:%s", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _MBTGetAsyncAttachQueue_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTGetAsyncAttachQueue_cold_4(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTGetAsyncAttachQueue_cold_6(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTAsyncAttach_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTAsyncAttach_cold_7(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 88);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

void BTSessionDetachWithQueue_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void BTSessionDetachWithQueue_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void notifyStubsOfDisconnection_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _MBTDispachAsyncAttachCompletionBlock_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTDispachAsyncAttachCompletionBlock_cold_4(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTDispachAsyncAttachCompletionBlock_cold_6(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void _MBTSignalSessionEvent_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void xpcConnectionDidReset_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void xpcConnectionDidReset_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void xpcConnectionDidReset_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D85D5000, v0, OS_LOG_TYPE_ERROR, "MBFXPC LOG Skipped xpcConnectionDidReset because fwSession for connection %p was NULL", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void xpcConnectionInvalid_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2072);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void xpcConnectionInvalid_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __xpcConnectionInvalid_block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __xpcConnectionInvalid_block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __xpcConnectionInvalid_block_invoke_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}