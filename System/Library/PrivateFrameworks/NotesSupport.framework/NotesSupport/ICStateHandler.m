@interface ICStateHandler
+ (void)addStateHandlerWithName:(const char *)a3 sysdiagnoseOnly:(BOOL)a4 stateBlock:(id)a5;
@end

@implementation ICStateHandler

+ (void)addStateHandlerWithName:(const char *)a3 sysdiagnoseOnly:(BOOL)a4 stateBlock:(id)a5
{
  v6 = a5;
  v7 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICStateHandler *)a3 addStateHandlerWithName:v7 sysdiagnoseOnly:v8 stateBlock:v9, v10, v11, v12, v13];
  }

  v14 = dispatch_get_global_queue(0, 0);
  v15 = v6;
  os_state_add_handler();
}

_DWORD *__69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1 && *(a2 + 16) != 3)
  {
    v6 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_1();
    }

    v9 = 0;
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_2();
    }

    v4 = (*(*(a1 + 32) + 16))();
    v12 = 0;
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_3();
      }
    }

    if ([v5 length] >> 32)
    {
      v10 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_4();
      }

      v9 = 0;
    }

    else
    {
      v8 = [v5 length];
      v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
      *v9 = 1;
      v9[1] = v8;
      __strlcpy_chk();
      memcpy(v9 + 50, [v5 bytes], v8);
    }
  }

  return v9;
}

void __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1D4576000, v0, v1, "Skipped os_state handler: %s", v2, v3, v4, v5, v6);
}

void __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1D4576000, v0, v1, "Processing os_state handler: %s", v2, v3, v4, v5, v6);
}

void __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4576000, v1, OS_LOG_TYPE_ERROR, "Error serializing state data for %s: %@", v2, 0x16u);
}

void __69__ICStateHandler_addStateHandlerWithName_sysdiagnoseOnly_stateBlock___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1D4576000, v0, OS_LOG_TYPE_ERROR, "Error serializing state data for %s: data size greater than UINT32_MAX", v1, 0xCu);
}

@end