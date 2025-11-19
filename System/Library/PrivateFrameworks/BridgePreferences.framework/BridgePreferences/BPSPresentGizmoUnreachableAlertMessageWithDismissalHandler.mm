@interface BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler
@end

@implementation BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler

uint64_t ___BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler_block_invoke(uint64_t a1)
{
  v2 = bps_utility_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "BPS presented 'transport became unreachable' alert- button pressed", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t ___BPSPresentGizmoUnreachableAlertMessageWithDismissalHandler_block_invoke_760(uint64_t a1)
{
  v2 = bps_utility_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "Transition completed. Presenting 'transport became unreachable' alert", v4, 2u);
  }

  return [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
}

@end