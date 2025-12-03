@interface HFCameraPosterFrameProvider
- (CGSize)posterFrameSize;
- (HFCameraImageCache)imageCache;
- (HFCameraPosterFrameProvider)initWithImageCache:(id)cache andTimelapseClipInfoProvider:(id)provider;
- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider;
- (id)_timelapseClipForHighQualityClip:(id)clip;
- (void)_checkImageCacheForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset;
- (void)_didGeneratePosterFrame:(id)frame forHighQualityClip:(id)clip atOffset:(double)offset withTimelapseOffset:(double)timelapseOffset;
- (void)_failedToDownloadVideoFileForClip:(id)clip;
- (void)_failedToFindTimelapseClipForHighQualityClip:(id)clip;
- (void)_failedToGeneratePosterFrameForHighQualityClip:(id)clip atOffset:(double)offset;
- (void)_requestTimelapseFileForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset;
- (void)_requestTimelapsePosterFrameGenerationForTimelapseClip:(id)clip;
- (void)_updateDelegate:(id)delegate withPosterFrame:(id)frame atOffset:(double)offset ForHighQualityClip:(id)clip;
- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l;
- (void)didGeneratePosterFrame:(id)frame forHighQualityClip:(id)clip atOffset:(double)offset withTimelapseOffset:(double)timelapseOffset;
- (void)failedToDownloadVideoFileForClip:(id)clip;
- (void)failedToFindTimelapseClipForHighQualityClip:(id)clip;
- (void)failedToGeneratePosterFrameForHighQualityClip:(id)clip atOffset:(double)offset;
- (void)foundVideoFileForClip:(id)clip atURL:(id)l;
- (void)getPosterFrameForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset;
@end

@implementation HFCameraPosterFrameProvider

- (HFCameraPosterFrameProvider)initWithImageCache:(id)cache andTimelapseClipInfoProvider:(id)provider
{
  cacheCopy = cache;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = HFCameraPosterFrameProvider;
  v8 = [(HFCameraPosterFrameProvider *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_imageCache, cacheCopy);
    v10 = dispatch_queue_create("com.apple.home.HFCameraPosterFrameProvider.bookkeepingQueue", 0);
    bookkeepingQueue = v9->_bookkeepingQueue;
    v9->_bookkeepingQueue = v10;

    v12 = objc_alloc_init(HFCameraPosterFrameRequests);
    posterFrameRequests = v9->_posterFrameRequests;
    v9->_posterFrameRequests = v12;

    v14 = [[HFCameraTimelapsePosterFrameGenerator alloc] initWithTimelapseClipInfoProvider:providerCopy andDelegate:v9];
    posterFrameGenerator = v9->_posterFrameGenerator;
    v9->_posterFrameGenerator = v14;

    objc_storeWeak(&v9->_timelapseClipInfoProvider, providerCopy);
  }

  return v9;
}

- (void)getPosterFrameForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset
{
  delegateCopy = delegate;
  clipCopy = clip;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _checkImageCacheForDelegate:delegateCopy forHighQualityClip:clipCopy atOffset:offset];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HFCameraPosterFrameProvider_getPosterFrameForDelegate_forHighQualityClip_atOffset___block_invoke;
    block[3] = &unk_277DF3540;
    objc_copyWeak(v14, &location);
    v12 = delegateCopy;
    v13 = clipCopy;
    v14[1] = *&offset;
    dispatch_async(bookkeepingQueue, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __85__HFCameraPosterFrameProvider_getPosterFrameForDelegate_forHighQualityClip_atOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _checkImageCacheForDelegate:*(a1 + 32) forHighQualityClip:*(a1 + 40) atOffset:*(a1 + 56)];
}

- (void)_checkImageCacheForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset
{
  clipCopy = clip;
  delegateCopy = delegate;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  *&v12 = offset;
  v15 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:v12];

  imageCache = [(HFCameraPosterFrameProvider *)self imageCache];
  v14 = [imageCache imageForKey:v15];

  if (v14)
  {
    [(HFCameraPosterFrameProvider *)self _updateDelegate:delegateCopy withPosterFrame:v14 atOffset:clipCopy ForHighQualityClip:offset];
  }

  else
  {
    [(HFCameraPosterFrameProvider *)self _generateImageForDelegate:delegateCopy forHighQualityClip:clipCopy atOffset:offset];
  }
}

- (void)_requestTimelapseFileForDelegate:(id)delegate forHighQualityClip:(id)clip atOffset:(double)offset
{
  v16 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  delegateCopy = delegate;
  v10 = [(HFCameraPosterFrameProvider *)self _timelapseClipForHighQualityClip:clipCopy];
  if (v10)
  {
    posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
    [posterFrameRequests addRequestForTimelapseFileForDelegate:delegateCopy forHighQualityClip:clipCopy andTimelapseClip:v10 atOffset:offset];

    delegateCopy = +[HFCameraTimelapseVideoProvider sharedProvider];
    [delegateCopy getVideoForTimelapseClip:v10 taskType:1 delegate:self];
  }

  else
  {
    v12 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = clipCopy;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Error: Missing timelapse for clip %@", &v14, 0xCu);
    }

    [(HFCameraPosterFrameProvider *)self _updateDelegate:delegateCopy withPosterFrame:0 atOffset:clipCopy ForHighQualityClip:offset];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_timelapseClipForHighQualityClip:(id)clip
{
  clipCopy = clip;
  timelapseClipInfoProvider = [(HFCameraPosterFrameProvider *)self timelapseClipInfoProvider];
  startDate = [clipCopy startDate];
  v7 = [timelapseClipInfoProvider timelapseClipPositionForDate:startDate inHighQualityClip:clipCopy];

  clip = [v7 clip];

  return clip;
}

- (void)_requestTimelapsePosterFrameGenerationForTimelapseClip:(id)clip
{
  v47 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = MEMORY[0x277CBEB18];
  posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [posterFrameRequests fulfillRequestsForTimelapseFileForTimelapseClip:clipCopy];
  v8 = [v5 arrayWithArray:v7];

  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    highQualityClip = [firstObject highQualityClip];

    if (highQualityClip)
    {
      v34 = clipCopy;
      posterFrameGenerator = [(HFCameraPosterFrameProvider *)self posterFrameGenerator];
      [(HFCameraPosterFrameProvider *)self posterFrameSize];
      v12 = [posterFrameGenerator generatePosterFramesForHighQualityClip:highQualityClip withStep:1 atSize:?];

      v13 = [MEMORY[0x277CBEB58] set];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v33 = v8;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            offsetNumber = [*(*(&v39 + 1) + 8 * i) offsetNumber];
            [v13 addObject:offsetNumber];
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      selfCopy = self;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v12;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v35 + 1) + 8 * j);
            if (([v13 containsObject:v25] & 1) == 0)
            {
              v26 = objc_alloc_init(HFCameraPosterFrameDelegateRequest);
              v27 = [v25 copy];
              [(HFCameraPosterFrameDelegateRequest *)v26 setOffsetNumber:v27];

              [(HFCameraPosterFrameDelegateRequest *)v26 setDelegate:0];
              [v14 addObject:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v22);
      }

      posterFrameRequests2 = [(HFCameraPosterFrameProvider *)selfCopy posterFrameRequests];
      [posterFrameRequests2 addRequestsForPosterFrameGeneration:v14 forHighQualityClip:highQualityClip];

      v8 = v33;
      clipCopy = v34;
    }

    else
    {
      v20 = HFLogForCategory(0x19uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        hf_prettyDescription = [clipCopy hf_prettyDescription];
        *buf = 138412290;
        v46 = hf_prettyDescription;
        _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "Error: Provider has no high quality clip for timelapse clip %@", buf, 0xCu);
      }
    }
  }

  else
  {
    highQualityClip = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(highQualityClip, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription2 = [clipCopy hf_prettyDescription];
      *buf = 138412290;
      v46 = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, highQualityClip, OS_LOG_TYPE_DEFAULT, "REQUEST: Provider has no requests for timelapse clip: %@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  lCopy = l;
  if (+[HFUtilities isInternalTest])
  {
    v8 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [clipCopy hf_prettyDescription];
      *buf = 138412290;
      v16 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Downloaded timelapse file for timelapse clip: %@", buf, 0xCu);
    }

    [(HFCameraPosterFrameProvider *)self _requestTimelapsePosterFrameGenerationForTimelapseClip:clipCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HFCameraPosterFrameProvider_didDownloadVideoFileForClip_toURL___block_invoke;
    v12[3] = &unk_277DF3A68;
    objc_copyWeak(&v14, buf);
    v13 = clipCopy;
    dispatch_async(bookkeepingQueue, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__HFCameraPosterFrameProvider_didDownloadVideoFileForClip_toURL___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Downloaded timelapse file for timelapse clip: %@", &v6, 0xCu);
  }

  [WeakRetained _requestTimelapsePosterFrameGenerationForTimelapseClip:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)foundVideoFileForClip:(id)clip atURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _requestTimelapsePosterFrameGenerationForTimelapseClip:clipCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HFCameraPosterFrameProvider_foundVideoFileForClip_atURL___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v11, &location);
    v10 = clipCopy;
    dispatch_async(bookkeepingQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __59__HFCameraPosterFrameProvider_foundVideoFileForClip_atURL___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Found timelapse file for timelapse clip: %@", &v6, 0xCu);
  }

  [WeakRetained _requestTimelapsePosterFrameGenerationForTimelapseClip:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)failedToDownloadVideoFileForClip:(id)clip
{
  clipCopy = clip;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToDownloadVideoFileForClip:clipCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HFCameraPosterFrameProvider_failedToDownloadVideoFileForClip___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v8, &location);
    v7 = clipCopy;
    dispatch_async(bookkeepingQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__HFCameraPosterFrameProvider_failedToDownloadVideoFileForClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToDownloadVideoFileForClip:*(a1 + 32)];
}

- (void)_failedToDownloadVideoFileForClip:(id)clip
{
  v27 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    hf_prettyDescription = [clipCopy hf_prettyDescription];
    *buf = 138412290;
    v26 = hf_prettyDescription;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Error: failed to download timelapse file for timelapse clip: %@", buf, 0xCu);
  }

  posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [posterFrameRequests fulfillRequestsForTimelapseFileForTimelapseClip:clipCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        offsetNumber = [v13 offsetNumber];
        [offsetNumber doubleValue];
        v16 = v15;

        delegate = [v13 delegate];
        [(HFCameraPosterFrameProvider *)self _updateDelegate:delegate withPosterFrame:0 atOffset:clipCopy ForHighQualityClip:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didGeneratePosterFrame:(id)frame forHighQualityClip:(id)clip atOffset:(double)offset withTimelapseOffset:(double)timelapseOffset
{
  frameCopy = frame;
  clipCopy = clip;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _didGeneratePosterFrame:frameCopy forHighQualityClip:clipCopy atOffset:offset withTimelapseOffset:timelapseOffset];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__HFCameraPosterFrameProvider_didGeneratePosterFrame_forHighQualityClip_atOffset_withTimelapseOffset___block_invoke;
    v13[3] = &unk_277DF3A90;
    objc_copyWeak(v16, &location);
    v14 = frameCopy;
    v15 = clipCopy;
    v16[1] = *&offset;
    v16[2] = *&timelapseOffset;
    dispatch_async(bookkeepingQueue, v13);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __102__HFCameraPosterFrameProvider_didGeneratePosterFrame_forHighQualityClip_atOffset_withTimelapseOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didGeneratePosterFrame:*(a1 + 32) forHighQualityClip:*(a1 + 40) atOffset:*(a1 + 56) withTimelapseOffset:*(a1 + 64)];
}

- (void)_didGeneratePosterFrame:(id)frame forHighQualityClip:(id)clip atOffset:(double)offset withTimelapseOffset:(double)timelapseOffset
{
  v27 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  clipCopy = clip;
  v11 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    v23 = 138412546;
    v24 = uniqueIdentifier;
    v25 = 2048;
    offsetCopy = offset;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Generated poster frame for clip: %@; offset: %f", &v23, 0x16u);
  }

  uniqueIdentifier2 = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier2 UUIDString];
  *&v15 = offset;
  v16 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:uUIDString withOffset:v15];

  imageCache = [(HFCameraPosterFrameProvider *)self imageCache];
  [imageCache addImage:frameCopy forKey:v16];

  posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v19 = [posterFrameRequests fulfillRequestForPosterFrameGenerationForHighQualityClip:clipCopy atOffset:offset];

  delegate = [v19 delegate];

  if (delegate)
  {
    delegate2 = [v19 delegate];
    [(HFCameraPosterFrameProvider *)self _updateDelegate:delegate2 withPosterFrame:frameCopy atOffset:clipCopy ForHighQualityClip:offset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)failedToFindTimelapseClipForHighQualityClip:(id)clip
{
  clipCopy = clip;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToFindTimelapseClipForHighQualityClip:clipCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HFCameraPosterFrameProvider_failedToFindTimelapseClipForHighQualityClip___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v8, &location);
    v7 = clipCopy;
    dispatch_async(bookkeepingQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75__HFCameraPosterFrameProvider_failedToFindTimelapseClipForHighQualityClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToFindTimelapseClipForHighQualityClip:*(a1 + 32)];
}

- (void)_failedToFindTimelapseClipForHighQualityClip:(id)clip
{
  v28 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    hf_prettyDescription = [clipCopy hf_prettyDescription];
    *buf = 138412290;
    v27 = hf_prettyDescription;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Error: Failed to find timelapse for clip: %@", buf, 0xCu);
  }

  posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [posterFrameRequests fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:clipCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        delegate = [v13 delegate];

        if (delegate)
        {
          offsetNumber = [v13 offsetNumber];
          [offsetNumber doubleValue];
          v17 = v16;

          delegate2 = [v13 delegate];
          [(HFCameraPosterFrameProvider *)self _updateDelegate:delegate2 withPosterFrame:0 atOffset:clipCopy ForHighQualityClip:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)failedToGeneratePosterFrameForHighQualityClip:(id)clip atOffset:(double)offset
{
  clipCopy = clip;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToGeneratePosterFrameForHighQualityClip:clipCopy atOffset:offset];
  }

  else
  {
    objc_initWeak(&location, self);
    bookkeepingQueue = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__HFCameraPosterFrameProvider_failedToGeneratePosterFrameForHighQualityClip_atOffset___block_invoke;
    v8[3] = &unk_277DF3AB8;
    objc_copyWeak(v10, &location);
    v9 = clipCopy;
    v10[1] = *&offset;
    dispatch_async(bookkeepingQueue, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __86__HFCameraPosterFrameProvider_failedToGeneratePosterFrameForHighQualityClip_atOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToGeneratePosterFrameForHighQualityClip:*(a1 + 32) atOffset:*(a1 + 48)];
}

- (void)_failedToGeneratePosterFrameForHighQualityClip:(id)clip atOffset:(double)offset
{
  v18 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v7 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    v14 = 138412546;
    v15 = uniqueIdentifier;
    v16 = 2048;
    offsetCopy = offset;
    _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Error: Failed generation for clip %@; offset %f", &v14, 0x16u);
  }

  posterFrameRequests = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v9 = [posterFrameRequests fulfillRequestForPosterFrameGenerationForHighQualityClip:clipCopy atOffset:offset];

  delegate = [v9 delegate];

  if (delegate)
  {
    delegate2 = [v9 delegate];
    [(HFCameraPosterFrameProvider *)self _updateDelegate:delegate2 withPosterFrame:0 atOffset:clipCopy ForHighQualityClip:offset];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegate:(id)delegate withPosterFrame:(id)frame atOffset:(double)offset ForHighQualityClip:(id)clip
{
  delegateCopy = delegate;
  frameCopy = frame;
  clipCopy = clip;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HFCameraPosterFrameProvider__updateDelegate_withPosterFrame_atOffset_ForHighQualityClip___block_invoke;
  v15[3] = &unk_277DF3438;
  v16 = frameCopy;
  v17 = delegateCopy;
  offsetCopy = offset;
  v18 = clipCopy;
  v12 = clipCopy;
  v13 = delegateCopy;
  v14 = frameCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

uint64_t __91__HFCameraPosterFrameProvider__updateDelegate_withPosterFrame_atOffset_ForHighQualityClip___block_invoke(double *a1)
{
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = a1[7];
  if (v3)
  {
    return [v2 didFindPosterFrame:v3 atOffset:*(a1 + 6) forClip:v4];
  }

  else
  {
    return [v2 failedToFindPosterFrameAtOffset:*(a1 + 6) forClip:v4];
  }
}

- (CGSize)posterFrameSize
{
  width = self->_posterFrameSize.width;
  height = self->_posterFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (HFCameraImageCache)imageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCache);

  return WeakRetained;
}

- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timelapseClipInfoProvider);

  return WeakRetained;
}

@end