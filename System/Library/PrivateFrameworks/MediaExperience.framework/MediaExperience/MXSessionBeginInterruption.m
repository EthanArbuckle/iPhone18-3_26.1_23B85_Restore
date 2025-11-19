@interface MXSessionBeginInterruption
@end

@implementation MXSessionBeginInterruption

uint64_t __MXSessionBeginInterruption_WithSecTaskAndFlags_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _beginInterruptionWithSecTask:a1[8] andFlags:a1[9]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

uint64_t __MXSessionBeginInterruption_WithFlags_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _beginInterruptionWithSecTask:0 andFlags:a1[8]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

@end