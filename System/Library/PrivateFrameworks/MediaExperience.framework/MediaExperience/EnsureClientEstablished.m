@interface EnsureClientEstablished
@end

@implementation EnsureClientEstablished

void __routingContextRemoteXPC_EnsureClientEstablished_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gFigRoutingContextRemoteObject_1 = dispatch_queue_create("com.apple.coremedia.remoteRoutingContext.contextWeakRef", v0);
  if (gFigRoutingContextRemoteObject_1)
  {
    routingContextRemoteXPC_EnsureClientEstablished_sFigRoutingContextRemoteClientMutex = FigSimpleMutexCreate();
    if (routingContextRemoteXPC_EnsureClientEstablished_sFigRoutingContextRemoteClientMutex)
    {
      gFigRoutingContextRemoteObject_0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (gFigRoutingContextRemoteObject_0)
      {
        v1 = routingContextRemoteXPC_EnsureClientEstablished_err;
      }

      else
      {
        __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_1();
        v1 = v2;
      }
    }

    else
    {
      __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_2();
      v1 = v3;
    }
  }

  else
  {
    __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_3();
    v1 = v4;
  }

  if (v1)
  {
    if (gFigRoutingContextRemoteObject_1)
    {
      dispatch_release(gFigRoutingContextRemoteObject_1);
      gFigRoutingContextRemoteObject_1 = 0;
    }

    if (routingContextRemoteXPC_EnsureClientEstablished_sFigRoutingContextRemoteClientMutex)
    {
      FigSimpleMutexDestroy();
      routingContextRemoteXPC_EnsureClientEstablished_sFigRoutingContextRemoteClientMutex = 0;
    }

    if (gFigRoutingContextRemoteObject_0)
    {
      CFRelease(gFigRoutingContextRemoteObject_0);
      gFigRoutingContextRemoteObject_0 = 0;
    }
  }
}

uint64_t __figRouteDiscovererRemoteXPC_EnsureClientEstablished_block_invoke()
{
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

uint64_t __remoteSTS_EnsureClientEstablished_block_invoke()
{
  result = FigXPCRemoteClientCreate();
  _MergedGlobals_3 = result;
  return result;
}

uint64_t __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_11_4(v0);
}

uint64_t __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_11_4(v0);
}

uint64_t __routingContextRemoteXPC_EnsureClientEstablished_block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_11_4(v0);
}

@end