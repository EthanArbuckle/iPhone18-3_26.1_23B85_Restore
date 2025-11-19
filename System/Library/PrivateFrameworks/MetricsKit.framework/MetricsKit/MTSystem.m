@interface MTSystem
- (MTEventFilter)eventFilter;
- (MTEventFilter)treatmentFilter;
- (MTSystem)initWithMetricsKit:(id)a3;
- (OS_dispatch_queue)queue;
- (void)setEventFilterWithJavaScriptFunction:(id)a3 context:(id)a4 operationQueue:(id)a5;
@end

@implementation MTSystem

- (MTSystem)initWithMetricsKit:(id)a3
{
  v11.receiver = self;
  v11.super_class = MTSystem;
  v3 = [(MTObject *)&v11 initWithMetricsKit:a3];
  if (v3)
  {
    v4 = [MTEnvironment alloc];
    v5 = [(MTObject *)v3 metricsKit];
    v6 = [(MTObject *)v4 initWithMetricsKit:v5];
    [(MTSystem *)v3 setEnvironment:v6];

    v7 = [MTEventRecorder alloc];
    v8 = [(MTObject *)v3 metricsKit];
    v9 = [(MTEventRecorder *)v7 initWithMetricsKit:v8];
    [(MTSystem *)v3 setEventRecorder:v9];
  }

  return v3;
}

- (MTEventFilter)eventFilter
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_eventFilter)
  {
    v3 = [MTFinalValidationFilter alloc];
    v4 = [(MTObject *)v2 metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:v4];

    [(MTFinalValidationFilter *)v5 setShouldApplyDeRes:1];
    eventFilter = v2->_eventFilter;
    v2->_eventFilter = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_eventFilter;

  return v7;
}

- (MTEventFilter)treatmentFilter
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_treatmentFilter)
  {
    v3 = [MTConstraintTreatmentFilter alloc];
    v4 = [(MTObject *)v2 metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:v4];

    treatmentFilter = v2->_treatmentFilter;
    v2->_treatmentFilter = v5;
  }

  objc_sync_exit(v2);

  v7 = v2->_treatmentFilter;

  return v7;
}

- (OS_dispatch_queue)queue
{
  v2 = self;
  objc_sync_enter(v2);
  queue = v2->_queue;
  if (!queue)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = +[MTFrameworkEnvironment sharedEnvironment];
    v6 = [v5 metricsKitBundleIdentifier];
    v7 = [(MTObject *)v2 metricsKit];
    v8 = [v7 topic];
    v9 = [v4 stringWithFormat:@"%@.%@", v6, v8];

    v10 = dispatch_queue_create([v9 UTF8String], 0);
    v11 = v2->_queue;
    v2->_queue = v10;

    queue = v2->_queue;
  }

  v12 = queue;
  objc_sync_exit(v2);

  return v12;
}

- (void)setEventFilterWithJavaScriptFunction:(id)a3 context:(id)a4 operationQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MTJSContextEventFilter alloc] initWithJSContext:v9 functionName:v10 operationQueue:v8];

  [(MTSystem *)self setEventFilter:v11];
}

@end