@interface DKPluggedInMonitor
@end

@implementation DKPluggedInMonitor

void __28___DKPluggedInMonitor_start__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  v3 = _DKPluggedInMonitorLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Received notification for adapter change", buf, 2u);
    }

    [*(a1 + 32) setCurrentState];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring notification for adapter change", v5, 2u);
    }
  }
}

@end