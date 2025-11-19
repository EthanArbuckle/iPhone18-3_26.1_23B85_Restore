@interface ANEVirtualPlatformClient
@end

@implementation ANEVirtualPlatformClient

void __46___ANEVirtualPlatformClient_sharedConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = gLogger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(*(a1 + 40));
    objc_claimAutoreleasedReturnValue();
    __46___ANEVirtualPlatformClient_sharedConnection___block_invoke_cold_1();
  }

  v3 = [[_ANEVirtualPlatformClient alloc] init:*(a1 + 32)];
  v4 = +[_ANEVirtualPlatformClient sharedConnection:]::client;
  +[_ANEVirtualPlatformClient sharedConnection:]::client = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2 >= 0x10000)
    {
      v3 = v2[1];
    }

    if (v3 == 16 || [_ANEVirtualPlatformClient isValidBufferSize:*(a1 + 56)])
    {
      v4 = gLogger;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        v9 = *(a1 + 64);
        *buf = 138412802;
        v15 = v8;
        v16 = 1024;
        v17 = v9;
        v18 = 1024;
        LODWORD(v19) = v3;
        _os_log_debug_impl(&dword_25DF54000, v4, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Begin1 %d - %d!", buf, 0x18u);
      }

      switch(v3)
      {
        case 0:
          break;
        case 1:
          [*(a1 + 32) compileModel:*(a1 + 40)];
          break;
        case 2:
          [*(a1 + 32) loadModel:*(a1 + 40)];
          break;
        case 3:
          [*(a1 + 32) unLoadModel:*(a1 + 40)];
          break;
        case 4:
          [*(a1 + 32) evaluateWithModel:*(a1 + 40)];
          break;
        case 5:
          [*(a1 + 32) compiledModelExistsFor:*(a1 + 40)];
          break;
        case 6:
          [*(a1 + 32) purgeCompiledModel:*(a1 + 40)];
          break;
        case 7:
          [*(a1 + 32) compiledModelExistsMatchingHash:*(a1 + 40)];
          break;
        case 8:
          [*(a1 + 32) purgeCompiledModelMatchingHash:*(a1 + 40)];
          break;
        case 9:
          [*(a1 + 32) beginRealTimeTask:*(a1 + 40)];
          break;
        case 10:
          [*(a1 + 32) endRealTimeTask:*(a1 + 40)];
          break;
        case 11:
          [*(a1 + 32) echo:*(a1 + 40)];
          break;
        case 12:
          [*(a1 + 32) getDeviceInfo:*(a1 + 40)];
          break;
        case 13:
          [*(a1 + 32) mapIOSurfacesWithModel:*(a1 + 40)];
          break;
        case 14:
          [*(a1 + 32) storeGuestBuildVersion:*(a1 + 40)];
          break;
        case 15:
          [*(a1 + 32) exchangeBuildVersionInfo:*(a1 + 40)];
          break;
        case 16:
          [*(a1 + 32) callCFDictionaryMethod:*(a1 + 40)];
          break;
        case 17:
          [*(a1 + 32) asyncAvpHoldMessageReceived:*(a1 + 40)];
          break;
        default:
          v10 = gLogger;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(*(a1 + 48));
            objc_claimAutoreleasedReturnValue();
            __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke_cold_1();
          }

          break;
      }

      v5 = gLogger;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(*(a1 + 48));
        v13 = *(a1 + 64);
        *buf = 138412802;
        v15 = v12;
        v16 = 1024;
        v17 = v3;
        v18 = 1024;
        LODWORD(v19) = v13;
        _os_log_debug_impl(&dword_25DF54000, v5, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient %u queueIndex %d End!", buf, 0x18u);
      }
    }

    else
    {
      v5 = gLogger;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(*(a1 + 48));
        v7 = *(a1 + 56);
        *buf = 138412802;
        v15 = v6;
        v16 = 1024;
        v17 = v3;
        v18 = 2048;
        v19 = v7;
        _os_log_error_impl(&dword_25DF54000, v5, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient command=%u, unknown buffer size=%lu, exiting", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v5 = gLogger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 48));
      objc_claimAutoreleasedReturnValue();
      __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke_cold_2();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46___ANEVirtualPlatformClient_sharedConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient  _ANEVirtualPlatformClient Create !", v5);
}

void __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 64);
  v5 = OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_24(v5, v6, v7);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

void __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient invalid buffer pointer!", v5);
}

@end