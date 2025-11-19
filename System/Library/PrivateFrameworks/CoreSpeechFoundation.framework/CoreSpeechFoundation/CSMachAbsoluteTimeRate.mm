@interface CSMachAbsoluteTimeRate
@end

@implementation CSMachAbsoluteTimeRate

double ___CSMachAbsoluteTimeRate_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    _CSMachAbsoluteTimeRate_rate = *&result;
  }

  return result;
}

@end