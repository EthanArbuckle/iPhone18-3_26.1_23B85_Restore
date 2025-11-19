@interface MOVStreamReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstPts;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)getMinFrameDurationForStream:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sessionStartTimeOfMovie;
- (BOOL)containsMetadataStream:(id)a3;
- (BOOL)containsStream:(id)a3;
- (BOOL)containsStream:(id)a3 withMediaType:(int64_t)a4;
- (BOOL)copyNextStereoFramesForStream:(id)a3 leftBuffer:(__CVBuffer *)a4 rightBuffer:(__CVBuffer *)a5 timestamp:(id *)a6 error:(id *)a7;
- (BOOL)getOutputPixelFormatWasGuessedForStream:(id)a3;
- (BOOL)hasReachedEndOfMetadataStream:(id)a3;
- (BOOL)hasReachedEndOfStream:(id)a3;
- (BOOL)hasSynthesizedTimeCodeForStream:(id)a3;
- (BOOL)hasTimeCodeForStream:(id)a3;
- (BOOL)isStereoStream:(id)a3;
- (BOOL)isTrack:(id)a3 byIdInTracks:(id)a4;
- (BOOL)registerOutput:(id)a3;
- (BOOL)resetReader:(id *)a3;
- (BOOL)resetReaderTo:(id *)a3 error:(id *)a4;
- (BOOL)resetReaderWithTimeRange:(id *)a3 error:(id *)a4;
- (BOOL)saveStream:(id)a3 toFile:(id)a4 error:(id *)a5;
- (BOOL)setTestPatternRenderer:(id)a3 forVideoStream:(id)a4 error:(id *)a5;
- (CGAffineTransform)transformForStream:(SEL)a3;
- (CGSize)getOutputSizeForStream:(id)a3;
- (CGSize)getSizeForStream:(id)a3;
- (CVSMPTETime)grabNextTimeCodeSampleForStream:(SEL)a3 timestamp:(id)a4 error:(id *)a5;
- (CVSMPTETime)grabNextTimeRangeMetadataSampleOfStream:(SEL)a3 rangeStartTime:(id)a4 rangeEndTime:(unint64_t *)a5 presentationTimeRange:(unint64_t *)a6 error:(id *)a7;
- (MOVStreamReader)initWithAsset:(id)a3 delegate:(id)a4 error:(id *)a5;
- (MOVStreamReader)initWithContentsOfFile:(id)a3 delegate:(id)a4 error:(id *)a5;
- (MOVStreamReader)initWithContentsOfURL:(id)a3 delegate:(id)a4 error:(id *)a5;
- (MOVStreamReader)initWithURL:(id)a3 delegate:(id)a4 error:(id *)p_isa;
- (MOVStreamReaderDelegate)delegate;
- (__CVBuffer)copyNextFrameForStream:(id)a3 timestamp:(id *)a4 error:(id *)a5;
- (__CVBuffer)copyNextFrameForStream:(id)a3 timestamp:(id *)a4 timeCode:(CVSMPTETime *)a5 tcDropFrame:(BOOL *)a6 error:(id *)a7;
- (__CVBuffer)nextPixelBufferForStream:(id)a3 attachmentsData:(id *)a4 timestamp:(id *)a5 error:(id *)a6;
- (double)duration;
- (double)getFrameRateForStream:(id)a3;
- (id)additionalCompressionPropertiesForStream:(id)a3;
- (id)attachmentsOutputForStream:(id)a3 mediaType:(int64_t)a4 error:(id *)a5;
- (id)customTrackMetadataItemsForStream:(id)a3;
- (id)getAllAudioStreams;
- (id)getAllMetadataStreams;
- (id)getAllSceneStreams;
- (id)getAllStreams;
- (id)getAllTimeCodeStreams;
- (id)getMetadataStreamsAssociatedTo:(id)a3;
- (id)getMetadataStreamsAssociatedTo:(id)a3 error:(id *)a4;
- (id)getRelatedStreamForStreamId:(id)a3;
- (id)getRelationSpecifierForStreamId:(id)a3;
- (id)getStreamsRelatedToStream:(id)a3;
- (id)getTimeRangeMetadataStream;
- (id)getUnknownMetadataStreamsAssociatedTo:(id)a3;
- (id)grabNextMetadataItemsOfTrackAssociatedWith:(id)a3 withIdentifier:(id)a4 timeRange:(id *)a5 error:(id *)a6;
- (id)grabNextMetadataOfStream:(id)a3 timeRange:(id *)a4;
- (id)grabNextMetadataOfStream:(id)a3 timeRange:(id *)a4 error:(id *)a5;
- (id)grabNextTimedMetadataGroupOfStream:(id)a3 error:(id *)a4;
- (id)metadataForMovie;
- (id)metadataTrackForStream:(id)a3;
- (id)movstreamIOMetadataForMovie;
- (id)nextAttachmentForStream:(id)a3 error:(id *)a4;
- (id)outputForAudioStream:(id)a3 error:(id *)a4;
- (id)outputForMetadataStream:(id)a3 error:(id *)a4;
- (id)outputForSceneStream:(id)a3 error:(id *)a4;
- (id)outputForTimeCodeStream:(id)a3 error:(id *)a4;
- (id)outputForVideoStream:(id)a3 error:(id *)a4;
- (id)outputsRelatedToOutput:(id)a3 trackAssociation:(id)a4;
- (id)stereoLayersForStream:(id)a3;
- (id)streamIdFromTrackStreamTypeIdentifier:(id)a3;
- (id)timeRangeMetadataForPixelBuffer:(__CVBuffer *)a3;
- (id)timeRangeMetadataKeyHint;
- (id)timestampsForMetadataStream:(id)a3;
- (id)timestampsForStream:(id)a3;
- (id)timestampsForStream:(id)a3 restrictedTimeRange:(id *)a4;
- (id)trackForStream:(id)a3;
- (id)trackMetadataForAudioStream:(id)a3;
- (id)trackMetadataForMetadataStream:(id)a3;
- (id)trackMetadataForSceneStream:(id)a3;
- (id)trackMetadataForStream:(id)a3;
- (id)trackMetadataForStream:(id)a3 withMediaType:(int64_t)a4;
- (id)trackMetadataForTimeCodeStream:(id)a3;
- (id)trackMetadataForVideoStream:(id)a3;
- (opaqueCMFormatDescription)timeCodeFormatDescriptionStream:(id)a3;
- (opaqueCMSampleBuffer)grabNextSampleBufferForStream:(id)a3 timestamp:(id *)a4 error:(id *)a5;
- (opaqueCMSampleBuffer)nextSampleBufferForStream:(id)a3 attachmentsData:(id *)a4 timestamp:(id *)a5 error:(id *)a6;
- (unint64_t)trackTypeInfoForStream:(id)a3;
- (unsigned)getOutputPixelFormatForStream:(id)a3;
- (unsigned)pixelFormatForStream:(id)a3;
- (void)clearOutputs;
- (void)dealloc;
- (void)movVersionCheck;
- (void)removePixelBufferPadding:(BOOL)a3 forStream:(id)a4;
- (void)setBufferCacheMode:(int)a3;
- (void)setL010OutputFormatRAW14L016:(BOOL)a3;
- (void)setRawBayerMSBReplication:(BOOL)a3;
- (void)setSkipSynthesizedTimeCode:(BOOL)a3;
@end

@implementation MOVStreamReader

- (id)streamIdFromTrackStreamTypeIdentifier:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"Depth"]& 1) != 0)
  {
    v4 = @"FrontDepth";
  }

  else if (([(__CFString *)v3 isEqualToString:@"Color"]& 1) != 0)
  {
    v4 = @"FrontColor";
  }

  else
  {
    if (![(__CFString *)v3 isEqualToString:@"IR"])
    {
      goto LABEL_8;
    }

    v4 = @"FrontIR";
  }

  v3 = v4;
LABEL_8:

  return v3;
}

- (MOVStreamReader)initWithURL:(id)a3 delegate:(id)a4 error:(id *)p_isa
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  +[MIOLog recheckDebugEnabled];
  if (([v8 isFileURL] & 1) == 0)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL must be a file URL type. (%@)", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:p_isa message:v20 code:5];
LABEL_10:

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) == 0)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [v8 path];
    v20 = [v21 stringWithFormat:@"File doesn't exist. (%@)", v22];

    [MEMORY[0x277CCA9B8] populateReaderError:p_isa message:v20 code:6];
    goto LABEL_10;
  }

  v27.receiver = self;
  v27.super_class = MOVStreamReader;
  v13 = [(MOVStreamReader *)&v27 init];
  self = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = objc_storeWeak(&v13->_delegate, v9);

  if (!v9)
  {
    v15 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:@"No MOVStreamReaderDelegate set." code:0];
  }

  v16 = [MEMORY[0x277CE6650] URLAssetWithURL:v8 options:0];
  m_asset = self->m_asset;
  self->m_asset = v16;

  [(MOVStreamReader *)self movVersionCheck];
  *&self->_l010OutputFormatRAW14L016 = 257;
  self->_bufferCacheMode = 0;
  [(MOVStreamReader *)self setSkipEmptyEditVideoFrame:0];
  v18 = [(MOVStreamReader *)self timeRangeMetadataKeyHint];
  if (v18)
  {
    v19 = [(MOVStreamReader *)self timeRangeMetadataKeyHint];
  }

  else
  {
    v19 = @"RemoteFrameID";
  }

  [(MOVStreamReader *)self setTimeRangeMetadataKey:v19];
  if (v18)
  {
  }

  timeRangeMetadataStream = self->_timeRangeMetadataStream;
  self->_timeRangeMetadataStream = 0;

  *buf = *MEMORY[0x277CC08F8];
  v29 = *(MEMORY[0x277CC08F8] + 16);
  if ([(MOVStreamReader *)self resetReaderTo:buf error:p_isa])
  {
LABEL_17:
    self = self;
    p_isa = &self->super.isa;
    goto LABEL_12;
  }

  if (!p_isa)
  {
    goto LABEL_12;
  }

  v25 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = *p_isa;
    *buf = 138543362;
    *&buf[4] = v26;
    _os_log_impl(&dword_257883000, v25, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Cannot initialize reader: %{public}@ ⛔️⛔️⛔️", buf, 0xCu);
  }

LABEL_11:
  p_isa = 0;
LABEL_12:

  return p_isa;
}

- (MOVStreamReader)initWithContentsOfFile:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  +[MIOLog recheckDebugEnabled];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  if (v10)
  {
    self = [(MOVStreamReader *)self initWithContentsOfURL:v10 delegate:v9 error:a5];
    v11 = self;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid file path. (%@)", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v12 code:5];

    v11 = 0;
  }

  return v11;
}

- (MOVStreamReader)initWithAsset:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  +[MIOLog recheckDebugEnabled];
  v22.receiver = self;
  v22.super_class = MOVStreamReader;
  v11 = [(MOVStreamReader *)&v22 init];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_10;
  }

  v14 = objc_storeWeak(&v11->_delegate, v10);

  if (!v10)
  {
    v15 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:@"No MOVStreamReaderDelegate set." code:0];
  }

  [(MOVStreamReader *)v13 setSkipEmptyEditVideoFrame:0];
  objc_storeStrong(&v12->m_asset, a3);
  [(MOVStreamReader *)v13 movVersionCheck];
  *&v13->_l010OutputFormatRAW14L016 = 256;
  v13->_bufferCacheMode = 0;
  v16 = [(MOVStreamReader *)v13 timeRangeMetadataKeyHint];
  if (v16)
  {
    v17 = [(MOVStreamReader *)v13 timeRangeMetadataKeyHint];
  }

  else
  {
    v17 = @"RemoteFrameID";
  }

  [(MOVStreamReader *)v13 setTimeRangeMetadataKey:v17];
  if (v16)
  {
  }

  timeRangeMetadataStream = v13->_timeRangeMetadataStream;
  v13->_timeRangeMetadataStream = 0;

  *buf = *MEMORY[0x277CC08F8];
  v24 = *(MEMORY[0x277CC08F8] + 16);
  if (![(MOVStreamReader *)v13 resetReaderTo:buf error:a5])
  {
    if (a5)
    {
      v19 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *a5;
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Cannot initialize reader: %{public}@ ⛔️⛔️⛔️", buf, 0xCu);
      }

      a5 = 0;
    }
  }

  else
  {
LABEL_10:
    a5 = v13;
  }

  return a5;
}

- (MOVStreamReader)initWithContentsOfURL:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  +[MIOLog recheckDebugEnabled];
  if (([v8 isFileURL] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL must be a file URL type. (%@)", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v13 code:5];
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) == 0)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 path];
    v13 = [v15 stringWithFormat:@"File doesn't exist. (%@)", v16];

    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v13 code:6];
    goto LABEL_6;
  }

  v13 = [MEMORY[0x277CE6650] URLAssetWithURL:v8 options:0];
  self = [(MOVStreamReader *)self initWithAsset:v13 delegate:v9 error:a5];
  v14 = self;
LABEL_7:

  return v14;
}

- (void)dealloc
{
  [(AVAssetReader *)self->m_assetReader cancelReading];
  v3.receiver = self;
  v3.super_class = MOVStreamReader;
  [(MOVStreamReader *)&v3 dealloc];
}

- (BOOL)resetReader:(id *)a3
{
  v4 = *MEMORY[0x277CC08F8];
  v5 = *(MEMORY[0x277CC08F8] + 16);
  return [(MOVStreamReader *)self resetReaderTo:&v4 error:a3];
}

- (void)clearOutputs
{
  [(NSMutableDictionary *)self->_sampleStreams removeAllObjects];
  v3 = objc_opt_new();
  sampleStreams = self->_sampleStreams;
  self->_sampleStreams = v3;

  [(NSMutableArray *)self->_orderedVideoStreamIds removeAllObjects];
  v5 = objc_opt_new();
  orderedVideoStreamIds = self->_orderedVideoStreamIds;
  self->_orderedVideoStreamIds = v5;

  [(NSMutableDictionary *)self->_metadataStreams removeAllObjects];
  v7 = objc_opt_new();
  metadataStreams = self->_metadataStreams;
  self->_metadataStreams = v7;

  [(NSMutableArray *)self->_orderedMetadataStreamIds removeAllObjects];
  v9 = objc_opt_new();
  orderedMetadataStreamIds = self->_orderedMetadataStreamIds;
  self->_orderedMetadataStreamIds = v9;

  [(NSMutableArray *)self->_orderedAudioStreamIds removeAllObjects];
  v11 = objc_opt_new();
  orderedAudioStreamIds = self->_orderedAudioStreamIds;
  self->_orderedAudioStreamIds = v11;

  [(NSMutableArray *)self->_orderedSceneStreamIds removeAllObjects];
  v13 = objc_opt_new();
  orderedSceneStreamIds = self->_orderedSceneStreamIds;
  self->_orderedSceneStreamIds = v13;

  [(NSMutableArray *)self->_orderedTimeCodeStreamIds removeAllObjects];
  self->_orderedTimeCodeStreamIds = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

- (BOOL)registerOutput:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "MOVStreamReader registerOutput with nil output.", &v26, 2u);
    }

    goto LABEL_19;
  }

  v6 = [v4 mediaType];
  if (v6 <= 1)
  {
    if (!v6)
    {
      orderedVideoStreamIds = self->_orderedVideoStreamIds;
      v22 = [v5 streamId];
      [(NSMutableArray *)orderedVideoStreamIds addObject:v22];

      sampleStreams = self->_sampleStreams;
      v10 = [v5 streamId];
      [(NSMutableDictionary *)sampleStreams setObject:v5 forKey:v10];
      goto LABEL_16;
    }

    if (v6 == 1)
    {
      orderedAudioStreamIds = self->_orderedAudioStreamIds;
      v13 = [v5 streamId];
      [(NSMutableArray *)orderedAudioStreamIds addObject:v13];

      v14 = self->_sampleStreams;
      v10 = [v5 streamId];
      [(NSMutableDictionary *)v14 setObject:v5 forKey:v10];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v6 == 2)
  {
    orderedMetadataStreamIds = self->_orderedMetadataStreamIds;
    v16 = [v5 streamId];
    [(NSMutableArray *)orderedMetadataStreamIds addObject:v16];

    metadataStreams = self->_metadataStreams;
    v10 = [v5 streamId];
    [(NSMutableDictionary *)metadataStreams setObject:v5 forKey:v10];
    goto LABEL_16;
  }

  if (v6 == 3)
  {
    orderedSceneStreamIds = self->_orderedSceneStreamIds;
    v19 = [v5 streamId];
    [(NSMutableArray *)orderedSceneStreamIds addObject:v19];

    v20 = self->_sampleStreams;
    v10 = [v5 streamId];
    [(NSMutableDictionary *)v20 setObject:v5 forKey:v10];
    goto LABEL_16;
  }

  if (v6 != 4)
  {
LABEL_17:
    v11 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = 134217984;
      v27 = [v5 mediaType];
      _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "MOVStreamReader registerOutput unknown media type (%ld).", &v26, 0xCu);
    }

LABEL_19:

    v24 = 0;
    goto LABEL_20;
  }

  orderedTimeCodeStreamIds = self->_orderedTimeCodeStreamIds;
  v8 = [v5 streamId];
  [(NSMutableArray *)orderedTimeCodeStreamIds addObject:v8];

  v9 = self->_sampleStreams;
  v10 = [v5 streamId];
  [(NSMutableDictionary *)v9 setObject:v5 forKey:v10];
LABEL_16:

  v24 = 1;
LABEL_20:

  return v24;
}

- (BOOL)resetReaderTo:(id *)a3 error:(id *)a4
{
  memset(&v9, 0, sizeof(v9));
  v7.start = *a3;
  duration = **&MEMORY[0x277CC08B8];
  CMTimeRangeMake(&v9, &v7.start, &duration);
  v7 = v9;
  return [(MOVStreamReader *)self resetReaderWithTimeRange:&v7 error:a4];
}

- (BOOL)resetReaderWithTimeRange:(id *)a3 error:(id *)a4
{
  v216 = *MEMORY[0x277D85DE8];
  if (!self->m_asset)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"MOVStreamReader asset is nil" code:25];
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&a3->var1.var1;
  v149 = CMTimeRangeCopyDescription(v5, &range);
  v7 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(range.start.value) = 138543362;
    *(&range.start.value + 4) = v149;
    _os_log_impl(&dword_257883000, v7, OS_LOG_TYPE_INFO, "Set reader to time range: %{public}@", &range, 0xCu);
  }

  if ((a3->var0.var2 & 1) == 0)
  {
    v8 = @"Time to reset to is invalid";
    v9 = a4;
LABEL_10:
    [MEMORY[0x277CCA9B8] populateReaderError:v9 message:v8 code:25];
    v10 = 0;
    goto LABEL_11;
  }

  v9 = a4;
  if ((a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    v8 = @"Time range to reset to is invalid";
    goto LABEL_10;
  }

  m_assetReader = self->m_assetReader;
  if (m_assetReader)
  {
    [(AVAssetReader *)m_assetReader cancelReading];
  }

  v13 = objc_alloc(MEMORY[0x277CE6410]);
  m_asset = self->m_asset;
  v206 = 0;
  v15 = [v13 initWithAsset:m_asset error:&v206];
  v145 = v206;
  v16 = self->m_assetReader;
  self->m_assetReader = v15;

  if (v145)
  {
    if (a4)
    {
      v10 = 0;
      *a4 = [v145 copy];
    }

    else
    {
      v143 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        LODWORD(range.start.value) = 138543362;
        *(&range.start.value + 4) = v145;
        _os_log_impl(&dword_257883000, v143, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: %{public}@ ⛔️⛔️⛔️", &range, 0xCu);
      }

      v10 = 0;
    }

    goto LABEL_186;
  }

  [(MOVStreamReader *)self clearOutputs];
  v164 = objc_opt_new();
  [(AVURLAsset *)self->m_asset tracksWithMediaType:*MEMORY[0x277CE5EA0]];
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  obj = v203 = 0u;
  v17 = [obj countByEnumeratingWithState:&v202 objects:v214 count:16];
  if (v17)
  {
    group = *v203;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v203 != group)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v202 + 1) + 8 * i);
        v20 = [@"Unknown" stringByAppendingFormat:@"-time-code"];
        if ([(NSMutableArray *)self->_orderedTimeCodeStreamIds count])
        {
          v21 = [v20 stringByAppendingFormat:@"-%lu", -[NSMutableArray count](self->_orderedTimeCodeStreamIds, "count")];

          v20 = v21;
        }

        v22 = [MIOMovieMetadataUtility findAllAssociatedMetadataTracksInAsset:self->m_asset forTrack:v19];
        [v164 addObjectsFromArray:v22];
        if (+[MIOLog debugEnabled])
        {
          v23 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v20;
            _os_log_impl(&dword_257883000, v23, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Setup time code output for '%{public}@'.", &range, 0xCu);
          }
        }

        v24 = [MOVStreamReaderStreamOutput alloc];
        v25 = self->m_assetReader;
        movVersion = self->_movVersion;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v201 = 0;
        v28 = [(MOVStreamReaderStreamOutput *)v24 initWithTimeCodeTrack:v19 assetReader:v25 associatedMetadataTracks:v22 version:movVersion unknownStreamId:v20 reader:self delegate:WeakRetained error:&v201];
        v29 = v201;

        if (v29)
        {
          v30 = objc_loadWeakRetained(&self->_delegate);
          if (v30)
          {
            v31 = objc_loadWeakRetained(&self->_delegate);
            v32 = objc_opt_respondsToSelector();

            if (v32)
            {
              v33 = [(MOVStreamReader *)self delegate];
              [v33 reader:self didReceiveWarning:v29];
LABEL_41:
            }
          }
        }

        else
        {
          if (+[MIOLog debugEnabled])
          {
            v34 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(range.start.value) = 138543362;
              *(&range.start.value + 4) = v20;
              _os_log_impl(&dword_257883000, v34, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Register time code output for '%{public}@'.", &range, 0xCu);
            }
          }

          if (![(MOVStreamReader *)self registerOutput:v28])
          {
            v33 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              LODWORD(range.start.value) = 138543362;
              *(&range.start.value + 4) = v20;
              _os_log_impl(&dword_257883000, v33, OS_LOG_TYPE_ERROR, "MOVStreamReader: Register time code output for '%{public}@', failed.", &range, 0xCu);
            }

            goto LABEL_41;
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v202 objects:v214 count:16];
    }

    while (v17);
  }

  v35 = [(AVURLAsset *)self->m_asset tracksWithMediaType:*MEMORY[0x277CE5EA8]];

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obja = v35;
  v36 = [obja countByEnumeratingWithState:&v197 objects:v213 count:16];
  if (!v36)
  {
    goto LABEL_69;
  }

  v152 = *v198;
  do
  {
    v37 = 0;
    groupa = v36;
    do
    {
      if (*v198 != v152)
      {
        objc_enumerationMutation(obja);
      }

      v38 = *(*(&v197 + 1) + 8 * v37);
      v39 = [@"Unknown" stringByAppendingFormat:@"-video"];
      if ([(NSMutableArray *)self->_orderedVideoStreamIds count])
      {
        v40 = [v39 stringByAppendingFormat:@"-%lu", -[NSMutableArray count](self->_orderedVideoStreamIds, "count")];

        v39 = v40;
      }

      v41 = [MIOMovieMetadataUtility findAllAssociatedMetadataTracksInAsset:self->m_asset forTrack:v38];
      [v164 addObjectsFromArray:v41];
      if (+[MIOLog debugEnabled])
      {
        v42 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(range.start.value) = 138543362;
          *(&range.start.value + 4) = v39;
          _os_log_impl(&dword_257883000, v42, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Setup video output for '%{public}@'.", &range, 0xCu);
        }
      }

      v43 = [MOVStreamReaderStreamOutput alloc];
      v44 = self->m_assetReader;
      v45 = self->_movVersion;
      bufferCacheMode = self->_bufferCacheMode;
      v47 = objc_loadWeakRetained(&self->_delegate);
      v196 = 0;
      v48 = [(MOVStreamReaderStreamOutput *)v43 initWithVideoTrack:v38 assetReader:v44 associatedMetadataTracks:v41 version:v45 bufferCacheMode:bufferCacheMode unknownStreamId:v39 reader:self delegate:v47 error:&v196];
      v49 = v196;

      if (v49)
      {
        v50 = objc_loadWeakRetained(&self->_delegate);
        if (v50)
        {
          v51 = objc_loadWeakRetained(&self->_delegate);
          v52 = objc_opt_respondsToSelector();

          if (v52)
          {
            v53 = [(MOVStreamReader *)self delegate];
            [v53 reader:self didReceiveWarning:v49];
LABEL_66:
          }
        }
      }

      else
      {
        if (+[MIOLog debugEnabled])
        {
          v54 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v39;
            _os_log_impl(&dword_257883000, v54, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Register video output for '%{public}@'.", &range, 0xCu);
          }
        }

        if (![(MOVStreamReader *)self registerOutput:v48])
        {
          v53 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v39;
            _os_log_impl(&dword_257883000, v53, OS_LOG_TYPE_ERROR, "MOVStreamReader: Register video output for '%{public}@', failed.", &range, 0xCu);
          }

          goto LABEL_66;
        }
      }

      v37 = (v37 + 1);
    }

    while (groupa != v37);
    v36 = [obja countByEnumeratingWithState:&v197 objects:v213 count:16];
  }

  while (v36);
LABEL_69:

  v55 = [(AVURLAsset *)self->m_asset tracksWithMediaType:*MEMORY[0x277CE5E48]];

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  objb = v55;
  v56 = [objb countByEnumeratingWithState:&v192 objects:v212 count:16];
  if (!v56)
  {
    goto LABEL_94;
  }

  groupb = *v193;
  while (2)
  {
    v57 = 0;
    while (2)
    {
      if (*v193 != groupb)
      {
        objc_enumerationMutation(objb);
      }

      v58 = *(*(&v192 + 1) + 8 * v57);
      v59 = [@"Unknown" stringByAppendingFormat:@"-audio"];
      if ([(NSMutableArray *)self->_orderedAudioStreamIds count])
      {
        v60 = [v59 stringByAppendingFormat:@"-%lu", -[NSMutableArray count](self->_orderedAudioStreamIds, "count")];

        v59 = v60;
      }

      v61 = [MIOMovieMetadataUtility findAllAssociatedMetadataTracksInAsset:self->m_asset forTrack:v58];
      [v164 addObjectsFromArray:v61];
      if (+[MIOLog debugEnabled])
      {
        v62 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(range.start.value) = 138543362;
          *(&range.start.value + 4) = v59;
          _os_log_impl(&dword_257883000, v62, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Setup audio output for '%{public}@'.", &range, 0xCu);
        }
      }

      v63 = [MOVStreamReaderStreamOutput alloc];
      v64 = self->m_assetReader;
      v65 = self->_movVersion;
      v66 = objc_loadWeakRetained(&self->_delegate);
      v191 = 0;
      v67 = [(MOVStreamReaderStreamOutput *)v63 initWithAudioTrack:v58 assetReader:v64 associatedMetadataTracks:v61 version:v65 unknownStreamId:v59 reader:self delegate:v66 error:&v191];
      v68 = v191;

      if (v68)
      {
        v69 = objc_loadWeakRetained(&self->_delegate);
        if (v69)
        {
          v70 = objc_loadWeakRetained(&self->_delegate);
          v71 = objc_opt_respondsToSelector();

          if (v71)
          {
            v72 = [(MOVStreamReader *)self delegate];
            [v72 reader:self didReceiveWarning:v68];
            goto LABEL_91;
          }
        }
      }

      else
      {
        if (+[MIOLog debugEnabled])
        {
          v73 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v59;
            _os_log_impl(&dword_257883000, v73, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Register audio output for '%{public}@'.", &range, 0xCu);
          }
        }

        if (![(MOVStreamReader *)self registerOutput:v67])
        {
          v72 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v59;
            _os_log_impl(&dword_257883000, v72, OS_LOG_TYPE_ERROR, "MOVStreamReader: Register audio output for '%{public}@', failed.", &range, 0xCu);
          }

LABEL_91:
        }
      }

      if (v56 != ++v57)
      {
        continue;
      }

      break;
    }

    v56 = [objb countByEnumeratingWithState:&v192 objects:v212 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_94:

  v144 = *MEMORY[0x277CE5E88];
  v74 = [(AVURLAsset *)self->m_asset tracksWithMediaType:?];

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  objc = v74;
  v75 = [objc countByEnumeratingWithState:&v187 objects:v211 count:16];
  if (!v75)
  {
    goto LABEL_119;
  }

  groupc = *v188;
  while (2)
  {
    v76 = 0;
    while (2)
    {
      if (*v188 != groupc)
      {
        objc_enumerationMutation(objc);
      }

      v77 = *(*(&v187 + 1) + 8 * v76);
      v78 = [@"Unknown" stringByAppendingFormat:@"-scene"];
      if ([(NSMutableArray *)self->_orderedSceneStreamIds count])
      {
        v79 = [v78 stringByAppendingFormat:@"-%lu", -[NSMutableArray count](self->_orderedSceneStreamIds, "count")];

        v78 = v79;
      }

      v80 = [MIOMovieMetadataUtility findAllAssociatedMetadataTracksInAsset:self->m_asset forTrack:v77];
      [v164 addObjectsFromArray:v80];
      if (+[MIOLog debugEnabled])
      {
        v81 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(range.start.value) = 138543362;
          *(&range.start.value + 4) = v78;
          _os_log_impl(&dword_257883000, v81, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Setup scene output for '%{public}@'.", &range, 0xCu);
        }
      }

      v82 = [MOVStreamReaderStreamOutput alloc];
      v83 = self->m_assetReader;
      v84 = self->_movVersion;
      v85 = objc_loadWeakRetained(&self->_delegate);
      v186 = 0;
      v86 = [(MOVStreamReaderStreamOutput *)v82 initWithSceneTrack:v77 assetReader:v83 associatedMetadataTracks:v80 version:v84 unknownStreamId:v78 reader:self delegate:v85 error:&v186];
      v87 = v186;

      if (v87)
      {
        v88 = objc_loadWeakRetained(&self->_delegate);
        if (v88)
        {
          v89 = objc_loadWeakRetained(&self->_delegate);
          v90 = objc_opt_respondsToSelector();

          if (v90)
          {
            v91 = [(MOVStreamReader *)self delegate];
            [v91 reader:self didReceiveWarning:v87];
            goto LABEL_116;
          }
        }
      }

      else
      {
        if (+[MIOLog debugEnabled])
        {
          v92 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v78;
            _os_log_impl(&dword_257883000, v92, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Register scene output for '%{public}@'.", &range, 0xCu);
          }
        }

        if (![(MOVStreamReader *)self registerOutput:v86])
        {
          v91 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v78;
            _os_log_impl(&dword_257883000, v91, OS_LOG_TYPE_ERROR, "MOVStreamReader: Register scene output for '%{public}@', failed.", &range, 0xCu);
          }

LABEL_116:
        }
      }

      if (v75 != ++v76)
      {
        continue;
      }

      break;
    }

    v75 = [objc countByEnumeratingWithState:&v187 objects:v211 count:16];
    if (v75)
    {
      continue;
    }

    break;
  }

LABEL_119:

  [(AVURLAsset *)self->m_asset tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v153 = v183 = 0u;
  v93 = [v153 countByEnumeratingWithState:&v182 objects:v210 count:16];
  if (!v93)
  {
    goto LABEL_157;
  }

  groupd = *v183;
  while (2)
  {
    v94 = 0;
    while (2)
    {
      if (*v183 != groupd)
      {
        objc_enumerationMutation(v153);
      }

      v95 = *(*(&v182 + 1) + 8 * v94);
      if (([v164 containsObject:v95] & 1) == 0)
      {
        v96 = [@"Unknown" stringByAppendingFormat:@"-metadata"];
        if ([(NSMutableArray *)self->_orderedMetadataStreamIds count])
        {
          v97 = [v96 stringByAppendingFormat:@"-%lu", -[NSMutableArray count](self->_orderedMetadataStreamIds, "count")];

          v96 = v97;
        }

        if (+[MIOLog debugEnabled])
        {
          v98 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v96;
            _os_log_impl(&dword_257883000, v98, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Setup metadata output for '%{public}@'.", &range, 0xCu);
          }
        }

        v99 = [MOVStreamReaderStreamOutput alloc];
        v100 = self->m_assetReader;
        v101 = self->_movVersion;
        v102 = objc_loadWeakRetained(&self->_delegate);
        v181 = 0;
        v103 = [(MOVStreamReaderStreamOutput *)v99 initWithMetadataTrack:v95 assetReader:v100 version:v101 unknownStreamId:v96 reader:self delegate:v102 error:&v181];
        v104 = v181;

        if (v104)
        {
          v105 = objc_loadWeakRetained(&self->_delegate);
          if (v105)
          {
            v106 = objc_loadWeakRetained(&self->_delegate);
            v107 = objc_opt_respondsToSelector();

            if (v107)
            {
              v108 = [(MOVStreamReader *)self delegate];
              [v108 reader:self didReceiveWarning:v104];
              goto LABEL_149;
            }
          }

          goto LABEL_150;
        }

        if (+[MIOLog debugEnabled])
        {
          v109 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v96;
            _os_log_impl(&dword_257883000, v109, OS_LOG_TYPE_DEBUG, "MOVStreamReader: Register metadata output for '%{public}@'.", &range, 0xCu);
          }
        }

        if (![(MOVStreamReader *)self registerOutput:v103])
        {
          v110 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            LODWORD(range.start.value) = 138543362;
            *(&range.start.value + 4) = v96;
            _os_log_impl(&dword_257883000, v110, OS_LOG_TYPE_ERROR, "MOVStreamReader: Register metadata output for '%{public}@', failed.", &range, 0xCu);
          }
        }

        if (![(MOVStreamReaderStreamOutput *)v103 isTimeRangeMetadataStream]|| self->_timeRangeMetadataSamples)
        {
          goto LABEL_150;
        }

        v111 = [MIOTimeRangeMetadataTrackReader alloc];
        v112 = [(MOVStreamReaderStreamOutput *)v103 assetTrack];
        v113 = -[MIOTimeRangeMetadataTrackReader initWithMetadataTrackId:asset:](v111, "initWithMetadataTrackId:asset:", [v112 trackID], self->m_asset);

        v180 = 0;
        v114 = [(MIOTimeRangeMetadataTrackReader *)v113 readTimeRangeMetadataSamplesOutError:&v180];
        v108 = v180;
        timeRangeMetadataSamples = self->_timeRangeMetadataSamples;
        self->_timeRangeMetadataSamples = v114;

        if (self->_timeRangeMetadataSamples)
        {
          v116 = [(MOVStreamReaderStreamOutput *)v103 streamId];
          timeRangeMetadataStream = self->_timeRangeMetadataStream;
          self->_timeRangeMetadataStream = v116;
          goto LABEL_147;
        }

        v118 = objc_loadWeakRetained(&self->_delegate);
        if (v118)
        {
          v119 = objc_loadWeakRetained(&self->_delegate);
          v146 = objc_opt_respondsToSelector();

          if (v146)
          {
            timeRangeMetadataStream = [(MOVStreamReader *)self delegate];
            [timeRangeMetadataStream reader:self didReceiveWarning:v108];
LABEL_147:
          }
        }

LABEL_149:
LABEL_150:
      }

      if (v93 != ++v94)
      {
        continue;
      }

      break;
    }

    v120 = [v153 countByEnumeratingWithState:&v182 objects:v210 count:16];
    v93 = v120;
    if (v120)
    {
      continue;
    }

    break;
  }

LABEL_157:

  groupe = dispatch_group_create();
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v121 = [(NSMutableDictionary *)self->_sampleStreams allValues];
  v150 = v121;
  v122 = [v121 countByEnumeratingWithState:&v176 objects:v209 count:16];
  if (v122)
  {
    v123 = *v177;
    v124 = *MEMORY[0x277CE6198];
    do
    {
      for (j = 0; j != v122; ++j)
      {
        if (*v177 != v123)
        {
          objc_enumerationMutation(v150);
        }

        v126 = *(*(&v176 + 1) + 8 * j);
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v127 = [v126 getAssociatedMetadataStreamOutputs];
        v128 = [v127 countByEnumeratingWithState:&v172 objects:v208 count:16];
        if (v128)
        {
          v129 = *v173;
          do
          {
            for (k = 0; k != v128; ++k)
            {
              if (*v173 != v129)
              {
                objc_enumerationMutation(v127);
              }

              [v126 registerForAssociating:*(*(&v172 + 1) + 8 * k) trackRelation:v124];
            }

            v128 = [v127 countByEnumeratingWithState:&v172 objects:v208 count:16];
          }

          while (v128);
        }
      }

      v121 = v150;
      v122 = [v150 countByEnumeratingWithState:&v176 objects:v209 count:16];
    }

    while (v122);
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v131 = [(NSMutableDictionary *)self->_sampleStreams allValues];
  v151 = v131;
  v132 = [v131 countByEnumeratingWithState:&v168 objects:v207 count:16];
  if (v132)
  {
    v133 = *v169;
    v134 = *MEMORY[0x277CE61A0];
    do
    {
      for (m = 0; m != v132; ++m)
      {
        if (*v169 != v133)
        {
          objc_enumerationMutation(v131);
        }

        v136 = *(*(&v168 + 1) + 8 * m);
        if ([v136 mediaType] != 4)
        {
          objc_initWeak(&range, self);
          dispatch_group_enter(groupe);
          v137 = [v136 assetTrack];
          v165[0] = MEMORY[0x277D85DD0];
          v165[1] = 3221225472;
          v165[2] = __50__MOVStreamReader_resetReaderWithTimeRange_error___block_invoke;
          v165[3] = &unk_2798483F8;
          v165[4] = v136;
          v166 = groupe;
          objc_copyWeak(&v167, &range);
          v131 = v151;
          [v137 loadAssociatedTracksOfType:v134 completionHandler:v165];

          objc_destroyWeak(&v167);
          objc_destroyWeak(&range);
        }
      }

      v132 = [v131 countByEnumeratingWithState:&v168 objects:v207 count:16];
    }

    while (v132);
  }

  v138 = groupe;
  dispatch_group_wait(groupe, 0xFFFFFFFFFFFFFFFFLL);
  v139 = *&a3->var0.var3;
  *&range.start.value = *&a3->var0.var0;
  *&range.start.epoch = v139;
  *&range.duration.timescale = *&a3->var1.var1;
  [(AVAssetReader *)self->m_assetReader setTimeRange:&range];
  v10 = [(AVAssetReader *)self->m_assetReader startReading];
  if (!v10)
  {
    v140 = MEMORY[0x277CCACA8];
    v141 = [(AVAssetReader *)self->m_assetReader error];
    v142 = [v140 stringWithFormat:@"Start Reading (AVAssetReader) Error: %@  Status: %ld", v141, -[AVAssetReader status](self->m_assetReader, "status")];

    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v142 code:4];
    v138 = groupe;
  }

LABEL_186:
LABEL_11:

  return v10;
}

void __50__MOVStreamReader_resetReaderWithTimeRange_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = a3;
  if (v16)
  {
    v6 = [*(a1 + 32) streamId];
    NSLog(&cfstr_CouldNotDeterm.isa, v6, v16);

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained && [v5 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [WeakRetained[3] allValues];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = *v18;
        v10 = *MEMORY[0x277CE61A0];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            if ([v12 mediaType] == 4)
            {
              v13 = [v12 assetTrack];
              v14 = [v5 containsObject:v13];

              if (v14)
              {
                [v12 registerForAssociating:*(a1 + 32) trackRelation:v10];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

- (id)timeRangeMetadataForPixelBuffer:(__CVBuffer *)a3
{
  if (self->_timeRangeMetadataSamples)
  {
    v5 = [(MOVStreamReader *)self timeRangeMetadataKey];

    v6 = 0;
    if (a3 && v5)
    {
      v7 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
      v8 = [(MOVStreamReader *)self timeRangeMetadataKey];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = [v9 unsignedLongLongValue];
        v11 = [(NSArray *)self->_timeRangeMetadataSamples count];
        v12 = v11 - 1;
        if (v11 >= 1)
        {
          v13 = 0;
          do
          {
            v14 = v13 + (v12 - v13) / 2;
            v6 = [(NSArray *)self->_timeRangeMetadataSamples objectAtIndexedSubscript:v14];
            if ([v6 startTime] <= v10)
            {
              if ([v6 endTime] >= v10)
              {
                goto LABEL_13;
              }

              v13 = v14 + 1;
            }

            else
            {
              v12 = v14 - 1;
            }
          }

          while (v13 <= v12);
        }
      }

      v6 = 0;
LABEL_13:
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)saveStream:(id)a3 toFile:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = a4;
  v8 = objc_opt_new();
  v9 = [(MOVStreamReader *)self trackForStream:v30];
  if (v9 || ([(MOVStreamReader *)self metadataTrackForStream:v30], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v8 addObject:v9];
    v10 = [MIOMovieMetadataUtility findAllAssociatedMetadataTracksInAsset:self->m_asset forTrack:v9];
    v29 = v10;
    if (v10)
    {
      [v8 addObjectsFromArray:v10];
    }

    v11 = objc_alloc(MEMORY[0x277CE6560]);
    v12 = [(AVURLAsset *)self->m_asset URL];
    v13 = [v11 initWithURL:v12 options:0 error:a5];

    if (v13)
    {
      [v13 tracks];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v14 = v35 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            if (![(MOVStreamReader *)self isTrack:v18 byIdInTracks:v8])
            {
              [v13 removeTrack:v18];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v15);
      }

      v19 = objc_alloc(MEMORY[0x277CE6400]);
      v20 = [v19 initWithAsset:v13 presetName:*MEMORY[0x277CE5C78]];
      v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
      [v20 setOutputURL:v21];

      [v20 setOutputFileType:*MEMORY[0x277CE5DA8]];
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __43__MOVStreamReader_saveStream_toFile_error___block_invoke;
      v32[3] = &unk_279847EE0;
      v23 = v22;
      v33 = v23;
      [v20 exportAsynchronouslyWithCompletionHandler:v32];
      dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      v24 = [v20 error];
      v25 = v24 == 0;

      if (a5)
      {
        v26 = v25;
      }

      else
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
        *a5 = [v20 error];
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain stream '%@'.", v30];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v28 code:3];

    v25 = 0;
  }

  return v25;
}

- (BOOL)isTrack:(id)a3 byIdInTracks:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) trackID];
        if (v10 == [v5 trackID])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)movVersionCheck
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(MOVStreamReader *)self movstreamIOMetadataForMovie];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [MIOVersion allVersionedKeysForKey:@"version" modifier:0];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = *v28;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = [v3 objectForKey:*(*(&v27 + 1) + 8 * v7)];
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v26 = 0;
  v9 = [[MIOVersion alloc] initWithVersionString:v8 error:&v26];
  v10 = v26;
  movVersion = self->_movVersion;
  self->_movVersion = v9;

  if (!self->_movVersion)
  {
    v14 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:@"No or invalid MOVStreamIO version information in MOV!" code:22];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 reader:self didReceiveWarning:v14];
      }
    }

    v19 = +[MIOVersion versionZero];
    v20 = self->_movVersion;
    self->_movVersion = v19;
    goto LABEL_22;
  }

  v25 = v10;
  v12 = [[MIOVersion alloc] initWithVersionString:@"3.34.5" error:&v25];
  v13 = v25;

  if (v13)
  {
    __assert_rtn("[MOVStreamReader movVersionCheck]", "MOVStreamReader.mm", 735, "versionError == nil");
  }

  if ([(MIOVersion *)v12 compareToVersion:self->_movVersion]== -1)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"MOV created with a newer MOVStreamIO version '%@' (current '%@')!", self->_movVersion, v12];
    v20 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v14 code:22];
    v21 = objc_loadWeakRetained(&self->_delegate);
    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = objc_loadWeakRetained(&self->_delegate);
        [v24 reader:self didReceiveWarning:v20];
      }
    }

    v10 = v12;
LABEL_22:

    goto LABEL_23;
  }

  v10 = v12;
LABEL_23:
}

- (void)setL010OutputFormatRAW14L016:(BOOL)a3
{
  if (self->_l010OutputFormatRAW14L016 != a3)
  {
    v12 = v3;
    v13 = v4;
    self->_l010OutputFormatRAW14L016 = a3;
    m_assetReader = self->m_assetReader;
    if (m_assetReader)
    {
      [(AVAssetReader *)m_assetReader timeRange];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v10 = v7;
    v11 = v8;
    [(MOVStreamReader *)self resetReaderTo:&v10 error:0, v7, v8, v9];
  }
}

- (void)setRawBayerMSBReplication:(BOOL)a3
{
  if (self->_rawBayerMSBReplication != a3)
  {
    v12 = v3;
    v13 = v4;
    self->_rawBayerMSBReplication = a3;
    m_assetReader = self->m_assetReader;
    if (m_assetReader)
    {
      [(AVAssetReader *)m_assetReader timeRange];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v10 = v7;
    v11 = v8;
    [(MOVStreamReader *)self resetReaderTo:&v10 error:0, v7, v8, v9];
  }
}

- (void)setBufferCacheMode:(int)a3
{
  if (self->_bufferCacheMode != a3)
  {
    v12 = v3;
    v13 = v4;
    self->_bufferCacheMode = a3;
    m_assetReader = self->m_assetReader;
    if (m_assetReader)
    {
      [(AVAssetReader *)m_assetReader timeRange];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v10 = v7;
    v11 = v8;
    [(MOVStreamReader *)self resetReaderTo:&v10 error:0, v7, v8, v9];
  }
}

- (void)setSkipSynthesizedTimeCode:(BOOL)a3
{
  if (self->_skipSynthesizedTimeCode != a3)
  {
    v12 = v3;
    v13 = v4;
    self->_skipSynthesizedTimeCode = a3;
    m_assetReader = self->m_assetReader;
    if (m_assetReader)
    {
      [(AVAssetReader *)m_assetReader timeRange];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v10 = v7;
    v11 = v8;
    [(MOVStreamReader *)self resetReaderTo:&v10 error:0, v7, v8, v9];
  }
}

- (CGAffineTransform)transformForStream:(SEL)a3
{
  v11 = a4;
  if ([(MOVStreamReader *)self containsStream:?])
  {
    v6 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v11];
    v7 = v6;
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v9;
    *&retstr->tx = *(v8 + 32);
  }

  return result;
}

- (id)metadataForMovie
{
  v3 = objc_opt_new();
  v4 = [(AVURLAsset *)self->m_asset metadata];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__MOVStreamReader_metadataForMovie__block_invoke;
  v9[3] = &unk_279848398;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

void __35__MOVStreamReader_metadataForMovie__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = [MOVStreamIOUtility isMOVStreamIOMovMetadataIdentifier:v3];

  if (!v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)movstreamIOMetadataForMovie
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(AVURLAsset *)self->m_asset metadata];
  v2 = 0;
  v3 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v3)
  {
    v28 = *v37;
    *&v4 = 138543362;
    v26 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = [MIOVersion allVersionedKeysForKey:@"mdta/com.apple.framework.state.MOVStreamIO" modifier:0, v26];
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (!v8)
        {
          goto LABEL_30;
        }

        v9 = *v33;
        while (2)
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v32 + 1) + 8 * j);
            v12 = [v6 identifier];
            LODWORD(v11) = [v12 isEqualToString:v11];

            if (v11)
            {
              v31 = 0;
              v13 = MEMORY[0x277CCAC58];
              v14 = [v6 value];
              LODWORD(v13) = [v13 propertyList:v14 isValidForFormat:100];

              if (v13)
              {
                v15 = MEMORY[0x277CCAC58];
                v16 = [v6 value];
                v30 = 0;
                v17 = [v15 propertyListWithData:v16 options:0 format:&v31 error:&v30];
                v18 = v30;

                if (v18)
                {
                  if (+[MIOLog debugEnabled])
                  {
                    v19 = +[MIOLog defaultLog];
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_DEBUG, "MOVStreamIO state metadata is not in PLIST format. Fallback to JSON.", buf, 2u);
                    }
                  }

                  v20 = v17;
LABEL_24:

                  v22 = MEMORY[0x277CCAAA0];
                  v23 = [v6 value];
                  v29 = 0;
                  v21 = [v22 JSONObjectWithData:v23 options:1 error:&v29];
                  v18 = v29;

                  if (v18 && +[MIOLog debugEnabled])
                  {
                    v24 = +[MIOLog defaultLog];
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v26;
                      v41 = v18;
                      _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_DEBUG, "MOVStreamIO state metadata JSON error: %{public}@", buf, 0xCu);
                    }
                  }

LABEL_29:

                  v2 = v21;
                  goto LABEL_30;
                }

                v2 = v17;
              }

              v18 = 0;
              v21 = v2;
              v20 = 0;
              if (!v21)
              {
                goto LABEL_24;
              }

              goto LABEL_29;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

LABEL_30:
      }

      v3 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v3);
  }

  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sessionStartTimeOfMovie
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVURLAsset *)self->m_asset metadata];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 isEqualToString:@"mdta/com.apple.framework.mio.session.starttime"];

        if (v10)
        {
          if (v8)
          {
            [v8 valueAsMovSessionStartTime];
          }

          else
          {
            retstr->var0 = 0;
            *&retstr->var1 = 0;
            retstr->var3 = 0;
          }

          return result;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = MEMORY[0x277CC0890];
  *&retstr->var0 = *MEMORY[0x277CC0890];
  retstr->var3 = *(v12 + 16);
  return result;
}

- (id)timeRangeMetadataKeyHint
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AVURLAsset *)self->m_asset metadata];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v7 isEqualToString:@"mdta/com.apple.framework.mio.timeRangeMetadataKeyHint"];

        if (v8)
        {
          v9 = [v6 valueAsTimeRangeMetadataKeyHint];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)getTimeRangeMetadataStream
{
  if ([(MOVStreamReader *)self containsTimeRangeMetadataStream])
  {
    v3 = self->_timeRangeMetadataStream;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getRelatedStreamForStreamId:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 relatedStreamId];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getRelationSpecifierForStreamId:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 relationSpecifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getStreamsRelatedToStream:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_sampleStreams allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 relatedStreamId];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v13 = [v10 streamId];
          [v5 addObject:v13];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)trackMetadataForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 customTrackMetadata];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customTrackMetadataItemsForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 customTrackMetadataItems];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackMetadataForMetadataStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsMetadataStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v4];
    v6 = [v5 customTrackMetadata];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasTimeCodeForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasTimeCode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasSynthesizedTimeCodeForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timeCodeIsSynthesized];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (opaqueCMFormatDescription)timeCodeFormatDescriptionStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 timeCodeFormatDescription];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)getSizeForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 assetTrack];
    [v5 naturalSize];
    width = v6;
    height = v8;

    v10 = [v4 assetTrack];
    v11 = [v10 formatDescriptions];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v4 assetTrack];
      v14 = [v13 formatDescriptions];
      v15 = [v14 objectAtIndexedSubscript:0];

      Dimensions = CMVideoFormatDescriptionGetDimensions(v15);
      if (Dimensions.width >= 1 && Dimensions.height >= 1)
      {
        width = Dimensions.width;
        height = Dimensions.height;
      }
    }
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    height = *(MEMORY[0x277CBF3A8] + 8);
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)getOutputSizeForStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
  if (v5)
  {
    [(MOVStreamReader *)self getSizeForStream:v4];
    v7 = v6;
    v9 = v8;
    if (![v5 mediaType])
    {
      v10 = v5;
      v11 = [v10 postProcessor];
      v12 = [v11 conformsToProtocol:&unk_2868E86F0];

      if (v12)
      {
        v13 = [v10 postProcessor];
        v7 = [v13 adjustedWidthForWidth:v7];
      }
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (unsigned)getOutputPixelFormatForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 getOutputPixelFormatForStream];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)getOutputPixelFormatWasGuessedForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 getOutputPixelFormatWasGuessedForStream];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)trackTypeInfoForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 trackTypeInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentsOutputForStream:(id)a3 mediaType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4 == 2)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:@"Metadata streams don't have attachment outputs." code:7];
    v9 = 0;
    goto LABEL_10;
  }

  v10 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v8];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream not found '%@'.", v8];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v11 code:7];
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if ([v10 mediaType] != a4)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream not found for '%@' of type %ld.", v8, a4];
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v12 code:7];

    goto LABEL_8;
  }

  v9 = [v11 getAttachmentsOnlyOutputError:a5];
LABEL_9:

LABEL_10:

  return v9;
}

- (id)trackForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 assetTrack];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)metadataTrackForStream:(id)a3
{
  v4 = a3;
  if ([(MOVStreamReader *)self containsMetadataStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v4];
    v6 = [v5 assetTrack];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)getFrameRateForStream:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([(MOVStreamReader *)self containsStream:v4])
  {
    v6 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v7 = [v6 assetTrack];
    [v7 nominalFrameRate];
    v5 = v8;
  }

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)getMinFrameDurationForStream:(SEL)a3
{
  v11 = a4;
  if ([(MOVStreamReader *)self containsStream:?])
  {
    v6 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v11];
    v7 = [v6 assetTrack];
    v8 = v7;
    if (v7)
    {
      [v7 minFrameDuration];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v9 = MEMORY[0x277CC0890];
    *&retstr->var0 = *MEMORY[0x277CC0890];
    retstr->var3 = *(v9 + 16);
  }

  return result;
}

- (unsigned)pixelFormatForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pixelFormatForStream];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)removePixelBufferPadding:(BOOL)a3 forStream:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(MOVStreamReader *)self containsStream:?])
  {
    v6 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v7];
    [v6 removePixelBufferPadding:v4];
  }
}

- (BOOL)setTestPatternRenderer:(id)a3 forVideoStream:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(MOVStreamReader *)self outputForVideoStream:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    [v9 setTestPatternRenderer:v8];
  }

  return v10 != 0;
}

- (double)duration
{
  m_asset = self->m_asset;
  if (m_asset)
  {
    [(AVURLAsset *)m_asset duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstPts
{
  v20 = *MEMORY[0x277D85DE8];
  *retstr = **&MEMORY[0x277CC0890];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AVURLAsset *)self->m_asset tracks];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if ((retstr->var2 & 1) == 0)
        {
          goto LABEL_11;
        }

        if (v8)
        {
          [*(*(&v15 + 1) + 8 * v7) timeRange];
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
          v11 = 0u;
        }

        *&time1.value = v11;
        time1.epoch = v12;
        v10 = *retstr;
        if (CMTimeCompare(&time1, &v10) < 0)
        {
LABEL_11:
          if (v8)
          {
            [v8 timeRange];
          }

          else
          {
            v12 = 0u;
            v13 = 0u;
            v11 = 0u;
          }

          *&retstr->var0 = v11;
          retstr->var3 = v12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return result;
}

- (id)timestampsForStream:(id)a3 restrictedTimeRange:(id *)a4
{
  v6 = a3;
  v7 = [MOVStreamTimestamps alloc];
  v8 = [(MOVStreamReader *)self trackForStream:v6];
  v9 = *&a4->var0.var3;
  v12[0] = *&a4->var0.var0;
  v12[1] = v9;
  v12[2] = *&a4->var1.var1;
  v10 = [(MOVStreamTimestamps *)v7 initWithAssetTrack:v8 restrictedTimeRange:v12];

  return v10;
}

- (id)timestampsForStream:(id)a3
{
  v4 = a3;
  v5 = [MOVStreamTimestamps alloc];
  v6 = [(MOVStreamReader *)self trackForStream:v4];
  v7 = [(MOVStreamTimestamps *)v5 initWithAssetTrack:v6];

  return v7;
}

- (id)timestampsForMetadataStream:(id)a3
{
  v4 = a3;
  v5 = [MOVStreamTimestamps alloc];
  v6 = [(MOVStreamReader *)self metadataTrackForStream:v4];
  v7 = [(MOVStreamTimestamps *)v5 initWithAssetTrack:v6];

  [(MOVStreamTimestamps *)v7 setShouldStartTimestampsAtZero:0];

  return v7;
}

- (BOOL)containsStream:(id)a3 withMediaType:(int64_t)a4
{
  v6 = a3;
  if (a4 >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(&self->super.isa + *&a010l010l010l01[8 * a4 + 40]) containsObject:v6];
  }

  return v7;
}

- (BOOL)containsStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsMetadataStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)getAllStreams
{
  v2 = [(NSMutableArray *)self->_orderedVideoStreamIds copy];

  return v2;
}

- (id)getAllAudioStreams
{
  v2 = [(NSMutableArray *)self->_orderedAudioStreamIds copy];

  return v2;
}

- (id)getAllSceneStreams
{
  v2 = [(NSMutableArray *)self->_orderedSceneStreamIds copy];

  return v2;
}

- (id)getAllTimeCodeStreams
{
  v2 = [(NSMutableArray *)self->_orderedTimeCodeStreamIds copy];

  return v2;
}

- (id)trackMetadataForAudioStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
  if ([v5 mediaType] == 1)
  {
    v6 = [(MOVStreamReader *)self trackMetadataForStream:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackMetadataForSceneStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
  if ([v5 mediaType] == 3)
  {
    v6 = [(MOVStreamReader *)self trackMetadataForStream:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackMetadataForTimeCodeStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
  if ([v5 mediaType] == 4)
  {
    v6 = [(MOVStreamReader *)self trackMetadataForStream:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackMetadataForVideoStream:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
  if ([v5 mediaType])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MOVStreamReader *)self trackMetadataForStream:v4];
  }

  return v6;
}

- (id)trackMetadataForStream:(id)a3 withMediaType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(MOVStreamReader *)self trackMetadataForMetadataStream:v6];
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
    if ([v8 mediaType] == a4)
    {
      v7 = [(MOVStreamReader *)self trackMetadataForStream:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getAllMetadataStreams
{
  v2 = [(NSMutableArray *)self->_orderedMetadataStreamIds copy];

  return v2;
}

- (id)getUnknownMetadataStreamsAssociatedTo:(id)a3
{
  v3 = [(MOVStreamReader *)self getMetadataStreamsAssociatedTo:a3 error:0];

  return v3;
}

- (id)getMetadataStreamsAssociatedTo:(id)a3
{
  v3 = [(MOVStreamReader *)self getMetadataStreamsAssociatedTo:a3 error:0];

  return v3;
}

- (id)getMetadataStreamsAssociatedTo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getAssociatedMetadataStreams];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:3];

    v9 = 0;
  }

  return v9;
}

- (id)outputForVideoStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id." code:7];
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    if (![v7 mediaType])
    {
      v10 = v8;
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream '%@' is not a video stream.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v9 code:7];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v9 code:7];
  }

  v10 = 0;
LABEL_9:

LABEL_10:

  return v10;
}

- (id)outputForAudioStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id." code:7];
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if ([v7 mediaType] != 1)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream '%@' is not an audio stream.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
    goto LABEL_8;
  }

  v9 = v8;
LABEL_9:

LABEL_10:

  return v9;
}

- (id)outputForSceneStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id." code:7];
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if ([v7 mediaType] != 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream '%@' is not a scene stream.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
    goto LABEL_8;
  }

  v9 = v8;
LABEL_9:

LABEL_10:

  return v9;
}

- (id)outputForTimeCodeStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id." code:7];
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if ([v7 mediaType] != 4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream '%@' is not a time code stream.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
    goto LABEL_8;
  }

  v9 = v8;
LABEL_9:

LABEL_10:

  return v9;
}

- (id)outputForMetadataStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id." code:7];
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v6];
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  if ([v7 mediaType] != 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream '%@' is not a metadata stream.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];
    goto LABEL_8;
  }

  v9 = v8;
LABEL_9:

LABEL_10:

  return v9;
}

- (id)outputsRelatedToOutput:(id)a3 trackAssociation:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 associatedOutputs];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectAtIndexedSubscript:0];
        v14 = [v13 nonretainedObjectValue];

        v15 = [v12 objectAtIndexedSubscript:1];
        if (v15 == v6)
        {
          [v7 addObject:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [v7 copy];

  return v16;
}

- (opaqueCMSampleBuffer)nextSampleBufferForStream:(id)a3 attachmentsData:(id *)a4 timestamp:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = v10;
  if (a5)
  {
    v12 = *MEMORY[0x277CC0890];
    a5->var3 = *(MEMORY[0x277CC0890] + 16);
    *&a5->var0 = v12;
  }

  if (v10)
  {
    v13 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 nextSampleBufferForStreamAttachmentsData:a4 timestamp:a5 error:a6];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v11];
      [MEMORY[0x277CCA9B8] populateReaderError:a6 message:v16 code:7];

      v15 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:@"Missing stream id for copy next frame." code:7];
    v15 = 0;
  }

  return v15;
}

- (__CVBuffer)nextPixelBufferForStream:(id)a3 attachmentsData:(id *)a4 timestamp:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = v10;
  if (a5)
  {
    v12 = *MEMORY[0x277CC0890];
    a5->var3 = *(MEMORY[0x277CC0890] + 16);
    *&a5->var0 = v12;
  }

  if (v10)
  {
    v13 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 nextPixelBufferForStreamAttachmentsData:a4 timestamp:a5 error:a6];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v11];
      [MEMORY[0x277CCA9B8] populateReaderError:a6 message:v16 code:7];

      v15 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:@"Missing stream id for copy next frame." code:7];
    v15 = 0;
  }

  return v15;
}

- (BOOL)copyNextStereoFramesForStream:(id)a3 leftBuffer:(__CVBuffer *)a4 rightBuffer:(__CVBuffer *)a5 timestamp:(id *)a6 error:(id *)a7
{
  v12 = a3;
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v12];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 copyNextStereoFrames:a4 rightBuffer:a5 timestamp:a6 error:a7];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v12];
      [MEMORY[0x277CCA9B8] populateReaderError:a7 message:v16 code:7];

      v15 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a7 message:@"Missing stream id for copy next frame." code:7];
    v15 = 0;
  }

  return v15;
}

- (BOOL)isStereoStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = [v3 isStereoVideoStream];

  return v4;
}

- (id)stereoLayersForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = [v3 videoLayerIds];

  return v4;
}

- (id)additionalCompressionPropertiesForStream:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:a3];
  v4 = [v3 additionalCompressionProperties];

  return v4;
}

- (__CVBuffer)copyNextFrameForStream:(id)a3 timestamp:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      if (![v9 isStereoVideoStream])
      {
        v11 = [v10 copyNextFrameForStreamTimestamp:a4 error:a5];
        goto LABEL_10;
      }

      texture = 0;
      v15 = 0;
      if ([v10 copyNextStereoFrames:&v15 rightBuffer:&texture timestamp:a4 error:a5])
      {
        CVPixelBufferRelease(texture);
        v11 = v15;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v8];
      [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v12 code:7];
    }

    v11 = 0;
    goto LABEL_10;
  }

  [MEMORY[0x277CCA9B8] populateReaderError:a5 message:@"Missing stream id for copy next frame." code:7];
  v11 = 0;
LABEL_11:

  return v11;
}

- (__CVBuffer)copyNextFrameForStream:(id)a3 timestamp:(id *)a4 timeCode:(CVSMPTETime *)a5 tcDropFrame:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v12];
    v14 = v13;
    if (v13)
    {
      if (a5)
      {
        *&a5->subframes = 0;
        *&a5->type = 0;
        *&a5->hours = 0;
      }

      v15 = [v13 copyNextFrameForStreamTimestamp:a4 timeCode:a5 tcDropFrame:a6 error:a7];
      if (a5 && self->_timeRangeMetadataSamples && self->_timeRangeMetadataKey)
      {
        v16 = [(MOVStreamReader *)self timeRangeMetadataForPixelBuffer:v15];
        v17 = v16;
        if (v16)
        {
          [v16 timeCode];
          *&a5->subframes = v20;
          *&a5->hours = v21;
        }
      }
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v12];
      [MEMORY[0x277CCA9B8] populateReaderError:a7 message:v18 code:7];

      v15 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a7 message:@"Missing stream id for copy next frame." code:7];
    v15 = 0;
  }

  return v15;
}

- (CVSMPTETime)grabNextTimeCodeSampleForStream:(SEL)a3 timestamp:(id)a4 error:(id *)a5
{
  result = [(MOVStreamReader *)self grabNextSampleBufferForStream:a4 timestamp:a5 error:a6];
  if (result)
  {
    v8 = result;
    v9 = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;
    *&retstr->subframes = 0;
    [MOVStreamIOUtility timecode32ForSampleBuffer:result dropFrame:&v9];
    CFRelease(v8);
  }

  else
  {
    *&retstr->subframes = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;
  }

  return result;
}

- (opaqueCMSampleBuffer)grabNextSampleBufferForStream:(id)a3 timestamp:(id *)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 grabNextSampleBufferForStreamTimestamp:a4 error:a5];
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v8];
      [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v12 code:7];

      v11 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a5 message:@"Missing stream id for copy next frame." code:7];
    v11 = 0;
  }

  return v11;
}

- (CVSMPTETime)grabNextTimeRangeMetadataSampleOfStream:(SEL)a3 rangeStartTime:(id)a4 rangeEndTime:(unint64_t *)a5 presentationTimeRange:(unint64_t *)a6 error:(id *)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = a4;
  if (v14)
  {
    v39 = v14;
    v15 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v14];
    v40 = v15;
    if (v15)
    {
      if ([v15 isTimeRangeMetadataStream])
      {
        v38 = [(MOVStreamReader *)self grabNextTimedMetadataGroupOfStream:v14 error:a8];
        if ([v40 endOfStreamReached])
        {
          *&retstr->subframes = 0;
          *&retstr->type = 0;
          *&retstr->hours = 0;
LABEL_40:

          goto LABEL_41;
        }

        [v38 items];
        v49 = 0uLL;
        v50 = 0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = v48 = 0u;
        v17 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
        v36 = a8;
        v37 = retstr;
        if (v17)
        {
          v34 = a6;
          v35 = a7;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = *v46;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v46 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v45 + 1) + 8 * i);
              v24 = [v23 identifier];
              v25 = [@"mdta/com.apple.stream_time_code" isEqualToString:v24];

              if (v25)
              {
                if (v23)
                {
                  [v23 valueAsTimeCode];
                }

                else
                {
                  v42 = 0uLL;
                  *&v43 = 0;
                }

                v20 |= 1u;
                v49 = v42;
                v50 = v43;
              }

              else
              {
                v26 = [v23 identifier];
                v27 = [@"mdta/com.apple.stream_time_range_start" isEqualToString:v26];

                if (v27)
                {
                  v28 = [v23 numberValue];
                  v18 = [v28 unsignedLongLongValue];

                  v20 |= 2u;
                }

                else
                {
                  v29 = [v23 identifier];
                  v30 = [@"mdta/com.apple.stream_time_range_end" isEqualToString:v29];

                  if (v30)
                  {
                    v31 = [v23 numberValue];
                    v19 = [v31 unsignedLongLongValue];

                    v20 |= 4u;
                  }
                }
              }
            }

            v17 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
          }

          while (v17);

          if (v20 == 7)
          {
            if (a5)
            {
              *a5 = v18;
            }

            if (v34)
            {
              *v34 = v19;
            }

            if (v35)
            {
              if (v38)
              {
                [v38 timeRange];
              }

              else
              {
                v43 = 0u;
                v44 = 0u;
                v42 = 0u;
              }

              *&v35->var0.var0 = v42;
              *&v35->var0.var3 = v43;
              *&v35->var1.var1 = v44;
            }

            *&v37->subframes = v49;
            *&v37->hours = v50;
            goto LABEL_39;
          }
        }

        else
        {
        }

        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"The metadata stream '%@' did not contain all metadata items to be time range metadata.", v39];
        [MEMORY[0x277CCA9B8] populateReaderError:v36 message:v32 code:31];
        *&v37->subframes = 0;
        *&v37->type = 0;
        *&v37->hours = 0;

LABEL_39:
        goto LABEL_40;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"The metadata stream '%@' is not indicated as time range metadata.", v14];
      [MEMORY[0x277CCA9B8] populateReaderError:a8 message:v16 code:31];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v14];
      [MEMORY[0x277CCA9B8] populateReaderError:a8 message:v16 code:7];
    }

    *&retstr->subframes = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;

LABEL_41:
    v14 = v39;
    goto LABEL_42;
  }

  [MEMORY[0x277CCA9B8] populateReaderError:a8 message:@"Missing stream id for copy next frame." code:7];
  *&retstr->subframes = 0;
  *&retstr->type = 0;
  *&retstr->hours = 0;
LABEL_42:

  return result;
}

- (id)grabNextMetadataOfStream:(id)a3 timeRange:(id *)a4
{
  v4 = [(MOVStreamReader *)self grabNextMetadataOfStream:a3 timeRange:a4 error:0];

  return v4;
}

- (id)grabNextMetadataItemsOfTrackAssociatedWith:(id)a3 withIdentifier:(id)a4 timeRange:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    v12 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 grabNextMetadataItemsOfTrackAssociatedWithStreamWithIdentifier:v11 timeRange:a5 error:a6];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v10];
      [MEMORY[0x277CCA9B8] populateReaderError:a6 message:v15 code:7];

      v14 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a6 message:@"Missing stream id for copy next frame." code:7];
    v14 = 0;
  }

  return v14;
}

- (id)nextAttachmentForStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 nextAttachmentWithError:a4];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File doesn't contain data for requested stream '%@'.", v6];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v10 code:7];

    v9 = 0;
  }

  return v9;
}

- (id)grabNextTimedMetadataGroupOfStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v6];
    v8 = [v7 grabNextTimedMetadataGroupOfStreamError:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:@"Missing stream id for copy next frame." code:7];
    v8 = 0;
  }

  return v8;
}

- (id)grabNextMetadataOfStream:(id)a3 timeRange:(id *)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 grabNextMetadataOfStreamTimeRange:a4 error:a5];
LABEL_17:

      goto LABEL_18;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot grab metadata. Unknown metadata stream '%@'.", v8];
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:v12 code:0];
    }

    if (+[MIOLog debugEnabled])
    {
      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_DEBUG, "⚠️⚠️⚠️ WARNING [MOVStreamReader]: %{public}@ ⚠️⚠️⚠️", buf, 0xCu);
      }
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] readerWarningWithMessage:@"Cannot grab metadata. Missing metadata stream id." code:0];
  }

  if (+[MIOLog debugEnabled])
  {
    v10 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = @"Cannot grab metadata. Missing metadata stream id.";
      _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_DEBUG, "⚠️⚠️⚠️ WARNING [MOVStreamReader]: %{public}@ ⚠️⚠️⚠️", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (BOOL)hasReachedEndOfStream:(id)a3
{
  v4 = a3;
  if (v4 && [(MOVStreamReader *)self containsStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sampleStreams objectForKey:v4];
    v6 = [v5 endOfStreamReached];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)hasReachedEndOfMetadataStream:(id)a3
{
  v4 = a3;
  if (v4 && [(MOVStreamReader *)self containsMetadataStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_metadataStreams objectForKey:v4];
    v6 = [v5 endOfStreamReached];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (MOVStreamReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end