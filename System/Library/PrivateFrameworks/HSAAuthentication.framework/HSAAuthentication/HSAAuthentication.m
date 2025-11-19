void HSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x253065C00](v3);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    _os_log_impl(&dword_250996000, v4, OS_LOG_TYPE_DEFAULT, "HSAClient - Registering filter block %@ with identifier %@", buf, 0x16u);
  }

  sub_250997130();
  [qword_2814227D0 lock];
  if (v3 && [a2 length])
  {
    if (!qword_27F3E0C10)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7 = qword_27F3E0C10;
      qword_27F3E0C10 = Mutable;
    }

    v8 = [v3 copy];
    v9 = qword_27F3E0C10;
    v10 = MEMORY[0x253065C00]();
    [v9 setObject:v10 forKey:a2];

    sub_2509971D0();
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v11, OS_LOG_TYPE_DEFAULT, "HSAClient - Connect to server", buf, 2u);
    }

    if (!qword_27F3E0C20)
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.hsa-authentication_connection_queue", v12);
      v14 = qword_27F3E0C20;
      qword_27F3E0C20 = v13;
    }

    if (!qword_27F3E0C18)
    {
      v15 = IMXPCCreateConnectionForServiceWithQueue();
      v16 = qword_27F3E0C18;
      qword_27F3E0C18 = v15;

      if (qword_27F3E0C18)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_250997E80;
        v24 = &unk_2796A4888;
        v25 = &unk_2862DF5C0;
        xpc_connection_set_event_handler(qword_27F3E0C18, buf);
        xpc_connection_resume(qword_27F3E0C18);
        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134217984;
          v22 = qword_27F3E0C18;
          _os_log_impl(&dword_250996000, v17, OS_LOG_TYPE_DEFAULT, "HSAClient - Creating server connection %p", &v21, 0xCu);
        }
      }

      else
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250996000, v19, OS_LOG_TYPE_DEFAULT, "HSAClient - Failed to create server connection", buf, 2u);
        }
      }
    }

    dispatch_sync(qword_27F3E0C20, &unk_2862DF5E0);
    [qword_2814227D0 unlock];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v18, OS_LOG_TYPE_DEFAULT, "HSAClient - No block or block id - we're done", buf, 2u);
    }

    [qword_2814227D0 unlock];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_250997130()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_250996000, v0, OS_LOG_TYPE_DEFAULT, "HSAClient - Configuring globals", v1, 2u);
  }

  if (qword_2814227D8 != -1)
  {
    sub_250999D78();
  }
}

void sub_2509971D0()
{
  v19 = *MEMORY[0x277D85DE8];
  if (_IMWillLog())
  {
    v0 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v0, OS_LOG_TYPE_DEFAULT, "HSAClient *** Current filters ***", buf, 2u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = [qword_27F3E0C10 allKeys];
    v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
    if (v2)
    {
      v3 = *v11;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v11 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = *(*(&v10 + 1) + 8 * i);
          v6 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [qword_27F3E0C10 objectForKey:v5];
            *buf = 138412546;
            v15 = v5;
            v16 = 2048;
            v17 = v7;
            _os_log_impl(&dword_250996000, v6, OS_LOG_TYPE_DEFAULT, "HSAClient * %@ -> %p", buf, 0x16u);
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v10 objects:v18 count:16];
      }

      while (v2);
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v8, OS_LOG_TYPE_DEFAULT, "HSAClient ***********************", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t HSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = a1;
    _os_log_impl(&dword_250996000, v2, OS_LOG_TYPE_DEFAULT, "HSACallFilter - Unregistering filter block with identifier %@", &v10, 0xCu);
  }

  sub_250997130();
  [qword_2814227D0 lock];
  if (![a1 length])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_250996000, v7, OS_LOG_TYPE_DEFAULT, "HSAClient - No block id - we're done", &v10, 2u);
    }

    goto LABEL_19;
  }

  if (!qword_27F3E0C10)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_250996000, v7, OS_LOG_TYPE_DEFAULT, "HSAClient - No filter blocks registered - we're done", &v10, 2u);
    }

    goto LABEL_19;
  }

  v3 = [qword_27F3E0C10 objectForKey:a1];
  v4 = v3 == 0;

  if (v4)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_250996000, v7, OS_LOG_TYPE_DEFAULT, "HSAClient - We're not keeping track of this filter - we're done", &v10, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  [qword_27F3E0C10 removeObjectForKey:a1];
  sub_2509971D0();
  if (![qword_27F3E0C10 count])
  {
    v5 = qword_27F3E0C10;
    qword_27F3E0C10 = 0;

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_250996000, v6, OS_LOG_TYPE_DEFAULT, "HSAClient - No more filter blocks registered", &v10, 2u);
    }

    if (qword_27F3E0C18)
    {
      dispatch_sync(qword_27F3E0C20, &unk_2862DF600);
    }
  }

LABEL_20:
  result = [qword_2814227D0 unlock];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_250997720()
{
  qword_2814227D0 = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

void sub_25099775C()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_250996000, v0, OS_LOG_TYPE_DEFAULT, "HSAClient - Connection went invalid, exiting", v2, 2u);
  }

  v1 = qword_27F3E0C18;
  qword_27F3E0C18 = 0;
}

void sub_2509977F4(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (MEMORY[0x253065D40]() == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F8])
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v42 = xpc_connection_get_pid(v4);
        _os_log_impl(&dword_250996000, v23, OS_LOG_TYPE_DEFAULT, "HSAClient - peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
      }

      xpc_connection_cancel(v4);
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250996000, v24, OS_LOG_TYPE_DEFAULT, "Cleaning up connection", buf, 2u);
      }

      v25 = qword_27F3E0C18;
      qword_27F3E0C18 = 0;
    }

    else
    {
      if (v5 == MEMORY[0x277D863F0])
      {
        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v42 = xpc_connection_get_pid(v4);
          _os_log_impl(&dword_250996000, v20, OS_LOG_TYPE_DEFAULT, "HSAClient - peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
        }
      }

      else
      {
        if (v5 != MEMORY[0x277D86420])
        {
          goto LABEL_2;
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v42 = xpc_connection_get_pid(v4);
          _os_log_impl(&dword_250996000, v20, OS_LOG_TYPE_DEFAULT, "HSAClient - peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
        }
      }
    }
  }

LABEL_2:
  v6 = v5;
  if (_IMWillLog())
  {
    v7 = MEMORY[0x253065D00](v6);
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      pid = xpc_connection_get_pid(v4);
      *buf = 67109379;
      *v42 = pid;
      *&v42[4] = 2085;
      *&v42[6] = v7;
      _os_log_impl(&dword_250996000, v8, OS_LOG_TYPE_DEFAULT, "HSAClient - received message from peer(%d): %{sensitive}s", buf, 0x12u);
    }

    free(v7);
  }

  v26 = v4;
  v27 = v6;
  v10 = IMGetXPCStringFromDictionary();
  v11 = IMGetXPCStringFromDictionary();
  v12 = IMGetXPCStringFromDictionary();
  v13 = IMGetXPCStringFromDictionary();
  if ([v13 length])
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740739;
      *v42 = v13;
      *&v42[8] = 2112;
      *&v42[10] = v10;
      v43 = 2112;
      v44 = v11;
      v45 = 2117;
      v46 = v12;
      _os_log_impl(&dword_250996000, v14, OS_LOG_TYPE_DEFAULT, "HSAClient - Incoming message with auth token: %{sensitive}@    from: %@  service: %@  body: %{sensitive}@", buf, 0x2Au);
    }

    [qword_2814227D0 lock];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [qword_27F3E0C10 allValues];
    v15 = [obj countByEnumeratingWithState:&v29 objects:buf count:16];
    if (v15)
    {
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 138740739;
            v34 = v13;
            v35 = 2112;
            v36 = v10;
            v37 = 2112;
            v38 = v11;
            v39 = 2117;
            v40 = v12;
            _os_log_impl(&dword_250996000, v19, OS_LOG_TYPE_DEFAULT, "HSAClient - Calling back about auth token: %{sensitive}@    from: %@  service: %@  body: %{sensitive}@", v33, 0x2Au);
          }

          (*(v18 + 16))(v18, v10, v11, v12, v13);
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:buf count:16];
      }

      while (v15);
    }

    [qword_2814227D0 unlock];
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740739;
      *v42 = v13;
      *&v42[8] = 2112;
      *&v42[10] = v10;
      v43 = 2112;
      v44 = v11;
      v45 = 2117;
      v46 = v12;
      _os_log_impl(&dword_250996000, v21, OS_LOG_TYPE_DEFAULT, "HSAClient - Dropping message with empty auth token: %{sensitive}@    from: %@  service: %@  body: %{sensitive}@", buf, 0x2Au);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_250997DF0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x250997850);
  }

  _Unwind_Resume(a1);
}

void sub_250997E9C()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0 && qword_27F3E0C18)
  {
    message = v0;
    IMInsertBoolsToXPCDictionary();
    v1 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v1, OS_LOG_TYPE_DEFAULT, "HSAClient - Sending setup-request to server", buf, 2u);
    }

    xpc_connection_send_message(qword_27F3E0C18, message);
  }

  else if (v0)
  {
  }
}

uint64_t sub_250997FE8()
{
  qword_2814227C0 = objc_alloc_init(HSAAuthenticationServer);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_250998220(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_250996000, v2, OS_LOG_TYPE_DEFAULT, "HSA - port invalidated", v4, 2u);
  }

  return [*(a1 + 32) _cleanup];
}

void sub_2509982B4(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v6;
  v38 = v6;
  xpc_connection_get_audit_token();
  if (IMDAuditTokenTaskHasEntitlement())
  {
    v7 = v4;
    v8 = v5;
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v40 = xpc_connection_get_pid(v7);
      _os_log_impl(&dword_250996000, v9, OS_LOG_TYPE_DEFAULT, "HSA - Receiving message from peer (%d)", buf, 8u);
    }

    v10 = MEMORY[0x253065D40](v8);
    if (v10 == MEMORY[0x277D86480])
    {
      if (v8 == MEMORY[0x277D863F8])
      {
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          pid = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = pid;
          _os_log_impl(&dword_250996000, v22, OS_LOG_TYPE_DEFAULT, "HSA - peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
        }

        v24 = [HSAAuthenticationServer sharedInstance:v37];
        [v24 _cleanupClient:v7];

        xpc_connection_cancel(v7);
        goto LABEL_37;
      }

      if (v8 == MEMORY[0x277D863F0])
      {
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = v32;
          _os_log_impl(&dword_250996000, v31, OS_LOG_TYPE_DEFAULT, "HSA - peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 8u);
        }

        v33 = [HSAAuthenticationServer sharedInstance:v37];
        [v33 _cleanupClient:v7];

        goto LABEL_37;
      }

      if (v8 == MEMORY[0x277D86420])
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v21 = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = v21;
          _os_log_impl(&dword_250996000, v11, OS_LOG_TYPE_DEFAULT, "HSA - peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
        }

        goto LABEL_36;
      }
    }

    else if (v10 == MEMORY[0x277D86468])
    {
      v11 = v8;
      if (_IMWillLog())
      {
        v12 = MEMORY[0x253065D00](v11);
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = xpc_connection_get_pid(v7);
          *buf = 67109378;
          *v40 = v14;
          *&v40[4] = 2080;
          *&v40[6] = v12;
          _os_log_impl(&dword_250996000, v13, OS_LOG_TYPE_DEFAULT, "HSA - Received message from peer(%d): %s", buf, 0x12u);
        }

        free(v12);
      }

      if (xpc_dictionary_get_BOOL(v11, "setup-request"))
      {
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = v16;
          _os_log_impl(&dword_250996000, v15, OS_LOG_TYPE_DEFAULT, "HSA - Received setup-request from (%d)", buf, 8u);
        }

        v17 = [HSAAuthenticationServer sharedInstance:v37];
        [v17 _configureWithClient:v7];
      }

      else if (xpc_dictionary_get_BOOL(v11, "process-incoming-message"))
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = v26;
          _os_log_impl(&dword_250996000, v25, OS_LOG_TYPE_DEFAULT, "HSA - Received incoming message from (%d)", buf, 8u);
        }

        v27 = IMGetXPCStringFromDictionary();
        v28 = IMGetXPCStringFromDictionary();
        v29 = IMGetXPCStringFromDictionary();
        v30 = [HSAAuthenticationServer sharedInstance:v37];
        [v30 parseIncomingMessageFromNumber:v27 forService:v28 messageBody:v29];
      }

      else
      {
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = xpc_connection_get_pid(v7);
          *buf = 67109120;
          *v40 = v35;
          _os_log_impl(&dword_250996000, v34, OS_LOG_TYPE_DEFAULT, "HSA - Unhandled message from peer (%d)", buf, 8u);
        }
      }

LABEL_36:
    }

LABEL_37:

    goto LABEL_38;
  }

  v18 = xpc_connection_get_pid(v4);
  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = IMProcessNameForPid();
    *buf = 138412802;
    *v40 = @"com.apple.private.hsa-authentication-processing";
    *&v40[8] = 2112;
    *&v40[10] = v20;
    v41 = 1024;
    v42 = v18;
    _os_log_impl(&dword_250996000, v19, OS_LOG_TYPE_DEFAULT, "Denying xpc connection, task does not have entitlement: %@  (%@:%d)", buf, 0x1Cu);
  }

  xpc_connection_cancel(v4);
LABEL_38:

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2509988D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x250998888);
  }

  _Unwind_Resume(a1);
}

id sub_2509993A0(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, @"com.apple.carrier");

  return v1;
}

void sub_250999674(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x250999620);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_250999938()
{
  qword_27F3E0C30 = os_log_create("com.apple.Messages", "HSA");

  return MEMORY[0x2821F96F8]();
}

void HSAAuthenticationProcessIncomingMessage(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412803;
    v14 = a1;
    v15 = 2112;
    v16 = a2;
    v17 = 2117;
    v18 = a3;
    _os_log_impl(&dword_250996000, v6, OS_LOG_TYPE_DEFAULT, "HSAProvider - HSAAuthenticationProcessIncomingMessage: number %@,   service %@,  body: %{sensitive}@", buf, 0x20u);
  }

  if (qword_2814227E0 != -1)
  {
    sub_250999DDC();
  }

  v7 = IMXPCCreateConnectionForServiceWithQueue();
  if (v7)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v8, OS_LOG_TYPE_DEFAULT, "HSAProvider - We have a remote connection let's build a request message", buf, 2u);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      IMInsertNSStringsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      xpc_dictionary_set_BOOL(v9, "process-incoming-message", 1);
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v14 = v9;
        _os_log_impl(&dword_250996000, v10, OS_LOG_TYPE_DEFAULT, "HSAProvider - Sending request message %{sensitive}@", buf, 0xCu);
      }

      xpc_connection_send_message(v7, v9);
    }

    else
    {
      xpc_connection_cancel(v7);
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250996000, v11, OS_LOG_TYPE_DEFAULT, "HSAProvider - No Connection !!", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_250999C74()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.HSAAuthenticationMessageQueue", v2);
  v1 = qword_2814227E8;
  qword_2814227E8 = v0;
}

void sub_250999CD8()
{
  v0 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_250996000, v0, OS_LOG_TYPE_DEFAULT, "HSAProvider - RemoteConnection died", v1, 2u);
  }
}