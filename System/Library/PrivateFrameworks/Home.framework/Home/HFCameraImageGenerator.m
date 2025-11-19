@interface HFCameraImageGenerator
- (HFCameraImageGenerator)initWithDelegate:(id)a3;
- (HFCameraImageGeneratorDelegate)delegate;
- (void)generateImagesFromAsset:(id)a3 forOffsets:(id)a4 atSize:(CGSize)a5 withKey:(id)a6;
@end

@implementation HFCameraImageGenerator

- (HFCameraImageGenerator)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFCameraImageGenerator;
  v5 = [(HFCameraImageGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_imagesExpected = 0;
  }

  return v6;
}

- (void)generateImagesFromAsset:(id)a3 forOffsets:(id)a4 atSize:(CGSize)a5 withKey:(id)a6
{
  height = a5.height;
  width = a5.width;
  v35 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v24 = a6;
  [(HFCameraImageGenerator *)self setKey:?];
  v23 = v11;
  v13 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:v11];
  v33 = **&MEMORY[0x277CC08F0];
  v25 = *&v33.value;
  epoch = v33.epoch;
  [v13 setRequestedTimeToleranceBefore:&v33];
  *&v33.value = v25;
  v33.epoch = epoch;
  [v13 setRequestedTimeToleranceAfter:&v33];
  [v13 setMaximumSize:{width, height}];
  -[HFCameraImageGenerator setImagesExpected:](self, "setImagesExpected:", [v12 count]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v17)
  {
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v29 + 1) + 8 * v19) doubleValue];
        memset(&v33, 0, sizeof(v33));
        CMTimeMakeWithSeconds(&v33, v20, 1);
        v28 = v33;
        v21 = [MEMORY[0x277CCAE60] valueWithCMTime:&v28];
        [v15 addObject:v21];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v17);
  }

  objc_initWeak(&v33, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HFCameraImageGenerator_generateImagesFromAsset_forOffsets_atSize_withKey___block_invoke;
  v26[3] = &unk_277DFD638;
  objc_copyWeak(&v27, &v33);
  [v13 generateCGImagesAsynchronouslyForTimes:v15 completionHandler:v26];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v33);

  v22 = *MEMORY[0x277D85DE8];
}

void __76__HFCameraImageGenerator_generateImagesFromAsset_forOffsets_atSize_withKey___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3 || a5 || v11)
  {
    v16 = HFLogForCategory(0x19uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Error: Trying to generate image %@", buf, 0xCu);
    }

    v13 = [WeakRetained delegate];
    v14 = [WeakRetained key];
    *buf = *a2;
    v23 = *(a2 + 16);
    v20 = *a4;
    v21 = *(a4 + 2);
    [v13 imageGenerator:WeakRetained failedToGenerateImageForRequestedTime:buf actualTime:&v20 forKey:v14];
  }

  else
  {
    v13 = [MEMORY[0x277D755B8] imageWithCGImage:a3];
    v14 = [WeakRetained delegate];
    v15 = [WeakRetained key];
    *buf = *a2;
    v23 = *(a2 + 16);
    v20 = *a4;
    v21 = *(a4 + 2);
    [v14 imageGenerator:WeakRetained didGenerateImage:v13 requestedTime:buf actualTime:&v20 forKey:v15];
  }

  [WeakRetained setImagesExpected:{objc_msgSend(WeakRetained, "imagesExpected") - 1}];
  if (![WeakRetained imagesExpected])
  {
    v17 = [WeakRetained delegate];
    v18 = [WeakRetained key];
    [v17 imageGenerator:WeakRetained finishedGeneratingImagesForKey:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HFCameraImageGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end