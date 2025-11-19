@interface HMDRemoteMessageTxReportLogEvent
- (HMDRemoteMessageTxReportLogEvent)initWithTransport:(int)a3 latency:(double)a4 retriesUsed:(unint64_t)a5;
@end

@implementation HMDRemoteMessageTxReportLogEvent

- (HMDRemoteMessageTxReportLogEvent)initWithTransport:(int)a3 latency:(double)a4 retriesUsed:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = HMDRemoteMessageTxReportLogEvent;
  result = [(HMMLogEvent *)&v9 init];
  if (result)
  {
    result->_transportType = a3;
    result->_latency = a4;
    result->_retriesUsed = a5;
  }

  return result;
}

@end