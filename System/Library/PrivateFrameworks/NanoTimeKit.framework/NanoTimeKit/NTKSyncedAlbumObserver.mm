@interface NTKSyncedAlbumObserver
+ (id)sharedInstance;
- (NTKSyncedAlbumObserver)init;
- (id)syncedAlbumNameForDevice:(id)device;
- (void)addObserver:(id)observer forDevice:(id)device;
- (void)removeObserver:(id)observer forDevice:(id)device;
@end

@implementation NTKSyncedAlbumObserver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[NTKSyncedAlbumObserver sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __40__NTKSyncedAlbumObserver_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;
}

- (NTKSyncedAlbumObserver)init
{
  v6.receiver = self;
  v6.super_class = NTKSyncedAlbumObserver;
  v2 = [(NTKSyncedAlbumObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceAlbumObservers = v2->_deviceAlbumObservers;
    v2->_deviceAlbumObservers = v3;

    v2->_observersLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)addObserver:(id)observer forDevice:(id)device
{
  observerCopy = observer;
  deviceCopy = device;
  pairingID = [deviceCopy pairingID];
  if (pairingID)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v8 = [(NSMutableDictionary *)self->_deviceAlbumObservers objectForKey:pairingID];
    if (!v8)
    {
      v9 = [_NTKDeviceSyncedAlbumObserver alloc];
      nrDevice = [deviceCopy nrDevice];
      v8 = [(_NTKDeviceSyncedAlbumObserver *)v9 initWithDevice:nrDevice];

      [(NSMutableDictionary *)self->_deviceAlbumObservers setObject:v8 forKey:pairingID];
    }

    os_unfair_lock_unlock(&self->_observersLock);
    [(_NTKDeviceSyncedAlbumObserver *)v8 addObserver:observerCopy];
  }
}

- (void)removeObserver:(id)observer forDevice:(id)device
{
  observerCopy = observer;
  pairingID = [device pairingID];
  if (pairingID)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v7 = [(NSMutableDictionary *)self->_deviceAlbumObservers objectForKey:pairingID];
    os_unfair_lock_unlock(&self->_observersLock);
    [v7 removeObserver:observerCopy];
  }
}

- (id)syncedAlbumNameForDevice:(id)device
{
  pairingID = [device pairingID];
  if (pairingID)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v5 = [(NSMutableDictionary *)self->_deviceAlbumObservers objectForKey:pairingID];
    os_unfair_lock_unlock(&self->_observersLock);
    if (v5)
    {
      syncedAlbumName = [v5 syncedAlbumName];
    }

    else
    {
      syncedAlbumName = 0;
    }
  }

  else
  {
    syncedAlbumName = 0;
  }

  if (syncedAlbumName)
  {
    v7 = syncedAlbumName;
  }

  else
  {
    v7 = &stru_284110E98;
  }

  v8 = v7;

  return v7;
}

@end