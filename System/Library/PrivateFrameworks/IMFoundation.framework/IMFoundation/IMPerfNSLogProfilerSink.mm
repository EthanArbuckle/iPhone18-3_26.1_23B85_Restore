@interface IMPerfNSLogProfilerSink
+ (id)instance;
- (void)perfProfiler:(id)profiler measurementDidFinish:(IMPerfMeasurement_t *)finish;
@end

@implementation IMPerfNSLogProfilerSink

- (void)perfProfiler:(id)profiler measurementDidFinish:(IMPerfMeasurement_t *)finish
{
  if (finish)
  {
    var1 = finish->var1;
    var6 = finish->var6;
    v7 = IMFileLocationTrimFileName(finish);
    var2 = finish->var0.var2;
    NSLog(&cfstr_PerfIdLldEFFil.isa, var1, *&var6, v7, finish->var0.var4, var2, finish->var3);
  }
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959CDEE0;
  block[3] = &unk_1E7438860;
  block[4] = self;
  if (qword_1EAED9418 != -1)
  {
    dispatch_once(&qword_1EAED9418, block);
  }

  v2 = qword_1EAED9410;

  return v2;
}

@end