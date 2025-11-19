@interface MRServiceHandleAgentMessage
@end

@implementation MRServiceHandleAgentMessage

void ___MRServiceHandleAgentMessage_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  if (uint64 == 0xA00000000000002)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    xdict = *(a1 + 32);
    if (v4)
    {
      v5 = v4[1];
      if (v5)
      {
        v4 = v5(*v4);
      }

      else
      {
        v4 = 0;
      }
    }

    v9 = v3;
    v10 = xpc_dictionary_get_remote_connection(xdict);
    if (v10)
    {
      reply = xpc_dictionary_create_reply(xdict);
      v12 = reply;
      if (reply)
      {
        xpc_dictionary_set_uint64(reply, "MRXPC_AGENT_NUMBER_ACTIVE_CALLS_KEY", v4);
        v13 = [v9 connection];
        xpc_connection_send_message(v13, v12);
      }
    }

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = uint64;
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Agent client message %lu not handled", buf, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

@end