@interface NTKDeviceSpecificFacesArrayGalleryCollection
- (NTKDeviceSpecificFacesArrayGalleryCollection)initWithDevice:(id)a3;
- (id)facesForDevice:(id)a3;
- (id)title;
- (void)loadFacesWithCompletion:(id)a3;
@end

@implementation NTKDeviceSpecificFacesArrayGalleryCollection

- (NTKDeviceSpecificFacesArrayGalleryCollection)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKDeviceSpecificFacesArrayGalleryCollection;
  v6 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)loadFacesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke;
  aBlock[3] = &unk_2787826A0;
  objc_copyWeak(&v14, &location);
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = v4;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = NTKFacesArrayGalleryCollectionLoadQueue();
  dispatch_async(v9, v8);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained facesForDevice:*(a1 + 32)];
    v5 = +[NTKBundleComplicationFaceMigrator sharedInstance];
    v6 = dispatch_group_create();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke_2;
    v17[3] = &unk_278782678;
    v18 = v6;
    v19 = v5;
    v7 = v5;
    v8 = v6;
    [v4 enumerateObjectsUsingBlock:v17];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke_4;
    v12[3] = &unk_2787826A0;
    objc_copyWeak(&v16, (a1 + 56));
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = v4;
    v14 = v9;
    v15 = v10;
    v11 = v4;
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v16);
  }
}

void __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke_3;
  v6[3] = &unk_27877E8E0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v5 migrateFace:v4 completion:v6];
}

void __72__NTKDeviceSpecificFacesArrayGalleryCollection_loadFacesWithCompletion___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setFaces:*(a1 + 32)];
  v3 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) count];
    v7 = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Finished loading %@ (%p) with %lu faces", &v7, 0x20u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (id)title
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_284110E98;
}

- (id)facesForDevice:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x277CBEBF8];
}

@end