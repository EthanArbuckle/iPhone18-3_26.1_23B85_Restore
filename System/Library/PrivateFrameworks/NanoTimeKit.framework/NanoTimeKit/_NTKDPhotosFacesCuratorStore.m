@interface _NTKDPhotosFacesCuratorStore
+ (id)complications;
- (BOOL)_queue_facePhoto:(id)a3 isUpToDateWith:(id)a4;
- (_NTKDPhotosFacesCuratorStore)initWithStore:(id)a3;
- (id)_queue_createPhotosFaceWithContent:(unint64_t)a3;
- (id)_queue_curatePhotosFaceFromAsset:(id)a3 forFaceUUID:(id)a4 andContent:(unint64_t)a5;
- (id)_queue_syncedAlbumOptions;
- (void)_queue_insertInOrderedUUIDs:(id)a3 atIndex:(unint64_t)a4;
- (void)_queue_setStoreDataForStore:(id)a3;
- (void)_queue_setSyncedAlbumDataForStore:(id)a3;
- (void)_queue_syncStoreWithSyncedAlbum;
- (void)collectionTargetLibraryDidUpdate:(id)a3;
- (void)dealloc;
- (void)initialCurationWithCompletion:(id)a3;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation _NTKDPhotosFacesCuratorStore

- (_NTKDPhotosFacesCuratorStore)initWithStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _NTKDPhotosFacesCuratorStore;
  v6 = [(_NTKDPhotosFacesCuratorStore *)&v10 init];
  if (v6)
  {
    v7 = +[NTKFirstUnlockQueue photosFacesCuratorQueue];
    workQ = v6->_workQ;
    v6->_workQ = v7;

    objc_storeStrong(&v6->_store, a3);
    v6->_syncedAlbumHasBeenSetup = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  [v3 unregisterChangeObserver:self];

  [(NPTOCollectionTargetLibrary *)self->_syncedAlbum removeObserver:self];
  v4.receiver = self;
  v4.super_class = _NTKDPhotosFacesCuratorStore;
  [(_NTKDPhotosFacesCuratorStore *)&v4 dealloc];
}

- (void)initialCurationWithCompletion:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
  workQ = self->_workQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008190;
  v7[3] = &unk_10005CAC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NTKFirstUnlockQueue *)workQ dispatch:v7];
}

- (void)collectionTargetLibraryDidUpdate:(id)a3
{
  sub_100007294(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
  v4 = [(NTKDCollectionStore *)self->_store deviceUUID];
  workQ = self->_workQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008414;
  v7[3] = &unk_10005CA98;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NTKFirstUnlockQueue *)workQ dispatch:v7];
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.galleryphotosfacecurator.asyncwork");
  v5 = [(NTKDCollectionStore *)self->_store deviceUUID];
  workQ = self->_workQ;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008630;
  v9[3] = &unk_10005CC38;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [(NTKFirstUnlockQueue *)workQ dispatch:v9];
}

- (void)_queue_setStoreDataForStore:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 orderedUUIDs];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v6 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: _queue_setStoreDataForStore: %ld faces", &buf, 0xCu);
  }

  syncedAlbumPhotosUUID = self->_syncedAlbumPhotosUUID;
  self->_syncedAlbumPhotosUUID = 0;

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x2020000000;
  v12 = 0;
  v8 = [(NTKDCollectionStore *)self->_store orderedUUIDs];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000892C;
  v9[3] = &unk_10005CF30;
  v9[4] = self;
  v9[5] = &buf;
  [v8 enumerateObjectsUsingBlock:v9];
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(NTKDCollectionStore *)self->_store synchronize];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)_queue_setSyncedAlbumDataForStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_syncedAlbumHasBeenSetup)
  {
    v6 = [v4 deviceUUID];
    v7 = [CLKDevice deviceForPairingID:v6];
    v8 = [v7 nrDevice];

    if (v8)
    {
      v9 = [[NPTOCollectionTargetLibrary alloc] initWithCollectionTarget:1 device:v8];
      syncedAlbum = self->_syncedAlbum;
      self->_syncedAlbum = v9;

      [(NPTOCollectionTargetLibrary *)self->_syncedAlbum addObserver:self];
      v11 = +[PHPhotoLibrary sharedPhotoLibrary];
      [v11 registerChangeObserver:self];
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v5 collectionIdentifier];
        v13 = [v5 deviceUUID];
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: _queue_setSyncedAlbumDataForStore: no nrDevice for store %@-%@", &v22, 0x16u);
      }
    }

    self->_syncedAlbumHasBeenSetup = 1;
  }

  syncedAlbumAsset = self->_syncedAlbumAsset;
  self->_syncedAlbumAsset = 0;

  v15 = [(NPTOCollectionTargetLibrary *)self->_syncedAlbum assetCollections];
  v16 = [v15 anyObject];

  if (v16)
  {
    v17 = [(_NTKDPhotosFacesCuratorStore *)self _queue_syncedAlbumOptions];
    v18 = [(NPTOCollectionTargetLibrary *)self->_syncedAlbum fetchAssetsInAssetCollection:v16 options:v17];
    v19 = self->_syncedAlbumAsset;
    self->_syncedAlbumAsset = v18;
  }

  v20 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (v16)
    {
      v21 = [v16 localizedTitle];
    }

    else
    {
      v21 = @"[NONE]";
    }

    v22 = 138412290;
    v23 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: _queue_setSyncedAlbumDataForStore: observing album %@", &v22, 0xCu);
    if (v16)
    {
    }
  }
}

- (void)_queue_syncStoreWithSyncedAlbum
{
  v3 = [(_NTKDPhotosFacesCuratorStore *)self _queue_fetchSyncedAlbumLibraryPhoto];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    syncedAlbumPhotosUUID = self->_syncedAlbumPhotosUUID;
    v6 = [v3 localIdentifier];
    v9 = 138412546;
    v10 = syncedAlbumPhotosUUID;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore: _queue_syncStoreWithSyncedAlbum: curating synced album face %@ with asset %@", &v9, 0x16u);
  }

  v7 = [(_NTKDPhotosFacesCuratorStore *)self _queue_curatePhotosFaceFromAsset:v3 forFaceUUID:self->_syncedAlbumPhotosUUID andContent:0];
  v8 = self->_syncedAlbumPhotosUUID;
  self->_syncedAlbumPhotosUUID = v7;

  [(_NTKDPhotosFacesCuratorStore *)self _queue_insertInOrderedUUIDs:self->_syncedAlbumPhotosUUID atIndex:0];
}

- (id)_queue_curatePhotosFaceFromAsset:(id)a3 forFaceUUID:(id)a4 andContent:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(NTKDCollectionStore *)self->_store faceForUUID:v9];
    v11 = [v10 resourceDirectory];

    if (v11)
    {
      v12 = [v10 resourceDirectory];
      v13 = [NTKPhotosReader readerForResourceDirectory:v12];
      v14 = [v13 firstObject];
    }

    else
    {
      v14 = 0;
    }

    if ([(_NTKDPhotosFacesCuratorStore *)self _queue_facePhoto:v14 isUpToDateWith:v8])
    {
      v15 = v9;
      goto LABEL_11;
    }

    v15 = v9;
  }

  else
  {
    v15 = +[NSUUID UUID];
    v10 = [(_NTKDPhotosFacesCuratorStore *)self _queue_createPhotosFaceWithContent:a5];
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:    create new photos face %@", &v33, 0xCu);
    }

    if ([(_NTKDPhotosFacesCuratorStore *)self _queue_facePhoto:0 isUpToDateWith:v8])
    {
      [(NTKDCollectionStore *)self->_store addFace:v10 forUUID:v15];
      [(NTKDCollectionStore *)self->_store synchronize];
      v14 = 0;
LABEL_11:
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v8 localIdentifier];
        v19 = v18;
        v20 = @"[NONE]";
        if (v18)
        {
          v20 = v18;
        }

        v33 = 138412546;
        v34 = v15;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:    curated face %@ has valid photo (%@)", &v33, 0x16u);
      }

      v21 = v15;
      goto LABEL_38;
    }

    v14 = 0;
  }

  v22 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v8 localIdentifier];
    v24 = v23;
    v25 = @"[NONE]";
    if (v23)
    {
      v25 = v23;
    }

    v33 = 138412546;
    v34 = v15;
    v35 = 2112;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:    curated %@ face gets new photo %@", &v33, 0x16u);
  }

  if (!v8)
  {
LABEL_29:
    v28 = 0;
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (v28)
    {
      [v10 setResourceDirectory:v28];
    }

    [(NTKDCollectionStore *)self->_store addFace:v10 forUUID:v15];
    goto LABEL_33;
  }

  v26 = [(NTKDCollectionStore *)self->_store deviceUUID];
  v27 = [CLKDevice deviceForPairingID:v26];
  v28 = [NTKCompanionResourceDirectoryEditor _createResourceDirectoryWithAsset:v8 assetCollection:0 forDevice:v27 previewOnly:1];

  if (!v28)
  {
    v29 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10003DF50(v8, v29);
    }

    goto LABEL_29;
  }

  if (!v9)
  {
    goto LABEL_30;
  }

LABEL_25:
  [(NTKDCollectionStore *)self->_store updateFaceForUUID:v15 withResourceDirectory:v28];
LABEL_33:
  [(NTKDCollectionStore *)self->_store synchronize];
  if (v28)
  {
    v30 = +[NSFileManager defaultManager];
    [v30 removeItemAtPath:v28 error:0];
  }

  v31 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "_NTKDPhotosFacesCuratorStore:    curated face now is %@", &v33, 0xCu);
  }

  v21 = v15;
LABEL_38:

  return v21;
}

- (BOOL)_queue_facePhoto:(id)a3 isUpToDateWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = (v5 | v6) == 0;
  if (v5 && v6)
  {
    v8 = [v5 isEqualToAsset:v6];
  }

  return v8;
}

- (id)_queue_createPhotosFaceWithContent:(unint64_t)a3
{
  v4 = [(NTKDCollectionStore *)self->_store deviceUUID];
  v5 = [CLKDevice deviceForPairingID:v4];

  v6 = [NTKFace defaultFaceOfStyle:22 forDevice:v5];
  v7 = [NTKPhotosContentEditOption optionWithPhotosContent:a3 forDevice:v5];
  [v6 selectOption:v7 forCustomEditMode:12 slot:0];
  v8 = +[_NTKDPhotosFacesCuratorStore complications];
  [v6 _setFaceGalleryComplicationTypesForSlots:v8];

  return v6;
}

+ (id)complications
{
  v4[0] = NTKComplicationSlotTop;
  v4[1] = NTKComplicationSlotBottom;
  v5[0] = &off_10005FD50;
  v5[1] = &off_10005FD68;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)_queue_insertInOrderedUUIDs:(id)a3 atIndex:(unint64_t)a4
{
  store = self->_store;
  v7 = a3;
  v8 = [(NTKDCollectionStore *)store orderedUUIDs];
  v11 = [NSMutableArray arrayWithArray:v8];

  [v11 removeObject:v7];
  v9 = [v11 count];
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  [v11 insertObject:v7 atIndex:v10];

  [(NTKDCollectionStore *)self->_store setOrderedUUIDs:v11];
  [(NTKDCollectionStore *)self->_store synchronize];
}

- (id)_queue_syncedAlbumOptions
{
  v2 = objc_alloc_init(PHFetchOptions);
  v3 = [NSPredicate predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3];
  [v2 setPredicate:v3];

  v4 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:1];
  v8 = PHAssetPropertySetPhotoIris;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 addFetchPropertySets:v6];

  return v2;
}

@end