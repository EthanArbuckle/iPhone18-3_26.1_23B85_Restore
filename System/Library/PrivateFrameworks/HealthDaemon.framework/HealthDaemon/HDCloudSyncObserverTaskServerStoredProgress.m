@interface HDCloudSyncObserverTaskServerStoredProgress
- (HDCloudSyncObserverTaskServerStoredProgress)init;
- (HDCloudSyncObserverTaskServerStoredProgress)initWithProgress:(id)a3;
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

- (HDCloudSyncObserverTaskServerStoredProgress)initWithProgress:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HDCloudSyncObserverTaskServerStoredProgress;
  v6 = [(HDCloudSyncObserverTaskServerStoredProgress *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, a3);
    invalidationBlock = v7->_invalidationBlock;
    v7->_invalidationBlock = 0;
  }

  return v7;
}

- (void)invalidate
{
  v3 = [(HDCloudSyncObserverTaskServerStoredProgress *)self invalidationBlock];

  if (v3)
  {
    v4 = [(HDCloudSyncObserverTaskServerStoredProgress *)self invalidationBlock];
    v4[2]();
  }
}

@end