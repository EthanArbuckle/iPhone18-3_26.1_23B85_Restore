@interface HMDAccessoryFirmwareUpdateConcurrencyLogEvent
- (HMDAccessoryFirmwareUpdateConcurrencyLogEvent)initWithPeakConcurrentIPAccessoryUpdateStaging:(unint64_t)a3 peakConcurrentIPAccessoryUpdateApply:(unint64_t)a4 peakConcurrentBLEAccessoryUpdateStaging:(unint64_t)a5 peakConcurrentBLEAccessoryUpdateApply:(unint64_t)a6 peakConcurrentThreadAccessoryUpdateStaging:(unint64_t)a7 peakConcurrentThreadAccessoryUpdateApply:(unint64_t)a8;
@end

@implementation HMDAccessoryFirmwareUpdateConcurrencyLogEvent

- (HMDAccessoryFirmwareUpdateConcurrencyLogEvent)initWithPeakConcurrentIPAccessoryUpdateStaging:(unint64_t)a3 peakConcurrentIPAccessoryUpdateApply:(unint64_t)a4 peakConcurrentBLEAccessoryUpdateStaging:(unint64_t)a5 peakConcurrentBLEAccessoryUpdateApply:(unint64_t)a6 peakConcurrentThreadAccessoryUpdateStaging:(unint64_t)a7 peakConcurrentThreadAccessoryUpdateApply:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdateConcurrencyLogEvent;
  result = [(HMMLogEvent *)&v15 init];
  if (result)
  {
    result->_peakConcurrentIPAccessoryUpdateStaging = a3;
    result->_peakConcurrentIPAccessoryUpdateApply = a4;
    result->_peakConcurrentBLEAccessoryUpdateStaging = a5;
    result->_peakConcurrentBLEAccessoryUpdateApply = a6;
    result->_peakConcurrentThreadAccessoryUpdateStaging = a7;
    result->_peakConcurrentThreadAccessoryUpdateApply = a8;
  }

  return result;
}

@end