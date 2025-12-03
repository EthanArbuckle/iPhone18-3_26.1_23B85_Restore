@interface PKObject
+ (id)_createWithFileDataAccessor:(id)accessor validationOptions:(unint64_t)options warnings:(id *)warnings error:(id *)error;
+ (id)createWithData:(id)data warnings:(id *)warnings error:(id *)error;
+ (id)createWithFileURL:(id)l warnings:(id *)warnings error:(id *)error;
- (BOOL)isContentLoaded;
- (BOOL)isImageSetLoaded:(int64_t)loaded;
- (BOOL)isImageSetType:(int64_t)type equalToImageSetTypeFromObject:(id)object;
- (BOOL)remoteAssetsDownloadedForConfiguration:(id)configuration;
- (BOOL)remoteAssetsDownloadedForSEIDs:(id)ds;
- (PKDisplayTraitCollection)preferredDisplayTraits;
- (PKObject)initWithCoder:(id)coder;
- (PKObject)initWithData:(id)data error:(id *)error;
- (PKObject)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (PKObject)initWithFileURL:(id)l error:(id *)error;
- (id)archiveData;
- (id)content;
- (id)contentLoadedIfNeeded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataForBundleResourceNamed:(id)named withExtension:(id)extension;
- (id)dataForBundleResources:(id)resources;
- (id)imageSetLoadedIfNeeded:(int64_t)needed;
- (id)localizedString:(id)string;
- (id)modificationDate;
- (id)passLocalizedStringForKey:(id)key;
- (id)serializedFileWrapper;
- (void)_lock_flushLoadedImageSets;
- (void)dealloc;
- (void)downloadRemoteAssetsForSEIDS:(id)s completion:(id)completion;
- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)delegate seids:(id)seids completion:(id)completion;
- (void)downloadRemoteAssetsWithConfiguration:(id)configuration completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)flushFormattedFieldValues;
- (void)flushLoadedImageSets;
- (void)loadCachedImageSet:(int64_t)set;
- (void)loadContentAsyncWithCompletion:(id)completion;
- (void)loadContentSync;
- (void)loadImageSetAsync:(int64_t)async preheat:(BOOL)preheat withCompletion:(id)completion;
- (void)loadImageSetSync:(int64_t)sync preheat:(BOOL)preheat;
- (void)noteShared;
- (void)reloadDisplayProfileOfType:(int64_t)type;
- (void)requestUpdateWithCompletion:(id)completion;
- (void)revocationStatusWithCompletion:(id)completion;
- (void)setContent:(id)content;
- (void)setImageSet:(id)set forImageSetType:(int64_t)type;
- (void)setMissingImageSetsFromObject:(id)object;
- (void)setPreferredDisplayTraits:(id)traits;
- (void)setSettings:(unint64_t)settings;
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
    dataAccessor = [(PKObject *)self dataAccessor];
    content = [dataAccessor content];
    [(PKObject *)self setContent:content];
  }
}

- (BOOL)isContentLoaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_content != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (PKObject)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_msgSend(objc_opt_class() "resolvingClass")];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  return v7;
}

- (PKObject)initWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [objc_msgSend(objc_opt_class() "resolvingClass")];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    return 0;
  }

  return v7;
}

+ (id)createWithData:(id)data warnings:(id *)warnings error:(id *)error
{
  dataCopy = data;
  v15 = 0;
  v9 = [[PKSerializedDataAccessor alloc] initWithData:dataCopy error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [self createWithFileDataAccessor:v9 warnings:warnings error:error];
  }

  return v13;
}

+ (id)createWithFileURL:(id)l warnings:(id *)warnings error:(id *)error
{
  lCopy = l;
  v15 = 0;
  v9 = [[PKFileDataAccessor alloc] initWithFileURL:lCopy error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [self createWithFileDataAccessor:v9 warnings:warnings error:error];
  }

  return v13;
}

+ (id)_createWithFileDataAccessor:(id)accessor validationOptions:(unint64_t)options warnings:(id *)warnings error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (accessorCopy)
  {
    resolvingClass = [self resolvingClass];
    if (resolvingClass != self)
    {
      v20 = resolvingClass;
      v21 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = NSStringFromClass(self);
        v23 = NSStringFromClass(v20);
        *buf = 138412546;
        v69 = v22;
        v70 = 2112;
        v71 = v23;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKObject: unable to use subclass %@ to create an automatically typed object instead of root resolving class %@.", buf, 0x16u);
      }

      if (error)
      {
        v24 = NSStringFromClass(self);
        v61 = NSStringFromClass(v20);
        *error = PKValidationErrorWithReason(@"forbidden to use subclass %@ to create an automatically typed object instead of root resolving class %@.", v25, v26, v27, v28, v29, v30, v31, v24);
      }

      goto LABEL_9;
    }

    v33 = objc_autoreleasePoolPush();
    dictionary = [accessorCopy dictionary];
    bundle = [accessorCopy bundle];
    v43 = bundle;
    if (dictionary && bundle)
    {
      v44 = [self classForDictionary:dictionary bundle:bundle];
      if (warnings)
      {
        v45 = &v67;
      }

      else
      {
        v45 = 0;
      }

      if (warnings)
      {
        v67 = 0;
      }

      if (error)
      {
        v46 = &v66;
      }

      else
      {
        v46 = 0;
      }

      if (error)
      {
        v66 = 0;
      }

      v65 = 0;
      v62 = v44;
      v47 = [v44 isValidObjectWithFileDataAccessor:accessorCopy validationOptions:options warnings:v45 error:v46 signingDate:&v65 passDictionary:dictionary];
      if (warnings)
      {
        v48 = v67;
      }

      else
      {
        v48 = 0;
      }

      v64 = v33;
      if (error)
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
        dataTypeIdentifier = [v62 dataTypeIdentifier];
        [accessorCopy setExplicitDataTypeIdentifier:dataTypeIdentifier];

        v54 = [[v62 alloc] initWithDictionary:dictionary bundle:v43];
        v51 = v54;
        if (v54)
        {
          objc_storeStrong((v54 + 128), accessor);
          manifestHash = [accessorCopy manifestHash];
          v56 = *(v51 + 120);
          *(v51 + 120) = manifestHash;

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
    if (warnings && v48)
    {
      v57 = v48;
      *warnings = v48;
    }

    if (error && v49)
    {
      v58 = v49;
      *error = v49;
    }

    v32 = v51;
  }

  else
  {
    if (!error)
    {
LABEL_9:
      v32 = 0;
      goto LABEL_41;
    }

    PKValidationErrorWithReason(0, v11, v12, v13, v14, v15, v16, v17, v60);
    *error = v32 = 0;
  }

LABEL_41:

  return v32;
}

- (PKObject)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = PKObject;
  v4 = [(PKObject *)&v6 init:dictionary];
  if (v4)
  {
    v4->_settings = [objc_opt_class() defaultSettings];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  os_unfair_lock_lock(&self->_lock);
  content = self->_content;
  self->_content = contentCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)loadContentAsyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKObject *)self isContentLoaded])
  {
    v5 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke_4;
    v11[3] = &unk_1E79C4428;
    v12 = completionCopy;
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
    dataAccessor = [(PKObject *)self dataAccessor];
    if (dataAccessor)
    {
      v7 = dataAccessor;
      objc_initWeak(&block, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __43__PKObject_loadContentAsyncWithCompletion___block_invoke;
      v15[3] = &unk_1E79DA2C0;
      objc_copyWeak(&v17, &block);
      v16 = completionCopy;
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
      v14 = completionCopy;
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
  content = [(PKObject *)self content];
  [content flushFormattedFieldValues];
}

- (PKDisplayTraitCollection)preferredDisplayTraits
{
  os_unfair_lock_lock(&self->_lock);
  initWithDefaultTraits = self->_preferredDisplayTraits;
  if (!initWithDefaultTraits)
  {
    initWithDefaultTraits = [[PKDisplayTraitCollection alloc] initWithDefaultTraits];
    preferredDisplayTraits = self->_preferredDisplayTraits;
    self->_preferredDisplayTraits = initWithDefaultTraits;
  }

  os_unfair_lock_unlock(&self->_lock);

  return initWithDefaultTraits;
}

- (void)setPreferredDisplayTraits:(id)traits
{
  traitsCopy = traits;
  os_unfair_lock_lock(&self->_lock);
  preferredDisplayTraits = self->_preferredDisplayTraits;
  self->_preferredDisplayTraits = traitsCopy;

  [(PKObject *)self _lock_flushLoadedImageSets];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isImageSetLoaded:(int64_t)loaded
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(loaded) = self->_imageSets[loaded] != 0;
  os_unfair_lock_unlock(&self->_lock);
  return loaded;
}

- (void)setImageSet:(id)set forImageSetType:(int64_t)type
{
  setCopy = set;
  os_unfair_lock_lock(&self->_lock);
  v7 = &self->super.isa + type;
  v8 = v7[3];
  v7[3] = setCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)loadCachedImageSet:(int64_t)set
{
  if (![(PKObject *)self isImageSetLoaded:?])
  {
    dataAccessor = self->_dataAccessor;
    displayProfile = self->_displayProfile;
    preferredDisplayTraits = [(PKObject *)self preferredDisplayTraits];
    v9 = [(PKDataAccessor *)dataAccessor cachedImageSetForType:set withDisplayProfile:displayProfile displayTraits:preferredDisplayTraits];

    v8 = v9;
    if (v9)
    {
      [(PKObject *)self setImageSet:v9 forImageSetType:set];
      v8 = v9;
    }
  }
}

- (void)loadImageSetSync:(int64_t)sync preheat:(BOOL)preheat
{
  preheatCopy = preheat;
  if (![(PKObject *)self isImageSetLoaded:?])
  {
    dataAccessor = [(PKObject *)self dataAccessor];
    [(PKObject *)self preferredImageScale];
    v9 = v8;
    preferredImageSuffix = [(PKObject *)self preferredImageSuffix];
    displayProfile = [(PKObject *)self displayProfile];
    v12 = [dataAccessor imageSetForType:sync screenScale:preferredImageSuffix suffix:displayProfile displayProfile:preheatCopy preheat:v9];

    [(PKObject *)self setImageSet:v12 forImageSetType:sync];
  }
}

- (void)loadImageSetAsync:(int64_t)async preheat:(BOOL)preheat withCompletion:(id)completion
{
  preheatCopy = preheat;
  completionCopy = completion;
  if ([(PKObject *)self isImageSetLoaded:async])
  {
    v9 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke_2;
    v17[3] = &unk_1E79C4428;
    v18 = completionCopy;
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
    dataAccessor = [(PKObject *)self dataAccessor];
    if (dataAccessor)
    {
      v11 = dataAccessor;
      objc_initWeak(block, self);
      [(PKObject *)self preferredImageScale];
      v14 = v13;
      preferredImageSuffix = [(PKObject *)self preferredImageSuffix];
      displayProfile = [(PKObject *)self displayProfile];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__PKObject_loadImageSetAsync_preheat_withCompletion___block_invoke;
      v19[3] = &unk_1E79DA2E8;
      objc_copyWeak(v21, block);
      v21[1] = async;
      v20 = completionCopy;
      [v11 imageSetForType:async screenScale:preferredImageSuffix suffix:displayProfile displayProfile:preheatCopy preheat:v19 withCompletion:v14];

      objc_destroyWeak(v21);
      objc_destroyWeak(block);
    }

    else
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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

- (void)revocationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  dataAccessor = [(PKObject *)self dataAccessor];
  [dataAccessor revocationStatusWithCompletion:completionCopy];
}

- (void)requestUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  dataAccessor = [(PKObject *)self dataAccessor];
  [dataAccessor requestUpdateWithCompletion:completionCopy];
}

- (void)noteShared
{
  [(PKObject *)self setShareCount:[(PKObject *)self shareCount]+ 1];
  dataAccessor = [(PKObject *)self dataAccessor];
  [dataAccessor noteShared];
}

- (BOOL)remoteAssetsDownloadedForSEIDs:(id)ds
{
  dsCopy = ds;
  dataAccessor = [(PKObject *)self dataAccessor];
  v6 = [dataAccessor remoteAssetsDownloadedForSEIDs:dsCopy];

  return v6;
}

- (BOOL)remoteAssetsDownloadedForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dataAccessor = [(PKObject *)self dataAccessor];
  v6 = [dataAccessor remoteAssetsDownloadedForConfiguration:configurationCopy];

  return v6;
}

- (void)downloadRemoteAssetsForSEIDS:(id)s completion:(id)completion
{
  completionCopy = completion;
  sCopy = s;
  v8 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v8 setSeids:sCopy];

  [(PKObject *)self downloadRemoteAssetsWithConfiguration:v8 completion:completionCopy];
}

- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)delegate seids:(id)seids completion:(id)completion
{
  completionCopy = completion;
  seidsCopy = seids;
  delegateCopy = delegate;
  v11 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v11 setCloudStoreCoordinatorDelegate:delegateCopy];

  [(PKDownloadRemoteAssetConfiguration *)v11 setSeids:seidsCopy];
  [(PKObject *)self downloadRemoteAssetsWithConfiguration:v11 completion:completionCopy];
}

- (void)downloadRemoteAssetsWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  dataAccessor = [(PKObject *)self dataAccessor];
  [dataAccessor downloadRemoteAssetsWithConfiguration:configurationCopy completion:completionCopy];
}

- (id)localizedString:(id)string
{
  stringCopy = string;
  dataAccessor = [(PKObject *)self dataAccessor];
  bundle = [dataAccessor bundle];

  v7 = PKLocalizedPassStringForPassBundle(stringCopy, bundle, 0);

  return v7;
}

- (id)archiveData
{
  dataAccessor = [(PKObject *)self dataAccessor];
  archiveData = [dataAccessor archiveData];

  return archiveData;
}

- (id)serializedFileWrapper
{
  dataAccessor = [(PKObject *)self dataAccessor];
  serializedFileWrapper = [dataAccessor serializedFileWrapper];

  return serializedFileWrapper;
}

- (id)modificationDate
{
  dataAccessor = [(PKObject *)self dataAccessor];
  v3 = [dataAccessor resourceValueForKey:*MEMORY[0x1E695DA98]];

  return v3;
}

- (void)setSettings:(unint64_t)settings
{
  if (self->_settings != settings)
  {
    self->_settings = settings;
    dataAccessor = [(PKObject *)self dataAccessor];
    [dataAccessor updateSettings:settings];
  }
}

- (void)reloadDisplayProfileOfType:(int64_t)type
{
  dataAccessor = [(PKObject *)self dataAccessor];
  v7 = [dataAccessor displayProfileOfType:type];

  v6 = v7;
  if (v7)
  {
    [(PKObject *)self setDisplayProfile:v7];
    v6 = v7;
  }
}

- (id)dataForBundleResourceNamed:(id)named withExtension:(id)extension
{
  extensionCopy = extension;
  namedCopy = named;
  dataAccessor = [(PKObject *)self dataAccessor];
  v9 = [dataAccessor dataForBundleResourceNamed:namedCopy withExtension:extensionCopy];

  return v9;
}

- (id)dataForBundleResources:(id)resources
{
  resourcesCopy = resources;
  dataAccessor = [(PKObject *)self dataAccessor];
  v6 = [dataAccessor dataForBundleResources:resourcesCopy];

  return v6;
}

- (id)passLocalizedStringForKey:(id)key
{
  keyCopy = key;
  dataAccessor = [(PKObject *)self dataAccessor];
  v6 = [dataAccessor passLocalizedStringForKey:keyCopy];

  return v6;
}

- (id)imageSetLoadedIfNeeded:(int64_t)needed
{
  [(PKObject *)self loadImageSetSync:needed preheat:0];
  v5 = self->_imageSets[needed];

  return v5;
}

- (BOOL)isImageSetType:(int64_t)type equalToImageSetTypeFromObject:(id)object
{
  objectCopy = object;
  v7 = [(PKObject *)self imageSetLoadedIfNeeded:type];
  v8 = [objectCopy imageSetLoadedIfNeeded:type];

  LOBYTE(objectCopy) = [v7 isEqual:v8];
  return objectCopy;
}

- (void)setMissingImageSetsFromObject:(id)object
{
  objectCopy = object;
  if (objectCopy && self != objectCopy)
  {
    if (self >= objectCopy)
    {
      selfCopy = objectCopy;
    }

    else
    {
      selfCopy = self;
    }

    v9 = objectCopy;
    if (self >= objectCopy)
    {
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = objectCopy;
    }

    os_unfair_lock_lock(&selfCopy->_lock);
    os_unfair_lock_lock(&selfCopy2->_lock);
    imageSets = self->_imageSets;
    for (i = 3; i != 12; ++i)
    {
      if (!*imageSets)
      {
        objc_storeStrong(imageSets, *(&v9->super.isa + i));
      }

      ++imageSets;
    }

    os_unfair_lock_unlock(&selfCopy2->_lock);
    os_unfair_lock_unlock(&selfCopy->_lock);
    objectCopy = v9;
  }
}

- (PKObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = PKObject;
  v5 = [(PKObject *)&v38 init];
  if (v5)
  {
    v37 = objc_autoreleasePoolPush();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    [(PKObject *)v5 setUniqueID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    [(PKObject *)v5 setManifestHash:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"content"];
    [(PKObject *)v5 setContent:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webServiceURL"];
    [(PKObject *)v5 setWebServiceURL:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationToken"];
    [(PKObject *)v5 setAuthenticationToken:v13];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"displayProfile"];
    [(PKObject *)v5 setDisplayProfile:v17];

    -[PKObject setShareCount:](v5, "setShareCount:", [coderCopy decodeIntegerForKey:@"shareCount"]);
    -[PKObject setSettingsWithoutUpdatingDataAccessor:](v5, "setSettingsWithoutUpdatingDataAccessor:", [coderCopy decodeIntegerForKey:@"settings"]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signingDate"];
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
      v30 = [coderCopy decodeObjectOfClasses:v26 forKey:v29];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  uniqueID = [(PKObject *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];

  manifestHash = [(PKObject *)self manifestHash];
  [coderCopy encodeObject:manifestHash forKey:@"manifestHash"];

  content = [(PKObject *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  webServiceURL = [(PKObject *)self webServiceURL];
  [coderCopy encodeObject:webServiceURL forKey:@"webServiceURL"];

  authenticationToken = [(PKObject *)self authenticationToken];
  [coderCopy encodeObject:authenticationToken forKey:@"authenticationToken"];

  displayProfile = [(PKObject *)self displayProfile];
  [coderCopy encodeObject:displayProfile forKey:@"displayProfile"];

  [coderCopy encodeInteger:-[PKObject settings](self forKey:{"settings"), @"settings"}];
  [coderCopy encodeInteger:-[PKObject shareCount](self forKey:{"shareCount"), @"shareCount"}];
  signingDate = [(PKObject *)self signingDate];
  [coderCopy encodeObject:signingDate forKey:@"signingDate"];

  for (i = 0; i != 9; ++i)
  {
    v13 = self->_imageSets[i];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"images_%ld", i];
    [coderCopy encodeObject:v13 forKey:v14];
  }

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  v8 = [(NSData *)self->_manifestHash copyWithZone:zone];
  v9 = *(v5 + 120);
  *(v5 + 120) = v8;

  content = [(PKObject *)self content];
  v11 = *(v5 + 16);
  *(v5 + 16) = content;

  v12 = [(NSURL *)self->_webServiceURL copyWithZone:zone];
  v13 = *(v5 + 144);
  *(v5 + 144) = v12;

  v14 = [(NSString *)self->_authenticationToken copyWithZone:zone];
  v15 = *(v5 + 152);
  *(v5 + 152) = v14;

  v16 = [(PKDisplayProfile *)self->_displayProfile copyWithZone:zone];
  v17 = *(v5 + 136);
  *(v5 + 136) = v16;

  v18 = [(NSString *)self->_preferredImageSuffix copyWithZone:zone];
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