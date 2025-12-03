@interface NTKFacesBundleArrayGalleryCollection
- (NTKFacesBundleArrayGalleryCollection)initWithDevice:(id)device faceBundle:(id)bundle;
- (void)dealloc;
- (void)galleryFacesDidUpdate;
- (void)loadFaces;
@end

@implementation NTKFacesBundleArrayGalleryCollection

- (NTKFacesBundleArrayGalleryCollection)initWithDevice:(id)device faceBundle:(id)bundle
{
  deviceCopy = device;
  bundleCopy = bundle;
  v15.receiver = self;
  v15.super_class = NTKFacesBundleArrayGalleryCollection;
  v9 = [(NTKFacesBundleArrayGalleryCollection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_faceBundle, bundle);
    v11 = [bundleCopy galleryTitleForDevice:deviceCopy];
    [(NTKGalleryCollection *)v10 setTitle:v11];

    v12 = [bundleCopy galleryDescriptionForDevice:deviceCopy];
    [(NTKGalleryCollection *)v10 setDescriptionText:v12];

    v13 = [bundleCopy galleryRowPrioritiesForDevice:deviceCopy];
    [(NTKGalleryCollection *)v10 setPriorities:v13];

    [(NTKFaceBundle *)v10->_faceBundle addObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(NTKFaceBundle *)self->_faceBundle removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKFacesBundleArrayGalleryCollection;
  [(NTKFacesBundleArrayGalleryCollection *)&v3 dealloc];
}

- (void)loadFaces
{
  v20 = *MEMORY[0x277D85DE8];
  device = [(NTKFacesBundleArrayGalleryCollection *)self device];
  faceBundle = [(NTKFacesBundleArrayGalleryCollection *)self faceBundle];
  identifier = [objc_opt_class() identifier];
  v6 = _NTKLoggingObjectForDomain(45, "NTKLoggingDomainFaceGallery");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifier;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Loading faces for %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NTKFacesBundleArrayGalleryCollection_loadFaces__block_invoke;
  block[3] = &unk_278784160;
  objc_copyWeak(&v17, buf);
  v7 = identifier;
  v13 = v7;
  v8 = faceBundle;
  v14 = v8;
  v9 = device;
  v15 = v9;
  selfCopy = self;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, -1, block);
  v11 = NTKFacesArrayGalleryCollectionLoadQueue();
  dispatch_async(v11, v10);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __49__NTKFacesBundleArrayGalleryCollection_loadFaces__block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    [a1[5] galleryFacesForDevice:a1[6]];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v3 = v21 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = *v21;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v20 + 1) + 8 * i) companionGalleryName];
          v8 = v7 == 0;

          if (!v8)
          {

            [a1[7] setCalloutName:&__block_literal_global_116];
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    if ([a1[6] supportsWidgetMigration])
    {
      v9 = +[NTKBundleComplicationFaceMigrator sharedInstance];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__NTKFacesBundleArrayGalleryCollection_loadFaces__block_invoke_2;
      v14[3] = &unk_278784138;
      v10 = v3;
      v15 = v10;
      v16 = a1[4];
      objc_copyWeak(&v17, a1 + 8);
      [v9 migrateFaces:v10 completion:v14];
      objc_destroyWeak(&v17);
    }

    else
    {
      v12 = _NTKLoggingObjectForDomain(45, "NTKLoggingDomainFaceGallery");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[4];
        *buf = 138543362;
        v26 = v13;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Skipped widget migration for %{public}@", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__NTKFacesBundleArrayGalleryCollection_loadFaces__block_invoke_5;
      block[3] = &unk_27877E438;
      block[4] = a1[7];
      v10 = v3;
      v19 = v10;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(45, "NTKLoggingDomainFaceGallery");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Skipped loading faces for %{public}@ - dealloc'd", buf, 0xCu);
    }
  }
}

void __49__NTKFacesBundleArrayGalleryCollection_loadFaces__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(45, "NTKLoggingDomainFaceGallery");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Loaded %lu faces for %{public}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setFaces:*(a1 + 32)];
}

- (void)galleryFacesDidUpdate
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(45, "NTKLoggingDomainFaceGallery");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Reloading faces for collection: %@", &v4, 0xCu);
  }

  [(NTKFacesBundleArrayGalleryCollection *)self loadFaces];
}

@end