@interface JFXFaceTrackingPlaybackDelegate
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)a3;
- ($AC64C642040120CEEAD84DEEACA9A5CE)playbackElementPlaybackMediaRange;
- (CGSize)outputSize;
- (JFXARMetadataMediaReader)arMetadataReader;
- (JFXFaceTrackingPlaybackDelegate)initWithPlayableElement:(id)a3 sharedMediaDataReaderManager:(id)a4 outputSize:(CGSize)a5;
- (id)JFX_arMetadataForMediaTime:(id *)a3 foundTimeRange:(id *)a4;
- (id)JFX_cachedFaceTrackingPropertiesForMediaTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4;
- (id)JFX_faceTrackingPlaybackPropertiesAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4;
- (id)arDataAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4;
- (id)effect:(id)a3 timedPropertiesForGroup:(id)a4 time:(id *)a5 userContext:(id)a6;
- (id)faceTrackingTransformAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4;
- (id)supportedTimedPropertyGroupsForEffect:(id)a3;
- (void)JFX_cacheFaceTrackingProperties:(id)a3;
- (void)JFX_initFaceTrackingCachingProperties;
- (void)JFX_initMetadataReadingProperties;
- (void)JFX_loadMediaDataReaders;
- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)a3;
- (void)JFX_unloadMediaDataReaders;
- (void)effect:(id)a3 didStopRequestingTimedProperties:(id)a4;
- (void)effect:(id)a3 willStartRequestingTimedProperties:(id)a4;
- (void)setArMetadataReader:(id)a3;
- (void)setIsScrubbing:(BOOL)a3;
@end

@implementation JFXFaceTrackingPlaybackDelegate

- (JFXFaceTrackingPlaybackDelegate)initWithPlayableElement:(id)a3 sharedMediaDataReaderManager:(id)a4 outputSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = JFXFaceTrackingPlaybackDelegate;
  v12 = [(JFXFaceTrackingPlaybackDelegate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_playableElement, a3);
    objc_storeStrong(&v13->_sharedMediaDataReaderManager, a4);
    v13->_outputSize.width = width;
    v13->_outputSize.height = height;
    [(JFXFaceTrackingPlaybackDelegate *)v13 JFX_initMetadataReadingProperties];
    [(JFXFaceTrackingPlaybackDelegate *)v13 JFX_initFaceTrackingCachingProperties];
  }

  return v13;
}

- (void)JFX_initFaceTrackingCachingProperties
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = [v3 stringWithFormat:@"com.apple.%@.cachedFaceTrackingPropertiesQueue", v5];

  v6 = v10;
  v7 = [v10 UTF8String];
  v8 = dispatch_queue_create(v7, MEMORY[0x277D85CD8]);
  cachedFaceTrackingPropertiesQueue = self->_cachedFaceTrackingPropertiesQueue;
  self->_cachedFaceTrackingPropertiesQueue = v8;
}

- (id)JFX_cachedFaceTrackingPropertiesForMediaTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v7 = [(JFXFaceTrackingPlaybackDelegate *)self cachedFaceTrackingPropertiesQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __121__JFXFaceTrackingPlaybackDelegate_JFX_cachedFaceTrackingPropertiesForMediaTime_forDisplayingMediaAtInterfaceOrientation___block_invoke;
  v10[3] = &unk_278D79DE8;
  v11 = *a3;
  v10[5] = &v12;
  v10[6] = a4;
  v10[4] = self;
  dispatch_sync(v7, v10);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __121__JFXFaceTrackingPlaybackDelegate_JFX_cachedFaceTrackingPropertiesForMediaTime_forDisplayingMediaAtInterfaceOrientation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedFaceTrackingProperties];
  v3 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v4 = [v2 containsMediaTime:&v8 forDisplayingMediaAtInterfaceOrientation:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) cachedFaceTrackingProperties];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)JFX_cacheFaceTrackingProperties:(id)a3
{
  v4 = a3;
  v5 = [(JFXFaceTrackingPlaybackDelegate *)self cachedFaceTrackingPropertiesQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__JFXFaceTrackingPlaybackDelegate_JFX_cacheFaceTrackingProperties___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

- (void)JFX_initMetadataReadingProperties
{
  self->_isScrubbing = 1;
  v3 = +[JFXMediaSettings timeScale];
  v4 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
  CMTimeFromFrameTime([v4 presentationTime], v3, &v19.start);
  self->_playbackElementPlaybackPresentationOffset = v19.start;

  v5 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
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
    v8 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    CMTimeFromFrameTime([v8 mediaStartOffset], v3, &duration);
    v9 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
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
  v3 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__JFXFaceTrackingPlaybackDelegate_JFX_loadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)JFX_arMetadataForMediaTime:(id *)a3 foundTimeRange:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v7 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__JFXFaceTrackingPlaybackDelegate_JFX_arMetadataForMediaTime_foundTimeRange___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v17;
  v16 = *a3;
  dispatch_sync(v7, block);

  v8 = v18[5];
  if (v8)
  {
    if (a4)
    {
      [v8 timeRange];
      v9 = v18;
      *&a4->var0.var0 = v12;
      *&a4->var0.var3 = v13;
      *&a4->var1.var1 = v14;
      v8 = v9[5];
    }

    v10 = [v8 arMetadata];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __77__JFXFaceTrackingPlaybackDelegate_JFX_arMetadataForMediaTime_foundTimeRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) arMetadataReader];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v3 = [v2 arMetadataItemForTime:&v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)a3
{
  v5 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__JFXFaceTrackingPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __71__JFXFaceTrackingPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) arMetadataReader];
  [v2 setIsScrubbing:v1];
}

- (JFXARMetadataMediaReader)arMetadataReader
{
  v3 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v3);

  arMetadataReader = self->_arMetadataReader;
  if (!arMetadataReader)
  {
    v5 = [(JFXFaceTrackingPlaybackDelegate *)self sharedMediaDataReaderManager];
    v6 = [v5 sharedARMetadataReader];

    if (v6)
    {
      [v6 setIsScrubbing:{-[JFXFaceTrackingPlaybackDelegate isScrubbing](self, "isScrubbing")}];
      [(JFXFaceTrackingPlaybackDelegate *)self playbackElementPlaybackMediaRange];
      [v6 beginReadingAtTimeRange:&v8];
      objc_storeStrong(&self->_arMetadataReader, v6);
    }

    arMetadataReader = self->_arMetadataReader;
  }

  return arMetadataReader;
}

- (void)setArMetadataReader:(id)a3
{
  v4 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(v4);

  arMetadataReader = self->_arMetadataReader;
  self->_arMetadataReader = 0;
}

- (void)JFX_unloadMediaDataReaders
{
  v3 = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXFaceTrackingPlaybackDelegate_JFX_unloadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(v3, block);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)a3
{
  v7 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
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
    [(JFXFaceTrackingPlaybackDelegate *)self playbackElementPlaybackPresentationOffset];
    lhs = *a4;
    CMTimeSubtract(&v14, &lhs, &rhs);
    [(JFXFaceTrackingPlaybackDelegate *)self playbackElementPlaybackMediaRange];
    rhs = v11;
    lhs = v14;
    return CMTimeAdd(retstr, &lhs, &rhs);
  }

  return result;
}

- (void)effect:(id)a3 willStartRequestingTimedProperties:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    v10 = [v9 uuid];
    v11 = 134218498;
    v12 = v6;
    v13 = 2112;
    v14 = v10;
    v15 = 2048;
    v16 = v7;
    _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "willStartRequestingTimedProperties for PVEffect %p on clip %@ userContext %p", &v11, 0x20u);
  }

  [(JFXFaceTrackingPlaybackDelegate *)self JFX_loadMediaDataReaders];
}

- (void)effect:(id)a3 didStopRequestingTimedProperties:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    v10 = [v9 uuid];
    v11 = 134218498;
    v12 = v6;
    v13 = 2112;
    v14 = v10;
    v15 = 2048;
    v16 = v7;
    _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "didStopRequestingTimedProperties called for PVEffect %p on clip %@ userContext %p", &v11, 0x20u);
  }

  [(JFXFaceTrackingPlaybackDelegate *)self JFX_unloadMediaDataReaders];
}

- (id)effect:(id)a3 timedPropertiesForGroup:(id)a4 time:(id *)a5 userContext:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    time = *a5;
    Seconds = CMTimeGetSeconds(&time);
    v27 = [(JFXFaceTrackingPlaybackDelegate *)self isScrubbing];
    v28 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    v29 = [v28 uuid];
    LODWORD(time.value) = 138413570;
    *(&time.value + 4) = v11;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = Seconds;
    HIWORD(time.epoch) = 1024;
    v33 = v27;
    v34 = 2048;
    v35 = v10;
    v36 = 2112;
    v37 = v29;
    v38 = 2048;
    v39 = v12;
    _os_log_debug_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEBUG, "timedPropertiesForGroup called for group %@ at time %f scrubMode %{BOOL}d on PVEffect %p on clip %@ userContext %p", &time, 0x3Au);
  }

  if (([v11 isEqualToString:@"faceTracking"] & 1) == 0)
  {
    v15 = JFXLog_DebugFaceTrackingPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [JFXFaceTrackingPlaybackDelegate effect:v11 timedPropertiesForGroup:v15 time:? userContext:?];
    }

    goto LABEL_10;
  }

  v14 = v12;
  v15 = v14;
  if (!v14)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_15;
  }

  v16 = [v14 objectForKeyedSubscript:@"JFXFaceTrackingKey_InterfaceOrientation"];
  v17 = [v16 integerValue];

  v18 = [v15 objectForKeyedSubscript:@"JFXFaceTrackingKey_TrackingType"];
  v19 = [v18 integerValue];
  if (v19)
  {
    v20 = v19;
    time = *a5;
    v21 = [(JFXFaceTrackingPlaybackDelegate *)self faceTrackingTransformAtTime:&time forDisplayingMediaAtInterfaceOrientation:v17];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 effectParametersForTrackingType:v20];
    }

    else
    {
      v30 = *MEMORY[0x277D41A70];
      v31 = MEMORY[0x277CBEC38];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    }

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

LABEL_15:

  return v24;
}

- (id)supportedTimedPropertyGroupsForEffect:(id)a3
{
  if (supportedTimedPropertyGroupsForEffect__onceToken != -1)
  {
    [JFXFaceTrackingPlaybackDelegate supportedTimedPropertyGroupsForEffect:];
  }

  v4 = supportedTimedPropertyGroupsForEffect__s_timedProperties;

  return v4;
}

void __73__JFXFaceTrackingPlaybackDelegate_supportedTimedPropertyGroupsForEffect___block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"faceTracking";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = supportedTimedPropertyGroupsForEffect__s_timedProperties;
  supportedTimedPropertyGroupsForEffect__s_timedProperties = v0;
}

- (void)setIsScrubbing:(BOOL)a3
{
  v3 = a3;
  v5 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(JFXFaceTrackingPlaybackDelegate *)self setIsScrubbing:v3, v5];
  }

  self->_isScrubbing = v3;
  [(JFXFaceTrackingPlaybackDelegate *)self JFX_setMediaDataReaderScrubbingMode:v3];
}

- (id)faceTrackingTransformAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4
{
  v7 = *a3;
  v4 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_faceTrackingPlaybackPropertiesAtTime:&v7 forDisplayingMediaAtInterfaceOrientation:a4];
  v5 = [v4 faceTrackingTransform];

  return v5;
}

- (id)arDataAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a3;
    Seconds = CMTimeGetSeconds(&v14);
    v12 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    v13 = [v12 uuid];
    LODWORD(v14.var0) = 134218242;
    *(&v14.var0 + 4) = Seconds;
    LOWORD(v14.var2) = 2112;
    *(&v14.var2 + 2) = v13;
    _os_log_debug_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEBUG, "arMetadata requested for time %f on clip %@", &v14, 0x16u);
  }

  v14 = *a3;
  v8 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_faceTrackingPlaybackPropertiesAtTime:&v14 forDisplayingMediaAtInterfaceOrientation:a4];
  v9 = [v8 arMetadata];

  return v9;
}

- (id)JFX_faceTrackingPlaybackPropertiesAtTime:(id *)a3 forDisplayingMediaAtInterfaceOrientation:(int64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = 0uLL;
  v38 = 0;
  time.start = *a3;
  [(JFXFaceTrackingPlaybackDelegate *)self jfx_mediaTimeFromPlaybackTime:&time];
  memset(&time, 0, 24);
  v7 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_cachedFaceTrackingPropertiesForMediaTime:&time forDisplayingMediaAtInterfaceOrientation:a4];
  if (!v7)
  {
    memset(&time, 0, sizeof(time));
    *&v39.start.value = v37;
    v39.start.epoch = v38;
    v12 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_arMetadataForMediaTime:&v39 foundTimeRange:&time];
    v13 = v12;
    if (v12)
    {
      if ([v12 hasTrackedFace])
      {
        playableElement = self->_playableElement;
        [(JFXFaceTrackingPlaybackDelegate *)self outputSize];
        [(JFXPlayableElement *)playableElement playableRectInOutputSize:?];
        v17 = [[JFXFaceTrackingTransformCalculator alloc] initWithARMetaData:v13 outputSize:a4 playableInterfaceOrientation:v15, v16];
        v18 = [(JFXFaceTrackingTransformCalculator *)v17 calculateFaceTrackingTransform];
        v19 = [JFXFaceTrackingPlaybackProperties alloc];
        v39 = time;
        v11 = [(JFXFaceTrackingPlaybackProperties *)v19 initWithFaceTrackableMediaTimeRange:&v39 forDisplayingMediaAtInterfaceOrientation:a4 faceTrackingTransform:v18 arMetadata:v13];

LABEL_17:
        [(JFXFaceTrackingPlaybackDelegate *)self JFX_cacheFaceTrackingProperties:v11];

        goto LABEL_18;
      }

      v23 = JFXLog_DebugFaceTrackingPlayback();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *&v39.start.value = *&a3->var0;
        v39.start.epoch = a3->var3;
        Seconds = CMTimeGetSeconds(&v39.start);
        v33 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
        v34 = [v33 uuid];
        LODWORD(v39.start.value) = 134218242;
        *(&v39.start.value + 4) = Seconds;
        LOWORD(v39.start.flags) = 2112;
        *(&v39.start.flags + 2) = v34;
        _os_log_debug_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEBUG, "faceTrackingPropertiesForTime tracked face not found for time %f on clip %@", &v39, 0x16u);
      }

      v22 = [JFXFaceTrackingPlaybackProperties alloc];
      v39 = time;
    }

    else
    {
      v20 = JFXLog_DebugFaceTrackingPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *&v39.start.value = *&a3->var0;
        v39.start.epoch = a3->var3;
        v29 = CMTimeGetSeconds(&v39.start);
        v30 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
        v31 = [v30 uuid];
        LODWORD(v39.start.value) = 134218242;
        *(&v39.start.value + 4) = v29;
        LOWORD(v39.start.flags) = 2112;
        *(&v39.start.flags + 2) = v31;
        _os_log_debug_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEBUG, "faceTrackingPropertiesForTime exited early at time %f because no arMetadata on clip %@", &v39, 0x16u);
      }

      v21 = [JFXFaceTrackingPlaybackProperties alloc];
      CMTimeMake(&duration, 1, a3->var1);
      v35 = *a3;
      CMTimeRangeMake(&v39, &v35, &duration);
      v22 = v21;
    }

    v11 = [(JFXFaceTrackingPlaybackProperties *)v22 initWithNonFaceTrackableMediaTimeRange:&v39];
    goto LABEL_17;
  }

  v8 = JFXLog_DebugFaceTrackingPlayback();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = JFXLog_DebugFaceTrackingPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *&time.start.value = *&a3->var0;
      time.start.epoch = a3->var3;
      v25 = CMTimeGetSeconds(&time.start);
      v26 = [v7 canTrackFace];
      v27 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
      v28 = [v27 uuid];
      LODWORD(time.start.value) = 134218498;
      *(&time.start.value + 4) = v25;
      LOWORD(time.start.flags) = 1024;
      *(&time.start.flags + 2) = v26;
      WORD1(time.start.epoch) = 2112;
      *(&time.start.epoch + 4) = v28;
      _os_log_debug_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEBUG, "timedPropertiesForGroup cached data found for time %f canTrackFace: %{BOOL}d on clip %@", &time, 0x1Cu);
    }
  }

  v11 = v7;
LABEL_18:

  return v11;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)playbackElementPlaybackMediaRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (void)effect:(uint64_t)a1 timedPropertiesForGroup:(NSObject *)a2 time:userContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "timedPropertiesForGroup called for group %@ that is not supported", &v2, 0xCu);
}

- (void)setIsScrubbing:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 playableElement];
  v6 = [v5 uuid];
  v7 = 138412546;
  v8 = v6;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&dword_242A3B000, a3, OS_LOG_TYPE_DEBUG, "clip %@ scrubMode set to %{BOOL}d", &v7, 0x12u);
}

@end