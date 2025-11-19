@interface ICFConnectToServer
@end

@implementation ICFConnectToServer

void ___ICFConnectToServer_block_invoke()
{
  v0 = ICFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_254B1F000, v0, OS_LOG_TYPE_DEFAULT, "[WARN] Connection went invalid, exiting", v1, 2u);
  }

  xpc_release(sServerConnection);
  sServerConnection = 0;
}

void ___ICFConnectToServer_block_invoke_8(uint64_t a1, _xpc_connection_s *a2, void *a3)
{
  v3 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x259C24500](a3);
  v6 = MEMORY[0x277D86480];
  if (v5 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F8])
    {
      v30 = ICFDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_3(a2);
      }

      xpc_connection_cancel(a2);
      v31 = ICFDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254B1F000, v31, OS_LOG_TYPE_DEFAULT, "Cleaning up connection", buf, 2u);
      }

      xpc_release(sServerConnection);
      sServerConnection = 0;
    }

    else if (v3 == MEMORY[0x277D863F0])
    {
      v32 = ICFDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_2(a2);
      }
    }

    else if (v3 == MEMORY[0x277D86420])
    {
      v24 = ICFDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_1(a2);
      }
    }
  }

  v7 = MEMORY[0x259C244A0](v3);
  v8 = ICFDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pid = xpc_connection_get_pid(a2);
    *buf = 67109378;
    *v45 = pid;
    *&v45[4] = 2080;
    *&v45[6] = v7;
    _os_log_impl(&dword_254B1F000, v8, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", buf, 0x12u);
  }

  free(v7);
  if (v5 != v6)
  {
    v10 = IMGetXPCStringFromDictionary();
    v11 = IMGetXPCStringFromDictionary();
    v12 = ICFDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v45 = v10;
      *&v45[8] = 2112;
      *&v45[10] = v11;
      _os_log_impl(&dword_254B1F000, v12, OS_LOG_TYPE_DEFAULT, "Incoming call filtering query for number %@ and provider identifier %@", buf, 0x16u);
    }

    v13 = 0x281002000uLL;
    [sFilterLock lock];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [sFilterBlocks allValues];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
    if (v15)
    {
      v16 = v15;
      v33 = v3;
      v17 = *v35;
LABEL_9:
      v18 = 0;
      while (1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        v20 = v19[2](v19, v10, v11);
        v21 = ICFDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = @"deny";
          if (!v20)
          {
            v22 = @"allow";
          }

          *v38 = 138412802;
          v39 = v19;
          v23 = @"not blocked";
          if (v20 == 2)
          {
            v23 = @"blocked";
          }

          v40 = 2112;
          v41 = v22;
          v42 = 2112;
          v43 = v23;
          _os_log_impl(&dword_254B1F000, v21, OS_LOG_TYPE_DEFAULT, "We asked the filter %@ and it's telling us to %@ the call, and that the call was %@", v38, 0x20u);
        }

        if (v20)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
          if (v16)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v3 = v33;
      v13 = 0x281002000;
    }

    [*(v13 + 360) unlock];
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v26 = reply;
      IMInsertBoolsToXPCDictionary();
      IMInsertBoolsToXPCDictionary();
      v27 = MEMORY[0x259C244A0](v26);
      v28 = ICFDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 136315394;
        v39 = v27;
        v40 = 2048;
        v41 = a2;
        _os_log_impl(&dword_254B1F000, v28, OS_LOG_TYPE_DEFAULT, "Forwarding reply %s to connection %p", v38, 0x16u);
      }

      free(v27);
      xpc_connection_send_message(a2, v26);
      xpc_release(v26);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void ___ICFConnectToServer_block_invoke_8_cold_1(_xpc_connection_s *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ICFConnectToServer_block_invoke_8_cold_2(_xpc_connection_s *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ICFConnectToServer_block_invoke_8_cold_3(_xpc_connection_s *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end