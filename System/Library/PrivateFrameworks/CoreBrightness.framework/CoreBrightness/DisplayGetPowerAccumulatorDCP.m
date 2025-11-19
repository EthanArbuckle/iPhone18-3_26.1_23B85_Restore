@interface DisplayGetPowerAccumulatorDCP
@end

@implementation DisplayGetPowerAccumulatorDCP

uint64_t ____DisplayGetPowerAccumulatorDCP_block_invoke(uint64_t a1)
{
  ChannelName = IOReportChannelGetChannelName();
  if ([ChannelName isEqualToString:@"power"])
  {
    *(*(*(a1 + 32) + 8) + 24) = IOReportSimpleGetIntegerValue();
  }

  else if ([ChannelName isEqualToString:@"instant_energy"])
  {
    *(*(*(a1 + 40) + 8) + 24) = IOReportSimpleGetIntegerValue();
  }

  return 0;
}

@end