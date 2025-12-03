@interface HDCloudSyncManagerAcceptSharesTask
- (HDCloudSyncManagerAcceptSharesTask)initWithManager:(id)manager context:(id)context shareSetupMetadata:(id)metadata accessibilityAssertion:(id)assertion completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerAcceptSharesTask

- (HDCloudSyncManagerAcceptSharesTask)initWithManager:(id)manager context:(id)context shareSetupMetadata:(id)metadata accessibilityAssertion:(id)assertion completion:(id)completion
{
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = HDCloudSyncManagerAcceptSharesTask;
  v14 = [(HDCloudSyncManagerPipelineTask *)&v17 initWithManager:manager context:context accessibilityAssertion:assertion completion:completion];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shareSetupMetadata, metadata);
  }

  return v15;
}

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  v5 = [HDCloudSyncPipeline alloc];
  context = [(HDCloudSyncManagerRepositoryTask *)self context];
  accessibilityAssertion = [(HDCloudSyncManagerPipelineTask *)self accessibilityAssertion];
  manager = [(HDCloudSyncManagerRepositoryTask *)self manager];
  queue = [manager queue];
  v10 = [(HDCloudSyncPipeline *)v5 initForContext:context repository:repositoryCopy accessibilityAssertion:accessibilityAssertion queue:queue];

  operationGroup = [v10 operationGroup];
  defaultConfiguration = [operationGroup defaultConfiguration];
  [defaultConfiguration setQualityOfService:17];

  v13 = [HDCloudSyncAcceptSharesOperation alloc];
  operationConfiguration = [v10 operationConfiguration];
  shareURLs = [(HDCloudSyncShareSetupMetadata *)self->_shareSetupMetadata shareURLs];
  invitationTokensByShareURL = [(HDCloudSyncShareSetupMetadata *)self->_shareSetupMetadata invitationTokensByShareURL];
  v17 = [(HDCloudSyncAcceptSharesOperation *)v13 initWithConfiguration:operationConfiguration cloudState:0 shareURLs:shareURLs invitationTokensByShareURL:invitationTokensByShareURL];
  acceptSharesOperation = self->_acceptSharesOperation;
  self->_acceptSharesOperation = v17;

  asPipelineStage = [(HDCloudSyncOperation *)self->_acceptSharesOperation asPipelineStage];
  [v10 addStage:asPipelineStage];

  return v10;
}

@end