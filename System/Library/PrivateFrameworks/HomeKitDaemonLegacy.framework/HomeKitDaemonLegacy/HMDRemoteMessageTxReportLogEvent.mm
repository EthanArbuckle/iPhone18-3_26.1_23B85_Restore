@interface HMDRemoteMessageTxReportLogEvent
- (HMDRemoteMessageTxReportLogEvent)initWithTransport:(int)transport latency:(double)latency retriesUsed:(unint64_t)used;
@end

@implementation HMDRemoteMessageTxReportLogEvent

- (HMDRemoteMessageTxReportLogEvent)initWithTransport:(int)transport latency:(double)latency retriesUsed:(unint64_t)used
{
  v9.receiver = self;
  v9.super_class = HMDRemoteMessageTxReportLogEvent;
  result = [(HMMLogEvent *)&v9 init];
  if (result)
  {
    result->_transportType = transport;
    result->_latency = latency;
    result->_retriesUsed = used;
  }

  return result;
}

@end