@interface HDCloudSyncOperationPipelineStage
- (HDCloudSyncOperationPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncOperationPipelineStage)initWithOperation:(id)operation;
- (id)description;
@end

@implementation HDCloudSyncOperationPipelineStage

- (HDCloudSyncOperationPipelineStage)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncOperationPipelineStage)initWithOperation:(id)operation
{
  operationCopy = operation;
  configuration = [operationCopy configuration];
  cloudState = [operationCopy cloudState];
  v10.receiver = self;
  v10.super_class = HDCloudSyncOperationPipelineStage;
  v8 = [(HDCloudSyncPipelineStage *)&v10 initWithConfiguration:configuration cloudState:cloudState];

  if (v8)
  {
    objc_storeStrong(&v8->_operation, operation);
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  operation = [(HDCloudSyncOperationPipelineStage *)self operation];
  v4 = [v2 stringWithFormat:@"[Wrap: %@]", operation];

  return v4;
}

@end