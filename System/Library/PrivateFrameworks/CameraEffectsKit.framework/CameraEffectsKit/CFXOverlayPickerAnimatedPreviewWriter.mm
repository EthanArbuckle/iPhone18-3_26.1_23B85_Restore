@interface CFXOverlayPickerAnimatedPreviewWriter
- (CFXOverlayPickerAnimatedPreviewWriter)initWithOverlayEffectId:(id)id previewSizeInPixels:(CGSize)pixels previewDuration:(double)duration previewFrameRate:(unint64_t)rate previewStartFrameIndex:(unint64_t)index;
- (CGSize)previewSizeInPixels;
- (void)CFX_beginWriting;
- (void)CFX_finishWriting;
- (void)CFX_initializeEffectForPreviewing;
- (void)CFX_writeNextEffectFrame;
- (void)setCurrentRenderTime:(id *)time;
- (void)writeAnimatedPreviewToPath:(id)path completion:(id)completion;
@end

@implementation CFXOverlayPickerAnimatedPreviewWriter

- (CFXOverlayPickerAnimatedPreviewWriter)initWithOverlayEffectId:(id)id previewSizeInPixels:(CGSize)pixels previewDuration:(double)duration previewFrameRate:(unint64_t)rate previewStartFrameIndex:(unint64_t)index
{
  height = pixels.height;
  width = pixels.width;
  idCopy = id;
  v25.receiver = self;
  v25.super_class = CFXOverlayPickerAnimatedPreviewWriter;
  v14 = [(CFXOverlayPickerAnimatedPreviewWriter *)&v25 init];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = +[JFXEffectFactory sharedInstance];
  v16 = [v15 createEffectForType:2 fromID:idCopy withProperties:0];
  overlay = v14->_overlay;
  v14->_overlay = v16;

  renderEffect = [(JFXEffect *)v14->_overlay renderEffect];

  if (renderEffect)
  {
    v14->_previewSizeInPixels.width = width;
    v14->_previewSizeInPixels.height = height;
    v19 = MEMORY[0x277CC08F0];
    *&v14->_currentRenderTime.value = *MEMORY[0x277CC08F0];
    v14->_currentRenderTime.epoch = *(v19 + 16);
    v14->_previewDuration = duration;
    v14->_previewFrameRate = rate;
    v14->_previewStartFrameIndex = index;
    v14->_targetFrameCount = -(index - rate * duration);
    [(CFXOverlayPickerAnimatedPreviewWriter *)v14 CFX_initializeEffectForPreviewing];
    v20 = dispatch_queue_create("OverlayPickerAnimatedPreviewWriter.writerQ", 0);
    writerQueue = v14->_writerQueue;
    v14->_writerQueue = v20;

    v14->_currentFrameCount = 0;
    v14->_imageDestination = 0;
    ++s_PreviewRequestParentCodeCounter;
LABEL_4:
    v22 = v14;
    goto LABEL_8;
  }

  v23 = JFXLog_core();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [CFXOverlayPickerAnimatedPreviewWriter initWithOverlayEffectId:idCopy previewSizeInPixels:v23 previewDuration:? previewFrameRate:? previewStartFrameIndex:?];
  }

  v22 = 0;
LABEL_8:

  return v22;
}

- (void)CFX_initializeEffectForPreviewing
{
  overlay = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  [overlay setImageSequencePathToBundledAssets];

  [(CFXOverlayPickerAnimatedPreviewWriter *)self previewDuration];
  CMTimeMakeWithSeconds(&duration, v4, [(CFXOverlayPickerAnimatedPreviewWriter *)self previewFrameRate]);
  start = **&MEMORY[0x277CC08F0];
  v19 = *&start.value;
  v5 = *&start.epoch;
  CMTimeRangeMake(&v24, &start, &duration);
  overlay2 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  renderEffect = [overlay2 renderEffect];
  duration = v24;
  [renderEffect setEffectRange:&duration];

  overlay3 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  [(CFXOverlayPickerAnimatedPreviewWriter *)self previewSizeInPixels];
  [overlay3 setRenderSize:?];

  overlay4 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  [overlay4 enablePresentationState:1];

  [(CFXOverlayPickerAnimatedPreviewWriter *)self previewSizeInPixels];
  v11 = v10;
  [(CFXOverlayPickerAnimatedPreviewWriter *)self previewSizeInPixels];
  v13 = v12;
  overlay5 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  *&duration.a = v19;
  duration.c = v5;
  [overlay5 applyScaleToFitFrame:&duration withComponentTime:0.0 relativeRect:{0.0, v11, v13, 0.0, 0.0, v11, v13}];

  overlay6 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
  [overlay6 pickerScale];
  v17 = v16;

  if (v17 != 1.0)
  {
    overlay7 = [(CFXOverlayPickerAnimatedPreviewWriter *)self overlay];
    CGAffineTransformMakeScale(&duration, v17, v17);
    v20 = v19;
    v21 = v5;
    [overlay7 addTransform:&duration withComponentTime:&v20 relativeTo:1 basisOrigin:{0.0, 0.0, v11, v13}];
  }
}

- (void)writeAnimatedPreviewToPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  writerQueue = [(CFXOverlayPickerAnimatedPreviewWriter *)self writerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CFXOverlayPickerAnimatedPreviewWriter_writeAnimatedPreviewToPath_completion___block_invoke;
  block[3] = &unk_278D7A190;
  block[4] = self;
  v12 = pathCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = pathCopy;
  dispatch_async(writerQueue, block);
}

uint64_t __79__CFXOverlayPickerAnimatedPreviewWriter_writeAnimatedPreviewToPath_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDestinationPath:*(a1 + 40)];
  [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 CFX_beginWriting];
}

- (void)CFX_beginWriting
{
  writerQueue = [(CFXOverlayPickerAnimatedPreviewWriter *)self writerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CFXOverlayPickerAnimatedPreviewWriter_CFX_beginWriting__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

void __57__CFXOverlayPickerAnimatedPreviewWriter_CFX_beginWriting__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    [v2 CFX_finishWriting];
  }

  v3 = [*MEMORY[0x277CE1E10] identifier];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(a1 + 32) + 32)];
  *(*(a1 + 32) + 8) = CGImageDestinationCreateWithURL(v4, v3, [*(a1 + 32) targetFrameCount], 0);

  v5 = 1.0 / [*(a1 + 32) previewFrameRate];
  v24 = *MEMORY[0x277CD3438];
  v6 = v24;
  v7 = *MEMORY[0x277CD2DC0];
  v23[0] = &unk_28556D338;
  v8 = *MEMORY[0x277CD2DC8];
  v22[0] = v7;
  v22[1] = v8;
  v9 = v5;
  *&v5 = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  CGImageDestinationSetProperties(*(*(a1 + 32) + 8), v12);
  v20 = v6;
  v18[0] = *MEMORY[0x277CD2DB0];
  *&v13 = v9;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v18[1] = *MEMORY[0x277CD2D48];
  v19[0] = v14;
  v19[1] = &unk_28556D7E8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [*(a1 + 32) setFrameProperties:v16];

  v17 = objc_alloc_init(JFXEffectsPreviewGenerator);
  [*(a1 + 32) setPreviewGenerator:v17];

  [*(*(a1 + 32) + 88) setName:@"AnimatedPreviewWriter"];
  if ([*(a1 + 32) targetFrameCount] != 1)
  {
    [*(a1 + 32) setIsFirstAnimatedFrame:1];
  }

  [*(a1 + 32) CFX_writeNextEffectFrame];
}

- (void)CFX_writeNextEffectFrame
{
  writerQueue = [(CFXOverlayPickerAnimatedPreviewWriter *)self writerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CFXOverlayPickerAnimatedPreviewWriter_CFX_writeNextEffectFrame__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

void __65__CFXOverlayPickerAnimatedPreviewWriter_CFX_writeNextEffectFrame__block_invoke(uint64_t a1)
{
  v2 = [JFXEffectsPreviewGenerationRequest alloc];
  v3 = [*(a1 + 32) overlay];
  [*(a1 + 32) previewSizeInPixels];
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 currentRenderTime];
  }

  else
  {
    memset(location, 0, sizeof(location));
  }

  v9 = [(JFXEffectsPreviewGenerationRequest *)v2 initWithInputGenerator:v3 effectStack:0 outputSize:location renderTime:v5, v7];

  [(JFXEffectsPreviewGenerationRequest *)v9 setParentCode:s_PreviewRequestParentCodeCounter];
  objc_initWeak(location, *(a1 + 32));
  v10 = [*(a1 + 32) previewGenerator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__CFXOverlayPickerAnimatedPreviewWriter_CFX_writeNextEffectFrame__block_invoke_2;
  v11[3] = &unk_278D7BE48;
  objc_copyWeak(&v12, location);
  v11[4] = *(a1 + 32);
  [v10 generatePreviewRequest:v9 completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

void __65__CFXOverlayPickerAnimatedPreviewWriter_CFX_writeNextEffectFrame__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 objectEnumerator];
      v6 = [v5 nextObject];

      if (v6)
      {
        v7 = [[JTImage alloc] initWithPVImage:v6];

        if (v7)
        {
          v8 = *(*(a1 + 32) + 8);
          v9 = [(JTImage *)v7 image];
          v10 = [v9 CGImage];
          v11 = [*(a1 + 32) frameProperties];
          CGImageDestinationAddImage(v8, v10, v11);

          [*(a1 + 32) setCurrentFrameCount:{objc_msgSend(*(a1 + 32), "currentFrameCount") + 1}];
          v12 = [*(a1 + 32) currentFrameCount];
          if (v12 >= [*(a1 + 32) targetFrameCount])
          {
            [*(a1 + 32) CFX_finishWriting];
          }

          else
          {
            memset(&v24, 0, sizeof(v24));
            CMTimeMake(&v24, 1, [*(a1 + 32) previewFrameRate]);
            if ([*(a1 + 32) isFirstAnimatedFrame])
            {
              v13 = [*(a1 + 32) overlay];
              [v13 enablePresentationState:0];

              v14 = [*(a1 + 32) overlay];
              [v14 setBuildInAnimation:1];

              v15 = *(a1 + 32);
              time = **&MEMORY[0x277CC08F0];
              [v15 setCurrentRenderTime:&time];
              [*(a1 + 32) setIsFirstAnimatedFrame:0];
              v16 = [*(a1 + 32) previewStartFrameIndex];
              time = v24;
              CMTimeMultiply(&v22, &time, v16);
              v17 = *(a1 + 32);
              *&time.value = *&v22.value;
              epoch = v22.epoch;
            }

            else
            {
              v19 = *(a1 + 32);
              if (v19)
              {
                [v19 currentRenderTime];
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              v20 = v24;
              CMTimeAdd(&v21, &time, &v20);
              v17 = *(a1 + 32);
              *&time.value = *&v21.value;
              epoch = v21.epoch;
            }

            time.epoch = epoch;
            [v17 setCurrentRenderTime:&time];
            [WeakRetained CFX_writeNextEffectFrame];
          }
        }
      }
    }
  }
}

- (void)CFX_finishWriting
{
  writerQueue = [(CFXOverlayPickerAnimatedPreviewWriter *)self writerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CFXOverlayPickerAnimatedPreviewWriter_CFX_finishWriting__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(writerQueue, block);
}

void __58__CFXOverlayPickerAnimatedPreviewWriter_CFX_finishWriting__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = CGImageDestinationFinalize(v2);
    CFRelease(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
    [*(a1 + 32) setPreviewGenerator:0];
    v4 = [*(a1 + 32) completionBlock];

    if (v4)
    {
      v5 = [*(a1 + 32) completionBlock];
      v5[2](v5, v3);
    }
  }
}

- (CGSize)previewSizeInPixels
{
  width = self->_previewSizeInPixels.width;
  height = self->_previewSizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setCurrentRenderTime:(id *)time
{
  v3 = *&time->var0;
  self->_currentRenderTime.epoch = time->var3;
  *&self->_currentRenderTime.value = v3;
}

- (void)initWithOverlayEffectId:(uint64_t)a1 previewSizeInPixels:(NSObject *)a2 previewDuration:previewFrameRate:previewStartFrameIndex:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "could not load effect id %@", &v2, 0xCu);
}

@end