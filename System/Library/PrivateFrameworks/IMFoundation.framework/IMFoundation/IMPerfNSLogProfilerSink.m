@interface IMPerfNSLogProfilerSink
+ (id)instance;
- (void)perfProfiler:(id)a3 measurementDidFinish:(IMPerfMeasurement_t *)a4;
@end

@implementation IMPerfNSLogProfilerSink

- (void)perfProfiler:(id)a3 measurementDidFinish:(IMPerfMeasurement_t *)a4
{
  if (a4)
  {
    var1 = a4->var1;
    var6 = a4->var6;
    v7 = IMFileLocationTrimFileName(a4);
    var2 = a4->var0.var2;
    NSLog(&cfstr_PerfIdLldEFFil.isa, var1, *&var6, v7, a4->var0.var4, var2, a4->var3);
  }
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959CDEE0;
  block[3] = &unk_1E7438860;
  block[4] = a1;
  if (qword_1EAED9418 != -1)
  {
    dispatch_once(&qword_1EAED9418, block);
  }

  v2 = qword_1EAED9410;

  return v2;
}

@end