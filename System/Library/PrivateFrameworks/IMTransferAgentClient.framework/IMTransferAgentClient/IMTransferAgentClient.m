uint64_t sub_254876C64()
{
  qword_27F611CD0 = objc_alloc_init(IMTransferAgentClient);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254877138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254877150(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_254876000, v2, OS_LOG_TYPE_INFO, "Transfer service disconnected", v6, 2u);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    xpc_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_254877210(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1C8C0]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v29 = string;
        _os_log_impl(&dword_254876000, v10, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v12 = *(a1 + 88);
    if (v12 > 2)
    {
      if (*(a1 + 72))
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentClientErrorDomain" code:-4 userInfo:0];
        v18 = *(a1 + 72);
        v26 = @"error";
        v27 = v17;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        (*(v18 + 16))(v18, v19);
      }
    }

    else
    {
      [*(a1 + 32) _uploadRCSFileOnSimID:*(a1 + 40) fileURL:*(a1 + 48) thumbURL:*(a1 + 56) isAudioMessage:*(a1 + 96) encrypted:*(a1 + 97) userInfo:*(a1 + 64) retries:v12 + 1 completion:*(a1 + 72)];
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v13 = MEMORY[0x259C1C890](v3);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = v13;
        _os_log_impl(&dword_254876000, v14, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v13);
    v15 = IMGetXPCDictionaryFromDictionary();
    v16 = *(a1 + 72);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v29 = v6;
        _os_log_impl(&dword_254876000, v5, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 72))
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentClientErrorDomain" code:-1 userInfo:0];
      v8 = *(a1 + 72);
      v24 = @"error";
      v25 = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      (*(v8 + 16))(v8, v9);
    }
  }

  v20 = *(*(*(a1 + 80) + 8) + 40);
  if (v20)
  {
    xpc_connection_cancel(v20);
    v21 = *(*(a1 + 80) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_254877584(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2548773D0);
  }

  _Unwind_Resume(a1);
}

void sub_2548779F0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_254876000, v2, OS_LOG_TYPE_INFO, "Transfer service disconnected", v6, 2u);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    xpc_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_254877AB0(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x259C1C8C0]();
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v29 = string;
        _os_log_impl(&dword_254876000, v10, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v12 = *(a1 + 88);
    if (v12 > 2)
    {
      if (*(a1 + 72))
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentClientErrorDomain" code:-4 userInfo:0];
        v18 = *(a1 + 72);
        v26 = @"error";
        v27 = v17;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        (*(v18 + 16))(v18, v19);
      }
    }

    else
    {
      [*(a1 + 32) _downloadRCSTransferOnSimID:*(a1 + 40) transferURL:*(a1 + 48) destURL:*(a1 + 56) cryptoMaterial:*(a1 + 64) retries:v12 + 1 completion:*(a1 + 72)];
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v13 = MEMORY[0x259C1C890](v3);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = v13;
        _os_log_impl(&dword_254876000, v14, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v13);
    v15 = IMGetXPCDictionaryFromDictionary();
    v16 = *(a1 + 72);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v29 = v6;
        _os_log_impl(&dword_254876000, v5, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 72))
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentClientErrorDomain" code:-1 userInfo:0];
      v8 = *(a1 + 72);
      v24 = @"error";
      v25 = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      (*(v8 + 16))(v8, v9);
    }
  }

  v20 = *(*(*(a1 + 80) + 8) + 40);
  if (v20)
  {
    xpc_connection_cancel(v20);
    v21 = *(*(a1 + 80) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_254877E18(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x254877C70);
  }

  _Unwind_Resume(a1);
}