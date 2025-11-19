@interface HDCloudSyncPipelineStage
- (HDCloudSyncPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (id)pipelineStageIgnoringErrors;
@end

@implementation HDCloudSyncPipelineStage

- (HDCloudSyncPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5.receiver = self;
  v5.super_class = HDCloudSyncPipelineStage;
  result = [(HDCloudSyncOperation *)&v5 initWithConfiguration:a3 cloudState:a4];
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
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncIgnoredErrorsPipelineStage *)v3 initWithConfiguration:v4 cloudState:v5 stage:self];

  return v6;
}

@end