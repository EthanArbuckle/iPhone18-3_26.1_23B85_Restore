@interface _NTKDeviceSyncedAlbumObserver
- (_NTKDeviceSyncedAlbumObserver)initWithDevice:(id)device;
- (void)_startObserving;
- (void)_stopObserving;
- (void)addObserver:(id)observer;
- (void)collectionTargetLibraryDidUpdate:(id)update;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation _NTKDeviceSyncedAlbumObserver

- (_NTKDeviceSyncedAlbumObserver)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = _NTKDeviceSyncedAlbumObserver;
  v6 = [(_NTKDeviceSyncedAlbumObserver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    v7->_lock._os_unfair_lock_opaque = 0;
    syncedAlbumName = v7->_syncedAlbumName;
    v7->_syncedAlbumName = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(NPTOCollectionTargetLibrary *)self->_library removeObserver:self];
  v3.receiver = self;
  v3.super_class = _NTKDeviceSyncedAlbumObserver;
  [(_NTKDeviceSyncedAlbumObserver *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
    [(_NTKDeviceSyncedAlbumObserver *)self _startObserving];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  [(_NTKDeviceSyncedAlbumObserver *)self _stopObserving];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_startObserving
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  if (![allObjects count])
  {
    goto LABEL_5;
  }

  library = self->_library;

  if (library)
  {
    return;
  }

  v4 = [objc_alloc(MEMORY[0x277D2BA48]) initWithCollectionTarget:1 device:self->_device];
  v5 = self->_library;
  self->_library = v4;

  [(NPTOCollectionTargetLibrary *)self->_library addObserver:self];
  assetCollections = [(NPTOCollectionTargetLibrary *)self->_library assetCollections];
  allObjects = [assetCollections anyObject];

  v7 = allObjects;
  if (allObjects)
  {
    v8 = _NTKTrueAlbumNameForAssetCollection(allObjects);
    syncedAlbumName = self->_syncedAlbumName;
    self->_syncedAlbumName = v8;

LABEL_5:
    v7 = allObjects;
  }
}

- (void)_stopObserving
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects count];

  if (!v4)
  {
    [(NPTOCollectionTargetLibrary *)self->_library removeObserver:self];
    library = self->_library;
    self->_library = 0;

    syncedAlbumName = self->_syncedAlbumName;
    self->_syncedAlbumName = 0;
  }
}

- (void)collectionTargetLibraryDidUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  os_unfair_lock_lock(&self->_lock);
  library = self->_library;
  if (library == updateCopy)
  {
    assetCollections = [(NPTOCollectionTargetLibrary *)library assetCollections];
    anyObject = [assetCollections anyObject];

    syncedAlbumName = self->_syncedAlbumName;
    self->_syncedAlbumName = 0;

    if (anyObject)
    {
      v9 = _NTKTrueAlbumNameForAssetCollection(anyObject);
      v10 = self->_syncedAlbumName;
      self->_syncedAlbumName = v9;
    }

    v11 = MEMORY[0x277CBEA60];
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v13 = [v11 arrayWithArray:allObjects];

    os_unfair_lock_unlock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) photoAlbumChanged];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

@end