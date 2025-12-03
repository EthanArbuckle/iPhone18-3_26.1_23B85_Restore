@interface JFXFaceTrackingPlaybackDelegate
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)time;
- ($AC64C642040120CEEAD84DEEACA9A5CE)playbackElementPlaybackMediaRange;
- (CGSize)outputSize;
- (JFXARMetadataMediaReader)arMetadataReader;
- (JFXFaceTrackingPlaybackDelegate)initWithPlayableElement:(id)element sharedMediaDataReaderManager:(id)manager outputSize:(CGSize)size;
- (id)JFX_arMetadataForMediaTime:(id *)time foundTimeRange:(id *)range;
- (id)JFX_cachedFaceTrackingPropertiesForMediaTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation;
- (id)JFX_faceTrackingPlaybackPropertiesAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation;
- (id)arDataAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation;
- (id)effect:(id)effect timedPropertiesForGroup:(id)group time:(id *)time userContext:(id)context;
- (id)faceTrackingTransformAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation;
- (id)supportedTimedPropertyGroupsForEffect:(id)effect;
- (void)JFX_cacheFaceTrackingProperties:(id)properties;
- (void)JFX_initFaceTrackingCachingProperties;
- (void)JFX_initMetadataReadingProperties;
- (void)JFX_loadMediaDataReaders;
- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)mode;
- (void)JFX_unloadMediaDataReaders;
- (void)effect:(id)effect didStopRequestingTimedProperties:(id)properties;
- (void)effect:(id)effect willStartRequestingTimedProperties:(id)properties;
- (void)setArMetadataReader:(id)reader;
- (void)setIsScrubbing:(BOOL)scrubbing;
@end

@implementation JFXFaceTrackingPlaybackDelegate

- (JFXFaceTrackingPlaybackDelegate)initWithPlayableElement:(id)element sharedMediaDataReaderManager:(id)manager outputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  elementCopy = element;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = JFXFaceTrackingPlaybackDelegate;
  v12 = [(JFXFaceTrackingPlaybackDelegate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_playableElement, element);
    objc_storeStrong(&v13->_sharedMediaDataReaderManager, manager);
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
  uTF8String = [v10 UTF8String];
  v8 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
  cachedFaceTrackingPropertiesQueue = self->_cachedFaceTrackingPropertiesQueue;
  self->_cachedFaceTrackingPropertiesQueue = v8;
}

- (id)JFX_cachedFaceTrackingPropertiesForMediaTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  cachedFaceTrackingPropertiesQueue = [(JFXFaceTrackingPlaybackDelegate *)self cachedFaceTrackingPropertiesQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __121__JFXFaceTrackingPlaybackDelegate_JFX_cachedFaceTrackingPropertiesForMediaTime_forDisplayingMediaAtInterfaceOrientation___block_invoke;
  v10[3] = &unk_278D79DE8;
  v11 = *time;
  v10[5] = &v12;
  v10[6] = orientation;
  v10[4] = self;
  dispatch_sync(cachedFaceTrackingPropertiesQueue, v10);

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

- (void)JFX_cacheFaceTrackingProperties:(id)properties
{
  propertiesCopy = properties;
  cachedFaceTrackingPropertiesQueue = [(JFXFaceTrackingPlaybackDelegate *)self cachedFaceTrackingPropertiesQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__JFXFaceTrackingPlaybackDelegate_JFX_cacheFaceTrackingProperties___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  dispatch_barrier_sync(cachedFaceTrackingPropertiesQueue, v7);
}

- (void)JFX_initMetadataReadingProperties
{
  self->_isScrubbing = 1;
  v3 = +[JFXMediaSettings timeScale];
  playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
  CMTimeFromFrameTime([playableElement presentationTime], v3, &v19.start);
  self->_playbackElementPlaybackPresentationOffset = v19.start;

  playableElement2 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
  isStill = [playableElement2 isStill];

  if (isStill)
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
    playableElement3 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    CMTimeFromFrameTime([playableElement3 mediaStartOffset], v3, &duration);
    playableElement4 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    CMTimeFromFrameTime([playableElement4 duration], v3, &start);
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
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__JFXFaceTrackingPlaybackDelegate_JFX_loadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(mediaDataReaderUpdateQueue, block);
}

- (id)JFX_arMetadataForMediaTime:(id *)time foundTimeRange:(id *)range
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__JFXFaceTrackingPlaybackDelegate_JFX_arMetadataForMediaTime_foundTimeRange___block_invoke;
  block[3] = &unk_278D79E10;
  block[4] = self;
  block[5] = &v17;
  v16 = *time;
  dispatch_sync(mediaDataReaderUpdateQueue, block);

  v8 = v18[5];
  if (v8)
  {
    if (range)
    {
      [v8 timeRange];
      v9 = v18;
      *&range->var0.var0 = v12;
      *&range->var0.var3 = v13;
      *&range->var1.var1 = v14;
      v8 = v9[5];
    }

    arMetadata = [v8 arMetadata];
  }

  else
  {
    arMetadata = 0;
  }

  _Block_object_dispose(&v17, 8);

  return arMetadata;
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

- (void)JFX_setMediaDataReaderScrubbingMode:(BOOL)mode
{
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__JFXFaceTrackingPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  modeCopy = mode;
  dispatch_async(mediaDataReaderUpdateQueue, v6);
}

void __71__JFXFaceTrackingPlaybackDelegate_JFX_setMediaDataReaderScrubbingMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) arMetadataReader];
  [v2 setIsScrubbing:v1];
}

- (JFXARMetadataMediaReader)arMetadataReader
{
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(mediaDataReaderUpdateQueue);

  arMetadataReader = self->_arMetadataReader;
  if (!arMetadataReader)
  {
    sharedMediaDataReaderManager = [(JFXFaceTrackingPlaybackDelegate *)self sharedMediaDataReaderManager];
    sharedARMetadataReader = [sharedMediaDataReaderManager sharedARMetadataReader];

    if (sharedARMetadataReader)
    {
      [sharedARMetadataReader setIsScrubbing:{-[JFXFaceTrackingPlaybackDelegate isScrubbing](self, "isScrubbing")}];
      [(JFXFaceTrackingPlaybackDelegate *)self playbackElementPlaybackMediaRange];
      [sharedARMetadataReader beginReadingAtTimeRange:&v8];
      objc_storeStrong(&self->_arMetadataReader, sharedARMetadataReader);
    }

    arMetadataReader = self->_arMetadataReader;
  }

  return arMetadataReader;
}

- (void)setArMetadataReader:(id)reader
{
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  dispatch_assert_queue_V2(mediaDataReaderUpdateQueue);

  arMetadataReader = self->_arMetadataReader;
  self->_arMetadataReader = 0;
}

- (void)JFX_unloadMediaDataReaders
{
  mediaDataReaderUpdateQueue = [(JFXFaceTrackingPlaybackDelegate *)self mediaDataReaderUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXFaceTrackingPlaybackDelegate_JFX_unloadMediaDataReaders__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(mediaDataReaderUpdateQueue, block);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)jfx_mediaTimeFromPlaybackTime:(SEL)time
{
  playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
  isStill = [playableElement isStill];

  if (isStill)
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

- (void)effect:(id)effect willStartRequestingTimedProperties:(id)properties
{
  v17 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  propertiesCopy = properties;
  v8 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    uuid = [playableElement uuid];
    v11 = 134218498;
    v12 = effectCopy;
    v13 = 2112;
    v14 = uuid;
    v15 = 2048;
    v16 = propertiesCopy;
    _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "willStartRequestingTimedProperties for PVEffect %p on clip %@ userContext %p", &v11, 0x20u);
  }

  [(JFXFaceTrackingPlaybackDelegate *)self JFX_loadMediaDataReaders];
}

- (void)effect:(id)effect didStopRequestingTimedProperties:(id)properties
{
  v17 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  propertiesCopy = properties;
  v8 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    uuid = [playableElement uuid];
    v11 = 134218498;
    v12 = effectCopy;
    v13 = 2112;
    v14 = uuid;
    v15 = 2048;
    v16 = propertiesCopy;
    _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "didStopRequestingTimedProperties called for PVEffect %p on clip %@ userContext %p", &v11, 0x20u);
  }

  [(JFXFaceTrackingPlaybackDelegate *)self JFX_unloadMediaDataReaders];
}

- (id)effect:(id)effect timedPropertiesForGroup:(id)group time:(id *)time userContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  groupCopy = group;
  contextCopy = context;
  v13 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    time = *time;
    Seconds = CMTimeGetSeconds(&time);
    isScrubbing = [(JFXFaceTrackingPlaybackDelegate *)self isScrubbing];
    playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    uuid = [playableElement uuid];
    LODWORD(time.value) = 138413570;
    *(&time.value + 4) = groupCopy;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = Seconds;
    HIWORD(time.epoch) = 1024;
    v33 = isScrubbing;
    v34 = 2048;
    v35 = effectCopy;
    v36 = 2112;
    v37 = uuid;
    v38 = 2048;
    v39 = contextCopy;
    _os_log_debug_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEBUG, "timedPropertiesForGroup called for group %@ at time %f scrubMode %{BOOL}d on PVEffect %p on clip %@ userContext %p", &time, 0x3Au);
  }

  if (([groupCopy isEqualToString:@"faceTracking"] & 1) == 0)
  {
    v15 = JFXLog_DebugFaceTrackingPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [JFXFaceTrackingPlaybackDelegate effect:groupCopy timedPropertiesForGroup:v15 time:? userContext:?];
    }

    goto LABEL_10;
  }

  v14 = contextCopy;
  v15 = v14;
  if (!v14)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_15;
  }

  v16 = [v14 objectForKeyedSubscript:@"JFXFaceTrackingKey_InterfaceOrientation"];
  integerValue = [v16 integerValue];

  v18 = [v15 objectForKeyedSubscript:@"JFXFaceTrackingKey_TrackingType"];
  integerValue2 = [v18 integerValue];
  if (integerValue2)
  {
    v20 = integerValue2;
    time = *time;
    v21 = [(JFXFaceTrackingPlaybackDelegate *)self faceTrackingTransformAtTime:&time forDisplayingMediaAtInterfaceOrientation:integerValue];
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

- (id)supportedTimedPropertyGroupsForEffect:(id)effect
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

- (void)setIsScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  v5 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(JFXFaceTrackingPlaybackDelegate *)self setIsScrubbing:scrubbingCopy, v5];
  }

  self->_isScrubbing = scrubbingCopy;
  [(JFXFaceTrackingPlaybackDelegate *)self JFX_setMediaDataReaderScrubbingMode:scrubbingCopy];
}

- (id)faceTrackingTransformAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation
{
  v7 = *time;
  v4 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_faceTrackingPlaybackPropertiesAtTime:&v7 forDisplayingMediaAtInterfaceOrientation:orientation];
  faceTrackingTransform = [v4 faceTrackingTransform];

  return faceTrackingTransform;
}

- (id)arDataAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = JFXLog_DebugFaceTrackingPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = *time;
    Seconds = CMTimeGetSeconds(&v14);
    playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
    uuid = [playableElement uuid];
    LODWORD(v14.var0) = 134218242;
    *(&v14.var0 + 4) = Seconds;
    LOWORD(v14.var2) = 2112;
    *(&v14.var2 + 2) = uuid;
    _os_log_debug_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEBUG, "arMetadata requested for time %f on clip %@", &v14, 0x16u);
  }

  v14 = *time;
  v8 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_faceTrackingPlaybackPropertiesAtTime:&v14 forDisplayingMediaAtInterfaceOrientation:orientation];
  arMetadata = [v8 arMetadata];

  return arMetadata;
}

- (id)JFX_faceTrackingPlaybackPropertiesAtTime:(id *)time forDisplayingMediaAtInterfaceOrientation:(int64_t)orientation
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = 0uLL;
  v38 = 0;
  time.start = *time;
  [(JFXFaceTrackingPlaybackDelegate *)self jfx_mediaTimeFromPlaybackTime:&time];
  memset(&time, 0, 24);
  v7 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_cachedFaceTrackingPropertiesForMediaTime:&time forDisplayingMediaAtInterfaceOrientation:orientation];
  if (!v7)
  {
    memset(&time, 0, sizeof(time));
    *&timeCopy2.start.value = v37;
    timeCopy2.start.epoch = v38;
    v12 = [(JFXFaceTrackingPlaybackDelegate *)self JFX_arMetadataForMediaTime:&timeCopy2 foundTimeRange:&time];
    v13 = v12;
    if (v12)
    {
      if ([v12 hasTrackedFace])
      {
        playableElement = self->_playableElement;
        [(JFXFaceTrackingPlaybackDelegate *)self outputSize];
        [(JFXPlayableElement *)playableElement playableRectInOutputSize:?];
        v17 = [[JFXFaceTrackingTransformCalculator alloc] initWithARMetaData:v13 outputSize:orientation playableInterfaceOrientation:v15, v16];
        calculateFaceTrackingTransform = [(JFXFaceTrackingTransformCalculator *)v17 calculateFaceTrackingTransform];
        v19 = [JFXFaceTrackingPlaybackProperties alloc];
        timeCopy2 = time;
        v11 = [(JFXFaceTrackingPlaybackProperties *)v19 initWithFaceTrackableMediaTimeRange:&timeCopy2 forDisplayingMediaAtInterfaceOrientation:orientation faceTrackingTransform:calculateFaceTrackingTransform arMetadata:v13];

LABEL_17:
        [(JFXFaceTrackingPlaybackDelegate *)self JFX_cacheFaceTrackingProperties:v11];

        goto LABEL_18;
      }

      v23 = JFXLog_DebugFaceTrackingPlayback();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *&timeCopy2.start.value = *&time->var0;
        timeCopy2.start.epoch = time->var3;
        Seconds = CMTimeGetSeconds(&timeCopy2.start);
        playableElement = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
        uuid = [playableElement uuid];
        LODWORD(timeCopy2.start.value) = 134218242;
        *(&timeCopy2.start.value + 4) = Seconds;
        LOWORD(timeCopy2.start.flags) = 2112;
        *(&timeCopy2.start.flags + 2) = uuid;
        _os_log_debug_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEBUG, "faceTrackingPropertiesForTime tracked face not found for time %f on clip %@", &timeCopy2, 0x16u);
      }

      v22 = [JFXFaceTrackingPlaybackProperties alloc];
      timeCopy2 = time;
    }

    else
    {
      v20 = JFXLog_DebugFaceTrackingPlayback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *&timeCopy2.start.value = *&time->var0;
        timeCopy2.start.epoch = time->var3;
        v29 = CMTimeGetSeconds(&timeCopy2.start);
        playableElement2 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
        uuid2 = [playableElement2 uuid];
        LODWORD(timeCopy2.start.value) = 134218242;
        *(&timeCopy2.start.value + 4) = v29;
        LOWORD(timeCopy2.start.flags) = 2112;
        *(&timeCopy2.start.flags + 2) = uuid2;
        _os_log_debug_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEBUG, "faceTrackingPropertiesForTime exited early at time %f because no arMetadata on clip %@", &timeCopy2, 0x16u);
      }

      v21 = [JFXFaceTrackingPlaybackProperties alloc];
      CMTimeMake(&duration, 1, time->var1);
      v35 = *time;
      CMTimeRangeMake(&timeCopy2, &v35, &duration);
      v22 = v21;
    }

    v11 = [(JFXFaceTrackingPlaybackProperties *)v22 initWithNonFaceTrackableMediaTimeRange:&timeCopy2];
    goto LABEL_17;
  }

  v8 = JFXLog_DebugFaceTrackingPlayback();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = JFXLog_DebugFaceTrackingPlayback();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *&time.start.value = *&time->var0;
      time.start.epoch = time->var3;
      v25 = CMTimeGetSeconds(&time.start);
      canTrackFace = [v7 canTrackFace];
      playableElement3 = [(JFXFaceTrackingPlaybackDelegate *)self playableElement];
      uuid3 = [playableElement3 uuid];
      LODWORD(time.start.value) = 134218498;
      *(&time.start.value + 4) = v25;
      LOWORD(time.start.flags) = 1024;
      *(&time.start.flags + 2) = canTrackFace;
      WORD1(time.start.epoch) = 2112;
      *(&time.start.epoch + 4) = uuid3;
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