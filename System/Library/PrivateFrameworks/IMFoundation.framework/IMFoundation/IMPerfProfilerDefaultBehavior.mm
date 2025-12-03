@interface IMPerfProfilerDefaultBehavior
+ (id)instance;
- (void)perfProfiler:(id)profiler measurementDidFinish:(IMPerfMeasurement_t *)finish withSink:(id)sink;
@end

@implementation IMPerfProfilerDefaultBehavior

- (void)perfProfiler:(id)profiler measurementDidFinish:(IMPerfMeasurement_t *)finish withSink:(id)sink
{
  profilerCopy = profiler;
  sinkCopy = sink;
  v9 = sinkCopy;
  if (finish && finish->var6 > 0.001)
  {
    objc_msgSend_perfProfiler_measurementDidFinish_(sinkCopy, v8, profilerCopy, finish);
  }
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959AD2A4;
  block[3] = &unk_1E7438860;
  block[4] = self;
  if (qword_1EAED9028 != -1)
  {
    dispatch_once(&qword_1EAED9028, block);
  }

  v2 = qword_1EAED9020;

  return v2;
}

@end