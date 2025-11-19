@interface AddToSelectedRoutes
@end

@implementation AddToSelectedRoutes

uint64_t __routingContextResilientRemote_AddToSelectedRoutes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 80;

  return v6(a2, v3, v4);
}

void __routingContext_AddToSelectedRoutes_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(a1 + 32), 0}];
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 40) + 8), v2);
  }

  v3 = *(a1 + 40);
  if (*v3 == 9)
  {
    MXSystemRemotePool_AddEndpointToContext(*(a1 + 32), *(v3 + 8), *(a1 + 48));
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 40) + 8), *(a1 + 48), @"configUpdateReasonEndedFailed");
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end