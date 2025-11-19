@interface NTKDCompanionGalleryPhotosFacesCurator
+ (id)sharedInstance;
- (NTKDCompanionGalleryPhotosFacesCurator)init;
- (void)curateCollectionStore:(id)a3 completion:(id)a4;
@end

@implementation NTKDCompanionGalleryPhotosFacesCurator

+ (id)sharedInstance
{
  if (qword_100066BD8 != -1)
  {
    sub_10003DFE8();
  }

  v3 = qword_100066BD0;

  return v3;
}

- (NTKDCompanionGalleryPhotosFacesCurator)init
{
  v7.receiver = self;
  v7.super_class = NTKDCompanionGalleryPhotosFacesCurator;
  v2 = [(NTKDCompanionGalleryPhotosFacesCurator *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stores = v2->_stores;
    v2->_stores = v3;

    v5 = +[NTKDCollectionCoordinator sharedInstance];
    [v5 registerCurator:v2 forCollectionIdentifier:NTKCollectionIdentifierPhotosFaces];
  }

  return v2;
}

- (void)curateCollectionStore:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 deviceUUID];
  if (v8)
  {
    v9 = [v6 collectionIdentifier];
    v10 = [v6 deviceUUID];
    v11 = [NTKDCollectionStoreKey keyWithCollectionIdentifier:v9 deviceUUID:v10];

    v12 = [(NSMutableDictionary *)self->_stores objectForKey:v11];
    if (v12)
    {
      v13 = v12;
      v7[2](v7);
    }

    else
    {
      v13 = [[_NTKDPhotosFacesCuratorStore alloc] initWithStore:v6];
      [(NSMutableDictionary *)self->_stores setObject:v13 forKey:v11];
      [(_NTKDPhotosFacesCuratorStore *)v13 initialCurationWithCompletion:v7];
    }
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 collectionIdentifier];
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NTKDCompanionGalleryPhotosFacesCurator: %@-%@ is not from a paired watch; skipping", &v16, 0x16u);
    }

    v7[2](v7);
  }
}

@end