@interface MTSystem
- (MTEventFilter)eventFilter;
- (MTEventFilter)treatmentFilter;
- (MTSystem)initWithMetricsKit:(id)kit;
- (OS_dispatch_queue)queue;
- (void)setEventFilterWithJavaScriptFunction:(id)function context:(id)context operationQueue:(id)queue;
@end

@implementation MTSystem

- (MTSystem)initWithMetricsKit:(id)kit
{
  v11.receiver = self;
  v11.super_class = MTSystem;
  v3 = [(MTObject *)&v11 initWithMetricsKit:kit];
  if (v3)
  {
    v4 = [MTEnvironment alloc];
    metricsKit = [(MTObject *)v3 metricsKit];
    v6 = [(MTObject *)v4 initWithMetricsKit:metricsKit];
    [(MTSystem *)v3 setEnvironment:v6];

    v7 = [MTEventRecorder alloc];
    metricsKit2 = [(MTObject *)v3 metricsKit];
    v9 = [(MTEventRecorder *)v7 initWithMetricsKit:metricsKit2];
    [(MTSystem *)v3 setEventRecorder:v9];
  }

  return v3;
}

- (MTEventFilter)eventFilter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_eventFilter)
  {
    v3 = [MTFinalValidationFilter alloc];
    metricsKit = [(MTObject *)selfCopy metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:metricsKit];

    [(MTFinalValidationFilter *)v5 setShouldApplyDeRes:1];
    eventFilter = selfCopy->_eventFilter;
    selfCopy->_eventFilter = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_eventFilter;

  return v7;
}

- (MTEventFilter)treatmentFilter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_treatmentFilter)
  {
    v3 = [MTConstraintTreatmentFilter alloc];
    metricsKit = [(MTObject *)selfCopy metricsKit];
    v5 = [(MTObject *)v3 initWithMetricsKit:metricsKit];

    treatmentFilter = selfCopy->_treatmentFilter;
    selfCopy->_treatmentFilter = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_treatmentFilter;

  return v7;
}

- (OS_dispatch_queue)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (!queue)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = +[MTFrameworkEnvironment sharedEnvironment];
    metricsKitBundleIdentifier = [v5 metricsKitBundleIdentifier];
    metricsKit = [(MTObject *)selfCopy metricsKit];
    topic = [metricsKit topic];
    v9 = [v4 stringWithFormat:@"%@.%@", metricsKitBundleIdentifier, topic];

    v10 = dispatch_queue_create([v9 UTF8String], 0);
    v11 = selfCopy->_queue;
    selfCopy->_queue = v10;

    queue = selfCopy->_queue;
  }

  v12 = queue;
  objc_sync_exit(selfCopy);

  return v12;
}

- (void)setEventFilterWithJavaScriptFunction:(id)function context:(id)context operationQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  functionCopy = function;
  v11 = [[MTJSContextEventFilter alloc] initWithJSContext:contextCopy functionName:functionCopy operationQueue:queueCopy];

  [(MTSystem *)self setEventFilter:v11];
}

@end