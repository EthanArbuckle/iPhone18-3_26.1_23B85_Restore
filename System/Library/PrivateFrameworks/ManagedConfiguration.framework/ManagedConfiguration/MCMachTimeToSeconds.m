@interface MCMachTimeToSeconds
@end

@implementation MCMachTimeToSeconds

double ___MCMachTimeToSeconds_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 / 1000000000.0;
    _MCMachTimeToSeconds_sFactor = *&result;
  }

  return result;
}

@end