IMDMessageServicesCenter *sub_2547E2D50()
{
  result = objc_alloc_init(IMDMessageServicesCenter);
  qword_28141B7D0 = result;
  return result;
}

uint64_t sub_2547E305C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2547E2000, v2, OS_LOG_TYPE_INFO, "Message Services agent disconnected", v4, 2u);
    }
  }

  return [*(a1 + 32) _disconnected];
}

uint64_t sub_2547E32DC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C19AC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = string;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Error received in message routing reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v10 = MEMORY[0x259C19A90](a2);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = v10;
        _os_log_impl(&dword_2547E2000, v11, OS_LOG_TYPE_DEBUG, "received reply: %s", &v16, 0xCu);
      }
    }

    free(v10);
    [@"__kIMDMessageServicesRoutingDictionaryKey" UTF8String];
    v12 = IMGetXPCDictionaryFromDictionary();
    [@"__kIMDMessageServicesCallbackIntervalKey" UTF8String];
    v13 = IMGetXPCIntFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2547E2000, v14, OS_LOG_TYPE_INFO, "Received routing reply (callbackInterval:%lld): %@", &v16, 0x16u);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, v12, v13);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = v6;
        _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "Error reply type in message routing reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
LABEL_7:
      result = (*(result + 16))(result, 0, 0.0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2547E35A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2547E342CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2547E3950(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C19AC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = string;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Error received in message expire state reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v10 = MEMORY[0x259C19A90](a2);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = v10;
        _os_log_impl(&dword_2547E2000, v11, OS_LOG_TYPE_DEBUG, "received reply: %s", &v16, 0xCu);
      }
    }

    free(v10);
    [@"__kIMDMessageServicesExpireStateDictionaryKey" UTF8String];
    v12 = IMGetXPCDictionaryFromDictionary();
    [@"__kIMDMessageServicesCallbackIntervalKey" UTF8String];
    v13 = IMGetXPCIntFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2547E2000, v14, OS_LOG_TYPE_INFO, "Received expire state reply (callbackInterval:%lld): %@", &v16, 0x16u);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, v12, v13);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = v6;
        _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "Error reply type in message expire state reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
LABEL_7:
      result = (*(result + 16))(result, 0, 0.0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2547E3C1C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2547E3AA0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2547E3F80(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C19AC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = string;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Error received in message watchdog reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v10 = MEMORY[0x259C19A90](a2);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = v10;
        _os_log_impl(&dword_2547E2000, v11, OS_LOG_TYPE_DEBUG, "received reply: %s", &v16, 0xCu);
      }
    }

    free(v10);
    [@"__kIMDMessageServicesWatchdogDictionaryKey" UTF8String];
    v12 = IMGetXPCDictionaryFromDictionary();
    [@"__kIMDMessageServicesCallbackIntervalKey" UTF8String];
    v13 = IMGetXPCIntFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2547E2000, v14, OS_LOG_TYPE_INFO, "Received watchdog reply (callbackInterval:%lld): %@", &v16, 0x16u);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, v12, v13);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = v6;
        _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "Error reply type in message watchdog reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
LABEL_7:
      result = (*(result + 16))(result, 0, 0.0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2547E424C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2547E40D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2547E45B4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C19AC0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = string;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Error received in message scheduled type reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v10 = MEMORY[0x259C19A90](a2);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = v10;
        _os_log_impl(&dword_2547E2000, v11, OS_LOG_TYPE_DEBUG, "received reply: %s", &v16, 0xCu);
      }
    }

    free(v10);
    [@"__kIMDMessageServicesScheduledMessagesDictionaryKey" UTF8String];
    v12 = IMGetXPCDictionaryFromDictionary();
    [@"__kIMDMessageServicesCallbackIntervalKey" UTF8String];
    v13 = IMGetXPCIntFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 134218242;
        v17 = v13;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_2547E2000, v14, OS_LOG_TYPE_INFO, "Received schedule type reply (callbackInterval:%lld): %@", &v16, 0x16u);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, v12, v13);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v16 = 136315138;
        v17 = v6;
        _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "Error reply type in message schedule type reply handler: %s", &v16, 0xCu);
      }
    }

    result = *(a1 + 32);
    if (result)
    {
LABEL_7:
      result = (*(result + 16))(result, 0, 0.0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2547E4880(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2547E4704);
  }

  _Unwind_Resume(a1);
}