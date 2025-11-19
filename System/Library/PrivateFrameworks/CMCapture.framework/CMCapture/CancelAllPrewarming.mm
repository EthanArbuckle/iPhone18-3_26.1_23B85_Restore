@interface CancelAllPrewarming
@end

@implementation CancelAllPrewarming

void __captureDeferredPhotoProcessor_CancelAllPrewarming_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 64))
  {
    v13 = v1;
    v14 = v2;
    if (dword_1ED843F90)
    {
      v12 = 0;
      v11 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *(a1 + 32);
    }

    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v3 + 16));
    *(*(a1 + 32) + 64) = v6;
    v7 = dispatch_time(0, 6000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v8 = [FigWeakReference weakReferenceToObject:*(a1 + 40)];
    v9 = *(*(a1 + 32) + 64);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __captureDeferredPhotoProcessor_CancelAllPrewarming_block_invoke_205;
    handler[3] = &unk_1E798F870;
    handler[4] = v8;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_activate(*(*(a1 + 32) + 64));
  }
}

void __captureDeferredPhotoProcessor_CancelAllPrewarming_block_invoke_205(uint64_t a1)
{
  v1 = [*(a1 + 32) retainReferencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*DerivedStorage)
    {
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v4 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_10();
        kdebug_trace();
      }

      if (!*(v3 + 6) || !*v3)
      {
        [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];
      }

      [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];

      *(v3 + 8) = 0;
      if (dword_1ED843F90)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_5_24(v6))
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[BWDeferredTransactionBroker sharedInstance](BWDeferredTransactionBroker closeTransaction:"closeTransaction:", 1];
      if (*v4 == 1)
      {
        OUTLINED_FUNCTION_10();
        kdebug_trace();
      }
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

@end