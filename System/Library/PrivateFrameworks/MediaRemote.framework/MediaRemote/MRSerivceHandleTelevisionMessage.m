@interface MRSerivceHandleTelevisionMessage
@end

@implementation MRSerivceHandleTelevisionMessage

void ___MRSerivceHandleTelevisionMessage_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  if (uint64 == 0x60000000000000ALL)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v4;
    if (v3 && *(v3 + 8))
    {
      v6 = MRCreatePropertyListFromXPCMessage(v4, "MRXPC_CUSTOM_DATA_NAME_KEY");
      v7 = MRCreatePropertyListFromXPCMessage(v5, "MRXPC_CUSTOM_DATA_KEY");
      (*(*(v3 + 8) + 16))();
    }

    else
    {
      v6 = _MRLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "No callback for television custom data", &v10, 2u);
      }
    }
  }

  else
  {
    v8 = uint64;
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Television client message %lu not handled", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end