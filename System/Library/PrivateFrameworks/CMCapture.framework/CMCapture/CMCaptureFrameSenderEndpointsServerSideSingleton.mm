@interface CMCaptureFrameSenderEndpointsServerSideSingleton
+ (BOOL)addEndpoint:(id)endpoint endpointUniqueID:(id)d endpointType:(id)type endpointPID:(int)iD endpointProxyPID:(int)pID endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)self0;
+ (BOOL)removeAllEndpointsWithPID:(int)d;
+ (BOOL)removeEndpointWithUniqueID:(id)d;
+ (NSDictionary)endpointsByPID;
+ (id)createXPCArrayOfFrameSenderEndpoints;
@end

@implementation CMCaptureFrameSenderEndpointsServerSideSingleton

+ (NSDictionary)endpointsByPID
{
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  endpointsByPID = [sServerSideEndpoints endpointsByPID];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return endpointsByPID;
}

+ (BOOL)addEndpoint:(id)endpoint endpointUniqueID:(id)d endpointType:(id)type endpointPID:(int)iD endpointProxyPID:(int)pID endpointAuditToken:(id)token endpointProxyAuditToken:(id)auditToken endpointCameraUniqueID:(id)self0
{
  v11 = *&pID;
  v12 = *&iD;
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  uniqueIDCopy = @"unknown";
  if (uniqueID)
  {
    uniqueIDCopy = uniqueID;
  }

  v17 = [sServerSideEndpoints addEndpoint:endpoint endpointUniqueID:d endpointType:type endpointPID:v12 endpointProxyPID:v11 endpointAuditToken:token endpointProxyAuditToken:auditToken endpointCameraUniqueID:uniqueIDCopy];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v17;
}

+ (BOOL)removeAllEndpointsWithPID:(int)d
{
  v3 = *&d;
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  v4 = [sServerSideEndpoints removeAllEndpointsWithPID:v3];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v4;
}

+ (BOOL)removeEndpointWithUniqueID:(id)d
{
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  v4 = [sServerSideEndpoints removeEndpointWithUniqueID:d];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v4;
}

+ (id)createXPCArrayOfFrameSenderEndpoints
{
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  createXPCArrayOfFrameSenderEndpoints = [sServerSideEndpoints createXPCArrayOfFrameSenderEndpoints];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return createXPCArrayOfFrameSenderEndpoints;
}

@end