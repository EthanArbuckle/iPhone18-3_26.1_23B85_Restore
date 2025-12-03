@interface NTKDCompanionGalleryFacesCurator
+ (id)sharedInstance;
- (NTKDCompanionGalleryFacesCurator)init;
- (id)_collectionIdentifier;
- (id)_getVersionAppropriateFacesForStore:(id)store;
- (void)_addFacesToStore:(id)store;
- (void)_removeAllFacesFromStore:(id)store;
- (void)curateCollectionStore:(id)store completion:(id)completion;
@end

@implementation NTKDCompanionGalleryFacesCurator

+ (id)sharedInstance
{
  if (qword_100066B40 != -1)
  {
    sub_10003DCAC();
  }

  v2 = qword_100066B38;
  objc_sync_enter(v2);
  v3 = qword_100066B38;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(objc_opt_class());
    v7 = qword_100066B38;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setObject:v6 forKeyedSubscript:v9];
  }

  objc_sync_exit(v2);

  return v6;
}

- (NTKDCompanionGalleryFacesCurator)init
{
  v6.receiver = self;
  v6.super_class = NTKDCompanionGalleryFacesCurator;
  v2 = [(NTKDCompanionGalleryFacesCurator *)&v6 init];
  if (v2)
  {
    v3 = +[NTKDCollectionCoordinator sharedInstance];
    _collectionIdentifier = [(NTKDCompanionGalleryFacesCurator *)v2 _collectionIdentifier];
    [v3 registerCurator:v2 forCollectionIdentifier:_collectionIdentifier];
  }

  return v2;
}

- (void)curateCollectionStore:(id)store completion:(id)completion
{
  storeCopy = store;
  completionCopy = completion;
  if (![storeCopy isInitialSetupComplete] || (objc_msgSend(storeCopy, "isEmpty") & 1) != 0 || objc_msgSend(storeCopy, "isBuildVersionOutdated"))
  {
    [(NTKDCompanionGalleryFacesCurator *)self _removeAllFacesFromStore:storeCopy];
    [(NTKDCompanionGalleryFacesCurator *)self _addFacesToStore:storeCopy];
    [storeCopy persistCurrentBuildVersion];
    [storeCopy markInitialSetupComplete];
  }

  completionCopy[2](completionCopy);
}

- (void)_removeAllFacesFromStore:(id)store
{
  storeCopy = store;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  orderedUUIDs = [storeCopy orderedUUIDs];
  v5 = [orderedUUIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(orderedUUIDs);
        }

        [storeCopy removeFaceForUUID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [orderedUUIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addFacesToStore:(id)store
{
  storeCopy = store;
  v5 = [(NTKDCompanionGalleryFacesCurator *)self _getVersionAppropriateFacesForStore:storeCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = +[NSUUID UUID];
        [storeCopy addFace:v10 forUUID:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)_getVersionAppropriateFacesForStore:(id)store
{
  storeCopy = store;
  deviceUUID = [storeCopy deviceUUID];
  v6 = [CLKDevice deviceForPairingID:deviceUUID];

  if ([v6 supportsPDRCapability:2919474315])
  {
    v7 = [(NTKDCompanionGalleryFacesCurator *)self _hunterDefaultFacesForStore:storeCopy];
  }

  else if ([v6 supportsPDRCapability:3503302961])
  {
    v7 = [(NTKDCompanionGalleryFacesCurator *)self _graceFDefaultFacesForStore:storeCopy];
  }

  else if ([v6 supportsPDRCapability:753405533])
  {
    v7 = [(NTKDCompanionGalleryFacesCurator *)self _graceEDefaultFacesForStore:storeCopy];
  }

  else if ([v6 pdrDeviceVersion] <= 0x5FFFF)
  {
    if ([v6 pdrDeviceVersion] <= 0x50200)
    {
      if ([v6 pdrDeviceVersion] <= 0x501FF)
      {
        if ([v6 pdrDeviceVersion] <= 0x500FF)
        {
          if ([v6 pdrDeviceVersion] <= 0x4FFFF)
          {
            [(NTKDCompanionGalleryFacesCurator *)self _legacyDefaultFacesForStore:storeCopy];
          }

          else
          {
            [(NTKDCompanionGalleryFacesCurator *)self _gloryDefaultFacesForStore:storeCopy];
          }
          v7 = ;
        }

        else
        {
          v7 = [(NTKDCompanionGalleryFacesCurator *)self _gloryBDefaultFacesForStore:storeCopy];
        }
      }

      else
      {
        v7 = [(NTKDCompanionGalleryFacesCurator *)self _gloryEDefaultFacesForStore:storeCopy];
      }
    }

    else
    {
      v7 = [(NTKDCompanionGalleryFacesCurator *)self _gloryFDefaultFacesForStore:storeCopy];
    }
  }

  else
  {
    v7 = [(NTKDCompanionGalleryFacesCurator *)self _graceDefaultFacesForStore:storeCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_collectionIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end