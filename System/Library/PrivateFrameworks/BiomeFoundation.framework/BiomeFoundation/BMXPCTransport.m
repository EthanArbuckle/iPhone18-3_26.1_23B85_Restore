@interface BMXPCTransport
@end

@implementation BMXPCTransport

void __32___BMXPCTransport__handleEvent___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = MEMORY[0x1AC5ADDC0](v3);
  if (v5 == MEMORY[0x1E69E9E98])
  {
    v8 = [*(a1 + 32) connection];
    name = xpc_connection_get_name(v8);
    if (name)
    {
      v10 = name;
    }

    else
    {
      v10 = "<unknown>";
    }

    if (v3 == MEMORY[0x1E69E9E20])
    {
      v17 = [*(a1 + 32) connection];
      v18 = xpc_connection_copy_invalidation_reason();

      if (strcasestr(v18, "Sandbox"))
      {
        v19 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v19 = OS_LOG_TYPE_DEBUG;
      }

      v20 = __biome_log_for_category(0);
      if (os_log_type_enabled(v20, v19))
      {
        v24 = 136446466;
        v25 = v10;
        v26 = 2082;
        v27 = v18;
        _os_log_impl(&dword_1AC15D000, v20, v19, "Connection to '%{public}s' invalidated: %{public}s", &v24, 0x16u);
      }

      free(v18);
    }

    else
    {
      if (v3 == MEMORY[0x1E69E9E18])
      {
        v12 = __biome_log_for_category(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __32___BMXPCTransport__handleEvent___block_invoke_cold_5();
        }
      }

      else if (v3 == MEMORY[0x1E69E9E30])
      {
        v12 = __biome_log_for_category(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __32___BMXPCTransport__handleEvent___block_invoke_cold_4();
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9E38];
        v12 = __biome_log_for_category(0);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v3 == v11)
        {
          if (v13)
          {
            __32___BMXPCTransport__handleEvent___block_invoke_cold_3();
          }
        }

        else if (v13)
        {
          __32___BMXPCTransport__handleEvent___block_invoke_cold_2();
        }
      }
    }

    v22 = [*(a1 + 32) errorHandler];
    v7 = v22;
    if (v22)
    {
      (*(v22 + 16))(v22, v3);
    }

    goto LABEL_35;
  }

  v6 = v5;
  if (v5 != MEMORY[0x1E69E9E80])
  {
    v7 = __biome_log_for_category(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32___BMXPCTransport__handleEvent___block_invoke_cold_1(v6, v7);
    }

LABEL_35:

    goto LABEL_36;
  }

  v14 = [*(a1 + 32) messageHandler];
  if (v14)
  {
    v15 = xpc_dictionary_get_dictionary(v3, "bm_info");
    if (v15)
    {
      v16 = _CFXPCCreateCFObjectFromXPCObject();
      [*(a1 + 32) setRemoteUserInfo:v16];
    }

    else
    {
      [*(a1 + 32) setRemoteUserInfo:MEMORY[0x1E695E0F8]];
    }

    reply = xpc_dictionary_create_reply(v3);
    (v14)[2](v14, v3, reply);
  }

LABEL_36:
  v23 = *MEMORY[0x1E69E9840];
}

void __32___BMXPCTransport__handleEvent___block_invoke_cold_1(const _xpc_type_s *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_type_get_name(a1);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "_BMXPCTransport unhandled type: %s", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __32___BMXPCTransport__handleEvent___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1AC15D000, v1, OS_LOG_TYPE_DEBUG, "Connection to '%{public}s' encountered unknown error type %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __32___BMXPCTransport__handleEvent___block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "Connection to '%{public}s' termination imminent", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __32___BMXPCTransport__handleEvent___block_invoke_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_ERROR, "Connection to '%{public}s' failed peer code signing requirement", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __32___BMXPCTransport__handleEvent___block_invoke_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_DEBUG, "Connection to '%{public}s' interrupted", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end