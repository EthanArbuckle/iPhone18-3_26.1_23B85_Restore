@interface BDSCloudSyncDiagnosticServiceClient
+ (id)sharedServiceProxy;
- (BDSCloudSyncDiagnosticServiceClient)init;
- (void)clearSyncMetadata:(id)a3;
- (void)detachWithCompletionHandler:(id)a3;
- (void)diagnosticInfoWithCompletionHandler:(id)a3;
- (void)findLocalIdDupesWithCompletionHandler:(id)a3;
- (void)forceFetchRemoteChanges:(id)a3;
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

- (void)clearSyncMetadata:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [v5 clearSyncMetadata:v4];
}

- (void)forceFetchRemoteChanges:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [v5 forceFetchRemoteChanges:v4];
}

- (void)detachWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [v5 cloudSyncDiagnosticDetachWithCompletionHandler:v4];
}

- (void)findLocalIdDupesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [v5 cloudSyncDiagnosticFindLocalIdDupesWithCompletionHandler:v4];
}

- (void)diagnosticInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticServiceClient *)self serviceProxy];
  [v5 cloudSyncDiagnosticInfoWithCompletionHandler:v4];
}

@end