@interface DKWakeRequestMonitor
@end

@implementation DKWakeRequestMonitor

void __30___DKWakeRequestMonitor_start__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  v2 = dispatch_walltime(0, 2000000000);

  dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void *__57___DKWakeRequestMonitor_synchronouslyReflectCurrentValue__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[20])
  {
    return [result obtainNextUserVisibleWakeRequest];
  }

  return result;
}

@end