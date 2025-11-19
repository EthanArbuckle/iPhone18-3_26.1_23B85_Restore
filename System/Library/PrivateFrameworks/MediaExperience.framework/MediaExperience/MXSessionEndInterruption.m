@interface MXSessionEndInterruption
@end

@implementation MXSessionEndInterruption

uint64_t __MXSessionEndInterruption_WithInterruptionNotification_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _endInterruptionWithSecTask:0 andStatus:a1[8]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

uint64_t __MXSessionEndInterruption_WithSecTaskAndStatus_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _endInterruptionWithSecTask:a1[8] andStatus:a1[9]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

@end