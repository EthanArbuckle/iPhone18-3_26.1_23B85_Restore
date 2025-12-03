@interface HDCloudSyncObserverTaskServerStoredProgress
- (HDCloudSyncObserverTaskServerStoredProgress)init;
- (HDCloudSyncObserverTaskServerStoredProgress)initWithProgress:(id)progress;
- (void)invalidate;
@end

@implementation HDCloudSyncObserverTaskServerStoredProgress

- (HDCloudSyncObserverTaskServerStoredProgress)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncObserverTaskServerStoredProgress)initWithProgress:(id)progress
{
  progressCopy = progress;
  v10.receiver = self;
  v10.super_class = HDCloudSyncObserverTaskServerStoredProgress;
  v6 = [(HDCloudSyncObserverTaskServerStoredProgress *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, progress);
    invalidationBlock = v7->_invalidationBlock;
    v7->_invalidationBlock = 0;
  }

  return v7;
}

- (void)invalidate
{
  invalidationBlock = [(HDCloudSyncObserverTaskServerStoredProgress *)self invalidationBlock];

  if (invalidationBlock)
  {
    invalidationBlock2 = [(HDCloudSyncObserverTaskServerStoredProgress *)self invalidationBlock];
    invalidationBlock2[2]();
  }
}

@end