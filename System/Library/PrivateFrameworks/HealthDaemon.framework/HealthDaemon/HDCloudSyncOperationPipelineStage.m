@interface HDCloudSyncOperationPipelineStage
- (HDCloudSyncOperationPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncOperationPipelineStage)initWithOperation:(id)a3;
- (id)description;
@end

@implementation HDCloudSyncOperationPipelineStage

- (HDCloudSyncOperationPipelineStage)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncOperationPipelineStage)initWithOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 configuration];
  v7 = [v5 cloudState];
  v10.receiver = self;
  v10.super_class = HDCloudSyncOperationPipelineStage;
  v8 = [(HDCloudSyncPipelineStage *)&v10 initWithConfiguration:v6 cloudState:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_operation, a3);
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HDCloudSyncOperationPipelineStage *)self operation];
  v4 = [v2 stringWithFormat:@"[Wrap: %@]", v3];

  return v4;
}

@end