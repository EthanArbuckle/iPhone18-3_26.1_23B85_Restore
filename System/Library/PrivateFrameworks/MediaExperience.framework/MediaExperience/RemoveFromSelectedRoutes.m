@interface RemoveFromSelectedRoutes
@end

@implementation RemoveFromSelectedRoutes

uint64_t __routingContextResilientRemote_RemoveFromSelectedRoutes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 96);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 96;

  return v6(a2, v3, v4);
}

void __routingContext_RemoveFromSelectedRoutes_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*v2 == 9)
  {
    MXSystemRemotePool_RemoveEndpointFromContext(*(a1 + 40), *(v2 + 8), *(a1 + 48));
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 32) + 8), *(a1 + 48), @"configUpdateReasonEndedFailed");
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end