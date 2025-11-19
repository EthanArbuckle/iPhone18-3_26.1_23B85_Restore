@interface PrettyPrintContainerDescription
@end

@implementation PrettyPrintContainerDescription

uint64_t __captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke(void *a1)
{
  v24 = 0;
  if (dword_1ED843F90)
  {
    v23 = 0;
    v22 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[BWDeferredTransactionBroker openTransaction:v10], "openTransaction:pid:", 2, *(a1[6] + 32)];
  if ([objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1[7]])
  {
    v3 = [+[BWDeferredProcessingContainerManager sharedInstance](BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:"createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:" captureRequestIdentifier:*(a1[6] + 24) openForPeeking:a1[7] err:1, &v24];
    if (v24)
    {
      __captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke_cold_1();
    }

    else
    {
      *(*(a1[4] + 8) + 24) = [v3 prettyDescription];
    }
  }

  else
  {
    __captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke_cold_2();
    v3 = 0;
  }

  if (dword_1ED843F90)
  {
    v23 = 0;
    v22 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v23;
    if (os_log_type_enabled(v4, v22))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v7 = a1[5];
      v8 = *(a1[6] + 32);
      v14 = 136315906;
      v15 = "captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke";
      v16 = 2048;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = v8;
      LODWORD(v13) = 34;
      v11 = &v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [+[BWDeferredTransactionBroker closeTransaction:v11], "closeTransaction:", 2];
}

@end