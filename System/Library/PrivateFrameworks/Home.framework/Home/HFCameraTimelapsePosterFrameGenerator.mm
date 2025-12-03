@interface HFCameraTimelapsePosterFrameGenerator
- (HFCameraTimelapseClipInfoProvider)timelapseClipInfoProvider;
- (HFCameraTimelapsePosterFrameGenerator)initWithTimelapseClipInfoProvider:(id)provider andDelegate:(id)delegate;
- (HFCameraTimelapsePosterFrameGeneratorDelegate)delegate;
- (id)_generateOffsetsForHighQualityClip:(id)clip withStep:(unint64_t)step;
- (id)_generateTimelapseOffsetsFromOffsets:(id)offsets forTimelapseDiff:(double)diff;
- (id)_generationRequestForImageGenerator:(id)generator withKey:(id)key;
- (id)generatePosterFramesForHighQualityClip:(id)clip withStep:(unint64_t)step atSize:(CGSize)size;
- (void)_generatePosterFramesForAsset:(id)asset forOffsets:(id)offsets atSize:(CGSize)size withHighQualityClip:(id)clip andTimelapseOffset:(double)offset;
- (void)_generatePosterFramesForTimelapseClip:(id)clip withHighQualityClip:(id)qualityClip forOffsets:(id)offsets atSize:(CGSize)size;
- (void)_removeGenerationRequestForImageGenerator:(id)generator withKey:(id)key;
- (void)dealloc;
- (void)imageGenerator:(id)generator didGenerateImage:(id)image requestedTime:(id *)time actualTime:(id *)actualTime forKey:(id)key;
- (void)imageGenerator:(id)generator failedToGenerateImageForRequestedTime:(id *)time actualTime:(id *)actualTime forKey:(id)key;
- (void)imageGenerator:(id)generator finishedGeneratingImagesForKey:(id)key;
@end

@implementation HFCameraTimelapsePosterFrameGenerator

- (HFCameraTimelapsePosterFrameGenerator)initWithTimelapseClipInfoProvider:(id)provider andDelegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = HFCameraTimelapsePosterFrameGenerator;
  v8 = [(HFCameraTimelapsePosterFrameGenerator *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_timelapseClipInfoProvider, providerCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = dispatch_queue_create("com.apple.home.HFCameraTimelapsePosterFrameGenerator.generationQueue", MEMORY[0x277D85CD8]);
    generationQueue = v9->_generationQueue;
    v9->_generationQueue = v10;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    posterFrameGenerationRequests = v9->_posterFrameGenerationRequests;
    v9->_posterFrameGenerationRequests = dictionary;
  }

  return v9;
}

- (void)dealloc
{
  posterFrameGenerationRequests = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  [posterFrameGenerationRequests removeAllObjects];

  v4.receiver = self;
  v4.super_class = HFCameraTimelapsePosterFrameGenerator;
  [(HFCameraTimelapsePosterFrameGenerator *)&v4 dealloc];
}

- (id)generatePosterFramesForHighQualityClip:(id)clip withStep:(unint64_t)step atSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  location[3] = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  timelapseClipInfoProvider = [(HFCameraTimelapsePosterFrameGenerator *)self timelapseClipInfoProvider];
  startDate = [clipCopy startDate];
  v12 = [timelapseClipInfoProvider timelapseClipPositionForDate:startDate inHighQualityClip:clipCopy];

  if (v12)
  {
    v13 = [(HFCameraTimelapsePosterFrameGenerator *)self _generateOffsetsForHighQualityClip:clipCopy withStep:step];
    if (+[HFUtilities isInternalTest])
    {
      clip = [v12 clip];
      [(HFCameraTimelapsePosterFrameGenerator *)self _generatePosterFramesForTimelapseClip:clip withHighQualityClip:clipCopy forOffsets:v13 atSize:width, height];
    }

    else
    {
      objc_initWeak(location, self);
      generationQueue = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __96__HFCameraTimelapsePosterFrameGenerator_generatePosterFramesForHighQualityClip_withStep_atSize___block_invoke;
      v22[3] = &unk_277DFEDB0;
      objc_copyWeak(v26, location);
      v23 = v12;
      v24 = clipCopy;
      v18 = v13;
      v25 = v18;
      v26[1] = *&width;
      v26[2] = *&height;
      dispatch_async(generationQueue, v22);

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
      *(location + 4) = clipCopy;
      _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Error: Poster generator missing timelapse for clip %@", location, 0xCu);
    }

    delegate = [(HFCameraTimelapsePosterFrameGenerator *)self delegate];
    [delegate failedToFindTimelapseClipForHighQualityClip:clipCopy];

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

- (void)_generatePosterFramesForTimelapseClip:(id)clip withHighQualityClip:(id)qualityClip forOffsets:(id)offsets atSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  qualityClipCopy = qualityClip;
  offsetsCopy = offsets;
  timelapseClipInfoProvider = [(HFCameraTimelapsePosterFrameGenerator *)self timelapseClipInfoProvider];
  v15 = [timelapseClipInfoProvider timelapseURLForTimelapseClip:clipCopy];

  startDate = [clipCopy startDate];
  startDate2 = [qualityClipCopy startDate];
  [startDate timeIntervalSinceDate:startDate2];
  v19 = v18;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v15 path];
  v22 = [defaultManager fileExistsAtPath:path];

  if (v22)
  {
    v23 = [MEMORY[0x277CE63D8] assetWithURL:v15];
    [(HFCameraTimelapsePosterFrameGenerator *)self _generatePosterFramesForAsset:v23 forOffsets:offsetsCopy atSize:qualityClipCopy withHighQualityClip:width andTimelapseOffset:height, v19];
  }

  else
  {
    v24 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412546;
      v28 = clipCopy;
      v29 = 2112;
      v30 = qualityClipCopy;
      _os_log_error_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_ERROR, "Error: No file for timelapse clip %@ for clip %@", &v27, 0x16u);
    }

    delegate = [(HFCameraTimelapsePosterFrameGenerator *)self delegate];
    [delegate failedToFindTimelapseClipForHighQualityClip:qualityClipCopy];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_generatePosterFramesForAsset:(id)asset forOffsets:(id)offsets atSize:(CGSize)size withHighQualityClip:(id)clip andTimelapseOffset:(double)offset
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  offsetsCopy = offsets;
  clipCopy = clip;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v18 = [[HFCameraImageGenerator alloc] initWithDelegate:self];
  objc_initWeak(&location, self);
  generationQueue = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke;
  block[3] = &unk_277DFEDD8;
  objc_copyWeak(v37, &location);
  v20 = clipCopy;
  v34 = v20;
  v37[1] = *&offset;
  v21 = v18;
  v35 = v21;
  v22 = uUIDString;
  v36 = v22;
  dispatch_barrier_async(generationQueue, block);

  if (+[HFUtilities isInternalTest])
  {
    v23 = [(HFCameraTimelapsePosterFrameGenerator *)self _generateTimelapseOffsetsFromOffsets:offsetsCopy forTimelapseDiff:offset];
    [(HFCameraImageGenerator *)v21 generateImagesFromAsset:assetCopy forOffsets:v23 atSize:v22 withKey:width, height];
  }

  else
  {
    generationQueue2 = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __128__HFCameraTimelapsePosterFrameGenerator__generatePosterFramesForAsset_forOffsets_atSize_withHighQualityClip_andTimelapseOffset___block_invoke_2;
    v25[3] = &unk_277DFEE00;
    v25[4] = self;
    v26 = offsetsCopy;
    offsetCopy = offset;
    v27 = v21;
    v28 = assetCopy;
    v31 = width;
    v32 = height;
    v29 = v22;
    dispatch_async(generationQueue2, v25);
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

- (id)_generateOffsetsForHighQualityClip:(id)clip withStep:(unint64_t)step
{
  clipCopy = clip;
  array = [MEMORY[0x277CBEB18] array];
  if (step)
  {
    [clipCopy duration];
    if (v7 > 0.0)
    {
      v8 = 0.0;
      stepCopy = step;
      do
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
        [array addObject:v10];

        v8 = stepCopy;
        [clipCopy duration];
        stepCopy += step;
      }

      while (v11 > v8);
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    [array addObject:v12];
  }

  return array;
}

- (id)_generateTimelapseOffsetsFromOffsets:(id)offsets forTimelapseDiff:(double)diff
{
  v21 = *MEMORY[0x277D85DE8];
  offsetsCopy = offsets;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = offsetsCopy;
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
        diff = [MEMORY[0x277CCABB0] numberWithDouble:v12 - diff];
        [array addObject:diff];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)imageGenerator:(id)generator didGenerateImage:(id)image requestedTime:(id *)time actualTime:(id *)actualTime forKey:(id)key
{
  generatorCopy = generator;
  imageCopy = image;
  keyCopy = key;
  objc_initWeak(&location, self);
  generationQueue = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HFCameraTimelapsePosterFrameGenerator_imageGenerator_didGenerateImage_requestedTime_actualTime_forKey___block_invoke;
  v18[3] = &unk_277DFEE28;
  objc_copyWeak(&v22, &location);
  v19 = generatorCopy;
  v20 = keyCopy;
  v23 = *time;
  v21 = imageCopy;
  v15 = imageCopy;
  v16 = keyCopy;
  v17 = generatorCopy;
  dispatch_barrier_async(generationQueue, v18);

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

- (void)imageGenerator:(id)generator failedToGenerateImageForRequestedTime:(id *)time actualTime:(id *)actualTime forKey:(id)key
{
  generatorCopy = generator;
  keyCopy = key;
  objc_initWeak(&location, self);
  generationQueue = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HFCameraTimelapsePosterFrameGenerator_imageGenerator_failedToGenerateImageForRequestedTime_actualTime_forKey___block_invoke;
  block[3] = &unk_277DFEE50;
  objc_copyWeak(&v17, &location);
  v15 = generatorCopy;
  v16 = keyCopy;
  v18 = *time;
  v12 = keyCopy;
  v13 = generatorCopy;
  dispatch_barrier_async(generationQueue, block);

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

- (void)imageGenerator:(id)generator finishedGeneratingImagesForKey:(id)key
{
  generatorCopy = generator;
  keyCopy = key;
  objc_initWeak(&location, self);
  generationQueue = [(HFCameraTimelapsePosterFrameGenerator *)self generationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HFCameraTimelapsePosterFrameGenerator_imageGenerator_finishedGeneratingImagesForKey___block_invoke;
  v11[3] = &unk_277DF6458;
  objc_copyWeak(&v14, &location);
  v12 = generatorCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = generatorCopy;
  dispatch_barrier_async(generationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__HFCameraTimelapsePosterFrameGenerator_imageGenerator_finishedGeneratingImagesForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeGenerationRequestForImageGenerator:*(a1 + 32) withKey:*(a1 + 40)];
}

- (id)_generationRequestForImageGenerator:(id)generator withKey:(id)key
{
  generatorCopy = generator;
  keyCopy = key;
  posterFrameGenerationRequests = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  v9 = [posterFrameGenerationRequests objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HFCameraTimelapsePosterFrameGenerator__generationRequestForImageGenerator_withKey___block_invoke;
    v12[3] = &unk_277DFEE78;
    v13 = generatorCopy;
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

- (void)_removeGenerationRequestForImageGenerator:(id)generator withKey:(id)key
{
  generatorCopy = generator;
  keyCopy = key;
  posterFrameGenerationRequests = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
  v9 = [posterFrameGenerationRequests objectForKeyedSubscript:keyCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HFCameraTimelapsePosterFrameGenerator__removeGenerationRequestForImageGenerator_withKey___block_invoke;
  v13[3] = &unk_277DFEE78;
  v14 = generatorCopy;
  v10 = generatorCopy;
  v11 = [v9 na_firstObjectPassingTest:v13];
  if (v11)
  {
    [v9 removeObject:v11];
  }

  if (![v9 count])
  {
    posterFrameGenerationRequests2 = [(HFCameraTimelapsePosterFrameGenerator *)self posterFrameGenerationRequests];
    [posterFrameGenerationRequests2 setObject:0 forKeyedSubscript:keyCopy];
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