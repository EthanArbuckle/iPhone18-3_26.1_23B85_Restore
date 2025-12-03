@interface WFSharedPhotoLibrary
+ (id)sharedLibrary;
+ (id)systemPhotoLibraryURL;
- (WFSharedPhotoLibrary)init;
- (id)fetchOptionsWithError:(id *)error;
- (id)systemPhotoLibraryWithError:(id *)error;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
@end

@implementation WFSharedPhotoLibrary

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  v12 = *MEMORY[0x277D85DE8];
  unavailableCopy = unavailable;
  os_unfair_lock_lock(&self->_lock);
  lock_systemPhotoLibrary = self->_lock_systemPhotoLibrary;

  if (lock_systemPhotoLibrary == unavailableCopy)
  {
    self->_lock_systemPhotoLibrary = 0;

    v6 = @"System";
  }

  else
  {
    v6 = @"Unknown";
  }

  v7 = getWFGeneralLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[WFSharedPhotoLibrary photoLibraryDidBecomeUnavailable:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s %@ photo library became unavailable", &v8, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)fetchOptionsWithError:(id *)error
{
  v3 = [(WFSharedPhotoLibrary *)self systemPhotoLibraryWithError:error];
  librarySpecificFetchOptions = [v3 librarySpecificFetchOptions];

  return librarySpecificFetchOptions;
}

- (id)systemPhotoLibraryWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFSharedPhotoLibrary_systemPhotoLibraryWithError___block_invoke;
  aBlock[3] = &unk_278349550;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = self->_lock_systemPhotoLibrary;
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = objc_alloc(getPHPhotoLibraryClass());
  systemPhotoLibraryURL = [getPHPhotoLibraryClass() systemPhotoLibraryURL];
  v6 = [v7 initWithPhotoLibraryURL:systemPhotoLibraryURL];

  v15 = 0;
  v9 = [(PHPhotoLibrary *)v6 openAndWaitWithUpgrade:0 error:&v15];
  v10 = v15;
  if (v9)
  {
    [(PHPhotoLibrary *)v6 registerAvailabilityObserver:self];
    objc_storeStrong(&self->_lock_systemPhotoLibrary, v6);

LABEL_4:
    v6 = v6;
    v11 = v6;
    goto LABEL_5;
  }

  v13 = getWFGeneralLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[WFSharedPhotoLibrary systemPhotoLibraryWithError:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Unable to open system photo library: %@", buf, 0x16u);
  }

  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  v11 = 0;
LABEL_5:

  v5[2](v5);

  return v11;
}

- (WFSharedPhotoLibrary)init
{
  v6.receiver = self;
  v6.super_class = WFSharedPhotoLibrary;
  v2 = [(WFSharedPhotoLibrary *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

+ (id)systemPhotoLibraryURL
{
  PHPhotoLibraryClass = getPHPhotoLibraryClass();

  return [PHPhotoLibraryClass systemPhotoLibraryURL];
}

+ (id)sharedLibrary
{
  if (sharedLibrary_onceToken != -1)
  {
    dispatch_once(&sharedLibrary_onceToken, &__block_literal_global_6720);
  }

  v3 = sharedLibrary_library;

  return v3;
}

uint64_t __37__WFSharedPhotoLibrary_sharedLibrary__block_invoke()
{
  v0 = objc_alloc_init(WFSharedPhotoLibrary);
  v1 = sharedLibrary_library;
  sharedLibrary_library = v0;

  PHPhotoLibraryClass = getPHPhotoLibraryClass();

  return [PHPhotoLibraryClass enableMultiLibraryMode];
}

@end