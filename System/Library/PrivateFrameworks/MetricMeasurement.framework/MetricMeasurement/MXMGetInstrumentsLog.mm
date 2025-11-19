@interface MXMGetInstrumentsLog
@end

@implementation MXMGetInstrumentsLog

uint64_t ___MXMGetInstrumentsLog_block_invoke()
{
  _MXMGetInstrumentsLog__instrumentsLogger = os_log_create("com.apple.metricmeasurement", "PointsOfInterest");

  return MEMORY[0x2821F96F8]();
}

@end