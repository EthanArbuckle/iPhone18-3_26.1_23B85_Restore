@interface MRServiceHandleClientPriorityMessage
@end

@implementation MRServiceHandleClientPriorityMessage

void ___MRServiceHandleClientPriorityMessage_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  if (uint64 == 0x800000000000001)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    kdebug_trace();
    if (v3 && *v3)
    {
      v5 = xpc_dictionary_get_uint64(v4, "MRXPC_COMMAND_KEY");
      length = 0;
      data = xpc_dictionary_get_data(v4, "MRXPC_COMMAND_OPTIONS_KEY", &length);
      if (data)
      {
        v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
        v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
        v9 = [v8 mutableCopy];
      }

      else
      {
        v9 = 0;
      }

      v11 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionSanboxExtensionToken"];
      v12 = v11;
      if (v11)
      {
        [v11 UTF8String];
        v13 = sandbox_extension_consume();
        if (v13 == -1)
        {
          v14 = _MRLogForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            ___MRServiceHandleClientPriorityMessage_block_invoke_cold_1();
          }
        }

        else
        {
          v14 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionPlaybackSessionFilePath"];
          v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v14];
          [v9 setObject:v15 forKeyedSubscript:@"kMRMediaRemoteOptionPlaybackSessionData"];
        }
      }

      else
      {
        v13 = -1;
      }

      v16 = _MRLogForCategory(2uLL);
      v17 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
      v18 = [v17 hash];

      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2860000, v16, OS_SIGNPOST_INTERVAL_END, v18, "SendCommandXPCToApp", &unk_1A2BB0121, &buf, 2u);
      }

      v19 = MRCreatePlayerPathFromXPCMessage(v4);
      v20 = *v3;
      v21 = [v9 copy];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v26 = ___MRServiceHandleRemoteCommandMessage_block_invoke;
      v27 = &unk_1E769C708;
      v28 = v4;
      v29 = v9;
      v30 = v13;
      v22 = v9;
      v20(v19, v5, v21, &buf);
    }
  }

  else
  {
    v10 = uint64;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Client XPC message with ID %lu not handled.", &buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end