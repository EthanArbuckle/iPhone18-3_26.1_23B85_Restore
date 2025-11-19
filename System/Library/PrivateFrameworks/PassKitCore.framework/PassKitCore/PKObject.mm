@interface PKObject
+ (id)_createWithFileDataAccessor:(id)a3 validationOptions:(unint64_t)a4 warnings:(id *)a5 error:(id *)a6;
+ (id)createWithData:(id)a3 warnings:(id *)a4 error:(id *)a5;
+ (id)createWithFileURL:(id)a3 warnings:(id *)a4 error:(id *)a5;
- (BOOL)isContentLoaded;
- (BOOL)isImageSetLoaded:(int64_t)a3;
- (BOOL)isImageSetType:(int64_t)a3 equalToImageSetTypeFromObject:(id)a4;
- (BOOL)remoteAssetsDownloadedForConfiguration:(id)a3;
- (BOOL)remoteAssetsDownloadedForSEIDs:(id)a3;
- (PKDisplayTraitCollection)preferredDisplayTraits;
- (PKObject)initWithCoder:(id)a3;
- (PKObject)initWithData:(id)a3 error:(id *)a4;
- (PKObject)initWithDictionary:(id)a3 bundle:(id)a4;
- (PKObject)initWithFileURL:(id)a3 error:(id *)a4;
- (id)archiveData;
- (id)content;
- (id)contentLoadedIfNeeded;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4;
- (id)dataForBundleResources:(id)a3;
- (id)imageSetLoadedIfNeeded:(int64_t)a3;
- (id)localizedString:(id)a3;
- (id)modificationDate;
- (id)passLocalizedStringForKey:(id)a3;
- (id)serializedFileWrapper;
- (void)_lock_flushLoadedImageSets;
- (void)dealloc;
- (void)downloadRemoteAssetsForSEIDS:(id)a3 completion:(id)a4;
- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)a3 seids:(id)a4 completion:(id)a5;
- (void)downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)flushFormattedFieldValues;
- (void)flushLoadedImageSets;
- (void)loadCachedImageSet:(int64_t)a3;
- (void)loadContentAsyncWithCompletion:(id)a3;
- (void)loadContentSync;
- (void)loadImageSetAsync:(int64_t)a3 preheat:(BOOL)a4 withCompletion:(id)a5;
- (void)loadImageSetSync:(int64_t)a3 preheat:(BOOL)a4;
- (void)noteShared;
- (void)reloadDisplayProfileOfType:(int64_t)a3;
- (void)requestUpdateWithCompletion:(id)a3;
- (void)revocationStatusWithCompletion:(id)a3;
- (void)setContent:(id)a3;
- (void)setImageSet:(id)a3 forImageSetType:(int64_t)a4;
- (void)setMissingImageSetsFromObject:(id)a3;
- (void)setPreferredDisplayTraits:(id)a3;
- (void)setSettings:(unint64_t)a3;
@end

@implementation PKObject

- (void)dealloc
{
  for (i = 24; i != 96; i += 8)
  {
    v4 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  v5.receiver = self;
  v5.super_class = PKObject;
  [(PKObject *)&v5 dealloc];
}

- (id)content
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_content;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)contentLoadedIfNeeded
{
  [(PKObject *)self loadContentSync];

  return [(PKObject *)self content];
}

- (void)loadContentSync
{
  if (![(PKObject *)self isContentLoaded])
  {
    v4 = [(PKObject *)self dataAccessor];
    v3 = [v4 content];
    [(PKObject *)self setContent:v3];
  }
}

- (BOOL)isContentLoaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_content != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (PKObject)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_msgSend(objc_opt_class() "resolvingClass")];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  return v7;
}

- (PKObject)initWithFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_msgSend(objc_opt_class() "resolvingClass")];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  return v7;
}

+ (id)createWithData:(id)a3 warnings:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [[PKSerializedDataAccessor alloc] initWithData:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [a1 createWithFileDataAccessor:v9 warnings:a4 error:a5];
  }

  return v13;
}

+ (id)createWithFileURL:(id)a3 warnings:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [[PKFileDataAccessor alloc] initWithFileURL:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [a1 createWithFileDataAccessor:v9 warnings:a4 error:a5];
  }

  return v13;
}

+ (id)_createWithFileDataAccessor:(id)a3 validationOptions:(unint64_t)a4 warnings:(id *)a5 error:(id *)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v18 = a3;
  if (v18)
  {
    v19 = [a1 resolvingClass];
    if (v19 != a1)
    {
      v20 = v19;
      v21 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromClass(a1);
        v23 = NSStringFromClass(v20);
        *buf = 138412546;
        v69 = v22;
        v70 = 2112;
        v71 = v23;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKObject: unable to use subclass %@ to create an automatically typed object instead of root resolving class %@.", buf, 0x16u);
      }

      if (a6)
      {
        v24 = NSStringFromClass(a1);
        v61 = NSStringFromClass(v20);
        *a6 = PKValidationErrorWithReason(@"forbidden to use subclass %@ to create an automatically typed object instead of root resolving class %@.", v25, v26, v27, v28, v29, v30, v31, v24);
      }

      goto LABEL_9;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = [v18 dictionary];
    v35 = [v18 bundle];
    v43 = v35;
    if (v34 && v35)
    {
      v44 = [a1 classForDictionary:v34 bundle:v35];
      if (a5)
      {
        v45 = &v67;
      }

      else
      {
        v45 = 0;
      }

      if (a5)
      {
        v67 = 0;
      }

      if (a6)
      {
        v46 = &v66;
      }

      else
      {
        v46 = 0;
      }

      if (a6)
      {
        v66 = 0;
      }

      v65 = 0;
      v62 = v44;
      v47 = [v44 isValidObjectWithFileDataAccessor:v18 validationOptions:a4 warnings:v45 error:v46 signingDate:&v65 passDictionary:v34];
      if (a5)
      {
        v48 = v67;
      }

      else
      {
        v48 = 0;
      }

      v64 = v33;
      if (a6)
      {
        v49 = v66;
      }

      else
      {
        v49 = 0;
      }

      v52 = v65;
      v63 = v65;
      if (v47)
      {
        v53 = [v62 dataTypeIdentifier];
        [v18 setExplicitDataTypeIdentifier:v53];

        v54 = [[v62 alloc] initWithDictionary:v34 bundle:v43];
        v51 = v54;
        if (v54)
        {
          objc_storeStrong((v54 + 128), a3);
          v55 = [v18 manifestHash];
          v56 = *(v51 + 120);
          *(v51 + 120) = v55;

          objc_storeStrong((v51 + 160), v52);
        }
      }

      else
      {
        v51 = 0;
      }

      v50 = v63;
      v33 = v64;
    }

    else
    {
      v49 = PKValidationErrorWithReason(0, v36, v37, v38, v39, v40, v41, v42, v60);
      v48 = 0;
      v50 = 0;
      v51 = 0;
    }

    objc_autoreleasePoolPop(v33);
    if (a5 && v48)
    {
      v57 = v48;
      *a5 = v48;
    }

    if (a6 && v49)
    {
      v58 = v49;
      *a6 = v49;
    }

    v32 = v51;
  }

  else
  {
    if (!a6)
    {
LABEL_9:
      v32 = 0;
      goto LABEL_41;
    }

    PKValidationErrorWithReason(0, v11, v12, v13, v14, v15, v16, v17, v60);
    *a6 = v32 = 0;
  }

LABEL_41:

  return v32;
}

- (PKObject)initWithDictionary:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKObject;
  v4 = [(PKObject *)&v6 init:a3];
  if (v4)
  {
    v4->_settings = [objc_opt_class() defaultSettings];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)setContent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  content = self->_content;
  self->_content = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)loadContentAsyncWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKObject *)self isContentLoaded])
  {
    v5 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke_4;
    v11[3] = &unk_1E79C4428;
    v12 = v4;
    v6 = v11;
    block = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __dispatch_async_ar_block_invoke_12;
    v21 = &unk_1E79C4428;
    v22 = v6;
    dispatch_async(v5, &block);

    v7 = v12;
  }

  else
  {
    v8 = [(PKObject *)self dataAccessor];
    if (v8)
    {
      v7 = v8;
      objc_initWeak(&block, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke;
      v15[3] = &unk_1E79DA2C0;
      objc_copyWeak(&v17, &block);
      v16 = v4;
      [v7 contentWithCompletion:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&block);
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke_3;
      v13[3] = &unk_1E79C4428;
      v14 = v4;
      v10 = v13;
      block = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __dispatch_async_ar_block_invoke_12;
      v21 = &unk_1E79C4428;
      v22 = v10;
      dispatch_async(v9, &block);

      v7 = 0;
    }
  }
}

void __43__PKObject_loadContentAsyncWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContent:v3];

  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke_2;
  v7[3] = &unk_1E79C4428;
  v8 = *(a1 + 32);
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_12;
  block[3] = &unk_1E79C4428;
  v10 = v6;
  dispatch_async(v5, block);
}

- (void)flushFormattedFieldValues
{
  v2 = [(PKObject *)self content];
  [v2 flushFormattedFieldValues];
}

- (PKDisplayTraitCollection)preferredDisplayTraits
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_preferredDisplayTraits;
  if (!v3)
  {
    v3 = [[PKDisplayTraitCollection alloc] initWithDefaultTraits];
    preferredDisplayTraits = self->_preferredDisplayTraits;
    self->_preferredDisplayTraits = v3;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPreferredDisplayTraits:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  preferredDisplayTraits = self->_preferredDisplayTraits;
  self->_preferredDisplayTraits = v4;

  [(PKObject *)self _lock_flushLoadedImageSets];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isImageSetLoaded:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(a3) = self->_imageSets[a3] != 0;
  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (void)setImageSet:(id)a3 forImageSetType:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = &self->super.isa + a4;
  v8 = v7[3];
  v7[3] = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)loadCachedImageSet:(int64_t)a3
{
  if (![(PKObject *)self isImageSetLoaded:?])
  {
    dataAccessor = self->_dataAccessor;
    displayProfile = self->_displayProfile;
    v7 = [(PKObject *)self preferredDisplayTraits];
    v9 = [(PKDataAccessor *)dataAccessor cachedImageSetForType:a3 withDisplayProfile:displayProfile displayTraits:v7];

    v8 = v9;
    if (v9)
    {
      [(PKObject *)self setImageSet:v9 forImageSetType:a3];
      v8 = v9;
    }
  }
}

- (void)loadImageSetSync:(int64_t)a3 preheat:(BOOL)a4
{
  v4 = a4;
  if (![(PKObject *)self isImageSetLoaded:?])
  {
    v7 = [(PKObject *)self dataAccessor];
    [(PKObject *)self preferredImageScale];
    v9 = v8;
    v10 = [(PKObject *)self preferredImageSuffix];
    v11 = [(PKObject *)self displayProfile];
    v12 = [v7 imageSetForType:a3 screenScale:v10 suffix:v11 displayProfile:v4 preheat:v9];

    [(PKObject *)self setImageSet:v12 forImageSetType:a3];
  }
}

- (void)loadImageSetAsync:(int64_t)a3 preheat:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if ([(PKObject *)self isImageSetLoaded:a3])
  {
    v9 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke_2;
    v17[3] = &unk_1E79C4428;
    v18 = v8;
    v10 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_12;
    block[3] = &unk_1E79C4428;
    v23 = v10;
    dispatch_async(v9, block);

    v11 = v18;
  }

  else
  {
    v12 = [(PKObject *)self dataAccessor];
    if (v12)
    {
      v11 = v12;
      objc_initWeak(block, self);
      [(PKObject *)self preferredImageScale];
      v14 = v13;
      v15 = [(PKObject *)self preferredImageSuffix];
      v16 = [(PKObject *)self displayProfile];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke;
      v19[3] = &unk_1E79DA2E8;
      objc_copyWeak(v21, block);
      v21[1] = a3;
      v20 = v8;
      [v11 imageSetForType:a3 screenScale:v15 suffix:v16 displayProfile:v5 preheat:v19 withCompletion:v14];

      objc_destroyWeak(v21);
      objc_destroyWeak(block);
    }

    else
    {
      if (v8)
      {
        v8[2](v8);
      }

      v11 = 0;
    }
  }
}

void __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setImageSet:v6 forImageSetType:*(a1 + 48)];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)flushLoadedImageSets
{
  os_unfair_lock_lock(&self->_lock);
  [(PKObject *)self _lock_flushLoadedImageSets];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_flushLoadedImageSets
{
  for (i = 24; i != 96; i += 8)
  {
    v4 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }
}

- (void)revocationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  [v5 revocationStatusWithCompletion:v4];
}

- (void)requestUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  [v5 requestUpdateWithCompletion:v4];
}

- (void)noteShared
{
  [(PKObject *)self setShareCount:[(PKObject *)self shareCount]+ 1];
  v3 = [(PKObject *)self dataAccessor];
  [v3 noteShared];
}

- (BOOL)remoteAssetsDownloadedForSEIDs:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  v6 = [v5 remoteAssetsDownloadedForSEIDs:v4];

  return v6;
}

- (BOOL)remoteAssetsDownloadedForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  v6 = [v5 remoteAssetsDownloadedForConfiguration:v4];

  return v6;
}

- (void)downloadRemoteAssetsForSEIDS:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v8 setSeids:v7];

  [(PKObject *)self downloadRemoteAssetsWithConfiguration:v8 completion:v6];
}

- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)a3 seids:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v11 setCloudStoreCoordinatorDelegate:v10];

  [(PKDownloadRemoteAssetConfiguration *)v11 setSeids:v9];
  [(PKObject *)self downloadRemoteAssetsWithConfiguration:v11 completion:v8];
}

- (void)downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKObject *)self dataAccessor];
  [v8 downloadRemoteAssetsWithConfiguration:v7 completion:v6];
}

- (id)localizedString:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  v6 = [v5 bundle];

  v7 = PKLocalizedPassStringForPassBundle(v4, v6, 0);

  return v7;
}

- (id)archiveData
{
  v2 = [(PKObject *)self dataAccessor];
  v3 = [v2 archiveData];

  return v3;
}

- (id)serializedFileWrapper
{
  v2 = [(PKObject *)self dataAccessor];
  v3 = [v2 serializedFileWrapper];

  return v3;
}

- (id)modificationDate
{
  v2 = [(PKObject *)self dataAccessor];
  v3 = [v2 resourceValueForKey:*MEMORY[0x1E695DA98]];

  return v3;
}

- (void)setSettings:(unint64_t)a3
{
  if (self->_settings != a3)
  {
    self->_settings = a3;
    v5 = [(PKObject *)self dataAccessor];
    [v5 updateSettings:a3];
  }
}

- (void)reloadDisplayProfileOfType:(int64_t)a3
{
  v5 = [(PKObject *)self dataAccessor];
  v7 = [v5 displayProfileOfType:a3];

  v6 = v7;
  if (v7)
  {
    [(PKObject *)self setDisplayProfile:v7];
    v6 = v7;
  }
}

- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKObject *)self dataAccessor];
  v9 = [v8 dataForBundleResourceNamed:v7 withExtension:v6];

  return v9;
}

- (id)dataForBundleResources:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  v6 = [v5 dataForBundleResources:v4];

  return v6;
}

- (id)passLocalizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self dataAccessor];
  v6 = [v5 passLocalizedStringForKey:v4];

  return v6;
}

- (id)imageSetLoadedIfNeeded:(int64_t)a3
{
  [(PKObject *)self loadImageSetSync:a3 preheat:0];
  v5 = self->_imageSets[a3];

  return v5;
}

- (BOOL)isImageSetType:(int64_t)a3 equalToImageSetTypeFromObject:(id)a4
{
  v6 = a4;
  v7 = [(PKObject *)self imageSetLoadedIfNeeded:a3];
  v8 = [v6 imageSetLoadedIfNeeded:a3];

  LOBYTE(v6) = [v7 isEqual:v8];
  return v6;
}

- (void)setMissingImageSetsFromObject:(id)a3
{
  v4 = a3;
  if (v4 && self != v4)
  {
    if (self >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = self;
    }

    v9 = v4;
    if (self >= v4)
    {
      v6 = self;
    }

    else
    {
      v6 = v4;
    }

    os_unfair_lock_lock(&v5->_lock);
    os_unfair_lock_lock(&v6->_lock);
    imageSets = self->_imageSets;
    for (i = 3; i != 12; ++i)
    {
      if (!*imageSets)
      {
        objc_storeStrong(imageSets, *(&v9->super.isa + i));
      }

      ++imageSets;
    }

    os_unfair_lock_unlock(&v6->_lock);
    os_unfair_lock_unlock(&v5->_lock);
    v4 = v9;
  }
}

- (PKObject)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PKObject;
  v5 = [(PKObject *)&v38 init];
  if (v5)
  {
    v37 = objc_autoreleasePoolPush();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    [(PKObject *)v5 setUniqueID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    [(PKObject *)v5 setManifestHash:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"content"];
    [(PKObject *)v5 setContent:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webServiceURL"];
    [(PKObject *)v5 setWebServiceURL:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
    [(PKObject *)v5 setAuthenticationToken:v13];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"displayProfile"];
    [(PKObject *)v5 setDisplayProfile:v17];

    -[PKObject setShareCount:](v5, "setShareCount:", [v4 decodeIntegerForKey:@"shareCount"]);
    -[PKObject setSettingsWithoutUpdatingDataAccessor:](v5, "setSettingsWithoutUpdatingDataAccessor:", [v4 decodeIntegerForKey:@"settings"]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signingDate"];
    [(PKObject *)v5 setSigningDate:v18];

    v36 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v36 setWithObjects:{v35, v34, v33, v19, v20, v21, v22, v23, v24, v25, objc_opt_class(), 0}];
    v27 = 0;
    imageSets = v5->_imageSets;
    do
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"images_%ld", v27];
      v30 = [v4 decodeObjectOfClasses:v26 forKey:v29];
      v31 = imageSets[v27];
      imageSets[v27] = v30;

      ++v27;
    }

    while (v27 != 9);
    v5->_initializedViaInitWithCoder = 1;

    objc_autoreleasePoolPop(v37);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PKObject *)self uniqueID];
  [v15 encodeObject:v5 forKey:@"uniqueID"];

  v6 = [(PKObject *)self manifestHash];
  [v15 encodeObject:v6 forKey:@"manifestHash"];

  v7 = [(PKObject *)self content];
  [v15 encodeObject:v7 forKey:@"content"];

  v8 = [(PKObject *)self webServiceURL];
  [v15 encodeObject:v8 forKey:@"webServiceURL"];

  v9 = [(PKObject *)self authenticationToken];
  [v15 encodeObject:v9 forKey:@"authenticationToken"];

  v10 = [(PKObject *)self displayProfile];
  [v15 encodeObject:v10 forKey:@"displayProfile"];

  [v15 encodeInteger:-[PKObject settings](self forKey:{"settings"), @"settings"}];
  [v15 encodeInteger:-[PKObject shareCount](self forKey:{"shareCount"), @"shareCount"}];
  v11 = [(PKObject *)self signingDate];
  [v15 encodeObject:v11 forKey:@"signingDate"];

  for (i = 0; i != 9; ++i)
  {
    v13 = self->_imageSets[i];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"images_%ld", i];
    [v15 encodeObject:v13 forKey:v14];
  }

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  v8 = [(NSData *)self->_manifestHash copyWithZone:a3];
  v9 = *(v5 + 120);
  *(v5 + 120) = v8;

  v10 = [(PKObject *)self content];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSURL *)self->_webServiceURL copyWithZone:a3];
  v13 = *(v5 + 144);
  *(v5 + 144) = v12;

  v14 = [(NSString *)self->_authenticationToken copyWithZone:a3];
  v15 = *(v5 + 152);
  *(v5 + 152) = v14;

  v16 = [(PKDisplayProfile *)self->_displayProfile copyWithZone:a3];
  v17 = *(v5 + 136);
  *(v5 + 136) = v16;

  v18 = [(NSString *)self->_preferredImageSuffix copyWithZone:a3];
  v19 = *(v5 + 192);
  *(v5 + 192) = v18;

  *(v5 + 176) = self->_shareCount;
  *(v5 + 168) = self->_settings;
  objc_storeStrong((v5 + 160), self->_signingDate);
  for (i = 24; i != 96; i += 8)
  {
    objc_storeStrong((v5 + i), *(&self->super.isa + i));
  }

  return v5;
}

@end