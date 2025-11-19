@interface CMCaptureFrameSenderEndpointsServerSideSingleton
+ (BOOL)addEndpoint:(id)a3 endpointUniqueID:(id)a4 endpointType:(id)a5 endpointPID:(int)a6 endpointProxyPID:(int)a7 endpointAuditToken:(id)a8 endpointProxyAuditToken:(id)a9 endpointCameraUniqueID:(id)a10;
+ (BOOL)removeAllEndpointsWithPID:(int)a3;
+ (BOOL)removeEndpointWithUniqueID:(id)a3;
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

  v2 = [sServerSideEndpoints endpointsByPID];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v2;
}

+ (BOOL)addEndpoint:(id)a3 endpointUniqueID:(id)a4 endpointType:(id)a5 endpointPID:(int)a6 endpointProxyPID:(int)a7 endpointAuditToken:(id)a8 endpointProxyAuditToken:(id)a9 endpointCameraUniqueID:(id)a10
{
  v11 = *&a7;
  v12 = *&a6;
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  v16 = @"unknown";
  if (a10)
  {
    v16 = a10;
  }

  v17 = [sServerSideEndpoints addEndpoint:a3 endpointUniqueID:a4 endpointType:a5 endpointPID:v12 endpointProxyPID:v11 endpointAuditToken:a8 endpointProxyAuditToken:a9 endpointCameraUniqueID:v16];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v17;
}

+ (BOOL)removeAllEndpointsWithPID:(int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  v4 = [sServerSideEndpoints removeAllEndpointsWithPID:v3];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v4;
}

+ (BOOL)removeEndpointWithUniqueID:(id)a3
{
  os_unfair_lock_lock(&sServerSideEndpointsLock);
  if (cfs_serverSideEndpoints_initServerSiderEndpoints != -1)
  {
    +[CMCaptureFrameSenderEndpointsServerSideSingleton endpointsByPID];
  }

  v4 = [sServerSideEndpoints removeEndpointWithUniqueID:a3];
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

  v2 = [sServerSideEndpoints createXPCArrayOfFrameSenderEndpoints];
  os_unfair_lock_unlock(&sServerSideEndpointsLock);
  return v2;
}

@end