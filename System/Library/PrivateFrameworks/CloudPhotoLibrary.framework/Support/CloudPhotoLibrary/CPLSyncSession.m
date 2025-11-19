@interface CPLSyncSession
- (CPLCloudKitRescheduler)cloudKitRescheduler;
- (void)createCloudKitReschedulerIfNecessary;
@end

@implementation CPLSyncSession

- (void)createCloudKitReschedulerIfNecessary
{
  if ([(CPLSyncSession *)self needsToAcquireRescheduler])
  {
    v3 = [(CPLSyncSession *)self scheduler];
    v4 = [v3 engineLibrary];
    v5 = [v4 transport];
    v7 = [v5 platformObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v7 createReschedulerForSession:self];
      [(CPLSyncSession *)self setRescheduler:v6];
    }
  }
}

- (CPLCloudKitRescheduler)cloudKitRescheduler
{
  v4 = [(CPLSyncSession *)self rescheduler];
  v5 = v4;
  if (v4 && ([v4 conformsToProtocol:&OBJC_PROTOCOL___CPLCloudKitRescheduler] & 1) == 0)
  {
    sub_100199D40(a2, self, v5);
  }

  return v5;
}

@end