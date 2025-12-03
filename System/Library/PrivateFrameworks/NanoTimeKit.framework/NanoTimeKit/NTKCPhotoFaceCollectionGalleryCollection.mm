@interface NTKCPhotoFaceCollectionGalleryCollection
- (id)initForDevice:(id)device;
- (void)dealloc;
- (void)photoAlbumChanged;
@end

@implementation NTKCPhotoFaceCollectionGalleryCollection

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v6 = +[NTKCompanionFaceCollectionsManager sharedInstance];
  v7 = [v6 sharedFaceCollectionForDevice:deviceCopy forCollectionIdentifier:@"PhotosFaces"];

  v9 = NTKCCustomizationLocalizedString(@"GALLERY_TITLE_PHOTOS", @"Photos", v8);
  v22.receiver = self;
  v22.super_class = NTKCPhotoFaceCollectionGalleryCollection;
  v10 = [(NTKFaceCollectionGalleryCollection *)&v22 initWithTitle:v9 faceCollection:v7];

  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    [v7 addObserver:v10];
    v12 = NTKCCustomizationLocalizedString(@"GALLERY_PHOTOS_DESCRIPTION", @"description", v11);
    [(NTKGalleryCollection *)v10 setDescriptionText:v12];

    objc_initWeak(&location, v10);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke;
    v19[3] = &unk_278784110;
    objc_copyWeak(&v20, &location);
    [(NTKGalleryCollection *)v10 setCalloutName:v19];
    albumName = v10->_albumName;
    v10->_albumName = &stru_284110E98;

    v14 = dispatch_get_global_queue(17, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke_183;
    v16[3] = &unk_27877E438;
    v17 = v10;
    v18 = deviceCopy;
    dispatch_async(v14, v16);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 faceStyle] == 13 || objc_msgSend(v3, "faceStyle") == 22 && (objc_msgSend(v3, "selectedOptionsForCustomEditModes"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", &unk_2841836D0), v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_msgSend(v8, "photosContent"), v8, !v9))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained[8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke_183(uint64_t a1)
{
  v2 = +[NTKSyncedAlbumObserver sharedInstance];
  [v2 addObserver:*(a1 + 32) forDevice:*(a1 + 40)];
  v3 = [v2 syncedAlbumNameForDevice:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke_2;
  v5[3] = &unk_27877E438;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __58__NTKCPhotoFaceCollectionGalleryCollection_initForDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = [*(a1 + 32) delegate];
  [v5 galleryCollectionDidChange:*(a1 + 32) shouldUpdateSnaphots:0];
}

- (void)dealloc
{
  v3 = +[NTKSyncedAlbumObserver sharedInstance];
  [v3 removeObserver:self forDevice:self->_device];

  v4.receiver = self;
  v4.super_class = NTKCPhotoFaceCollectionGalleryCollection;
  [(NTKCPhotoFaceCollectionGalleryCollection *)&v4 dealloc];
}

- (void)photoAlbumChanged
{
  v3 = +[NTKSyncedAlbumObserver sharedInstance];
  v4 = [v3 syncedAlbumNameForDevice:self->_device];
  albumName = self->_albumName;
  self->_albumName = v4;

  delegate = [(NTKGalleryCollection *)self delegate];
  [delegate galleryCollectionDidChange:self shouldUpdateSnaphots:0];
}

@end