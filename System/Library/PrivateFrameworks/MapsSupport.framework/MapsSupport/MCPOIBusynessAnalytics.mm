@interface MCPOIBusynessAnalytics
+ (id)shared;
+ (void)report:(unint64_t)report;
+ (void)reportCompleteWithRTEnabled:(BOOL)enabled rtCollected:(BOOL)collected rtError:(id)error dpEnabled:(BOOL)dpEnabled dpCollected:(BOOL)dpCollected dpError:(id)dpError bpEnabled:(BOOL)bpEnabled bpCollected:(BOOL)self0 bpError:(id)self1;
- (MCPOIBusynessAnalytics)init;
@end

@implementation MCPOIBusynessAnalytics

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007EE0;
  block[3] = &unk_10001D688;
  block[4] = self;
  if (qword_100023300 != -1)
  {
    dispatch_once(&qword_100023300, block);
  }

  v2 = qword_1000232F8;

  return v2;
}

- (MCPOIBusynessAnalytics)init
{
  v6.receiver = self;
  v6.super_class = MCPOIBusynessAnalytics;
  v2 = [(MCPOIBusynessAnalytics *)&v6 init];
  if (v2)
  {
    v3 = +[MCPOIBusynessCounters readFromDisk];
    counters = v2->_counters;
    v2->_counters = v3;
  }

  return v2;
}

+ (void)report:(unint64_t)report
{
  AnalyticsSendEventLazy();
  if (PLShouldLogRegisteredEvent())
  {
    shared = [self shared];
    counters = [shared counters];
    [counters incrementCounterForAnalytic:report];
  }
}

+ (void)reportCompleteWithRTEnabled:(BOOL)enabled rtCollected:(BOOL)collected rtError:(id)error dpEnabled:(BOOL)dpEnabled dpCollected:(BOOL)dpCollected dpError:(id)dpError bpEnabled:(BOOL)bpEnabled bpCollected:(BOOL)self0 bpError:(id)self1
{
  errorCopy = error;
  dpErrorCopy = dpError;
  bpErrorCopy = bpError;
  v13 = bpErrorCopy;
  v14 = dpErrorCopy;
  v15 = errorCopy;
  AnalyticsSendEventLazy();
}

@end