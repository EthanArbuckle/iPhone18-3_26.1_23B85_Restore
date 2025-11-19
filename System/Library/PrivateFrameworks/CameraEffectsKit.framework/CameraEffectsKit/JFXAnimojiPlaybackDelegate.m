@interface JFXAnimojiPlaybackDelegate
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)a3;
- ($AC64C642040120CEEAD84DEEACA9A5CE)playbackElementPlaybackMediaRange;
- (JFXARMetadataMediaReader)arMetadataReader;
- (JFXAnimojiEffectRenderer)animojiRenderer;
- (JFXAnimojiPlaybackDelegate)initWithPlayableElement:(id)a3 sharedMediaDataReaderManager:(id)a4;
- (JFXDepthDataMediaReader)depthReader;
- (id)JFX_arMetadataReaderItemForMediaTime:(id *)a3;
- (id)JFX_avDepthDataFromDepthDataForMediaTime:(id *)a3;
- (id)JFX_cachedAnimojiImageForMediaTime:(id *)a3 forAnimojiRenderingAttributes:(id)a4;
- (id)JFX_renderAnimojiEffect:(id)a3 forTime:(id *)a4 withARFrame:(id)a5 depthData:(id)a6 inputBufferSize:(CGSize)a7 captureOrientation:(int64_t)a8 interfaceOrientation:(int64_t)a9 preRecordedBlendShapes:(id)a10 backgroundColor:(id)a11;
- (id)preprocessWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6;
- (id)renderWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6;
- (void)JFX_cacheAnimojiImage:(id)a3;
- (void)JFX_clearCachedAnimojiImages;
- (void)JFX_initAnimojiImageBufferCachingProperties;
- (void)JFX_initAnimojiRenderingProperies;
- (void)JFX_initMediaDataReaderProperties;
- (void)JFX_initPlaybackLoadingProperies;
- (void)JFX_loadAnimojiRenderer;
- (void)JFX_loadMediaDataReaders;
- (void)JFX_loadResourcesForPlayback;
- (void)JFX_requestUnloadResourcesForPlayback;
- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)a3;
- (void)JFX_unloadAnimojiRenderer;
- (void)JFX_unloadMediaDataReaders;
- (void)JFX_unloadResourcesForPlayback;
- (void)loadWithUserContext:(id)a3;
- (void)setAnimojiRenderer:(id)a3;
- (void)setArMetadataReader:(id)a3;
- (void)setDepthReader:(id)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)unloadWithUserContext:(id)a3;
@end

@implementation JFXAnimojiPlaybackDelegate

- (JFXAnimojiPlaybackDelegate)initWithPlayableElement:(id)a3 sharedMediaDataReaderManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = JFXAnimojiPlaybackDelegate;
  v9 = [(JFXAnimojiPlaybackDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_playableElement, a3);
    objc_storeStrong(&v10->_sharedMediaDataReaderManager, a4);
    [(JFXAnimojiPlaybackDelegate *)v10 JFX_initPlaybackLoadingProperies];
    [(JFXAnimojiPlaybackDelegate *)v10 JFX_initAnimojiRenderingProperies];
    [(JFXAnimojiPlaybackDelegate *)v10 JFX_initMediaDataReaderProperties];
    [(JFXAnimojiPlaybackDelegate *)v10 JFX_initAnimojiImageBufferCachingProperties];
  }

  return v10;
}

- (void)setIsScrubbing:(BOOL)a3
{
  v3 = a3;
  v5 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXAnimojiPlaybackDelegate setIsScrubbing:?];
  }

  self->_isScrubbing = v3;
  [(JFXAnimojiPlaybackDelegate *)self JFX_setMediaDataReaderScrubbingMode:v3];
}

- (void)loadWithUserContext:(id)a3
{
  v4 = a3;
  v5 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXAnimojiPlaybackDelegate loadWithUserContext:?];
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_Effect"];
  v8 = [v7 dataRepresentation];
  v9 = [v7 dataRepresentation];

  if (v9)
  {
    v10 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v11 = [v10 originalAnimojiDataRepresentation];

    v12 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v13 = [v12 originalAnimojiVersionNumber];

    if ([v11 isEqualToData:v8])
    {
      v14 = v13 == AVTAvatarKitVersionNumber();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__JFXAnimojiPlaybackDelegate_loadWithUserContext___block_invoke;
  block[3] = &unk_278D7C118;
  block[4] = self;
  v18 = v7;
  v19 = v14;
  v16 = v7;
  dispatch_async(v15, block);

  [(JFXAnimojiPlaybackDelegate *)self JFX_loadResourcesForPlayback];
}

uint64_t __50__JFXAnimojiPlaybackDelegate_loadWithUserContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimojiEffect:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setUseAnimojiBlendShapes:v2];
}

- (void)unloadWithUserContext:(id)a3
{
  v4 = a3;
  v5 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JFXAnimojiPlaybackDelegate unloadWithUserContext:?];
  }

  [(JFXAnimojiPlaybackDelegate *)self JFX_requestUnloadResourcesForPlayback];
}

- (id)preprocessWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *&v39.start.value = *&a4->var0;
    v39.start.epoch = a4->var3;
    Seconds = CMTimeGetSeconds(&v39.start);
    v28 = [(JFXAnimojiPlaybackDelegate *)self isScrubbing];
    v29 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v30 = [v29 uuid];
    LODWORD(v39.start.value) = 134218754;
    *(&v39.start.value + 4) = Seconds;
    LOWORD(v39.start.flags) = 1024;
    *(&v39.start.flags + 2) = v28;
    WORD1(v39.start.epoch) = 2112;
    *(&v39.start.epoch + 4) = v30;
    WORD2(v39.duration.value) = 2048;
    *(&v39.duration.value + 6) = v8;
    _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, "preprocessWithInputs called for at time %f scrubMode %{BOOL}d for clip %@ userContext %p", &v39, 0x26u);
  }

  memset(&v38, 0, sizeof(v38));
  *&v39.start.value = *&a4->var0;
  v39.start.epoch = a4->var3;
  [(JFXAnimojiPlaybackDelegate *)self jfx_mediaTimeFromPlaybackTime:&v39];
  v10 = v8;
  memset(&v39, 0, 24);
  v11 = [(JFXAnimojiPlaybackDelegate *)self JFX_cachedAnimojiImageForMediaTime:&v39 forAnimojiRenderingAttributes:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    goto LABEL_15;
  }

  v14 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *&v39.start.value = *&a4->var0;
    v39.start.epoch = a4->var3;
    v31 = CMTimeGetSeconds(&v39.start);
    v32 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v33 = [v32 uuid];
    v39.start = v38;
    *&v34 = CMTimeGetSeconds(&v39.start);
    LODWORD(v39.start.value) = 134218498;
    *(&v39.start.value + 4) = v31;
    LOWORD(v39.start.flags) = 2112;
    *(&v39.start.flags + 2) = v33;
    HIWORD(v39.start.epoch) = 2048;
    v39.duration.value = v34;
    _os_log_debug_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEBUG, "reading ARData for animoji at time %f for clip %@ using media time %f", &v39, 0x20u);
  }

  v39.start = v38;
  v15 = [(JFXAnimojiPlaybackDelegate *)self JFX_arMetadataReaderItemForMediaTime:&v39];
  v16 = [v15 arMetadata];
  v17 = v16;
  if (!v15)
  {
    memset(&v39, 0, sizeof(v39));
    memset(&v35, 0, 24);
    CMTimeMake(&v35.start, 1, +[JFXMediaSettings frameRate]);
    start = v38;
    duration = v35.start;
    CMTimeRangeMake(&v39, &start, &duration);
    goto LABEL_13;
  }

  v18 = [v16 arFrame];
  if (!v18 || (v19 = v18, v20 = [v17 hasTrackedFace], v19, (v20 & 1) == 0))
  {
    [v15 timeRange];
LABEL_13:
    v25 = [JFXAnimojiPlaybackPreprocessedData alloc];
    start = *a4;
    v35 = v39;
    v13 = [(JFXAnimojiPlaybackPreprocessedData *)v25 initForRenderTime:&start usingDataFromMediaTimeRange:&v35 arFrame:0 avDepthData:0 animojiBlendShapes:0];
    goto LABEL_14;
  }

  v39.start = v38;
  v21 = [(JFXAnimojiPlaybackDelegate *)self JFX_avDepthDataFromDepthDataForMediaTime:&v39];
  v22 = [v17 arFrame];
  v23 = [v17 animojiPhysicsBlendShapes];
  v24 = [JFXAnimojiPlaybackPreprocessedData alloc];
  [v15 timeRange];
  *&v35.start.value = *&a4->var0;
  v35.start.epoch = a4->var3;
  v13 = [(JFXAnimojiPlaybackPreprocessedData *)v24 initForRenderTime:&v35 usingDataFromMediaTimeRange:&v39 arFrame:v22 avDepthData:v21 animojiBlendShapes:v23];

LABEL_14:
LABEL_15:

  return v13;
}

- (id)renderWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v68 = 0uLL;
  v69 = 0;
  *time = *a4;
  v10 = a6;
  [(JFXAnimojiPlaybackDelegate *)self jfx_mediaTimeFromPlaybackTime:time];
  v11 = [v10 preprocessData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [v10 preprocessData];

  if (isKindOfClass)
  {
    v14 = JFXLog_DebugAnimojiPlayback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *time = *&a4->var0;
      *&time[16] = a4->var3;
      Seconds = CMTimeGetSeconds(time);
      *time = v68;
      *&time[16] = v69;
      v52 = CMTimeGetSeconds(time);
      v53 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
      v54 = [v53 uuid];
      *time = 134218754;
      *&time[4] = Seconds;
      *&time[12] = 2112;
      *&time[14] = v13;
      *&time[22] = 2048;
      *&time[24] = v52;
      LOWORD(v71) = 2112;
      *(&v71 + 2) = v54;
      _os_log_debug_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEBUG, "renderWithInputs called at time %f found cached animojiImage %@ for media time %f on clip %@", time, 0x2Au);
    }

    v15 = [v13 animojiImageBuffer];
  }

  else
  {
    v16 = v9;
    v17 = [v13 arFrame];

    if (v17)
    {
      v62 = v9;
      v64 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_Effect"];
      v18 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_UIInterfaceOrientation"];
      v19 = [v18 integerValue];

      v20 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation"];
      v21 = [v20 integerValue];

      v22 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
      [v22 CGSizeValue];
      v24 = v23;
      v26 = v25;

      v63 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_BackgroundColor"];
      v27 = [v16 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation"];

      if (!v27)
      {
        v28 = JFXLog_DebugAnimojiPlayback();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [JFXAnimojiPlaybackDelegate renderWithInputs:v28 time:? userContext:? compositeContext:?];
        }

        v21 = 4;
      }

      v29 = [v13 arFrame];
      v30 = [v29 valueForKey:@"worldAlignment"];
      v31 = [v30 integerValue];

      if (v31 != 2)
      {
        v32 = JFXLog_DebugAnimojiPlayback();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [JFXAnimojiPlaybackDelegate renderWithInputs:time:userContext:compositeContext:];
        }
      }

      v33 = [v13 animojiBlendShapes];
      v34 = [v13 arFrame];
      v35 = [v13 avDepthData];
      *time = *&a4->var0;
      *&time[16] = a4->var3;
      v15 = [(JFXAnimojiPlaybackDelegate *)self JFX_renderAnimojiEffect:v64 forTime:time withARFrame:v34 depthData:v35 inputBufferSize:v21 captureOrientation:v19 interfaceOrientation:v24 preRecordedBlendShapes:v26 backgroundColor:v33, v63];

      if (v15)
      {
        v36 = [JFXCachedAnimojiImage alloc];
        if (v13)
        {
          [v13 mediaTimeRangeForData];
        }

        else
        {
          v71 = 0u;
          memset(time, 0, sizeof(time));
        }

        v39 = [(JFXCachedAnimojiImage *)v36 initWithMediaTimeRange:time animojiRenderingAttributes:v16 animojiImageBuffer:v15];
        v44 = JFXLog_DebugAnimojiPlayback();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *time = *&a4->var0;
          *&time[16] = a4->var3;
          v55 = CMTimeGetSeconds(time);
          *time = v68;
          *&time[16] = v69;
          v56 = CMTimeGetSeconds(time);
          v57 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
          v58 = [v57 uuid];
          *time = 134218754;
          *&time[4] = v55;
          *&time[12] = 2048;
          *&time[14] = v56;
          *&time[22] = 2112;
          *&time[24] = v58;
          LOWORD(v71) = 2048;
          *(&v71 + 2) = v16;
          _os_log_debug_impl(&dword_242A3B000, v44, OS_LOG_TYPE_DEBUG, "renderWithInputs called at time %f rendered animoji at media time %f for clip %@ userContext %p", time, 0x2Au);
        }

        [(JFXAnimojiPlaybackDelegate *)self JFX_cacheAnimojiImage:v39];
        v45 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
        v46 = [v45 isStill];

        if (v46)
        {
          objc_initWeak(time, self);
          v47 = dispatch_time(0, 100000000);
          v48 = dispatch_get_global_queue(17, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__JFXAnimojiPlaybackDelegate_renderWithInputs_time_userContext_compositeContext___block_invoke;
          block[3] = &unk_278D7C140;
          objc_copyWeak(&v67, time);
          block[4] = self;
          v66 = v16;
          dispatch_after(v47, v48, block);

          objc_destroyWeak(&v67);
          objc_destroyWeak(time);
        }
      }

      else
      {
        v39 = JFXLog_DebugAnimojiPlayback();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *time = *&a4->var0;
          *&time[16] = a4->var3;
          v40 = CMTimeGetSeconds(time);
          *time = v68;
          *&time[16] = v69;
          v41 = CMTimeGetSeconds(time);
          v42 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
          v43 = [v42 uuid];
          *time = 134218754;
          *&time[4] = v40;
          *&time[12] = 2048;
          *&time[14] = v41;
          *&time[22] = 2112;
          *&time[24] = v43;
          LOWORD(v71) = 2048;
          *(&v71 + 2) = v16;
          _os_log_debug_impl(&dword_242A3B000, v39, OS_LOG_TYPE_DEBUG, "renderWithInputs called at time %f rendering failed for animoji at media time %f for clip %@ userContext %p", time, 0x2Au);
        }
      }

      v49 = v64;

      v9 = v62;
    }

    else
    {
      v37 = JFXLog_DebugAnimojiPlayback();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *time = v68;
        *&time[16] = v69;
        v59 = CMTimeGetSeconds(time);
        v60 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
        v61 = [v60 uuid];
        *time = 134218242;
        *&time[4] = v59;
        *&time[12] = 2112;
        *&time[14] = v61;
        _os_log_debug_impl(&dword_242A3B000, v37, OS_LOG_TYPE_DEBUG, "did not render animoji at media time %f for clip %@ because ARData with face is not available", time, 0x16u);
      }

      v38 = [JFXCachedAnimojiImage alloc];
      if (v13)
      {
        [v13 mediaTimeRangeForData];
      }

      else
      {
        v71 = 0u;
        memset(time, 0, sizeof(time));
      }

      v49 = [(JFXCachedAnimojiImage *)v38 initWithMediaTimeRange:time animojiRenderingAttributes:v16 animojiImageBuffer:0];
      [(JFXAnimojiPlaybackDelegate *)self JFX_cacheAnimojiImage:v49];
      v15 = 0;
    }
  }

  return v15;
}

void __81__JFXAnimojiPlaybackDelegate_renderWithInputs_time_userContext_compositeContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = JFXLog_DebugAnimojiPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __81__JFXAnimojiPlaybackDelegate_renderWithInputs_time_userContext_compositeContext___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) JFX_unloadMediaDataReaders];
    [*(a1 + 32) JFX_unloadAnimojiRenderer];
  }
}

- (void)JFX_initPlaybackLoadingProperies
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = [v3 stringWithFormat:@"com.apple.%@.delayedUnloadPlaybackQueue", v5];

  v6 = v9;
  v7 = dispatch_queue_create([v9 UTF8String], 0);
  delayedUnloadPlaybackQueue = self->_delayedUnloadPlaybackQueue;
  self->_delayedUnloadPlaybackQueue = v7;
}

- (void)JFX_loadResourcesForPlayback
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self delayedUnloadPlaybackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__JFXAnimojiPlaybackDelegate_JFX_loadResourcesForPlayback__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(v3, block);

  [(JFXAnimojiPlaybackDelegate *)self JFX_loadMediaDataReaders];
  [(JFXAnimojiPlaybackDelegate *)self JFX_loadAnimojiRenderer];
}

void __58__JFXAnimojiPlaybackDelegate_JFX_loadResourcesForPlayback__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delayedUnloadPlaybackResourcesBlock];
  if (v2)
  {
    [*v1 setDelayedUnloadPlaybackResourcesBlock:0];
    v3 = JFXLog_DebugAnimojiPlayback();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__JFXAnimojiPlaybackDelegate_JFX_loadResourcesForPlayback__block_invoke_cold_1(v1);
    }

    dispatch_block_cancel(v2);
  }
}

- (void)JFX_requestUnloadResourcesForPlayback
{
  if (-[JFXAnimojiPlaybackDelegate isScrubbing](self, "isScrubbing") || (-[JFXAnimojiPlaybackDelegate playableElement](self, "playableElement"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStill], v3, v4))
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke;
    block[3] = &unk_278D7B3F0;
    objc_copyWeak(&v11, &location);
    block[4] = self;
    v5 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v6 = [(JFXAnimojiPlaybackDelegate *)self delayedUnloadPlaybackQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_67;
    v8[3] = &unk_278D7A140;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_sync(v6, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {

    [(JFXAnimojiPlaybackDelegate *)self JFX_unloadResourcesForPlayback];
  }
}

void __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) delayedUnloadPlaybackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_2;
    block[3] = &unk_278D79D20;
    block[4] = WeakRetained;
    dispatch_sync(v3, block);

    v4 = JFXLog_DebugAnimojiPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_cold_1(WeakRetained);
    }

    [WeakRetained JFX_unloadResourcesForPlayback];
  }
}

void __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_67(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delayedUnloadPlaybackResourcesBlock];

  if (v3)
  {
    v4 = JFXLog_DebugAnimojiPlayback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_67_cold_1(v2);
    }
  }

  else
  {
    [*(a1 + 32) setDelayedUnloadPlaybackResourcesBlock:*(a1 + 40)];
    v5 = dispatch_time(0, 1000000000);
    queue = dispatch_get_global_queue(21, 0);
    v6 = [*(a1 + 32) delayedUnloadPlaybackResourcesBlock];
    dispatch_after(v5, queue, v6);
  }
}

- (void)JFX_unloadResourcesForPlayback
{
  v1 = [a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)JFX_initAnimojiRenderingProperies
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = [v3 stringWithFormat:@"com.apple.%@.renderQueue", v5];

  v6 = v9;
  v7 = dispatch_queue_create([v9 UTF8String], 0);
  animojiRenderQueue = self->_animojiRenderQueue;
  self->_animojiRenderQueue = v7;
}

- (void)JFX_loadAnimojiRenderer
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__JFXAnimojiPlaybackDelegate_JFX_loadAnimojiRenderer__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (JFXAnimojiEffectRenderer)animojiRenderer
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  dispatch_assert_queue_V2(v3);

  animojiRenderer = self->_animojiRenderer;
  if (!animojiRenderer)
  {
    v5 = objc_opt_new();
    v6 = self->_animojiRenderer;
    self->_animojiRenderer = v5;

    animojiRenderer = self->_animojiRenderer;
  }

  return animojiRenderer;
}

- (void)setAnimojiRenderer:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  dispatch_assert_queue_V2(v5);

  animojiRenderer = self->_animojiRenderer;
  self->_animojiRenderer = v4;
}

- (void)JFX_unloadAnimojiRenderer
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__JFXAnimojiPlaybackDelegate_JFX_unloadAnimojiRenderer__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)JFX_renderAnimojiEffect:(id)a3 forTime:(id *)a4 withARFrame:(id)a5 depthData:(id)a6 inputBufferSize:(CGSize)a7 captureOrientation:(int64_t)a8 interfaceOrientation:(int64_t)a9 preRecordedBlendShapes:(id)a10 backgroundColor:(id)a11
{
  height = a7.height;
  width = a7.width;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a10;
  v22 = a11;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__19;
  v49 = __Block_byref_object_dispose__19;
  v50 = 0;
  v23 = [(JFXAnimojiPlaybackDelegate *)self animojiRenderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __179__JFXAnimojiPlaybackDelegate_JFX_renderAnimojiEffect_forTime_withARFrame_depthData_inputBufferSize_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke;
  block[3] = &unk_278D7C168;
  v44 = *a4;
  v33 = v18;
  v34 = self;
  v35 = v19;
  v36 = v20;
  v40 = width;
  v41 = height;
  v42 = a8;
  v43 = a9;
  v37 = v21;
  v38 = v22;
  v39 = &v45;
  v24 = v22;
  v25 = v21;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  dispatch_sync(v23, block);

  v29 = v46[5];
  _Block_object_dispose(&v45, 8);

  return v29;
}

void __179__JFXAnimojiPlaybackDelegate_JFX_renderAnimojiEffect_forTime_withARFrame_depthData_inputBufferSize_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke(uint64_t a1)
{
  v2 = JFXLog_DebugAnimojiPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __179__JFXAnimojiPlaybackDelegate_JFX_renderAnimojiEffect_forTime_withARFrame_depthData_inputBufferSize_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) animojiRenderer];
  [v3 setupInputBufferPoolForSize:{*(a1 + 88), *(a1 + 96)}];
  [v3 setAsynchronouslyLoadNewPuppets:0];
  [v3 setAllowAntialiasing:1];
  v4 = [*(a1 + 40) animojiEffect];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v12 = [*(a1 + 40) useAnimojiBlendShapes];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    if (v12)
    {
      v6 = *(a1 + 64);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
  }

  v13 = [v3 newPixelBufferRenderedFromARFrame:v8 withEffect:v7 depthData:v9 captureOrientation:v10 interfaceOrientation:v11 preRecordedBlendShapes:v6 backgroundColor:*(a1 + 72)];
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v13];
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    CVPixelBufferRelease(v14);
  }
}

- (void)JFX_initAnimojiImageBufferCachingProperties
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = [v3 stringWithFormat:@"com.apple.%@.cachedAnimojiRenderedImageQueue", v5];

  v6 = v10;
  v7 = [v10 UTF8String];
  v8 = dispatch_queue_create(v7, MEMORY[0x277D85CD8]);
  cachedAnimojiImageQueue = self->_cachedAnimojiImageQueue;
  self->_cachedAnimojiImageQueue = v8;
}

- (id)JFX_cachedAnimojiImageForMediaTime:(id *)a3 forAnimojiRenderingAttributes:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = 0;
  v7 = [(JFXAnimojiPlaybackDelegate *)self cachedAnimojiImageQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__JFXAnimojiPlaybackDelegate_JFX_cachedAnimojiImageForMediaTime_forAnimojiRenderingAttributes___block_invoke;
  v11[3] = &unk_278D7C190;
  v14 = *a3;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __95__JFXAnimojiPlaybackDelegate_JFX_cachedAnimojiImageForMediaTime_forAnimojiRenderingAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAnimojiImage];
  v3 = v2;
  if (v2)
  {
    [v2 mediaTimeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v11 = *(a1 + 56);
  v4 = CMTimeRangeContainsTime(&range, &v11);

  if (v4)
  {
    v5 = [*(a1 + 32) cachedAnimojiImage];
    v6 = [v5 animojiRenderAttributes];
    v7 = [v6 isEqualToDictionary:*(a1 + 40)];

    if (v7)
    {
      v8 = [*(a1 + 32) cachedAnimojiImage];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (void)JFX_cacheAnimojiImage:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnimojiPlaybackDelegate *)self cachedAnimojiImageQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__JFXAnimojiPlaybackDelegate_JFX_cacheAnimojiImage___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

- (void)JFX_clearCachedAnimojiImages
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self cachedAnimojiImageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__JFXAnimojiPlaybackDelegate_JFX_clearCachedAnimojiImages__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_barrier_sync(v3, block);
}

- (void)JFX_initMediaDataReaderProperties
{
  self->_isScrubbing = 1;
  v3 = +[JFXMediaSettings timeScale];
  v4 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
  CMTimeFromFrameTime([v4 presentationTime], v3, &v19.start);
  self->_playbackElementPlaybackPresentationOffset = v19.start;

  v5 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
  v6 = [v5 isStill];

  if (v6)
  {
    CMTimeMake(&duration, 1, +[JFXMediaSettings frameRate]);
    start = **&MEMORY[0x277CC08F0];
    CMTimeRangeMake(&v19, &start, &duration);
    v7 = *&v19.start.epoch;
    *&self->_playbackElementPlaybackMediaRange.start.value = *&v19.start.value;
    *&self->_playbackElementPlaybackMediaRange.start.epoch = v7;
    *&self->_playbackElementPlaybackMediaRange.duration.timescale = *&v19.duration.timescale;
  }

  else
  {
    v8 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    CMTimeFromFrameTime([v8 mediaStartOffset], v3, &duration);
    v9 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    CMTimeFromFrameTime([v9 duration], v3, &start);
    CMTimeRangeMake(&v19, &duration, &start);
    v10 = *&v19.start.epoch;
    *&self->_playbackElementPlaybackMediaRange.start.value = *&v19.start.value;
    *&self->_playbackElementPlaybackMediaRange.start.epoch = v10;
    *&self->_playbackElementPlaybackMediaRange.duration.timescale = *&v19.duration.timescale;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"com.apple.%@.mediaDataReaderQueue", v13];

  v15 = dispatch_queue_create([v14 UTF8String], 0);
  mediaDataReaderUpdateQueue = self->_mediaDataReaderUpdateQueue;
  self->_mediaDataReaderUpdateQueue = v15;
}

- (void)JFX_loadMediaDataReaders
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__JFXAnimojiPlaybackDelegate_JFX_loadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (JFXDepthDataMediaReader)depthReader
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v3);

  depthReader = self->_depthReader;
  if (!depthReader)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v7 = [v6 uuid];
    v8 = [v5 stringWithFormat:@"%@_%@", @"animojiPlaybackDepthReader", v7];

    v9 = +[JFXMediaDataReaderFactory sharedInstance];
    v10 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
    v11 = [v9 createDepthDataReaderWithCreationAttributesProvider:v10 name:v8];

    if (v11)
    {
      [v11 setIsScrubbing:{-[JFXAnimojiPlaybackDelegate isScrubbing](self, "isScrubbing")}];
      [(JFXAnimojiPlaybackDelegate *)self playbackElementPlaybackMediaRange];
      [v11 beginReadingAtTimeRange:v13];
      objc_storeStrong(&self->_depthReader, v11);
    }

    depthReader = self->_depthReader;
  }

  return depthReader;
}

- (void)setDepthReader:(id)a3
{
  v4 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v4);

  depthReader = self->_depthReader;
  self->_depthReader = 0;
}

- (JFXARMetadataMediaReader)arMetadataReader
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v3);

  arMetadataReader = self->_arMetadataReader;
  if (!arMetadataReader)
  {
    v5 = [(JFXAnimojiPlaybackDelegate *)self sharedMediaDataReaderManager];
    v6 = [v5 sharedARMetadataReader];

    if (v6)
    {
      [v6 setIsScrubbing:{-[JFXAnimojiPlaybackDelegate isScrubbing](self, "isScrubbing")}];
      [(JFXAnimojiPlaybackDelegate *)self playbackElementPlaybackMediaRange];
      [v6 beginReadingAtTimeRange:&v8];
      objc_storeStrong(&self->_arMetadataReader, v6);
    }

    arMetadataReader = self->_arMetadataReader;
  }

  return arMetadataReader;
}

- (void)setArMetadataReader:(id)a3
{
  v4 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v4);

  arMetadataReader = self->_arMetadataReader;
  self->_arMetadataReader = 0;
}

- (id)JFX_arMetadataReaderItemForMediaTime:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  v14 = __Block_byref_object_dispose__19;
  v15 = 0;
  v5 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__JFXAnimojiPlaybackDelegate_JFX_arMetadataReaderItemForMediaTime___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v10;
  v9 = *a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __67__JFXAnimojiPlaybackDelegate_JFX_arMetadataReaderItemForMediaTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) arMetadataReader];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v3 = [v2 arMetadataItemForTime:&v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)JFX_avDepthDataFromDepthDataForMediaTime:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  v14 = __Block_byref_object_dispose__19;
  v15 = 0;
  v5 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__JFXAnimojiPlaybackDelegate_JFX_avDepthDataFromDepthDataForMediaTime___block_invoke;
  block[3] = &unk_278D7A008;
  v9 = *a3;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __71__JFXAnimojiPlaybackDelegate_JFX_avDepthDataFromDepthDataForMediaTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) depthReader];
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v3 = [v2 depthDataForTime:&v7];

  v4 = [v3 avDepthData];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)a3
{
  v5 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__JFXAnimojiPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __66__JFXAnimojiPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) arMetadataReader];
  [v3 setIsScrubbing:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) depthReader];
  [v5 setIsScrubbing:v4];
}

- (void)JFX_unloadMediaDataReaders
{
  v3 = [(JFXAnimojiPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__JFXAnimojiPlaybackDelegate_JFX_unloadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __56__JFXAnimojiPlaybackDelegate_JFX_unloadMediaDataReaders__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setArMetadataReader:0];
  v2 = *(a1 + 32);

  return [v2 setDepthReader:0];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)a3
{
  v7 = [(JFXAnimojiPlaybackDelegate *)self playableElement];
  v8 = [v7 isStill];

  if (v8)
  {
    v10 = MEMORY[0x277CC08F0];
    *&retstr->var0 = *MEMORY[0x277CC08F0];
    retstr->var3 = *(v10 + 16);
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    [(JFXAnimojiPlaybackDelegate *)self playbackElementPlaybackPresentationOffset];
    lhs = *a4;
    CMTimeSubtract(&v14, &lhs, &rhs);
    [(JFXAnimojiPlaybackDelegate *)self playbackElementPlaybackMediaRange];
    rhs = v11;
    lhs = v14;
    return CMTimeAdd(retstr, &lhs, &rhs);
  }

  return result;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)playbackElementPlaybackMediaRange
{
  v3 = *&self[3].var0.var1;
  *&retstr->var0.var0 = *&self[2].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var0;
  return self;
}

- (void)setIsScrubbing:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)loadWithUserContext:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)unloadWithUserContext:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)renderWithInputs:time:userContext:compositeContext:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
}

void __81__JFXAnimojiPlaybackDelegate_renderWithInputs_time_userContext_compositeContext___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __58__JFXAnimojiPlaybackDelegate_JFX_loadResourcesForPlayback__block_invoke_cold_1(id *a1)
{
  v1 = [*a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_cold_1(void *a1)
{
  v1 = [a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __67__JFXAnimojiPlaybackDelegate_JFX_requestUnloadResourcesForPlayback__block_invoke_67_cold_1(id *a1)
{
  v1 = [*a1 playableElement];
  v2 = [v1 uuid];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __179__JFXAnimojiPlaybackDelegate_JFX_renderAnimojiEffect_forTime_withARFrame_depthData_inputBufferSize_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke_cold_1(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13 = *(a1 + 120);
  Seconds = CMTimeGetSeconds(&v13);
  v4 = [*(a1 + 40) playableElement];
  v5 = [v4 uuid];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  LODWORD(v13.value) = 138413314;
  *(&v13.value + 4) = v2;
  LOWORD(v13.flags) = 2048;
  *(&v13.flags + 2) = Seconds;
  HIWORD(v13.epoch) = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = v6;
  v17 = 2112;
  v18 = v7;
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x34u);
}

@end