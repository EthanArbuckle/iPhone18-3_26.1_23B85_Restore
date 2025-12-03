@interface BDSCloudSyncDiagnosticServiceClient
+ (id)sharedServiceProxy;
- (BDSCloudSyncDiagnosticServiceClient)init;
- (void)clearSyncMetadata:(id)metadata;
- (void)detachWithCompletionHandler:(id)handler;
- (void)diagnosticInfoWithCompletionHandler:(id)handler;
- (void)findLocalIdDupesWithCompletionHandler:(id)handler;
- (void)forceFetchRemoteChanges:(id)changes;
@end

@implementation BDSCloudSyncDiagnosticServiceClient

+ (id)sharedServiceProxy
{
  if (qword_1EE2B0498 != -1)
  {
    sub_1E4705FFC();
  }

  v3 = qword_1EE2B04C8;

  return v3;
}

- (BDSCloudSyncDiagnosticServiceClient)init
{
  v7.receiver = self;
  v7.super_class = BDSCloudSyncDiagnosticServiceClient;
  v2 = [(BDSCloudSyncDiagnosticServiceClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[BDSCloudSyncDiagnosticServiceClient sharedServiceProxy];
    serviceProxy = v3->_serviceProxy;
    v3->_serviceProxy = v4;
  }

  return v3;
}

- (void)clearSyncMetadata:(id)metadata
{
  metadataCopy = metadata;
  serviceProxy = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [serviceProxy clearSyncMetadata:metadataCopy];
}

- (void)forceFetchRemoteChanges:(id)changes
{
  changesCopy = changes;
  serviceProxy = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [serviceProxy forceFetchRemoteChanges:changesCopy];
}

- (void)detachWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [serviceProxy cloudSyncDiagnosticDetachWithCompletionHandler:handlerCopy];
}

- (void)findLocalIdDupesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [serviceProxy cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:handlerCopy];
}

- (void)diagnosticInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [serviceProxy cloudSyncDiagnosticInfoWithCompletionHandler:handlerCopy];
}

@end