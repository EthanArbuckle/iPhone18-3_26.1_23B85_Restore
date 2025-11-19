@interface UpdateCarPlayFallbackRoutability
@end

@implementation UpdateCarPlayFallbackRoutability

void __central_UpdateCarPlayFallbackRoutability_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E218)
  {
    v2 = *(a1 + 36);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMVAUtility_ChangeCarPlayPortFallbackRoutabilityIfNecessary(*(a1 + 32));
  v4 = *MEMORY[0x1E69E9840];
}

@end