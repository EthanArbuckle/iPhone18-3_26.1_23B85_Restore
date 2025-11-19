@interface RegisterXPCActivity
@end

@implementation RegisterXPCActivity

void ___RegisterXPCActivity_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2 && *(a1 + 32))
    {
      if (!xpc_activity_set_state(v3, 4))
      {
        v5 = CKLogContextVocabulary;
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v11 = "_RegisterXPCActivity_block_invoke";
          _os_log_error_impl(&dword_1C8683000, v5, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to continue", buf, 0xCu);
        }
      }

      v6 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___RegisterXPCActivity_block_invoke_6;
      v8[3] = &unk_1E831E828;
      v9 = v3;
      (*(v6 + 16))(v6, v9, v8);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }
}

void ___RegisterXPCActivity_block_invoke_6(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    if (xpc_activity_set_state(*(a1 + 32), 3))
    {
      return;
    }

    v2 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&dword_1C8683000, v2, OS_LOG_TYPE_ERROR, "%s Tried to defer activity but failed", &v4, 0xCu);
    }
  }

  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v3 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&dword_1C8683000, v3, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to done", &v4, 0xCu);
    }
  }
}

@end