@interface MRServiceHandleRemoteCommandMessage
@end

@implementation MRServiceHandleRemoteCommandMessage

void ___MRServiceHandleRemoteCommandMessage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v4)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      v6 = _MRLogForCategory(2uLL);
      v7 = [*(a1 + 40) objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
      v8 = [v7 hash];

      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2860000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SendCommandXPCResultFromApp", &unk_1A2BB0121, v10, 2u);
      }

      MRAddCommandResultToXPCMessage(reply, v3);
      xpc_connection_send_message(v4, reply);
    }
  }

  if (*(a1 + 48) != -1 && sandbox_extension_release() == -1)
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___MRServiceHandleRemoteCommandMessage_block_invoke_cold_1();
    }
  }
}

@end