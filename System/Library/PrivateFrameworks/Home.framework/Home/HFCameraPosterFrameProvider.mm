@interface HFCameraPosterFrameProvider
- (CGSize)posterFrameSize;
- (HFCameraImageCache)imageCache;
- (HFCameraPosterFrameProvider)initWithImageCache:(id)a3 andTimelapseClipInfoProvider:(id)a4;
- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider;
- (id)_timelapseClipForHighQualityClip:(id)a3;
- (void)_checkImageCacheForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5;
- (void)_didGeneratePosterFrame:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5 withTimelapseOffset:(double)a6;
- (void)_failedToDownloadVideoFileForClip:(id)a3;
- (void)_failedToFindTimelapseClipForHighQualityClip:(id)a3;
- (void)_failedToGeneratePosterFrameForHighQualityClip:(id)a3 atOffset:(double)a4;
- (void)_requestTimelapseFileForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5;
- (void)_requestTimelapsePosterFrameGenerationForTimelapseClip:(id)a3;
- (void)_updateDelegate:(id)a3 withPosterFrame:(id)a4 atOffset:(double)a5 ForHighQualityClip:(id)a6;
- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4;
- (void)didGeneratePosterFrame:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5 withTimelapseOffset:(double)a6;
- (void)failedToDownloadVideoFileForClip:(id)a3;
- (void)failedToFindTimelapseClipForHighQualityClip:(id)a3;
- (void)failedToGeneratePosterFrameForHighQualityClip:(id)a3 atOffset:(double)a4;
- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4;
- (void)getPosterFrameForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5;
@end

@implementation HFCameraPosterFrameProvider

- (HFCameraPosterFrameProvider)initWithImageCache:(id)a3 andTimelapseClipInfoProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HFCameraPosterFrameProvider;
  v8 = [(HFCameraPosterFrameProvider *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_imageCache, v6);
    v10 = dispatch_queue_create("com.apple.home.HFCameraPosterFrameProvider.bookkeepingQueue", 0);
    bookkeepingQueue = v9->_bookkeepingQueue;
    v9->_bookkeepingQueue = v10;

    v12 = objc_alloc_init(HFCameraPosterFrameRequests);
    posterFrameRequests = v9->_posterFrameRequests;
    v9->_posterFrameRequests = v12;

    v14 = [[HFCameraTimelapsePosterFrameGenerator alloc] initWithTimelapseClipInfoProvider:v7 andDelegate:v9];
    posterFrameGenerator = v9->_posterFrameGenerator;
    v9->_posterFrameGenerator = v14;

    objc_storeWeak(&v9->_timelapseClipInfoProvider, v7);
  }

  return v9;
}

- (void)getPosterFrameForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _checkImageCacheForDelegate:v8 forHighQualityClip:v9 atOffset:a5];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HFCameraPosterFrameProvider_getPosterFrameForDelegate_forHighQualityClip_atOffset___block_invoke;
    block[3] = &unk_277DF3540;
    objc_copyWeak(v14, &location);
    v12 = v8;
    v13 = v9;
    v14[1] = *&a5;
    dispatch_async(v10, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __85__HFCameraPosterFrameProvider_getPosterFrameForDelegate_forHighQualityClip_atOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _checkImageCacheForDelegate:*(a1 + 32) forHighQualityClip:*(a1 + 40) atOffset:*(a1 + 56)];
}

- (void)_checkImageCacheForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 uniqueIdentifier];
  v11 = [v10 UUIDString];
  *&v12 = a5;
  v15 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:v11 withOffset:v12];

  v13 = [(HFCameraPosterFrameProvider *)self imageCache];
  v14 = [v13 imageForKey:v15];

  if (v14)
  {
    [(HFCameraPosterFrameProvider *)self _updateDelegate:v9 withPosterFrame:v14 atOffset:v8 ForHighQualityClip:a5];
  }

  else
  {
    [(HFCameraPosterFrameProvider *)self _generateImageForDelegate:v9 forHighQualityClip:v8 atOffset:a5];
  }
}

- (void)_requestTimelapseFileForDelegate:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [(HFCameraPosterFrameProvider *)self _timelapseClipForHighQualityClip:v8];
  if (v10)
  {
    v11 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
    [v11 addRequestForTimelapseFileForDelegate:v9 forHighQualityClip:v8 andTimelapseClip:v10 atOffset:a5];

    v9 = +[HFCameraTimelapseVideoProvider sharedProvider];
    [v9 getVideoForTimelapseClip:v10 taskType:1 delegate:self];
  }

  else
  {
    v12 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Error: Missing timelapse for clip %@", &v14, 0xCu);
    }

    [(HFCameraPosterFrameProvider *)self _updateDelegate:v9 withPosterFrame:0 atOffset:v8 ForHighQualityClip:a5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_timelapseClipForHighQualityClip:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraPosterFrameProvider *)self timelapseClipInfoProvider];
  v6 = [v4 startDate];
  v7 = [v5 timelapseClipPositionForDate:v6 inHighQualityClip:v4];

  v8 = [v7 clip];

  return v8;
}

- (void)_requestTimelapsePosterFrameGenerationForTimelapseClip:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v6 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [v6 fulfillRequestsForTimelapseFileForTimelapseClip:v4];
  v8 = [v5 arrayWithArray:v7];

  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = [v9 highQualityClip];

    if (v10)
    {
      v34 = v4;
      v11 = [(HFCameraPosterFrameProvider *)self posterFrameGenerator];
      [(HFCameraPosterFrameProvider *)self posterFrameSize];
      v12 = [v11 generatePosterFramesForHighQualityClip:v10 withStep:1 atSize:?];

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

            v19 = [*(*(&v39 + 1) + 8 * i) offsetNumber];
            [v13 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      v32 = self;

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

      v28 = [(HFCameraPosterFrameProvider *)v32 posterFrameRequests];
      [v28 addRequestsForPosterFrameGeneration:v14 forHighQualityClip:v10];

      v8 = v33;
      v4 = v34;
    }

    else
    {
      v20 = HFLogForCategory(0x19uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v31 = [v4 hf_prettyDescription];
        *buf = 138412290;
        v46 = v31;
        _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "Error: Provider has no high quality clip for timelapse clip %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v4 hf_prettyDescription];
      *buf = 138412290;
      v46 = v29;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "REQUEST: Provider has no requests for timelapse clip: %@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (+[HFUtilities isInternalTest])
  {
    v8 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 hf_prettyDescription];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Downloaded timelapse file for timelapse clip: %@", buf, 0xCu);
    }

    [(HFCameraPosterFrameProvider *)self _requestTimelapsePosterFrameGenerationForTimelapseClip:v6];
  }

  else
  {
    objc_initWeak(buf, self);
    v10 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__HFCameraPosterFrameProvider_didDownloadVideoFileForClip_toURL___block_invoke;
    v12[3] = &unk_277DF3A68;
    objc_copyWeak(&v14, buf);
    v13 = v6;
    dispatch_async(v10, v12);

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

- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _requestTimelapsePosterFrameGenerationForTimelapseClip:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HFCameraPosterFrameProvider_foundVideoFileForClip_atURL___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    dispatch_async(v8, block);

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

- (void)failedToDownloadVideoFileForClip:(id)a3
{
  v4 = a3;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToDownloadVideoFileForClip:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HFCameraPosterFrameProvider_failedToDownloadVideoFileForClip___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__HFCameraPosterFrameProvider_failedToDownloadVideoFileForClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToDownloadVideoFileForClip:*(a1 + 32)];
}

- (void)_failedToDownloadVideoFileForClip:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v19 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v26 = v19;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Error: failed to download timelapse file for timelapse clip: %@", buf, 0xCu);
  }

  v6 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [v6 fulfillRequestsForTimelapseFileForTimelapseClip:v4];

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
        v14 = [v13 offsetNumber];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v13 delegate];
        [(HFCameraPosterFrameProvider *)self _updateDelegate:v17 withPosterFrame:0 atOffset:v4 ForHighQualityClip:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didGeneratePosterFrame:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5 withTimelapseOffset:(double)a6
{
  v10 = a3;
  v11 = a4;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _didGeneratePosterFrame:v10 forHighQualityClip:v11 atOffset:a5 withTimelapseOffset:a6];
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__HFCameraPosterFrameProvider_didGeneratePosterFrame_forHighQualityClip_atOffset_withTimelapseOffset___block_invoke;
    v13[3] = &unk_277DF3A90;
    objc_copyWeak(v16, &location);
    v14 = v10;
    v15 = v11;
    v16[1] = *&a5;
    v16[2] = *&a6;
    dispatch_async(v12, v13);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __102__HFCameraPosterFrameProvider_didGeneratePosterFrame_forHighQualityClip_atOffset_withTimelapseOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didGeneratePosterFrame:*(a1 + 32) forHighQualityClip:*(a1 + 40) atOffset:*(a1 + 56) withTimelapseOffset:*(a1 + 64)];
}

- (void)_didGeneratePosterFrame:(id)a3 forHighQualityClip:(id)a4 atOffset:(double)a5 withTimelapseOffset:(double)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 uniqueIdentifier];
    v23 = 138412546;
    v24 = v12;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Generated poster frame for clip: %@; offset: %f", &v23, 0x16u);
  }

  v13 = [v10 uniqueIdentifier];
  v14 = [v13 UUIDString];
  *&v15 = a5;
  v16 = [HFCameraImageCache posterFrameKeyForCameraClipIdentifierString:v14 withOffset:v15];

  v17 = [(HFCameraPosterFrameProvider *)self imageCache];
  [v17 addImage:v9 forKey:v16];

  v18 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v19 = [v18 fulfillRequestForPosterFrameGenerationForHighQualityClip:v10 atOffset:a5];

  v20 = [v19 delegate];

  if (v20)
  {
    v21 = [v19 delegate];
    [(HFCameraPosterFrameProvider *)self _updateDelegate:v21 withPosterFrame:v9 atOffset:v10 ForHighQualityClip:a5];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)failedToFindTimelapseClipForHighQualityClip:(id)a3
{
  v4 = a3;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToFindTimelapseClipForHighQualityClip:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HFCameraPosterFrameProvider_failedToFindTimelapseClipForHighQualityClip___block_invoke;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75__HFCameraPosterFrameProvider_failedToFindTimelapseClipForHighQualityClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToFindTimelapseClipForHighQualityClip:*(a1 + 32)];
}

- (void)_failedToFindTimelapseClipForHighQualityClip:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v20 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v27 = v20;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Error: Failed to find timelapse for clip: %@", buf, 0xCu);
  }

  v6 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v7 = [v6 fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:v4];

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
        v14 = [v13 delegate];

        if (v14)
        {
          v15 = [v13 offsetNumber];
          [v15 doubleValue];
          v17 = v16;

          v18 = [v13 delegate];
          [(HFCameraPosterFrameProvider *)self _updateDelegate:v18 withPosterFrame:0 atOffset:v4 ForHighQualityClip:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)failedToGeneratePosterFrameForHighQualityClip:(id)a3 atOffset:(double)a4
{
  v6 = a3;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraPosterFrameProvider *)self _failedToGeneratePosterFrameForHighQualityClip:v6 atOffset:a4];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(HFCameraPosterFrameProvider *)self bookkeepingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__HFCameraPosterFrameProvider_failedToGeneratePosterFrameForHighQualityClip_atOffset___block_invoke;
    v8[3] = &unk_277DF3AB8;
    objc_copyWeak(v10, &location);
    v9 = v6;
    v10[1] = *&a4;
    dispatch_async(v7, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __86__HFCameraPosterFrameProvider_failedToGeneratePosterFrameForHighQualityClip_atOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _failedToGeneratePosterFrameForHighQualityClip:*(a1 + 32) atOffset:*(a1 + 48)];
}

- (void)_failedToGeneratePosterFrameForHighQualityClip:(id)a3 atOffset:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = [v6 uniqueIdentifier];
    v14 = 138412546;
    v15 = v13;
    v16 = 2048;
    v17 = a4;
    _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Error: Failed generation for clip %@; offset %f", &v14, 0x16u);
  }

  v8 = [(HFCameraPosterFrameProvider *)self posterFrameRequests];
  v9 = [v8 fulfillRequestForPosterFrameGenerationForHighQualityClip:v6 atOffset:a4];

  v10 = [v9 delegate];

  if (v10)
  {
    v11 = [v9 delegate];
    [(HFCameraPosterFrameProvider *)self _updateDelegate:v11 withPosterFrame:0 atOffset:v6 ForHighQualityClip:a4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateDelegate:(id)a3 withPosterFrame:(id)a4 atOffset:(double)a5 ForHighQualityClip:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HFCameraPosterFrameProvider__updateDelegate_withPosterFrame_atOffset_ForHighQualityClip___block_invoke;
  v15[3] = &unk_277DF3438;
  v16 = v10;
  v17 = v9;
  v19 = a5;
  v18 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v10;
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