@interface IOGCFastPathProxyClient
@end

@implementation IOGCFastPathProxyClient

void __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1D38AB9A0]();
  if (v4 == MEMORY[0x1E69E9E80])
  {
    v10 = _gc_log_iokit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_1D2C3B000, v10, OS_LOG_TYPE_DEFAULT, "Client received message: %@", buf, 0xCu);
    }

    *buf = 0u;
    v29 = 0u;
    xpc_dictionary_get_audit_token();
    v11 = *(a1 + 32);
    if (*buf == v11[3] && *&buf[8] == v11[4] && v29 == v11[5] && *(&v29 + 1) == v11[6])
    {
      [(_IOGCFastPathProxyClient *)v11 handleMessage:v3];
      goto LABEL_21;
    }

    v5 = _gc_log_iokit();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v27 = 0;
    v6 = "Bad audit token.";
    v7 = &v27;
    v8 = v5;
    v9 = 2;
    goto LABEL_19;
  }

  if (v4 != MEMORY[0x1E69E9E98])
  {
    v5 = _gc_log_iokit();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      xpc_connection_cancel(*(*(a1 + 32) + 16));
      goto LABEL_21;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v6 = "Client received unknown event: %@";
    v7 = buf;
    v8 = v5;
    v9 = 12;
LABEL_19:
    _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_DEFAULT, v6, v7, v9);
    goto LABEL_20;
  }

  v16 = MEMORY[0x1E69E9E20];
  v17 = _gc_log_iokit();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v3 == v16)
  {
    if (v18)
    {
      __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_2(v17);
    }

    xpc_connection_set_event_handler(*(*(a1 + 32) + 16), &__block_literal_global_19);
    xpc_connection_cancel(*(*(a1 + 32) + 16));
    v25 = *(a1 + 32);
    v26 = *(v25 + 16);
    *(v25 + 16) = 0;
  }

  else
  {
    if (v18)
    {
      __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_1(v3, v17, v19, v20, v21, v22, v23, v24);
    }
  }

LABEL_21:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __42___IOGCFastPathProxyClient_handleMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E695DFB0];
  v5 = a3;
  v6 = [v4 null];
  v7 = MEMORY[0x1E696AEC0];
  string_ptr = xpc_string_get_string_ptr(v5);

  v9 = [v7 stringWithUTF8String:string_ptr];
  [v3 setObject:v6 forKey:v9];

  return 1;
}

void __42___IOGCFastPathProxyClient_handleMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_uint64(*(a1 + 32), [v6 UTF8String], objc_msgSend(v5, "unsignedLongLongValue"));
  }
}

void __55___IOGCFastPathProxyClient_initWithIncomingConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, a2, a3, "Proxy client received error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end