@interface Prewarm
@end

@implementation Prewarm

uint64_t __captureDeferredPhotoProcessor_Prewarm_block_invoke(void *a1)
{
  v2 = *(a1[6] + 64);
  if (v2)
  {
    if (dword_1ED843F90)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = *(a1[6] + 64);
    }

    dispatch_source_cancel(v2);

    *(a1[6] + 64) = 0;
  }

  if (dword_1ED843F90)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v21;
    if (os_log_type_enabled(v4, v20))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v7 = a1[7];
      v8 = *(a1[6] + 32);
      v12 = 136315906;
      v13 = "captureDeferredPhotoProcessor_Prewarm_block_invoke";
      v14 = 2048;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      LODWORD(v19) = v8;
      LODWORD(v11) = 34;
      v10 = &v12;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[BWDeferredTransactionBroker openTransaction:v10], "openTransaction:pid:", 1, *(a1[6] + 32)];
  return [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];
}

@end