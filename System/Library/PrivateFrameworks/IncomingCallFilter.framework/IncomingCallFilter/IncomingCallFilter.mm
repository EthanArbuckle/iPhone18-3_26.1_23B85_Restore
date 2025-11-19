uint64_t ICFRegisterCallFilterBlockWithIdentifier(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = a1;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Registering filter block %@ with identifier %@", buf, 0x16u);
  }

  if (a1)
  {
    v5 = [a1 copy];
    v6 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __ICFRegisterCallFilterBlockWithIdentifier_block_invoke;
    v9[3] = &unk_2797A9398;
    v9[4] = v5;
  }

  else
  {
    v6 = 0;
  }

  result = ICFRegisterCallFilterResultBlockWithIdentifier(v6, a2);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ICFRegisterCallFilterResultBlockWithIdentifier(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Registering filter result block %@ with identifier %@", &v9, 0x16u);
  }

  _ICFConfigureGlobals();
  [sFilterLock lock];
  if (a1 && [a2 length])
  {
    if (!sFilterBlocks)
    {
      sFilterBlocks = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v5 = [a1 copy];
    [sFilterBlocks setObject:v5 forKey:a2];
    ICFPrintFilters();

    _ICFConnectToServer();
  }

  else
  {
    v6 = ICFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "No block or block id - we're done", &v9, 2u);
    }
  }

  result = [sFilterLock unlock];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void _ICFConfigureGlobals()
{
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "Configuring globals", v1, 2u);
  }

  if (_ICFConfigureGlobals_onceToken != -1)
  {
    _ICFConfigureGlobals_cold_1();
  }
}

void ICFPrintFilters()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "*** Current filters ***", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [sFilterBlocks allKeys];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = ICFDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [sFilterBlocks objectForKey:v6];
          *buf = 138412546;
          v16 = v6;
          v17 = 2048;
          v18 = v8;
          _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "* %@ -> %p", buf, 0x16u);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v3);
  }

  v9 = ICFDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "***********************", buf, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void _ICFConnectToServer()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "Connect to server", buf, 2u);
  }

  if (sServerConnection)
  {
    v1 = xpc_retain(sServerConnection);
  }

  else
  {
    v6 = IMXPCCreateConnectionForServiceWithQueue();
    sServerConnection = v6;
    if (v6)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___ICFConnectToServer_block_invoke_13;
      handler[3] = &unk_2797A9420;
      handler[4] = &__block_literal_global_11;
      xpc_connection_set_event_handler(v6, handler);
      v1 = xpc_retain(sServerConnection);
      xpc_connection_resume(sServerConnection);
      v7 = ICFDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = sServerConnection;
        _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "Creating server connection %p", buf, 0xCu);
      }
    }

    else
    {
      v8 = ICFDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _ICFConnectToServer_cold_1(v8);
      }

      v1 = 0;
    }
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2 && v1)
  {
    IMInsertBoolsToXPCDictionary();
    v4 = ICFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Sending setup-request to server", buf, 2u);
    }

    xpc_connection_send_message(v1, v3);
    xpc_release(v3);
LABEL_13:
    xpc_release(v1);
    goto LABEL_14;
  }

  if (v2)
  {
    xpc_release(v2);
  }

  if (v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ICFUnregisterCallFilterResultBlockWithIdentifier(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ICFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412290;
    *&v9[4] = a1;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering filter block with identifier %@", v9, 0xCu);
  }

  _ICFConfigureGlobals();
  [sFilterLock lock];
  if (![a1 length])
  {
    v5 = ICFDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v9 = 0;
    v6 = "No block id - we're done";
LABEL_19:
    _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, v6, v9, 2u);
    goto LABEL_20;
  }

  if (!sFilterBlocks)
  {
    v5 = ICFDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v9 = 0;
    v6 = "No filter blocks registered - we're done";
    goto LABEL_19;
  }

  if (![sFilterBlocks objectForKey:a1])
  {
    v5 = ICFDefaultLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *v9 = 0;
    v6 = "We're not keeping track of this filter - we're done";
    goto LABEL_19;
  }

  [sFilterBlocks removeObjectForKey:a1];
  ICFPrintFilters();
  if (![sFilterBlocks count])
  {

    sFilterBlocks = 0;
    v3 = ICFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "No more filter blocks registered", v9, 2u);
    }

    if (sServerConnection)
    {
      v4 = ICFDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting from server", v9, 2u);
      }

      xpc_connection_cancel(sServerConnection);
    }
  }

LABEL_20:
  result = [sFilterLock unlock];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void __ICFXPCServer_peer_event_handler(_xpc_connection_s *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    pid = xpc_connection_get_pid(a1);
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Receiving message from peer (%d)", buf, 8u);
  }

  v5 = MEMORY[0x259C24500](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      v12 = ICFDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_3(a1);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _cleanupClient:"_cleanupClient:", a1];
      xpc_connection_cancel(a1);
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      v19 = ICFDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_2(a1);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _cleanupClient:"_cleanupClient:", a1];
    }

    else if (a2 == MEMORY[0x277D86420])
    {
      v11 = ICFDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_1(a1);
      }
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    v6 = MEMORY[0x259C244A0](a2);
    v7 = ICFDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = xpc_connection_get_pid(a1);
      *buf = 67109378;
      pid = v8;
      v24 = 2080;
      v25 = v6;
      _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "Received message from peer(%d): %s", buf, 0x12u);
    }

    free(v6);
    if (xpc_dictionary_get_BOOL(a2, "setup-request"))
    {
      v9 = ICFDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = xpc_connection_get_pid(a1);
        *buf = 67109120;
        pid = v10;
        _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Received setup-request from (%d)", buf, 8u);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _configureWithClient:"_configureWithClient:", a1];
    }

    else if (xpc_dictionary_get_BOOL(a2, "call-request"))
    {
      v13 = ICFDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = xpc_connection_get_pid(a1);
        *buf = 67109120;
        pid = v14;
        _os_log_impl(&dword_254B1F000, v13, OS_LOG_TYPE_DEFAULT, "Received call-request from (%d)", buf, 8u);
      }

      reply = xpc_dictionary_create_reply(a2);
      v16 = IMGetXPCStringFromDictionary();
      v17 = IMGetXPCStringFromDictionary();
      v18 = +[ICFCallServer sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = ____ICFXPCServer_peer_event_handler_block_invoke;
      v21[3] = &unk_2797A9448;
      v21[4] = reply;
      v21[5] = a1;
      [(ICFCallServer *)v18 shouldAllowIncomingCallForNumber:v16 forProviderIdentifier:v17 response:v21];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t ICFCallServerCTServerConnection()
{
  v10 = *MEMORY[0x277D85DE8];
  result = ICFCallServerCTServerConnection_sConnection;
  if (!ICFCallServerCTServerConnection_sConnection)
  {
    if (ICFCallServerCTServerConnection__pred__CTServerConnectionCreateWithIdentifierCoreTelephony != -1)
    {
      ICFCallServerCTServerConnection_cold_1();
    }

    if (ICFCallServerCTServerConnection__pred__CTServerConnectionSetTargetQueueCoreTelephony != -1)
    {
      ICFCallServerCTServerConnection_cold_2();
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v1 = ICFCallServerCTServerConnection___CTServerConnectionCreateWithIdentifier(*MEMORY[0x277CBECE8], @"ICFCallServer", _ServerConnectionCallback, v6);
    ICFCallServerCTServerConnection_sConnection = v1;
    v2 = ICFCallServerCTServerConnection___CTServerConnectionSetTargetQueue;
    global_queue = dispatch_get_global_queue(0, 0);
    v2(v1, global_queue);
    v4 = ICFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = ICFCallServerCTServerConnection_sConnection;
      _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Setup CTServerConnection %p", buf, 0xCu);
    }

    result = ICFCallServerCTServerConnection_sConnection;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *__ICFCallServerCTServerConnection_block_invoke()
{
  result = MEMORY[0x259C24230]("_CTServerConnectionCreateWithIdentifier", @"CoreTelephony");
  ICFCallServerCTServerConnection___CTServerConnectionCreateWithIdentifier = result;
  return result;
}

void *__ICFCallServerCTServerConnection_block_invoke_2()
{
  result = MEMORY[0x259C24230]("_CTServerConnectionSetTargetQueue", @"CoreTelephony");
  ICFCallServerCTServerConnection___CTServerConnectionSetTargetQueue = result;
  return result;
}

void sub_254B21DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_254B223F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ICFCallProviderShouldAllowIncomingCallWithQueue(uint64_t a1, uint64_t a2, NSObject *global_queue, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = ICFDefaultLog();
  v9 = v8;
  if (a4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "number %@,   providerIdentifier %@", buf, 0x16u);
    }

    v10 = [a4 copy];
    if (ICFCallProviderShouldAllowIncomingCallWithQueue_onceToken != -1)
    {
      ICFCallProviderShouldAllowIncomingCallWithQueue_cold_1();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = IMXPCCreateConnectionForServiceWithQueue();
    if (*(*&buf[8] + 40))
    {
      v11 = ICFDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_254B1F000, v11, OS_LOG_TYPE_DEFAULT, "We have a remote connection let's build a request message", v18, 2u);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      if (v12)
      {
        IMInsertNSStringsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        xpc_dictionary_set_BOOL(v12, "call-request", 1);
        v13 = ICFDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 138412290;
          v19 = v12;
          _os_log_impl(&dword_254B1F000, v13, OS_LOG_TYPE_DEFAULT, "Sending request message %@", v18, 0xCu);
        }

        if (!global_queue)
        {
          global_queue = dispatch_get_global_queue(2, 0);
        }

        v14 = *(*&buf[8] + 40);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9;
        handler[3] = &unk_2797A95B0;
        handler[4] = v10;
        handler[5] = buf;
        xpc_connection_send_message_with_reply(v14, v12, global_queue, handler);
        xpc_release(v12);
      }

      else
      {
        xpc_connection_cancel(*(*&buf[8] + 40));
        xpc_release(*(*&buf[8] + 40));
      }
    }

    else
    {
      v15 = ICFDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_254B1F000, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No Connection !!", v18, 2u);
      }

      if (v10)
      {
        v10[2](v10, 1, 1);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    ICFCallProviderShouldAllowIncomingCallWithQueue_cold_2(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_254B22C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.ICFCallProviderMessageQueue", 0);
  ICFCallProviderShouldAllowIncomingCallWithQueue_connectionRequestQueue = result;
  return result;
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_3()
{
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "[WARN] RemoteConnection died", v1, 2u);
  }
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C24500](a2) == MEMORY[0x277D86480])
  {
    v7 = ICFDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9_cold_1(a2, v7);
    }
  }

  else
  {
    v4 = xpc_dictionary_get_BOOL(a2, "response");
    xpc_dictionary_get_BOOL(a2, "isBlocked");
    v5 = ICFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Got result: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
  xpc_release(*(*(*(a1 + 40) + 8) + 40));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ICFDefaultLog()
{
  if (ICFDefaultLog_onceToken != -1)
  {
    ICFDefaultLog_cold_1();
  }

  return ICFDefaultLog_ICFDefaultLog;
}

os_log_t __ICFDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.calls.incomingcallfilter", "Default");
  ICFDefaultLog_ICFDefaultLog = result;
  return result;
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 136315138;
  v6 = string;
  _os_log_error_impl(&dword_254B1F000, a2, OS_LOG_TYPE_ERROR, "Error requesting client: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}