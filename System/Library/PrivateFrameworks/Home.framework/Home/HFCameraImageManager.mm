@interface HFCameraImageManager
+ (id)clipIdentifierStringFromDate:(id)date;
+ (id)sharedManager;
+ (void)purgeVideoFiles;
+ (void)purgeVideoFilesAtURL:(id)l completionHandler:(id)handler;
- (CGSize)videoSize;
- (HFCameraImageManager)init;
- (HFCameraPosterFrameProvider)cameraPosterFrameProvider;
- (HMCameraProfile)cameraProfile;
- (id)cachedPosterFrameImageForClip:(id)clip offset:(double)offset requestor:(id)requestor;
- (id)faceCropForClip:(id)clip atOffset:(double)offset;
- (id)faceCropForPersonName:(id)name;
- (id)faceCropImagesForClip:(id)clip atOffset:(double)offset;
- (id)firstPosterFrameImageForClip:(id)clip;
- (id)heroFrameImageForClip:(id)clip;
- (id)imageObserversForKey:(id)key;
- (id)keyForClip:(id)clip;
- (id)keyForClip:(id)clip timeOffset:(double)offset;
- (id)representativeImageForClip:(id)clip;
- (void)_addPosterFrameImage:(id)image forClip:(id)clip withOffset:(double)offset;
- (void)_generateImagesForForTimelapseClip:(id)clip atLocation:(id)location;
- (void)_updateDemoObserversForImage:(id)image forClip:(id)clip withOffset:(double)offset;
- (void)addDemoPosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset;
- (void)addFaceCropImageObserver:(id)observer forClip:(id)clip usingSignificantEvent:(id)event;
- (void)addHeroFrameImageObserver:(id)observer forClip:(id)clip;
- (void)addPosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset;
- (void)dealloc;
- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l;
- (void)executionEnvironmentDidEnterBackground:(id)background;
- (void)failToFindHeroFrameForClip:(id)clip;
- (void)failedToDownloadVideoFileForClip:(id)clip;
- (void)failedToFindFaceCropForClip:(id)clip withKey:(id)key;
- (void)foundVideoFileForClip:(id)clip atURL:(id)l;
- (void)generateDemoPosterFramesForAsset:(id)asset forClip:(id)clip;
- (void)generateImageUsingAsset:(id)asset clip:(id)clip offset:(double)offset;
- (void)generatePosterFrameImageForClip:(id)clip atOffset:(double)offset observer:(id)observer;
- (void)getPosterFrameImage:(id)image forClip:(id)clip atOffset:(double)offset;
- (void)purgePosterFrames;
- (void)removeFaceCropImageObserver:(id)observer forPersonName:(id)name;
- (void)removeHeroFrameImageObserver:(id)observer forClip:(id)clip;
- (void)removePosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset;
- (void)resetForCameraDismissal;
- (void)setVideoSize:(CGSize)size;
@end

@implementation HFCameraImageManager

+ (id)sharedManager
{
  if (qword_280E02AA0 != -1)
  {
    dispatch_once(&qword_280E02AA0, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_210;

  return v3;
}

void __37__HFCameraImageManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HFCameraImageManager);
  v1 = _MergedGlobals_210;
  _MergedGlobals_210 = v0;
}

- (HFCameraImageManager)init
{
  v25.receiver = self;
  v25.super_class = HFCameraImageManager;
  v2 = [(HFCameraImageManager *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    posterFrameQueue = v2->_posterFrameQueue;
    v2->_posterFrameQueue = v3;

    v5 = objc_alloc_init(HFCameraImageCache);
    imageCache = v2->_imageCache;
    v2->_imageCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imageObservers = v2->_imageObservers;
    v2->_imageObservers = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    generationObservers = v2->_generationObservers;
    v2->_generationObservers = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inProgressOperations = v2->_inProgressOperations;
    v2->_inProgressOperations = v11;

    v13 = objc_alloc_init(HFCameraClipVideoAssetOperationCache);
    fetchCache = v2->_fetchCache;
    v2->_fetchCache = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestedHeroFrameCache = v2->_requestedHeroFrameCache;
    v2->_requestedHeroFrameCache = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestedFaceCropCache = v2->_requestedFaceCropCache;
    v2->_requestedFaceCropCache = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestedPosterFrameCache = v2->_requestedPosterFrameCache;
    v2->_requestedPosterFrameCache = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    offsetsForFile = v2->_offsetsForFile;
    v2->_offsetsForFile = v21;

    if (+[HFCameraUtilities shouldPurgePosterFrameCache])
    {
      [(HFCameraImageManager *)v2 purgePosterFrames];
    }

    +[HFCameraImageManager purgeVideoFiles];
    v23 = +[HFExecutionEnvironment sharedInstance];
    [v23 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[HFExecutionEnvironment sharedInstance];
  [v3 removeObserver:self];

  posterFrameQueue = [(HFCameraImageManager *)self posterFrameQueue];
  [posterFrameQueue cancelAllOperations];

  v5.receiver = self;
  v5.super_class = HFCameraImageManager;
  [(HFCameraImageManager *)&v5 dealloc];
}

- (id)heroFrameImageForClip:(id)clip
{
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v6 = [HFCameraImageCache heroFrameKeyForCameraClipIdentifierString:uUIDString];

  imageCache = [(HFCameraImageManager *)self imageCache];
  v8 = [imageCache imageForKey:v6];

  return v8;
}

- (id)faceCropForClip:(id)clip atOffset:(double)offset
{
  v20 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v7 = [clipCopy hf_faceCropNameAtOffset:offset];
  if (v7)
  {
    v8 = [HFCameraImageCache faceCropKeyForPersonName:v7];
    v9 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Requesting cached face crop using key:%@.", &v16, 0xCu);
    }

    imageCache = [(HFCameraImageManager *)self imageCache];
    v11 = [imageCache imageForKey:v8];
  }

  else
  {
    v8 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [clipCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v16 = 138412546;
      v17 = uUIDString;
      v18 = 2048;
      offsetCopy = offset;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to find name for UUID:%@ at offset:%.2f.", &v16, 0x16u);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)faceCropForPersonName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [HFCameraImageCache faceCropKeyForPersonName:name];
  v5 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Requesting cached face crop using key:%@.", &v10, 0xCu);
  }

  imageCache = [(HFCameraImageManager *)self imageCache];
  v7 = [imageCache imageForKey:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)faceCropImagesForClip:(id)clip atOffset:(double)offset
{
  v26 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [clipCopy hf_faceCropNamesAtOffset:offset];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __55__HFCameraImageManager_faceCropImagesForClip_atOffset___block_invoke;
  v19 = &unk_277DF3258;
  selfCopy = self;
  v9 = array;
  v21 = v9;
  [v8 enumerateObjectsUsingBlock:&v16];
  v10 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = uniqueIdentifier;
    _os_log_debug_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEBUG, "Returning faceCropImages:%@ for clipUUID:%@", buf, 0x16u);
  }

  v11 = v21;
  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void __55__HFCameraImageManager_faceCropImagesForClip_atOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [HFCameraImageCache faceCropKeyForPersonName:a2];
  v4 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Requesting cached face crop using key:%@.", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) imageCache];
  v6 = [v5 imageForKey:v3];

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)cachedPosterFrameImageForClip:(id)clip offset:(double)offset requestor:(id)requestor
{
  v27 = *MEMORY[0x277D85DE8];
  requestorCopy = requestor;
  clipCopy = clip;
  [(HFCameraImageManager *)self _timeScaleAdjustedOffset:offset];
  v11 = v10;
  uniqueIdentifier = [clipCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  *&v14 = v11;
  v15 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:v14];

  imageCache = [(HFCameraImageManager *)self imageCache];
  v17 = [imageCache imageForKey:v15];

  v18 = HFLogForCategory(0x15uLL);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = requestorCopy;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Poster Frame hit for key:%@ requester:%@", &v23, 0x16u);
    }

    v20 = v17;
  }

  else
  {
    if (v19)
    {
      v23 = 138412546;
      v24 = v15;
      v25 = 2112;
      v26 = requestorCopy;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Poster Frame miss for key:%@ requestor:%@", &v23, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)representativeImageForClip:(id)clip
{
  v15 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = [(HFCameraImageManager *)self heroFrameImageForClip:clipCopy];
  if (v5)
  {
    v6 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [clipCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v13 = 138412290;
      v14 = uUIDString;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Image cache hit for representative image (Hero frame) for UUID:%@.", &v13, 0xCu);
    }

    v9 = v5;
  }

  else
  {
    v9 = [(HFCameraImageManager *)self firstPosterFrameImageForClip:clipCopy];
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)firstPosterFrameImageForClip:(id)clip
{
  v16 = *MEMORY[0x277D85DE8];
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v6 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:0.0];

  imageCache = [(HFCameraImageManager *)self imageCache];
  v8 = [imageCache imageForKey:v6];

  v9 = HFLogForCategory(0x15uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Image cache hit for first poster frame image for key:%@.", &v14, 0xCu);
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Image cache miss for first poster frame image for key:%@.", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)imageObserversForKey:(id)key
{
  keyCopy = key;
  imageObservers = [(HFCameraImageManager *)self imageObservers];
  v6 = [imageObservers objectForKey:keyCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    imageObservers2 = [(HFCameraImageManager *)self imageObservers];
    [imageObservers2 setObject:v6 forKey:keyCopy];
  }

  return v6;
}

- (void)addFaceCropImageObserver:(id)observer forClip:(id)clip usingSignificantEvent:(id)event
{
  v46 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clipCopy = clip;
  eventCopy = event;
  faceClassification = [eventCopy faceClassification];
  person = [faceClassification person];
  name = [person name];
  v14 = [HFCameraImageCache faceCropKeyForPersonName:name];

  imageCache = [(HFCameraImageManager *)self imageCache];
  v16 = [imageCache imageForKey:v14];

  if (!v16)
  {
    v18 = [(HFCameraImageManager *)self imageObserversForKey:v14];
    requestedFaceCropCache = [(HFCameraImageManager *)self requestedFaceCropCache];
    v20 = [requestedFaceCropCache objectForKeyedSubscript:v14];

    if (v20)
    {
      if ([v20 integerValue] == 1)
      {
        v21 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v43 = observerCopy;
          v44 = 2112;
          v45 = v14;
          _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Face crop request is pending. Adding observer:%@ for key:%@", buf, 0x16u);
        }

        [v18 addObject:observerCopy];
        goto LABEL_20;
      }

      if ([v20 integerValue] == 3)
      {
        v24 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v43 = v14;
          v44 = 2112;
          v45 = observerCopy;
          _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "Face crop request failed for key:%@. Unable to add observer:%@", buf, 0x16u);
        }

        v25 = observerCopy;
        if (objc_opt_respondsToSelector())
        {
          faceClassification2 = [eventCopy faceClassification];
          person2 = [faceClassification2 person];
          name2 = [person2 name];
          [v25 manager:self failedToFindFaceCropForPersonName:name2];
        }

        goto LABEL_20;
      }
    }

    else
    {
      requestedFaceCropCache2 = [(HFCameraImageManager *)self requestedFaceCropCache];
      [requestedFaceCropCache2 setObject:&unk_282523358 forKeyedSubscript:v14];

      v23 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v43 = observerCopy;
        v44 = 2112;
        v45 = v14;
        _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Face crop request initiated. Adding observer:%@ for key:%@", buf, 0x16u);
      }

      [v18 addObject:observerCopy];
    }

    v27 = dispatch_get_global_queue(0, 0);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_15;
    v31[3] = &unk_277DF3280;
    v31[4] = self;
    v32 = eventCopy;
    v33 = clipCopy;
    v34 = v14;
    v35 = v18;
    dispatch_async(v27, v31);

LABEL_20:
    goto LABEL_21;
  }

  v17 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v14;
    _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Found face crop in cache for key:%@.", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke;
  block[3] = &unk_277DF3280;
  v37 = observerCopy;
  selfCopy = self;
  v39 = v16;
  v40 = clipCopy;
  v41 = eventCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v18 = v37;
LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

void __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = [*(a1 + 64) faceClassification];
  v5 = [v7 person];
  v6 = [v5 name];
  [v1 manager:v2 didFindFaceCrop:v3 forClip:v4 usingPersonName:v6];
}

void __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_15(id *a1)
{
  v2 = [a1[4] cameraProfile];
  v3 = [v2 accessory];
  v4 = [v3 home];

  v5 = [a1[5] faceClassification];
  v6 = [v5 personManagerUUID];

  v19 = v4;
  v7 = [v4 personManagerWithUUID:v6];
  objc_initWeak(&location, a1[4]);
  v8 = MEMORY[0x277CBEB98];
  v9 = [a1[5] faceClassification];
  v10 = [v9 person];
  v11 = [v10 UUID];
  v12 = [v8 setWithObject:v11];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_2;
  v20[3] = &unk_277DF3320;
  objc_copyWeak(&v23, &location);
  v13 = a1[6];
  v14 = a1[7];
  v15 = a1[8];
  v16 = a1[5];
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v21 = v18;
  v22 = v17;
  [v7 fetchFaceCropsForPersonsWithUUIDs:v12 completion:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_2(id *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (v6)
  {
    v8 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[4];
      *buf = 138412546;
      v34 = v18;
      v35 = 2112;
      v36 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Unable to add face crop for key:%@ - error:%@", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_17;
    block[3] = &unk_277DF32A8;
    block[4] = WeakRetained;
    v31 = a1[4];
    v32 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v9 = [v5 allObjects];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_21];

    v11 = [v10 firstObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dataRepresentation];
      v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v13];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_2_25;
      v20[3] = &unk_277DF32F8;
      v21 = v14;
      v22 = a1[5];
      v23 = WeakRetained;
      v24 = a1[6];
      v25 = a1[4];
      v26 = a1[7];
      v15 = v14;
      dispatch_async(MEMORY[0x277D85CD0], v20);
    }

    else
    {
      v16 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[4];
        *buf = 138412546;
        v34 = v19;
        v35 = 2112;
        v36 = 0;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Unable to add face crop for key:%@ - error:%@", buf, 0x16u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_23;
      v27[3] = &unk_277DF32A8;
      v27[4] = WeakRetained;
      v28 = a1[4];
      v29 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], v27);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_2_18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = objc_opt_class();
  v13 = v5;
  if (!v13)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v18 = [v9 dateCreated];
  v19 = [v15 dateCreated];
  v20 = [v18 compare:v19];

  return v20;
}

void __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_2_25(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = HFLogForCategory(0x15uLL);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Caching face crop for key:%@ and notifying observers.", buf, 0xCu);
    }

    v6 = [*(a1 + 48) imageCache];
    [v6 addImage:*(a1 + 32) forKey:*(a1 + 40)];

    v7 = [*(a1 + 48) requestedFaceCropCache];
    [v7 setObject:&unk_282523370 forKeyedSubscript:*(a1 + 40)];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_28;
    v11[3] = &unk_277DF32D0;
    v8 = *(a1 + 56);
    v11[4] = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    [v8 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failure to generate image for face crop for key:%@.", buf, 0xCu);
    }

    [*(a1 + 48) failedToFindFaceCropForClip:*(a1 + 64) withKey:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __79__HFCameraImageManager_addFaceCropImageObserver_forClip_usingSignificantEvent___block_invoke_28(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  v9 = [v5 faceClassification];
  v7 = [v9 person];
  v8 = [v7 name];
  [v6 manager:v2 didFindFaceCrop:v3 forClip:v4 usingPersonName:v8];
}

- (void)failedToFindFaceCropForClip:(id)clip withKey:(id)key
{
  keyCopy = key;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HFCameraImageManager_failedToFindFaceCropForClip_withKey___block_invoke;
  v7[3] = &unk_277DF3370;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __60__HFCameraImageManager_failedToFindFaceCropForClip_withKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedFaceCropCache];
  [v2 setObject:&unk_282523388 forKeyedSubscript:*(a1 + 40)];

  v3 = [*(a1 + 32) imageObserversForKey:*(a1 + 40)];
  v4 = [HFCameraImageCache personNameForFaceCropKey:*(a1 + 40)];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __60__HFCameraImageManager_failedToFindFaceCropForClip_withKey___block_invoke_33;
  v10 = &unk_277DF3348;
  v11 = *(a1 + 32);
  v12 = v4;
  v5 = v4;
  [v3 enumerateObjectsUsingBlock:&v7];
  [v3 removeAllObjects];
  v6 = [*(a1 + 32) imageObservers];
  [v6 removeObjectForKey:*(a1 + 40)];
}

void __60__HFCameraImageManager_failedToFindFaceCropForClip_withKey___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) failedToFindFaceCropForPersonName:*(a1 + 40)];
  }
}

- (void)removeFaceCropImageObserver:(id)observer forPersonName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v7 = [HFCameraImageCache faceCropKeyForPersonName:name];
  imageObservers = [(HFCameraImageManager *)self imageObservers];
  v9 = [imageObservers valueForKey:v7];

  if (v9)
  {
    v10 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = observerCopy;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Remove face crop observer:%@ for key:%@.", &v14, 0x16u);
    }

    [v9 removeObject:observerCopy];
  }

  if (![v9 count])
  {
    v11 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "All face crop observers have been removed for key:%@.", &v14, 0xCu);
    }

    imageObservers2 = [(HFCameraImageManager *)self imageObservers];
    [imageObservers2 removeObjectForKey:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addHeroFrameImageObserver:(id)observer forClip:(id)clip
{
  v49 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clipCopy = clip;
  if (!+[HFCameraUtilities shouldDisableHeroFrameDownloads])
  {
    if (!clipCopy)
    {
      v21 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "Hero frame can't be located for missing clip.", buf, 2u);
      }

      v10 = observerCopy;
      selfCopy4 = self;
      v12 = 0;
      goto LABEL_13;
    }

    uniqueIdentifier = [clipCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v15 = [HFCameraImageCache heroFrameKeyForCameraClipIdentifierString:uUIDString];

    imageCache = [(HFCameraImageManager *)self imageCache];
    v17 = [imageCache imageForKey:v15];

    v18 = HFLogForCategory(0x15uLL);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138412290;
        v44 = v15;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Found hero frame in cache for key:%@.", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke;
      block[3] = &unk_277DF3398;
      v39 = observerCopy;
      selfCopy2 = self;
      v41 = v17;
      v42 = clipCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v20 = v39;
      goto LABEL_30;
    }

    if (v19)
    {
      cameraProfile = [(HFCameraImageManager *)self cameraProfile];
      *buf = 138412802;
      v44 = observerCopy;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = cameraProfile;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Adding observer:%@ for hero frame key:%@ with profile:%@", buf, 0x20u);
    }

    v20 = [(HFCameraImageManager *)self imageObserversForKey:v15];
    requestedHeroFrameCache = [(HFCameraImageManager *)self requestedHeroFrameCache];
    v24 = [requestedHeroFrameCache objectForKeyedSubscript:v15];

    if (v24)
    {
      if ([v24 integerValue] == 1)
      {
        v25 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v44 = observerCopy;
          v45 = 2112;
          v46 = v15;
          _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "Hero frame request is pending. Adding observer:%@ for key:%@", buf, 0x16u);
        }

        [v20 addObject:observerCopy];
        goto LABEL_29;
      }

      if ([v24 integerValue] == 3)
      {
        v28 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v44 = v15;
          v45 = 2112;
          v46 = observerCopy;
          _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "Hero frame request failed for key:%@. Unable to add observer:%@", buf, 0x16u);
        }

        [observerCopy manager:self failedToFindHeroFrameforClip:clipCopy];
        goto LABEL_29;
      }
    }

    else
    {
      v26 = HFLogForCategory(0x15uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v44 = observerCopy;
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Hero frame request initiated. Adding observer:%@ for key:%@", buf, 0x16u);
      }

      requestedHeroFrameCache2 = [(HFCameraImageManager *)self requestedHeroFrameCache];
      [requestedHeroFrameCache2 setObject:&unk_282523358 forKeyedSubscript:v15];

      [v20 addObject:observerCopy];
    }

    cameraProfile2 = [(HFCameraImageManager *)self cameraProfile];
    clipManager = [cameraProfile2 clipManager];
    uniqueIdentifier2 = [clipCopy uniqueIdentifier];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke_36;
    v33[3] = &unk_277DF33E8;
    v34 = v15;
    selfCopy3 = self;
    v36 = clipCopy;
    v37 = v20;
    [clipManager fetchHeroFrameDataRepresentationForClipWithUUID:uniqueIdentifier2 completion:v33];

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v8 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier3 = [clipCopy uniqueIdentifier];
    *buf = 138412290;
    v44 = uniqueIdentifier3;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Hero frame downloads disabled for clip:%@.", buf, 0xCu);
  }

  v10 = observerCopy;
  selfCopy4 = self;
  v12 = clipCopy;
LABEL_13:
  [v10 manager:selfCopy4 failedToFindHeroFrameforClip:v12];
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
}

void __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412802;
      v25 = v16;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Unable to add hero frame for key:%@ - data:%@ error:%@", buf, 0x20u);
    }

    [*(a1 + 40) failToFindHeroFrameForClip:*(a1 + 48)];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v5];
    v9 = HFLogForCategory(0x15uLL);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 56);
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Caching hero frame for key:%@ and notifying observers:%@.", buf, 0x16u);
      }

      v13 = [*(a1 + 40) imageCache];
      [v13 addImage:v8 forKey:*(a1 + 32)];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke_37;
      block[3] = &unk_277DF3280;
      v18 = *(a1 + 32);
      v14 = v18.i64[0];
      v20 = vextq_s8(v18, v18, 8uLL);
      v21 = *(a1 + 56);
      v22 = v8;
      v23 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138412802;
        v25 = v17;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = 0;
        _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Failure to generate image for hero frame for key:%@ - data:%@ error:%@", buf, 0x20u);
      }

      [*(a1 + 40) failToFindHeroFrameForClip:*(a1 + 48)];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedHeroFrameCache];
  [v2 setObject:&unk_282523370 forKeyedSubscript:*(a1 + 40)];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HFCameraImageManager_addHeroFrameImageObserver_forClip___block_invoke_2;
  v5[3] = &unk_277DF33C0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v3 enumerateObjectsUsingBlock:v5];
  [*(a1 + 48) removeAllObjects];
  v4 = [*(a1 + 32) imageObservers];
  [v4 removeObjectForKey:*(a1 + 40)];
}

- (void)failToFindHeroFrameForClip:(id)clip
{
  clipCopy = clip;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HFCameraImageManager_failToFindHeroFrameForClip___block_invoke;
  v6[3] = &unk_277DF3370;
  v7 = clipCopy;
  selfCopy = self;
  v5 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__HFCameraImageManager_failToFindHeroFrameForClip___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [v2 UUIDString];
  v4 = [HFCameraImageCache heroFrameKeyForCameraClipIdentifierString:v3];

  v5 = [*(a1 + 40) requestedHeroFrameCache];
  [v5 setObject:&unk_282523388 forKeyedSubscript:v4];

  v6 = [*(a1 + 40) imageObserversForKey:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFCameraImageManager_failToFindHeroFrameForClip___block_invoke_2;
  v10[3] = &unk_277DF3348;
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  [v6 enumerateObjectsUsingBlock:v10];
  [v6 removeAllObjects];
  v8 = [*(a1 + 40) imageObservers];
  [v8 removeObjectForKey:v4];
}

void __51__HFCameraImageManager_failToFindHeroFrameForClip___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) failedToFindHeroFrameforClip:*(a1 + 40)];
  }
}

- (void)removeHeroFrameImageObserver:(id)observer forClip:(id)clip
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v9 = [HFCameraImageCache heroFrameKeyForCameraClipIdentifierString:uUIDString];

  imageObservers = [(HFCameraImageManager *)self imageObservers];
  v11 = [imageObservers valueForKey:v9];

  v12 = HFLogForCategory(0x15uLL);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v17 = 138412546;
      v18 = observerCopy;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Remove hero frame observer:%@ for key:%@.", &v17, 0x16u);
    }

    [v11 removeObject:observerCopy];
  }

  else
  {
    if (v13)
    {
      v17 = 138412546;
      v18 = observerCopy;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Already removed hero frame observer:%@ for key:%@.", &v17, 0x16u);
    }
  }

  if (![v11 count])
  {
    v14 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "All hero frame observers have been removed for key:%@.", &v17, 0xCu);
    }

    imageObservers2 = [(HFCameraImageManager *)self imageObservers];
    [imageObservers2 removeObjectForKey:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HFCameraPosterFrameProvider)cameraPosterFrameProvider
{
  cameraPosterFrameProvider = self->_cameraPosterFrameProvider;
  if (!cameraPosterFrameProvider)
  {
    v4 = [HFCameraPosterFrameProvider alloc];
    imageCache = [(HFCameraImageManager *)self imageCache];
    v6 = +[HFCameraTimelapseClipManager sharedManager];
    v7 = [(HFCameraPosterFrameProvider *)v4 initWithImageCache:imageCache andTimelapseClipInfoProvider:v6];
    v8 = self->_cameraPosterFrameProvider;
    self->_cameraPosterFrameProvider = v7;

    cameraPosterFrameProvider = self->_cameraPosterFrameProvider;
  }

  return cameraPosterFrameProvider;
}

- (void)getPosterFrameImage:(id)image forClip:(id)clip atOffset:(double)offset
{
  clipCopy = clip;
  imageCopy = image;
  cameraPosterFrameProvider = [(HFCameraImageManager *)self cameraPosterFrameProvider];
  [cameraPosterFrameProvider getPosterFrameForDelegate:imageCopy forHighQualityClip:clipCopy atOffset:offset];
}

- (void)addPosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset
{
  v25 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clipCopy = clip;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  *&v12 = offset;
  v13 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:v12];

  imageCache = [(HFCameraImageManager *)self imageCache];
  v15 = [imageCache imageForKey:v13];

  if (v15)
  {
    v16 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218498;
      offsetCopy = offset;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = observerCopy;
      _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Found image in cache at offset:%.0f from key:%@ observer:%@", &v19, 0x20u);
    }

    v17 = observerCopy;
    if (objc_opt_respondsToSelector())
    {
      [v17 manager:self didFindImage:v15 atTimeOffset:clipCopy forClip:offset];
    }
  }

  else
  {
    [(HFCameraImageManager *)self generatePosterFrameImageForClip:clipCopy atOffset:observerCopy observer:offset];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removePosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset
{
  v27 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clipCopy = clip;
  v10 = [(HFCameraImageManager *)self keyForClip:clipCopy timeOffset:offset];
  imageObservers = [(HFCameraImageManager *)self imageObservers];
  v12 = [imageObservers valueForKey:v10];

  if (v12)
  {
    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [clipCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v21 = 138412802;
      v22 = observerCopy;
      v23 = 2112;
      offsetCopy2 = *&uUIDString;
      v25 = 2048;
      offsetCopy = offset;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Remove observer:%@ for clip:%@ at offset:%.0f", &v21, 0x20u);
    }

    [v12 removeObject:observerCopy];
  }

  if (![v12 count])
  {
    v16 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier2 = [clipCopy uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];
      v21 = 138412546;
      v22 = uUIDString2;
      v23 = 2048;
      offsetCopy2 = offset;
      _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "All observers have been removed for clip:%@ at offset:%.0f", &v21, 0x16u);
    }

    imageObservers2 = [(HFCameraImageManager *)self imageObservers];
    [imageObservers2 removeObjectForKey:v10];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addDemoPosterFrameImageObserver:(id)observer forClip:(id)clip atOffset:(double)offset
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  clipCopy = clip;
  v10 = [(HFCameraImageManager *)self cachedPosterFrameImageForClip:clipCopy offset:self requestor:offset];
  if (v10)
  {
    v11 = observerCopy;
    if (objc_opt_respondsToSelector())
    {
      [v11 manager:self didFindImage:v10 atTimeOffset:clipCopy forClip:offset];
    }
  }

  else
  {
    v12 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [clipCopy uniqueIdentifier];
      v18 = 138412546;
      v19 = uniqueIdentifier;
      v20 = 1024;
      v21 = 1;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Requesting addition to generation observers for clip:%@ for count:%d.", &v18, 0x12u);
    }

    [(HFCameraImageManager *)self _timeScaleAdjustedOffset:offset];
    v11 = [(HFCameraImageManager *)self keyForClip:clipCopy timeOffset:?];
    generationObservers = [(HFCameraImageManager *)self generationObservers];
    v15 = [generationObservers objectForKey:v11];

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
      generationObservers2 = [(HFCameraImageManager *)self generationObservers];
      [generationObservers2 setObject:v15 forKey:v11];
    }

    [v15 addObject:observerCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)generateImageUsingAsset:(id)asset clip:(id)clip offset:(double)offset
{
  v25 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  clipCopy = clip;
  v10 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:assetCopy];
  CMTimeMake(&v22, 1, 1);
  buf = v22;
  [v10 setRequestedTimeToleranceBefore:&buf];
  CMTimeMake(&v21, 1, 1);
  buf = v21;
  [v10 setRequestedTimeToleranceAfter:&buf];
  [(HFCameraImageManager *)self posterFrameSize];
  [v10 setMaximumSize:?];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(&v20, 0, sizeof(v20));
  CMTimeMakeWithSeconds(&v20, offset, 1);
  buf = v20;
  v12 = [MEMORY[0x277CCAE60] valueWithCMTime:&buf];
  [v11 addObject:v12];
  v13 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    LODWORD(buf.value) = 138412802;
    *(&buf.value + 4) = uniqueIdentifier;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v11;
    HIWORD(buf.epoch) = 2112;
    v24 = assetCopy;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Generating 1 image for key:%@ with timeValues:%@ using asset:%@.", &buf, 0x20u);
  }

  objc_initWeak(&buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke;
  v17[3] = &unk_277DF3460;
  objc_copyWeak(v19, &buf);
  v19[1] = *&offset;
  v15 = clipCopy;
  v18 = v15;
  [v10 generateCGImagesAsynchronouslyForTimes:v11 completionHandler:v17];

  objc_destroyWeak(v19);
  objc_destroyWeak(&buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke(uint64_t a1, CMTime *a2, uint64_t a3, CMTime *a4, uint64_t a5, void *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a5)
  {
    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      time = *a2;
      Seconds = CMTimeGetSeconds(&time);
      time = *a4;
      v26 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 134218754;
      *(&time.value + 4) = Seconds;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v26;
      HIWORD(time.epoch) = 2048;
      v34 = a5;
      v35 = 2112;
      v36 = v11;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Failure to generate thumbnail with requested time:%.0f, actual time:%.0f result:%ld, error:%@", &time, 0x2Au);
    }

LABEL_5:
    v14 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    v24 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      time = *a2;
      v27 = CMTimeGetSeconds(&time);
      time = *a4;
      v28 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 134218754;
      *(&time.value + 4) = v27;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v28;
      HIWORD(time.epoch) = 2048;
      v34 = 0;
      v35 = 2112;
      v36 = v11;
      _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Failure to generate thumbnail after file download with requested time:%.0f, actual time:%.0f result:%ld, error:%@", &time, 0x2Au);
    }

    goto LABEL_5;
  }

  v14 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
  v15 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    time = *a4;
    v17 = CMTimeGetSeconds(&time);
    v18 = [*(a1 + 32) uniqueIdentifier];
    v19 = [v18 UUIDString];
    v20 = *(a1 + 48);
    LODWORD(time.value) = 134219266;
    *(&time.value + 4) = v16;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v17;
    HIWORD(time.epoch) = 2048;
    v34 = 0;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v19;
    v39 = 2048;
    v40 = v20;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Finished image generation with requested time:%.0f, actual time:%.0f result:%ld, error:%@, key:%@-%.0f", &time, 0x3Eu);
  }

  [WeakRetained _addPosterFrameImage:v14 forClip:*(a1 + 32) withOffset:*(a1 + 48)];
LABEL_10:
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke_47;
  v29[3] = &unk_277DF3438;
  v29[4] = WeakRetained;
  v21 = *(a1 + 32);
  v32 = *(a1 + 48);
  v30 = v21;
  v31 = v14;
  v22 = v14;
  dispatch_async(MEMORY[0x277D85CD0], v29);

  v23 = *MEMORY[0x277D85DE8];
}

void __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) keyForClip:*(a1 + 40) timeOffset:*(a1 + 56)];
  v3 = [*(a1 + 32) generationObservers];
  v4 = [v3 valueForKey:v2];

  if ([v4 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke_2;
    v9[3] = &unk_277DF3410;
    v10 = *(a1 + 48);
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    v14 = *(a1 + 56);
    v13 = v7;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  v8 = [*(a1 + 32) generationObservers];
  [v8 removeObjectForKey:v2];
}

void __60__HFCameraImageManager_generateImageUsingAsset_clip_offset___block_invoke_2(double *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 5);
    v6 = *(a1 + 4) != 0;
    v11[0] = 67109634;
    v11[1] = v6;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Image generation completed:%{BOOL}d for key:%@ notifying observer %@", v11, 0x1Cu);
  }

  v7 = *(a1 + 4);
  v8 = a1[8];
  v9 = *(a1 + 6);
  if (v7)
  {
    [v3 manager:v9 didGenerateImage:v7 atOffset:*(a1 + 7) forClip:v8];
  }

  else
  {
    [v3 manager:v9 failedToGenerateImageAtOffset:*(a1 + 7) forClip:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setVideoSize:(CGSize)size
{
  if (self->_videoSize.width >= 1.0 && self->_videoSize.height >= 1.0)
  {
    self->_videoSize = size;
  }

  else
  {
    self->_videoSize = xmmword_20DD971F0;
  }

  [(HFCameraImageManager *)self videoSize];
  v5 = v4;
  v7 = v6;
  cameraPosterFrameProvider = [(HFCameraImageManager *)self cameraPosterFrameProvider];
  [cameraPosterFrameProvider setPosterFrameSize:{v5, v7}];
}

- (void)generatePosterFrameImageForClip:(id)clip atOffset:(double)offset observer:(id)observer
{
  v41 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  observerCopy = observer;
  if (clipCopy && (-[HFCameraImageManager cameraProfile](self, "cameraProfile"), v10 = objc_claimAutoreleasedReturnValue(), [v10 clipManager], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [(HFCameraImageManager *)self keyForClip:clipCopy timeOffset:offset];
    generationObservers = [(HFCameraImageManager *)self generationObservers];
    v14 = [generationObservers objectForKey:v12];

    v15 = HFLogForCategory(0x15uLL);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138412546;
        v36 = v12;
        v37 = 2112;
        v38 = observerCopy;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Image generation previously requested for key:%@. Adding observer:%@.", buf, 0x16u);
      }

      [v14 addObject:observerCopy];
    }

    else
    {
      if (v16)
      {
        *buf = 138412546;
        v36 = v12;
        v37 = 2112;
        v38 = observerCopy;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Image generation requested for key:%@. Adding observer:%@.", buf, 0x16u);
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v14 addObject:observerCopy];
      generationObservers2 = [(HFCameraImageManager *)self generationObservers];
      [generationObservers2 setObject:v14 forKey:v12];

      v20 = +[HFCameraTimelapseClipManager sharedManager];
      startDate = [clipCopy startDate];
      v22 = [v20 timelapseClipPositionForDate:startDate inHighQualityClip:clipCopy];

      clip = [v22 clip];

      if (clip)
      {
        offsetsForFile = [(HFCameraImageManager *)self offsetsForFile];
        generationObservers3 = [offsetsForFile objectForKeyedSubscript:v12];

        if (!generationObservers3)
        {
          generationObservers3 = [MEMORY[0x277CBEB58] set];
          offsetsForFile2 = [(HFCameraImageManager *)self offsetsForFile];
          [offsetsForFile2 setObject:generationObservers3 forKeyedSubscript:v12];
        }

        v27 = [MEMORY[0x277CCABB0] numberWithDouble:offset];
        [generationObservers3 addObject:v27];
        v28 = +[HFCameraTimelapseVideoProvider sharedProvider];
        clip2 = [v22 clip];
        [v28 getVideoForTimelapseClip:clip2 taskType:0 delegate:self];
      }

      else
      {
        v30 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v36 = v22;
          v37 = 2112;
          v38 = v12;
          v39 = 2112;
          v40 = observerCopy;
          _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Missing timelapse clip. Don't generate image for clipPosition:%@ request using key:%@ for observer:%@", buf, 0x20u);
        }

        if ([v14 count])
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __74__HFCameraImageManager_generatePosterFrameImageForClip_atOffset_observer___block_invoke;
          v32[3] = &unk_277DF3488;
          v32[4] = self;
          offsetCopy = offset;
          v33 = clipCopy;
          [v14 enumerateObjectsUsingBlock:v32];
        }

        generationObservers3 = [(HFCameraImageManager *)self generationObservers];
        [generationObservers3 removeObjectForKey:v12];
      }
    }
  }

  else
  {
    v12 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      cameraProfile = [(HFCameraImageManager *)self cameraProfile];
      clipManager = [cameraProfile clipManager];
      *buf = 138412546;
      v36 = clipCopy;
      v37 = 2112;
      v38 = clipManager;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Unable to generate missing poster frame for invalid clip/clipManager parameters: (%@,%@).", buf, 0x16u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)keyForClip:(id)clip timeOffset:(double)offset
{
  v5 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8 = [v5 stringWithFormat:@"%@-%.0f", uUIDString, *&offset];

  return v8;
}

- (id)keyForClip:(id)clip
{
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

+ (void)purgeVideoFiles
{
  v3 = +[HFCameraUtilities videoCachesDirectoryURL];
  [self purgeVideoFilesAtURL:v3 completionHandler:0];
}

+ (void)purgeVideoFilesAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(-32768, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HFCameraImageManager_purgeVideoFilesAtURL_completionHandler___block_invoke;
  v10[3] = &unk_277DF34D0;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  dispatch_async(v7, v10);
}

void __63__HFCameraImageManager_purgeVideoFilesAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *MEMORY[0x277CBE8A8];
  v37[0] = *MEMORY[0x277CBE7C0];
  v37[1] = v3;
  v22 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v20 = a1;
  v21 = v2;
  [v2 enumeratorAtURL:*(a1 + 32) includingPropertiesForKeys:v4 options:22 errorHandler:&__block_literal_global_58];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        v10 = [v9 resourceValuesForKeys:v4 error:&v25];
        v11 = v25;
        if (![v10 count])
        {
          v12 = HFLogForCategory(0x15uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v31 = "+[HFCameraImageManager purgeVideoFilesAtURL:completionHandler:]_block_invoke";
            v32 = 2112;
            v33 = v4;
            v34 = 2112;
            v35 = v11;
            _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%s: missing resource values for keys: %@; error: %@", buf, 0x20u);
          }

          goto LABEL_19;
        }

        if (!+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && (+[HFCameraUtilities shouldPurgeVideoFileCache](HFCameraUtilities, "shouldPurgeVideoFileCache") || +[HFCameraUtilities disableFullQualityVideoCaching]) || [HFCameraUtilities compareCreationDateOfFileAtURL:v9 toDaysFromNow:-10]== -1)
        {
          v12 = [v10 objectForKeyedSubscript:v22];
          if ([v12 BOOLValue])
          {
            v13 = [HFCameraUtilities isMP4FileAtURL:v9];

            if (!v13)
            {
              goto LABEL_22;
            }

            v24 = v11;
            v14 = [v21 removeItemAtURL:v9 error:&v24];
            v15 = v24;

            if ((v14 & 1) == 0)
            {
              v12 = HFLogForCategory(0x15uLL);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v16 = [v9 path];
                *buf = 136315650;
                v31 = "+[HFCameraImageManager purgeVideoFilesAtURL:completionHandler:]_block_invoke";
                v32 = 2112;
                v33 = v15;
                v34 = 2112;
                v35 = v16;
                _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%s: %@; %@", buf, 0x20u);
              }

LABEL_20:
            }

            v11 = v15;
            goto LABEL_22;
          }

LABEL_19:
          v15 = v11;
          goto LABEL_20;
        }

LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v6);
  }

  v17 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Purged cached video files.", buf, 2u);
  }

  v18 = *(v20 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HFCameraImageManager_purgeVideoFilesAtURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [v4 path];
    v10 = 136315650;
    v11 = "+[HFCameraImageManager purgeVideoFilesAtURL:completionHandler:]_block_invoke_2";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%s: %@; %@", &v10, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)purgePosterFrames
{
  v3 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Purged poster frames from image cache.", v5, 2u);
  }

  imageCache = [(HFCameraImageManager *)self imageCache];
  [imageCache purgeAllImages];
}

- (void)_addPosterFrameImage:(id)image forClip:(id)clip withOffset:(double)offset
{
  v20 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  clipCopy = clip;
  v10 = clipCopy;
  if (imageCopy)
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    *&v13 = offset;
    v14 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:v13];

    v15 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Adding poster frame image for key:%@", &v18, 0xCu);
    }

    imageCache = [(HFCameraImageManager *)self imageCache];
    [imageCache addImage:imageCopy forKey:v14];
  }

  else
  {
    v14 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Poster frames already generated for clip:%@", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)executionEnvironmentDidEnterBackground:(id)background
{
  v4 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Purging the image cache since we're being backgrounded", v6, 2u);
  }

  imageCache = [(HFCameraImageManager *)self imageCache];
  [imageCache purgeAllImages];
}

- (void)generateDemoPosterFramesForAsset:(id)asset forClip:(id)clip
{
  v36 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  clipCopy = clip;
  if (clipCopy && (-[HFCameraImageManager cameraProfile](self, "cameraProfile"), v8 = objc_claimAutoreleasedReturnValue(), [v8 clipManager], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:assetCopy];
    v34 = **&MEMORY[0x277CC08F0];
    v26 = *&v34.value;
    epoch = v34.epoch;
    [v10 setRequestedTimeToleranceBefore:&v34];
    *&v34.value = v26;
    v34.epoch = epoch;
    [v10 setRequestedTimeToleranceAfter:&v34];
    [(HFCameraImageManager *)self posterFrameSize];
    [v10 setMaximumSize:?];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [clipCopy duration];
    if (v13 <= 0.0)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
      do
      {
        memset(&v34, 0, sizeof(v34));
        CMTimeMakeWithSeconds(&v34, v15, 1);
        location = v34;
        v16 = [MEMORY[0x277CCAE60] valueWithCMTime:&location];
        [v12 addObject:v16];

        [clipCopy duration];
        v18 = v17;
        v15 = ++v14;
      }

      while (v18 > v14);
    }

    v21 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 count];
      uniqueIdentifier = [clipCopy uniqueIdentifier];
      LODWORD(v34.value) = 134218242;
      *(&v34.value + 4) = v22;
      LOWORD(v34.flags) = 2112;
      *(&v34.flags + 2) = uniqueIdentifier;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Started generating images (%lu) for key:%@", &v34, 0x16u);
    }

    v34.value = 0;
    *&v34.timescale = &v34;
    v34.epoch = 0x2020000000;
    v35 = 0;
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__HFCameraImageManager_generateDemoPosterFramesForAsset_forClip___block_invoke;
    v27[3] = &unk_277DF34F8;
    objc_copyWeak(&v31, &location);
    v28 = clipCopy;
    v30 = &v34;
    v32 = v14;
    v24 = v12;
    v29 = v24;
    [v10 generateCGImagesAsynchronouslyForTimes:v24 completionHandler:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v10 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      cameraProfile = [(HFCameraImageManager *)self cameraProfile];
      clipManager = [cameraProfile clipManager];
      LODWORD(v34.value) = 138412546;
      *(&v34.value + 4) = clipCopy;
      LOWORD(v34.flags) = 2112;
      *(&v34.flags + 2) = clipManager;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Invalid demo mode configuration. Unable to generate poster frames for invalid clip:%@ clipManager:%@", &v34, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __65__HFCameraImageManager_generateDemoPosterFramesForAsset_forClip___block_invoke(uint64_t a1, CMTime *a2, uint64_t a3, CMTime *a4, uint64_t a5, void *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a5)
  {
    v13 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = *a2;
      Seconds = CMTimeGetSeconds(&v32);
      v32 = *a4;
      v15 = CMTimeGetSeconds(&v32);
      LODWORD(v32.value) = 134218754;
      *(&v32.value + 4) = Seconds;
      LOWORD(v32.flags) = 2048;
      *(&v32.flags + 2) = v15;
      HIWORD(v32.epoch) = 2048;
      v33 = *&a5;
      v34 = 2112;
      v35 = *&v11;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Failure to generate thumbnail with requested time:%.0f, actual time:%.0f result:%ld, error:%@", &v32, 0x2Au);
    }
  }

  else
  {
    v13 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
    if (a3)
    {
      v32 = *a2;
      v16 = CMTimeGetSeconds(&v32);
      v17 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v13 size];
        v19 = v18;
        [v13 size];
        v21 = v20;
        v32 = *a4;
        v22 = CMTimeGetSeconds(&v32);
        v23 = [*(a1 + 32) uniqueIdentifier];
        v24 = [v23 UUIDString];
        LODWORD(v32.value) = 134219522;
        *(&v32.value + 4) = v19;
        LOWORD(v32.flags) = 2048;
        *(&v32.flags + 2) = v21;
        HIWORD(v32.epoch) = 2048;
        v33 = v16;
        v34 = 2048;
        v35 = v22;
        v36 = 2048;
        v37 = 0;
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v24;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Finished image generation with image {%.0f, %.0f}, requested time:%.0f, actual time:%.0f result:%ld, error:%@, key:%@", &v32, 0x48u);
      }

      [WeakRetained _addPosterFrameImage:v13 forClip:*(a1 + 32) withOffset:v16];
      [WeakRetained _updateDemoObserversForImage:v13 forClip:*(a1 + 32) withOffset:v16];
    }

    else
    {
      v25 = HFLogForCategory(0x21uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v30 = CMTimeGetSeconds(&v32);
        v32 = *a4;
        v31 = CMTimeGetSeconds(&v32);
        LODWORD(v32.value) = 134218754;
        *(&v32.value + 4) = v30;
        LOWORD(v32.flags) = 2048;
        *(&v32.flags + 2) = v31;
        HIWORD(v32.epoch) = 2048;
        v33 = 0.0;
        v34 = 2112;
        v35 = *&v11;
        _os_log_error_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_ERROR, "Failure to generate thumbnail after generation succeeded with requested time:%.0f, actual time:%.0f result:%ld, error:%@", &v32, 0x2Au);
      }
    }
  }

  if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    v26 = HFLogForCategory(0x21uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(a1 + 40) count];
      v28 = [*(a1 + 32) uniqueIdentifier];
      LODWORD(v32.value) = 134218242;
      *(&v32.value + 4) = v27;
      LOWORD(v32.flags) = 2112;
      *(&v32.flags + 2) = v28;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Finished generating images (%lu) for key:%@", &v32, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_updateDemoObserversForImage:(id)image forClip:(id)clip withOffset:(double)offset
{
  imageCopy = image;
  clipCopy = clip;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HFCameraImageManager__updateDemoObserversForImage_forClip_withOffset___block_invoke;
  v12[3] = &unk_277DF3438;
  v12[4] = self;
  v13 = clipCopy;
  offsetCopy = offset;
  v14 = imageCopy;
  v10 = imageCopy;
  v11 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __72__HFCameraImageManager__updateDemoObserversForImage_forClip_withOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyForClip:*(a1 + 40) timeOffset:*(a1 + 56)];
  v3 = [*(a1 + 32) generationObservers];
  v4 = [v3 valueForKey:v2];

  if ([v4 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__HFCameraImageManager__updateDemoObserversForImage_forClip_withOffset___block_invoke_2;
    v9[3] = &unk_277DF3410;
    v10 = *(a1 + 48);
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    v14 = *(a1 + 56);
    v13 = v7;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  v8 = [*(a1 + 32) generationObservers];
  [v8 removeObjectForKey:v2];
}

void __72__HFCameraImageManager__updateDemoObserversForImage_forClip_withOffset___block_invoke_2(double *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x21uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 5);
    v6 = *(a1 + 4) != 0;
    v11[0] = 67109634;
    v11[1] = v6;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Image generation completed:%{BOOL}d for key:%@ notifying observer %@", v11, 0x1Cu);
  }

  v7 = *(a1 + 4);
  v8 = a1[8];
  v9 = *(a1 + 6);
  if (v7)
  {
    [v3 manager:v9 didGenerateImage:v7 atOffset:*(a1 + 7) forClip:v8];
  }

  else
  {
    [v3 manager:v9 failedToGenerateImageAtOffset:*(a1 + 7) forClip:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)clipIdentifierStringFromDate:(id)date
{
  v3 = qword_280E02AB0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E02AB0, &__block_literal_global_61);
  }

  v5 = [qword_280E02AA8 stringFromDate:dateCopy];

  return v5;
}

uint64_t __53__HFCameraImageManager_clipIdentifierStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280E02AA8;
  qword_280E02AA8 = v0;

  v2 = qword_280E02AA8;

  return [v2 setDateFormat:@"YYYY:MM:dd HH:mm"];
}

- (void)resetForCameraDismissal
{
  v3 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Purge image cache for camera dismissal.", v12, 2u);
  }

  fetchCache = [(HFCameraImageManager *)self fetchCache];
  [fetchCache purge];

  requestedHeroFrameCache = [(HFCameraImageManager *)self requestedHeroFrameCache];
  [requestedHeroFrameCache removeAllObjects];

  requestedFaceCropCache = [(HFCameraImageManager *)self requestedFaceCropCache];
  [requestedFaceCropCache removeAllObjects];

  imageObservers = [(HFCameraImageManager *)self imageObservers];
  [imageObservers removeAllObjects];

  generationObservers = [(HFCameraImageManager *)self generationObservers];
  [generationObservers removeAllObjects];

  inProgressOperations = [(HFCameraImageManager *)self inProgressOperations];
  [inProgressOperations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_68];

  inProgressOperations2 = [(HFCameraImageManager *)self inProgressOperations];
  [inProgressOperations2 removeAllObjects];

  cameraPosterFrameProvider = self->_cameraPosterFrameProvider;
  self->_cameraPosterFrameProvider = 0;
}

- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HFCameraImageManager_didDownloadVideoFileForClip_toURL___block_invoke;
  block[3] = &unk_277DF32A8;
  block[4] = self;
  v11 = clipCopy;
  v12 = lCopy;
  v8 = lCopy;
  v9 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)foundVideoFileForClip:(id)clip atURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HFCameraImageManager_foundVideoFileForClip_atURL___block_invoke;
  block[3] = &unk_277DF32A8;
  block[4] = self;
  v11 = clipCopy;
  v12 = lCopy;
  v8 = lCopy;
  v9 = clipCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)failedToDownloadVideoFileForClip:(id)clip
{
  v8 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v4 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = clipCopy;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error fetching clip: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_generateImagesForForTimelapseClip:(id)clip atLocation:(id)location
{
  v34 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  locationCopy = location;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  offsetsForFile = [(HFCameraImageManager *)self offsetsForFile];
  v11 = [offsetsForFile objectForKeyedSubscript:uUIDString];
  v12 = [v11 copy];

  if (v12)
  {
    offsetsForFile2 = [(HFCameraImageManager *)self offsetsForFile];
    [offsetsForFile2 removeObjectForKey:uUIDString];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v12;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      v17 = MEMORY[0x277D85CD0];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v29 + 1) + 8 * i) doubleValue];
          [(HFCameraImageManager *)self _timeScaleAdjustedOffset:?];
          v20 = v19;
          objc_initWeak(&location, self);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__HFCameraImageManager__generateImagesForForTimelapseClip_atLocation___block_invoke;
          block[3] = &unk_277DF3540;
          objc_copyWeak(v27, &location);
          v25 = locationCopy;
          v26 = clipCopy;
          v27[1] = v20;
          dispatch_async(v17, block);

          objc_destroyWeak(v27);
          objc_destroyWeak(&location);
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v12 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __70__HFCameraImageManager__generateImagesForForTimelapseClip_atLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [MEMORY[0x277CE63D8] assetWithURL:*(a1 + 32)];
  [WeakRetained generateImageUsingAsset:v2 clip:*(a1 + 40) offset:*(a1 + 56)];
}

- (HMCameraProfile)cameraProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraProfile);

  return WeakRetained;
}

- (CGSize)videoSize
{
  width = self->_videoSize.width;
  height = self->_videoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end