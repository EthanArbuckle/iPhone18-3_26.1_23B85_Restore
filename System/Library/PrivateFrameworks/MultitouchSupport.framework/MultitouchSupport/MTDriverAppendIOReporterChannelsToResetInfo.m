@interface MTDriverAppendIOReporterChannelsToResetInfo
@end

@implementation MTDriverAppendIOReporterChannelsToResetInfo

uint64_t ___MTDriverAppendIOReporterChannelsToResetInfo_block_invoke(uint64_t a1)
{
  ChannelName = IOReportChannelGetChannelName();
  valuePtr = IOReportSimpleGetIntegerValue();
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(*(a1 + 32), ChannelName, v3);
    CFRelease(v4);
  }

  return 0;
}

@end