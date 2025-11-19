@interface CpuTickRate
@end

@implementation CpuTickRate

double ___CpuTickRate_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    _CpuTickRate_rate = *&result;
  }

  return result;
}

@end