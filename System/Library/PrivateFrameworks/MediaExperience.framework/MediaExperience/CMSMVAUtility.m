@interface CMSMVAUtility
@end

@implementation CMSMVAUtility

uint64_t __CMSMVAUtility_IsAdditiveRoutingEnabled_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  *&inAddress.mSelector = *"sddabolg";
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 0;
  result = AudioObjectGetPropertyData(dword_1EB75E0AC, &inAddress, 0, 0, &ioDataSize, &outData);
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMVAUtility_IsAdditiveRoutingEnabled_isAdditiveRoutingSupportedForHardware = (outData - 1) < 2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end