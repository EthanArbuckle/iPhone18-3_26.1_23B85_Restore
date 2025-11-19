@interface EnsureClientEstablished
@end

@implementation EnsureClientEstablished

void __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FigExternalStorageDeviceManager_ServerConnectionDied");
    v4 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(v3, *MEMORY[0x1E69633D0], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(v3, *MEMORY[0x1E69633C0], v4);
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke_cold_1();
    }

    else if (!gFigExternalStorageDeviceManagerRemoteClient)
    {
      v5 = 1;
      v6 = 250;
      v7 = 250000;
      do
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        usleep(v7);
        *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
        if (gFigExternalStorageDeviceManagerRemoteClient)
        {
          break;
        }

        v7 += 250000;
        v6 += 250;
      }

      while (v5++ < 3);
    }

    CFRelease(v3);
  }

  else
  {
    __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke_cold_2(a1);
  }
}

uint64_t __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

uint64_t __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke_cold_2(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  result = FigDebugAssert3();
  *(*(*(a1 + 32) + 8) + 24) = -16150;
  return result;
}

@end