@interface HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask
- (HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask)initWithDaemon:(id)a3;
- (void)main;
@end

@implementation HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask

- (HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCloudSyncManagerDiscardCachedOwnerIdentifiersTask;
  v5 = [(HDCloudSyncManagerTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
  }

  return v6;
}

- (void)main
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v4 = [WeakRetained profileManager];
  v5 = [v4 allProfileIdentifiers];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_loadWeakRetained(&self->_daemon);
        v12 = [v11 profileManager];
        v13 = [v12 profileForIdentifier:v10];

        v14 = [v13 cloudSyncManager];
        v15 = [v14 ownerIdentifierManager];
        [v15 discardCachedIdentifiers];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(HDCloudSyncManagerTask *)self finish];
  v16 = *MEMORY[0x277D85DE8];
}

@end