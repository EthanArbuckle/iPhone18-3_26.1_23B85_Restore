@interface HDMILatencyMgr
@end

@implementation HDMILatencyMgr

void __HDMILatencyMgr_UpdateMeasuredHDMILatency_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = xmmword_1ED6D2F50;
  v4 = *(a1 + 32);
  *&xmmword_1ED6D2F50 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v5 = *(a1 + 32);
  FigCFDictionaryGetDoubleIfPresent();
  BYTE9(xmmword_1ED6D2F70) = 0;
  updateMeasuredHDMILatencyOnCoreAnimationAndHAL();
  writeMeasuredHDMILatencyToDisk(xmmword_1ED6D2F50);
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __HDMILatencyMgr_UpdateCurrentRefreshRate_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75E238)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  qword_1ED6D2F60 = *(a1 + 32);
  updateMeasuredHDMILatencyOnCoreAnimationAndHAL();
  result = writeMeasuredHDMILatencyToDisk(xmmword_1ED6D2F50);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef __HDMILatencyMgr_CopyMeasuredHDMILatency_block_invoke(uint64_t a1)
{
  v2 = xmmword_1ED6D2F50;
  if (xmmword_1ED6D2F50 || (result = copyMeasuredHDMILatencyFromDisk(), v2 = result, (*&xmmword_1ED6D2F50 = result) != 0))
  {
    result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v2);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end