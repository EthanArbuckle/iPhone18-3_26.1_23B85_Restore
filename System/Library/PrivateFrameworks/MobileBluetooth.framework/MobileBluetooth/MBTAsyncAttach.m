@interface MBTAsyncAttach
@end

@implementation MBTAsyncAttach

uint64_t ___MBTAsyncAttach_block_invoke(uint64_t a1)
{
  if (MBFLogInitOnce != -1)
  {
    _localBTAccessoryManagerAddCallbacks_cold_1();
  }

  if (os_log_type_enabled(MBFLogComponent, OS_LOG_TYPE_DEBUG))
  {
    ___MBTAsyncAttach_block_invoke_cold_2();
  }

  result = _MBTSignalSessionEvent(*(a1 + 32), 0, 0);
  gSessionAttachTries = 0;
  return result;
}

void ___MBTAsyncAttach_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end