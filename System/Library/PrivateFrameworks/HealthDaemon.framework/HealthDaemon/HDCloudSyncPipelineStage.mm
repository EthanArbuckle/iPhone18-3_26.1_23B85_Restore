@interface HDCloudSyncPipelineStage
- (HDCloudSyncPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state;
- (id)pipelineStageIgnoringErrors;
@end

@implementation HDCloudSyncPipelineStage

- (HDCloudSyncPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncPipelineStage;
  result = [(HDCloudSyncOperation *)&v5 initWithConfiguration:configuration cloudState:state];
  if (result)
  {
    result->_criticalFailureOnError = 1;
    result->_expectedSendSize = 1;
    result->_expectedReceiveSize = 1;
  }

  return result;
}

- (id)pipelineStageIgnoringErrors
{
  v3 = [HDCloudSyncIgnoredErrorsPipelineStage alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncIgnoredErrorsPipelineStage *)v3 initWithConfiguration:configuration cloudState:cloudState stage:self];

  return v6;
}

@end