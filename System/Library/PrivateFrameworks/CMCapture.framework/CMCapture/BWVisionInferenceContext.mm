@interface BWVisionInferenceContext
+ (double)processingTimeoutInSeconds;
- (BWVisionInferenceContext)initWithScheduler:(id)scheduler;
- (int)prepareForInference;
- (void)dealloc;
@end

@implementation BWVisionInferenceContext

+ (double)processingTimeoutInSeconds
{
  if (FigCaptureCurrentProcessIsDeferredmediad() && qos_class_self() < QOS_CLASS_USER_INITIATED)
  {
    return 30.0;
  }

  [self defaultTimeoutInSeconds];
  return result;
}

- (BWVisionInferenceContext)initWithScheduler:(id)scheduler
{
  v7.receiver = self;
  v7.super_class = BWVisionInferenceContext;
  v4 = [(BWVisionInferenceContext *)&v7 init];
  if (v4 && !atomic_fetch_add(numberOfOutstandingContexts, 1u))
  {
    [objc_opt_class() processingTimeoutInSeconds];
    BWVNSetRequestConcurrentTasksProcessingTimeout((v5 * 1000000000.0));
    BWVNSetRequiresHighQoS(0);
    BWVNSetTargetDispatchQueue([scheduler transientInferenceQueue]);
  }

  return v4;
}

- (void)dealloc
{
  if (atomic_fetch_add(numberOfOutstandingContexts, 0xFFFFFFFF) == 1)
  {
    [getVNSequenceRequestHandlerClass() forcedCleanup];
    BWVNSetRequestConcurrentTasksProcessingTimeout(0);
    BWVNSetRequiresHighQoS(0);
    BWVNSetTargetDispatchQueue(0);
  }

  v3.receiver = self;
  v3.super_class = BWVisionInferenceContext;
  [(BWVisionInferenceContext *)&v3 dealloc];
}

- (int)prepareForInference
{
  if ([(BWVisionInferenceContext *)self isPrepared])
  {
    return 0;
  }

  v3 = objc_alloc_init(getVNSequenceRequestHandlerClass());
  self->_sequenceRequestHandler = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return -31702;
  }
}

@end