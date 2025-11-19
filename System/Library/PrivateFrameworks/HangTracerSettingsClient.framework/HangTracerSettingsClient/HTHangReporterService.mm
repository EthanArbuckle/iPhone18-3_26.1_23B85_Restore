@interface HTHangReporterService
- (HTHangReporterService)init;
- (void)getProcessingHangsWithCompletion:(id)a3;
@end

@implementation HTHangReporterService

- (HTHangReporterService)init
{
  v13.receiver = self;
  v13.super_class = HTHangReporterService;
  v2 = [(HTHangReporterService *)&v13 init];
  if (!v2)
  {
    return 0;
  }

  p_isa = &v2->super.isa;
  mach_service = xpc_connection_create_mach_service("com.apple.hangreporter", 0, 0);
  v5 = p_isa[1];
  p_isa[1] = mach_service;

  v6 = p_isa[1];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = p_isa[1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__HTHangReporterService_init__block_invoke;
    v10[3] = &unk_2796A9418;
    objc_copyWeak(&v11, &location);
    xpc_connection_set_event_handler(v7, v10);
    xpc_connection_resume(p_isa[1]);
    v8 = p_isa;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __29__HTHangReporterService_init__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (MEMORY[0x25306A5A0](v3) != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25306A550](v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __29__HTHangReporterService_init__block_invoke_cold_1(v5);
    }

LABEL_4:
    free(v5);
    goto LABEL_5;
  }

  if (v3 != MEMORY[0x277D863F0])
  {
    if (v3 == MEMORY[0x277D863F8])
    {
      v5 = xpc_connection_copy_invalidation_reason();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = v5;
        _os_log_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection to hangreporter invalidated: %s", &v7, 0xCu);
      }
    }

    else
    {
      v5 = MEMORY[0x25306A550](v3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __29__HTHangReporterService_init__block_invoke_cold_2(v5);
      }
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __29__HTHangReporterService_init__block_invoke_cold_3();
  }

LABEL_5:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getProcessingHangsWithCompletion:(id)a3
{
  v4 = a3;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "message", "get-processing-hangs-list");
  hangReporterConnection = self->_hangReporterConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke;
  handler[3] = &unk_2796A9440;
  v9 = v4;
  v7 = v4;
  xpc_connection_send_message_with_reply(hangReporterConnection, empty, 0, handler);
}

void __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x25306A5A0]();
  v5 = MEMORY[0x277D86468];
  if (v4 == MEMORY[0x277D86468])
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v10 = xpc_dictionary_get_array(v3, "hangs");
    count = xpc_array_get_count(v10);
    if (count)
    {
      v14 = count;
      v15 = 0;
      v16 = MEMORY[0x277D86220];
      do
      {
        v17 = xpc_array_get_value(v10, v15);
        if (MEMORY[0x25306A5A0]() == v5)
        {
          v19 = [[HTHang alloc] initWithXPCDictionary:v17];
          [v12 addObject:v19];
        }

        else
        {
          v18 = MEMORY[0x25306A550](v17);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke_cold_1(buf, v18, v30);
          }

          free(v18);
        }

        ++v15;
      }

      while (v14 != v15);
    }

    v20 = dispatch_get_global_queue(21, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke_11;
    v23[3] = &unk_2796A92F8;
    v21 = *(a1 + 32);
    v24 = v12;
    v25 = v21;
    v11 = v12;
    dispatch_async(v20, v23);
  }

  else
  {
    v6 = MEMORY[0x25306A550](v3);
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    free(v6);
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke_2;
    block[3] = &unk_2796A92F8;
    v9 = *(a1 + 32);
    v27 = v7;
    v28 = v9;
    v10 = v7;
    dispatch_async(v8, block);

    v11 = v28;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v2 = *MEMORY[0x277CCA050];
  v3 = &stru_286326598;
  v4 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  v8 = *MEMORY[0x277CCA450];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v1 errorWithDomain:v2 code:4101 userInfo:v5];
  (*(v4 + 16))(v4, 0, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void __29__HTHangReporterService_init__block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Connection to hangreporter encountered non-error: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __29__HTHangReporterService_init__block_invoke_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection to hangreporter encountered error: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __58__HTHangReporterService_getProcessingHangsWithCompletion___block_invoke_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 136315138;
  *a3 = a2;
  _os_log_fault_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "hangs array contains non-dictionary %s", buf, 0xCu);
}

@end