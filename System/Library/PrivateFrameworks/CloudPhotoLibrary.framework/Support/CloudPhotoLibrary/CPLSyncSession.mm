@interface CPLSyncSession
- (CPLCloudKitRescheduler)cloudKitRescheduler;
- (void)createCloudKitReschedulerIfNecessary;
@end

@implementation CPLSyncSession

- (void)createCloudKitReschedulerIfNecessary
{
  if ([(CPLSyncSession *)self needsToAcquireRescheduler])
  {
    scheduler = [(CPLSyncSession *)self scheduler];
    engineLibrary = [scheduler engineLibrary];
    transport = [engineLibrary transport];
    platformObject = [transport platformObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [platformObject createReschedulerForSession:self];
      [(CPLSyncSession *)self setRescheduler:v6];
    }
  }
}

- (CPLCloudKitRescheduler)cloudKitRescheduler
{
  rescheduler = [(CPLSyncSession *)self rescheduler];
  v5 = rescheduler;
  if (rescheduler && ([rescheduler conformsToProtocol:&OBJC_PROTOCOL___CPLCloudKitRescheduler] & 1) == 0)
  {
    sub_100199D40(a2, self, v5);
  }

  return v5;
}

@end