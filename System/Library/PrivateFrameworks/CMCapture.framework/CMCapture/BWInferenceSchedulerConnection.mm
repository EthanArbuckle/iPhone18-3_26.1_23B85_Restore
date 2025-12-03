@interface BWInferenceSchedulerConnection
- (BWInferenceSchedulerConnection)initWithInferenceTargetQueue:(id)queue scalingTargetQueue:(id)targetQueue submissionTargetQueue:(id)submissionTargetQueue completionTargetQueue:(id)completionTargetQueue engineDescription:(id)description;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerConnection

- (BWInferenceSchedulerConnection)initWithInferenceTargetQueue:(id)queue scalingTargetQueue:(id)targetQueue submissionTargetQueue:(id)submissionTargetQueue completionTargetQueue:(id)completionTargetQueue engineDescription:(id)description
{
  v15.receiver = self;
  v15.super_class = BWInferenceSchedulerConnection;
  v12 = [(BWInferenceSchedulerConnection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_identifier = atomic_fetch_add(&nextIdentifier, 1uLL);
    v12->_engineDescription = description;
    v13->_coordinator = objc_alloc_init(BWInferenceSchedulerResourceCoordinator);
    v13->_inferenceQueue = dispatch_queue_create_with_target_V2("com.apple.coremedia.inference-connection.inference", 0, queue);
    v13->_scalingQueue = dispatch_queue_create_with_target_V2("com.apple.coremedia.inference-connection.scaling", 0, targetQueue);
    v13->_submissionQueue = dispatch_queue_create_with_target_V2("com.apple.coremedia.inference-connection.submission", 0, submissionTargetQueue);
    v13->_completionQueue = dispatch_queue_create_with_target_V2("com.apple.coremedia.inference-connection.submission", 0, completionTargetQueue);
    v13->_coordinationGroup = dispatch_group_create();
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerConnection;
  [(BWInferenceSchedulerConnection *)&v3 dealloc];
}

@end