@interface IMPerfProfiler
+ (id)instance;
- (IMPerfProfiler)init;
- (void)addSink:(id)sink withBehavior:(id)behavior;
- (void)logMeasurement:(IMPerfMeasurement_t *)measurement;
@end

@implementation IMPerfProfiler

+ (id)instance
{
  if (qword_1EAED90D0 != -1)
  {
    sub_1959D5798();
  }

  v3 = qword_1EAED90C8;

  return v3;
}

- (IMPerfProfiler)init
{
  v13.receiver = self;
  v13.super_class = IMPerfProfiler;
  v2 = [(IMPerfProfiler *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sinks = v2->_sinks;
    v2->_sinks = v3;

    v7 = objc_msgSend_instance(IMPerfNSLogProfilerSink, v5, v6);
    v10 = objc_msgSend_instance(IMPerfProfilerDefaultBehavior, v8, v9);
    objc_msgSend_addSink_withBehavior_(v2, v11, v7, v10);
  }

  return v2;
}

- (void)addSink:(id)sink withBehavior:(id)behavior
{
  sinks = self->_sinks;
  behaviorCopy = behavior;
  sinkCopy = sink;
  v8 = [IMPerfSinkPair alloc];
  v11 = objc_msgSend_initWithBehavior_sink_(v8, v9, behaviorCopy, sinkCopy);

  objc_msgSend_addObject_(sinks, v10, v11);
}

- (void)logMeasurement:(IMPerfMeasurement_t *)measurement
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = selfCopy->_sinks;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_msgSend_behavior(v12, v7, v8, v19);
        v16 = objc_msgSend_sink(v12, v14, v15);
        objc_msgSend_perfProfiler_measurementDidFinish_withSink_(v13, v17, selfCopy, measurement, v16);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];
}

@end