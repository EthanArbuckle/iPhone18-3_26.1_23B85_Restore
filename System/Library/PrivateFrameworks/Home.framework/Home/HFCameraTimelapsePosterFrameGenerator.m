@interface HFCameraTimelapsePosterFrameGenerator
- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider;
- (HFCameraTimelapsePosterFrameGenerator)initWithTimelapseClipInfoProvider:(id)a3 andDelegate:(id)a4;
- (HFCameraTimelapsePosterFrameGeneratorDelegate)delegate;
- (id)_generateOffsetsForHighQualityClip:(id)a3 withStep:(unint64_t)a4;
- (id)_generateTimelapseOffsetsFromOffsets:(id)a3 forTimelapseDiff:(double)a4;
- (id)_generationRequestForImageGenerator:(id)a3 withKey:(id)a4;
- (id)generatePosterFramesForHighQualityClip:(id)a3 withStep:(unint64_t)a4 atSize:(CGSize)a5;
- (void)_generatePosterFramesForAsset:(id)a3 forOffsets:(id)a4 atSize:(CGSize)a5 withHighQualityClip:(id)a6 andTimelapseOffset:(double)a7;
- (void)_generatePosterFramesForTimelapseClip:(id)a3 withHighQualityClip:(id)a4 forOffsets:(id)a5 atSize:(CGSize)a6;
- (void)_removeGenerationRequestForImageGenerator:(id)a3 withKey:(id)a4;
- (void)dealloc;
- (void)imageGenerator:(id)a3 didGenerateImage:(id)a4 requestedTime:(id *)a5 actualTime:(id *)a6 forKey:(id)a7;
- (void)imageGenerator:(id)a3 failedToGenerateImageForRequestedTime:(id *)a4 actualTime:(id *)a5 forKey:(id)a6;
- (void)imageGenerator:(id)a3 finishedGeneratingImagesForKey:(id)a4;
@end

@implementation HFCameraTimelapsePosterFrameGenerator

- (HFCameraTimelapsePosterFrameGenerator)initWithTimelapseClipInfoProvider:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HFCameraTimelapsePosterFrameGenerator;
  v8 = [(HFCameraTimelapsePosterFrameGenerator *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_timelapseClipInfoProvider, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = dispatch_queue_create("com.apple.home.HFCameraTimelapsePosterFrameGenerator.generationQueue", MEMORY[0x277D85CD8]);
    generationQueue = v9->_generationQueue;
    v9->_generationQueue = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    posterFrameGenerationRequests = v9->_posterFrameGenerationRequests;
    v9->_posterFrameGenerationRequests = v12;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  [v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = HFCameraTimelapsePosterFrameGenerator;
  [(HFCameraTimelapsePosterFrameGenerator *)&v4 dealloc];
}

- (id)generatePosterFramesForHighQualityClip:(id)a3 withStep:(unint64_t)a4 atSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  location[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [(HFCameraTimelapsePosterFrameGenerator *)self timelapseClipInfoProvider];
  v11 = [v9 startDate];
  v12 = [v10 timelapseClipPositionForDate:v11 inHighQualityClip:v9];

  if (v12)
  {
    v13 = [(HFCameraTimelapsePosterFrameGenerator *)self _generateOffsetsForHighQualityClip:v9 withStep:a4];
    if (+[HFUtilities isInternalTest])
    {
      v14 = [v12 clip];
      [(HFCameraTimelapsePosterFrameGenerator *)self _generatePosterFramesForTimelapseClip:v14 withHighQualityClip:v9 forOffsets:v13 atSize:width, height];
    }

    else
    {
      objc_initWeak(location, self);
      v17 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __96__HFCameraTimelapsePosterFrameGenerator_generatePosterFramesForHighQualityClip_withStep_atSize___block_invoke;
      v22[3] = &unk_277DFEDB0;
      objc_copyWeak(v26, location);
      v23 = v12;
      v24 = v9;
      v18 = v13;
      v25 = v18;
      v26[1] = *&width;
      v26[2] = *&height;
      dispatch_async(v17, v22);

      v19 = v25;
      v13 = v18;

      objc_destroyWeak(v26);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v15 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v9;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Error: Poster generator missing timelapse for clip %@", location, 0xCu);
    }

    v16 = [(HFCameraTimelapsePosterFrameGenerator *)self delegate];
    [v16 failedToFindTimelapseClipForHighQualityClip:v9];

    v13 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

void __96__HFCameraTimelapsePosterFrameGenerator_generatePosterFramesForHighQualityClip_withStep_atSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) clip];
  [WeakRetained _generatePosterFramesForTimelapseClip:v2 withHighQualityClip:*(a1 + 40) forOffsets:*(a1 + 48) atSize:{*(a1 + 64), *(a1 + 72)}];
}

- (void)_generatePosterFramesForTimelapseClip:(id)a3 withHighQualityClip:(id)a4 forOffsets:(id)a5 atSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(HFCameraTimelapsePosterFrameGenerator *)self timelapseClipInfoProvider];
  v15 = [v14 timelapseURLForTimelapseClip:v11];

  v16 = [v11 startDate];
  v17 = [v12 startDate];
  [v16 timeIntervalSinceDate:v17];
  v19 = v18;

  v20 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [v15 path];
  v22 = [v20 fileExistsAtPath:v21];

  if (v22)
  {
    v23 = [MEMORY[0x277CE63D8] assetWithURL:v15];
    [(HFCameraTimelapsePosterFrameGenerator *)self _generatePosterFramesForAsset:v23 forOffsets:v13 atSize:v12 withHighQualityClip:width andTimelapseOffset:height, v19];
  }

  else
  {
    v24 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412546;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Error: No file for timelapse clip %@ for clip %@", &v27, 0x16u);
    }

    v25 = [(HFCameraTimelapsePosterFrameGenerator *)self delegate];
    [v25 failedToFindTimelapseClipForHighQualityClip:v12];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_generatePosterFramesForAsset:(id)a3 forOffsets:(id)a4 atSize:(CGSize)a5 withHighQualityClip:(id)a6 andTimelapseOffset:(double)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [v15 uniqueIdentifier];
  v17 = [v16 UUIDString];

  v18 = [[HFCameraImageGenerator alloc] initWithDelegate:self];
  objc_initWeak(&location, self);
  v19 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke;
  block[3] = &unk_277DFEDD8;
  objc_copyWeak(v37, &location);
  v20 = v15;
  v34 = v20;
  v37[1] = *&a7;
  v21 = v18;
  v35 = v21;
  v22 = v17;
  v36 = v22;
  dispatch_barrier_async(v19, block);

  if (+[HFUtilities isInternalTest])
  {
    v23 = [(HFCameraTimelapsePosterFrameGenerator *)self _generateTimelapseOffsetsFromOffsets:v14 forTimelapseDiff:a7];
    [(HFCameraImageGenerator *)v21 generateImagesFromAsset:v13 forOffsets:v23 atSize:v22 withKey:width, height];
  }

  else
  {
    v24 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke_2;
    v25[3] = &unk_277DFEE00;
    v25[4] = self;
    v26 = v14;
    v30 = a7;
    v27 = v21;
    v28 = v13;
    v31 = width;
    v32 = height;
    v29 = v22;
    dispatch_async(v24, v25);
  }

  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
}

void __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_alloc_init(HFCameraTimelapsePosterFrameGenerationRequest);
  [(HFCameraTimelapsePosterFrameGenerationRequest *)v2 setClip:*(a1 + 32)];
  [(HFCameraTimelapsePosterFrameGenerationRequest *)v2 setTimelapseOffset:*(a1 + 64)];
  [(HFCameraTimelapsePosterFrameGenerationRequest *)v2 setImageGenerator:*(a1 + 40)];
  v3 = [WeakRetained posterFrameGenerationRequests];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB18] array];
  }

  [v4 addObject:v2];
  v5 = [WeakRetained posterFrameGenerationRequests];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 48)];
}

void __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _generateTimelapseOffsetsFromOffsets:*(a1 + 40) forTimelapseDiff:*(a1 + 72)];
  [*(a1 + 48) generateImagesFromAsset:*(a1 + 56) forOffsets:v2 atSize:*(a1 + 64) withKey:{*(a1 + 80), *(a1 + 88)}];
}

- (id)_generateOffsetsForHighQualityClip:(id)a3 withStep:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  if (a4)
  {
    [v5 duration];
    if (v7 > 0.0)
    {
      v8 = 0.0;
      v9 = a4;
      do
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
        [v6 addObject:v10];

        v8 = v9;
        [v5 duration];
        v9 += a4;
      }

      while (v11 > v8);
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    [v6 addObject:v12];
  }

  return v6;
}

- (id)_generateTimelapseOffsetsFromOffsets:(id)a3 forTimelapseDiff:(double)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) doubleValue];
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12 - a4];
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)imageGenerator:(id)a3 didGenerateImage:(id)a4 requestedTime:(id *)a5 actualTime:(id *)a6 forKey:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  objc_initWeak(&location, self);
  v14 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HFCameraTimelapsePosterFrameGenerator_imageGenerator_didGenerateImage_requestedTime_actualTime_forKey___block_invoke;
  v18[3] = &unk_277DFEE28;
  objc_copyWeak(&v22, &location);
  v19 = v11;
  v20 = v13;
  v23 = *a5;
  v21 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  dispatch_barrier_async(v14, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __105__HFCameraTimelapsePosterFrameGenerator_imageGenerator_didGenerateImage_requestedTime_actualTime_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _generationRequestForImageGenerator:*(a1 + 32) withKey:*(a1 + 40)];
  v10 = *(a1 + 64);
  Seconds = CMTimeGetSeconds(&v10);
  [v3 timelapseOffset];
  *&v5 = Seconds + v5;
  v6 = roundf(*&v5);
  v7 = [WeakRetained delegate];
  v8 = *(a1 + 48);
  v9 = [v3 clip];
  [v7 didGeneratePosterFrame:v8 forHighQualityClip:v9 atOffset:v6 withTimelapseOffset:Seconds];
}

- (void)imageGenerator:(id)a3 failedToGenerateImageForRequestedTime:(id *)a4 actualTime:(id *)a5 forKey:(id)a6
{
  v9 = a3;
  v10 = a6;
  objc_initWeak(&location, self);
  v11 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HFCameraTimelapsePosterFrameGenerator_imageGenerator_failedToGenerateImageForRequestedTime_actualTime_forKey___block_invoke;
  block[3] = &unk_277DFEE50;
  objc_copyWeak(&v17, &location);
  v15 = v9;
  v16 = v10;
  v18 = *a4;
  v12 = v10;
  v13 = v9;
  dispatch_barrier_async(v11, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __112__HFCameraTimelapsePosterFrameGenerator_imageGenerator_failedToGenerateImageForRequestedTime_actualTime_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _generationRequestForImageGenerator:*(a1 + 32) withKey:*(a1 + 40)];
  v9 = *(a1 + 56);
  Seconds = CMTimeGetSeconds(&v9);
  [v3 timelapseOffset];
  v6 = Seconds + v5;
  v7 = [WeakRetained delegate];
  v8 = [v3 clip];
  [v7 failedToGeneratePosterFrameForHighQualityClip:v8 atOffset:v6];
}

- (void)imageGenerator:(id)a3 finishedGeneratingImagesForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HFCameraTimelapsePosterFrameGenerator_imageGenerator_finishedGeneratingImagesForKey___block_invoke;
  v11[3] = &unk_277DF6458;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__HFCameraTimelapsePosterFrameGenerator_imageGenerator_finishedGeneratingImagesForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeGenerationRequestForImageGenerator:*(a1 + 32) withKey:*(a1 + 40)];
}

- (id)_generationRequestForImageGenerator:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HFCameraTimelapsePosterFrameGenerator__generationRequestForImageGenerator_withKey___block_invoke;
    v12[3] = &unk_277DFEE78;
    v13 = v6;
    v10 = [v9 na_firstObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __85__HFCameraTimelapsePosterFrameGenerator__generationRequestForImageGenerator_withKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 imageGenerator];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_removeGenerationRequestForImageGenerator:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  v9 = [v8 objectForKeyedSubscript:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HFCameraTimelapsePosterFrameGenerator__removeGenerationRequestForImageGenerator_withKey___block_invoke;
  v13[3] = &unk_277DFEE78;
  v14 = v6;
  v10 = v6;
  v11 = [v9 na_firstObjectPassingTest:v13];
  if (v11)
  {
    [v9 removeObject:v11];
  }

  if (![v9 count])
  {
    v12 = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
    [v12 setObject:0 forKeyedSubscript:v7];
  }
}

uint64_t __91__HFCameraTimelapsePosterFrameGenerator__removeGenerationRequestForImageGenerator_withKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 imageGenerator];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (HFCameraTimelapsePosterFrameGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timelapseClipInfoProvider);

  return WeakRetained;
}

@end