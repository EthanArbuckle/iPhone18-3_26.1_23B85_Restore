@interface IMPerfProfilerDefaultBehavior
+ (id)instance;
- (void)perfProfiler:(id)a3 measurementDidFinish:(IMPerfMeasurement_t *)a4 withSink:(id)a5;
@end

@implementation IMPerfProfilerDefaultBehavior

- (void)perfProfiler:(id)a3 measurementDidFinish:(IMPerfMeasurement_t *)a4 withSink:(id)a5
{
  v10 = a3;
  v7 = a5;
  v9 = v7;
  if (a4 && a4->var6 > 0.001)
  {
    objc_msgSend_perfProfiler_measurementDidFinish_(v7, v8, v10, a4);
  }
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959AD2A4;
  block[3] = &unk_1E7438860;
  block[4] = a1;
  if (qword_1EAED9028 != -1)
  {
    dispatch_once(&qword_1EAED9028, block);
  }

  v2 = qword_1EAED9020;

  return v2;
}

@end