@interface NTKCompanionFaceCollectionsManager
+ (id)sharedInstance;
- (NTKCompanionFaceCollectionsManager)init;
- (id)sharedFaceCollectionForDevice:(id)a3 forCollectionIdentifier:(id)a4;
- (id)sharedLibraryFaceCollectionsForAllDevices;
- (void)_handlePairedDeviceDidChangeVersionNotification;
- (void)dealloc;
@end

@implementation NTKCompanionFaceCollectionsManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_27 != -1)
  {
    +[NTKCompanionFaceCollectionsManager sharedInstance];
  }

  v3 = sharedInstance_singleton_0;

  return v3;
}

void __52__NTKCompanionFaceCollectionsManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_singleton_0;
  sharedInstance_singleton_0 = v0;
}

- (NTKCompanionFaceCollectionsManager)init
{
  v14.receiver = self;
  v14.super_class = NTKCompanionFaceCollectionsManager;
  v2 = [(NTKCompanionFaceCollectionsManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    lock_activeDeviceUUID = v2->_lock_activeDeviceUUID;
    v2->_lock_activeDeviceUUID = 0;

    v5 = objc_opt_new();
    lock_faceCollectionsForCollectionIdentifier = v3->_lock_faceCollectionsForCollectionIdentifier;
    v3->_lock_faceCollectionsForCollectionIdentifier = v5;

    objc_initWeak(&location, v3);
    v7 = [MEMORY[0x277D37B40] pairedDeviceDidChangeVersion];
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__NTKCompanionFaceCollectionsManager_init__block_invoke;
    v11[3] = &unk_27877E868;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch(v7, &v3->_pairedDeviceVersionChangeNotificationToken, v8, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __42__NTKCompanionFaceCollectionsManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePairedDeviceDidChangeVersionNotification];
}

- (void)dealloc
{
  notify_cancel(self->_pairedDeviceVersionChangeNotificationToken);
  v3.receiver = self;
  v3.super_class = NTKCompanionFaceCollectionsManager;
  [(NTKCompanionFaceCollectionsManager *)&v3 dealloc];
}

- (void)_handlePairedDeviceDidChangeVersionNotification
{
  os_unfair_lock_lock(&self->_lock);
  lock_activeDeviceUUID = self->_lock_activeDeviceUUID;
  self->_lock_activeDeviceUUID = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"com.apple.nanotimekit.CompanionFaceCollectionsDidChangeNotification" object:0];
}

- (id)sharedFaceCollectionForDevice:(id)a3 forCollectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v6 pairingID];
  if (([v8 isEqual:self->_lock_activeDeviceUUID] & 1) == 0)
  {
    objc_storeStrong(&self->_lock_activeDeviceUUID, v8);
    [(NSMutableDictionary *)self->_lock_faceCollectionsForCollectionIdentifier removeAllObjects];
  }

  v9 = [v6 pdrDevice];
  if (v8 && ([MEMORY[0x277CBBAE8] PDRDeviceIsRunningDaytonaOrLater:v9] & 1) != 0)
  {
  }

  else
  {
    v10 = [v7 isEqualToString:@"LibraryFaces"];

    if (v10)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_lock_faceCollectionsForCollectionIdentifier objectForKeyedSubscript:v7];
  if (!v11)
  {
    v11 = [[NTKPersistentFaceCollection alloc] initWithCollectionIdentifier:v7 deviceUUID:self->_lock_activeDeviceUUID];
    [(NSMutableDictionary *)self->_lock_faceCollectionsForCollectionIdentifier setObject:v11 forKeyedSubscript:v7];
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (id)sharedLibraryFaceCollectionsForAllDevices
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277D37B50] sharedInstance];
  v2 = [v14 devices];
  v3 = [v2 all];

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBBAE8] CLKDeviceUUIDForPDRDevice:v10];
        if (v11 && [MEMORY[0x277CBBAE8] PDRDeviceIsRunningDaytonaOrLater:v10])
        {
          v12 = [[NTKPersistentFaceCollection alloc] initWithCollectionIdentifier:@"LibraryFaces" deviceUUID:v11];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end