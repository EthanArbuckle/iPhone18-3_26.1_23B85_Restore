@interface HMDAccessoryFirmwareUpdateConcurrencyLogEvent
- (HMDAccessoryFirmwareUpdateConcurrencyLogEvent)initWithPeakConcurrentIPAccessoryUpdateStaging:(unint64_t)staging peakConcurrentIPAccessoryUpdateApply:(unint64_t)apply peakConcurrentBLEAccessoryUpdateStaging:(unint64_t)updateStaging peakConcurrentBLEAccessoryUpdateApply:(unint64_t)updateApply peakConcurrentThreadAccessoryUpdateStaging:(unint64_t)accessoryUpdateStaging peakConcurrentThreadAccessoryUpdateApply:(unint64_t)accessoryUpdateApply;
@end

@implementation HMDAccessoryFirmwareUpdateConcurrencyLogEvent

- (HMDAccessoryFirmwareUpdateConcurrencyLogEvent)initWithPeakConcurrentIPAccessoryUpdateStaging:(unint64_t)staging peakConcurrentIPAccessoryUpdateApply:(unint64_t)apply peakConcurrentBLEAccessoryUpdateStaging:(unint64_t)updateStaging peakConcurrentBLEAccessoryUpdateApply:(unint64_t)updateApply peakConcurrentThreadAccessoryUpdateStaging:(unint64_t)accessoryUpdateStaging peakConcurrentThreadAccessoryUpdateApply:(unint64_t)accessoryUpdateApply
{
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdateConcurrencyLogEvent;
  result = [(HMMLogEvent *)&v15 init];
  if (result)
  {
    result->_peakConcurrentIPAccessoryUpdateStaging = staging;
    result->_peakConcurrentIPAccessoryUpdateApply = apply;
    result->_peakConcurrentBLEAccessoryUpdateStaging = updateStaging;
    result->_peakConcurrentBLEAccessoryUpdateApply = updateApply;
    result->_peakConcurrentThreadAccessoryUpdateStaging = accessoryUpdateStaging;
    result->_peakConcurrentThreadAccessoryUpdateApply = accessoryUpdateApply;
  }

  return result;
}

@end