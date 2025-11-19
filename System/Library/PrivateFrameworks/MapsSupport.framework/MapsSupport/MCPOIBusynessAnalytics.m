@interface MCPOIBusynessAnalytics
+ (id)shared;
+ (void)report:(unint64_t)a3;
+ (void)reportCompleteWithRTEnabled:(BOOL)a3 rtCollected:(BOOL)a4 rtError:(id)a5 dpEnabled:(BOOL)a6 dpCollected:(BOOL)a7 dpError:(id)a8 bpEnabled:(BOOL)a9 bpCollected:(BOOL)a10 bpError:(id)a11;
- (MCPOIBusynessAnalytics)init;
@end

@implementation MCPOIBusynessAnalytics

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007EE0;
  block[3] = &unk_10001D688;
  block[4] = a1;
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

+ (void)report:(unint64_t)a3
{
  AnalyticsSendEventLazy();
  if (PLShouldLogRegisteredEvent())
  {
    v5 = [a1 shared];
    v6 = [v5 counters];
    [v6 incrementCounterForAnalytic:a3];
  }
}

+ (void)reportCompleteWithRTEnabled:(BOOL)a3 rtCollected:(BOOL)a4 rtError:(id)a5 dpEnabled:(BOOL)a6 dpCollected:(BOOL)a7 dpError:(id)a8 bpEnabled:(BOOL)a9 bpCollected:(BOOL)a10 bpError:(id)a11
{
  v12 = a5;
  v16 = a8;
  v17 = a11;
  v13 = v17;
  v14 = v16;
  v15 = v12;
  AnalyticsSendEventLazy();
}

@end