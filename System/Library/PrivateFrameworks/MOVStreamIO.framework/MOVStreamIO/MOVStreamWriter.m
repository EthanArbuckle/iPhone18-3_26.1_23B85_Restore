@interface MOVStreamWriter
+ (id)getMOVStreamIOMetadataItem;
+ (id)getTimeRangeMetadataKeyHintMetadataItem:(id)a3 error:(id *)a4;
+ (unsigned)getPixelFormatFromStreamData:(StreamRecordingData *)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeWithSeconds:(SEL)a3;
- (BOOL)activateNewState:(id)a3 byEvent:(id)a4;
- (BOOL)checkIfFifoAreEmpty;
- (BOOL)enableAVEHighPerformanceProfile;
- (BOOL)encoder:(id)a3 configureSessionOverride:(OpaqueVTCompressionSession *)a4 streamId:(id)a5;
- (BOOL)isCustomTrackMetadataCompatibleObject:(id)a3;
- (BOOL)isReadyForMoreDataForStreamId:(id)a3 fromMap:(void *)a4;
- (BOOL)marksOutputTracksAsEnabledForStream:()basic_string<char fromMap:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (BOOL)multiThreadWritingEnabled;
- (BOOL)relateStream:(id)a3 toStream:(id)a4 relationSpecifier:(id)a5 error:(id *)a6;
- (BOOL)setExpectedFrameRate:(double)a3;
- (BOOL)setMediaTimeScale:(int)a3 forMetadataStream:(id)a4 error:(id *)a5;
- (BOOL)setMediaTimeScale:(int)a3 forStream:(id)a4 error:(id *)a5;
- (BOOL)setMultiThreadWritingEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setMultiThreadWritingThreadsCount:(unint64_t)a3 error:(id *)a4;
- (BOOL)setRealTimeCapture:(BOOL)a3;
- (BOOL)setShouldOptimizeForNetworkUse:(BOOL)a3;
- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4 error:(id *)a5;
- (BOOL)setTrackMetadata:(id)a3 forStream:(id)a4 error:(id *)a5;
- (BOOL)setTrackMetadataItems:(id)a3 forStream:(id)a4 error:(id *)a5;
- (BOOL)setVideoTransform:(CGAffineTransform *)a3;
- (BOOL)setVideoTransformFromOrientation:(int)a3;
- (BOOL)setWritingThreadPriority:(double)a3 error:(id *)a4;
- (BOOL)startSessionWithFallbackSampleTime:(id *)a3 streamId:(id)a4 mediaType:(int64_t)a5 writerDelegate:(id)a6 delegateCallbackQueue:(id)a7 error:(id *)a8;
- (BOOL)writeVideoFrameStreamAttachmentsData:(id)a3 toMetadataAdaptor:(id)a4 ofStream:(id)a5 signpost:(unint64_t)a6;
- (CGAffineTransform)getVideoTransformForStream:(SEL)a3;
- (MIOMovieMetadataUtility)movieMetadataUtility;
- (MOVStreamCustomEncoderConfigDelegate)customEncoderConfigDelegate;
- (MOVStreamWriter)initWithURL:(id)a3 andExpectedFrameRate:(double)a4;
- (MOVStreamWriterDelegate)delegate;
- (double)finishingTimeout;
- (double)getExpectedFrameRateForStream:(id)a3;
- (double)writingThreadPriority;
- (id).cxx_construct;
- (id)createRelatedToStreamMetadata:(id)a3;
- (id)createRelationSpecifierMetadata:(id)a3;
- (id)customMetadataTrackMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)customTrackMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)encoder:(id)a3 overrideVideoEncoderSpecificationForStreamId:(id)a4;
- (id)getAudioMetadataForBuffer:(opaqueCMSampleBuffer *)a3;
- (id)getLegacyTrackEncodedPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)getLegacyTrackInputPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)getLegacyTrackMetadataForAttachmentsSerializationMode:(id)a3 fromMap:(void *)a4;
- (id)getLegacyTrackMetadataForStream:(id)a3;
- (id)getMetadataGroupForBuffer:(__CVBuffer *)a3 stream:(id)a4 presentationTime:(id *)a5 serializationMode:(int)a6;
- (id)getTrackEncodedPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)getTrackInputPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)getTrackMIOStreamEncoderTypeMetadataForStream:(id)a3 fromMap:(void *)a4;
- (id)getTrackMetadataForAttachmentsSerializationMode:(id)a3 fromMap:(void *)a4;
- (id)getTrackMetadataForExactBytesPerRow:(id)a3 fromMap:(void *)a4 error:(id *)a5;
- (id)getTrackMetadataForRawBayerRearrangeType:(id)a3 fromMap:(void *)a4;
- (id)getTrackMetadataForStream:(id)a3;
- (id)getTrackMetadataForTimeRangeMetadata:(id)a3 fromMap:(void *)a4;
- (id)getTrackMetadataForTrackTypeInfo:(id)a3 fromMap:(void *)a4;
- (id)startWritingThreadForMetadata;
- (id)startWritingThreadForNonMetadataOnlyThreadId:(unsigned __int8)a3;
- (int)attachmentSerializationModeForStream:()basic_string<char withDefaultMode:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (int)attachmentSerializationModeForStream:()basic_string<char withDefaultMode:()std:(std::allocator<char>> *)a3 :char_traits<char> fromMap:;
- (int)encoderTypeForStream:(id)a3;
- (int)getCountByPriorityForFifo:(unint64_t)a3 capacity:(unint64_t)a4;
- (int64_t)status;
- (opaqueCMFormatDescription)createMetadataFormatDescription:(id)a3;
- (unint64_t)fifoBufferSizeForStream:(id)a3;
- (unint64_t)writingBufferCapacityForAudioStream:(id)a3;
- (unint64_t)writingBufferCapacityForMetadataStream:(id)a3;
- (unint64_t)writingBufferCapacityForStream:(id)a3;
- (unint64_t)writingBufferUsageForAudioStream:(id)a3;
- (unint64_t)writingBufferUsageForMetadataStream:(id)a3;
- (unint64_t)writingBufferUsageForStream:(id)a3;
- (unint64_t)writingThreadsCount;
- (unsigned)encoder:(id)a3 codecTypeOverrideForstreamId:(id)a4;
- (unsigned)getPixelFormatForStream:(id)a3 fromMap:(void *)a4;
- (void)addAudioTrackForStreamWithIdentifier:(id)a3 audioFormat:(id)a4 additionalSettings:(id)a5;
- (void)addIsReadyObservers;
- (void)addMetadataTrack:(id)a3 copyData:(BOOL)a4;
- (void)addMetadataTrack:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4;
- (void)addMetadataTrackAssociatedWith:(id)a3 withIdentifier:(id)a4 withFormatDescription:(opaqueCMFormatDescription *)a5;
- (void)addTimeRangeMetadataTrack:(id)a3;
- (void)addTrackForStreamWithIdentifier:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 recordingConfiguration:(id)a5;
- (void)appendAudioBuffer:(opaqueCMSampleBuffer *)a3 forStream:(id)a4;
- (void)appendMetadata:(id)a3 associatedWith:(id)a4 toStream:(id)a5;
- (void)appendMetadata:(id)a3 withTimeStamp:(id *)a4 toStream:(id)a5;
- (void)appendPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 toStreamId:(id)a5;
- (void)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 attachments:(id)a4 streamId:(id)a5;
- (void)appendTimeCode:(CVSMPTETime *)a3 rangeStart:(unint64_t)a4 rangeEnd:(unint64_t)a5 withTimeStamp:(id *)a6 toStream:(id)a7;
- (void)appendTimeCode:(CVSMPTETime *)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 withTimeStamp:(id *)a6 toStream:(id)a7;
- (void)appendTimeMetadataGroup:(id)a3 toStream:(id)a4;
- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 attachmentMetadata:(id)a4 streamId:(id)a5;
- (void)asyncWriteAssociatedMetadata:(id)a3 metadataKey:()basic_string<char associatedStreamKey:()std:(std::allocator<char>> *)a4 :char_traits<char>;
- (void)cancelRecording;
- (void)cancelTimeoutBlock;
- (void)checkForFinishing;
- (void)clearAllFifoQueues;
- (void)closeEncodersAfterFailure;
- (void)consumeMetadatOfMetadataStream:(id)a3;
- (void)consumeSamplesOfVideoAudioStream:(id)a3;
- (void)dealloc;
- (void)deleteFileOnCancel;
- (void)deleteMOVFile;
- (void)encoder:(id)a3 encodedSampleBuffer:(opaqueCMSampleBuffer *)a4 metadata:(id)a5 presentationTime:(id *)a6 streamId:(id)a7;
- (void)encoder:(id)a3 encodingFailedForStream:(id)a4;
- (void)executePrepareToRecordWithMovieMetadata:(id)a3;
- (void)finishAVWriter;
- (void)finishAndDrainFifoFirst;
- (void)finishRecording;
- (void)forceFinishRecording;
- (void)informDelegateAboutError:(id)a3;
- (void)informDelegateAboutFinishingTimeout;
- (void)informDelegateAboutIsReady:(BOOL)a3 forStream:(id)a4;
- (void)informDelegateAboutMediaWrittenForStream:(id)a3 mediaType:(int64_t)a4;
- (void)logFifoUsage;
- (void)newSampleReady:(opaqueCMSampleBuffer *)a3 metadata:(id)a4 presentationTime:(id *)a5 streamKey:()basic_string<char streamId:()std:(std::allocator<char>> *)a6 :char_traits<char> isAudioSample:;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareToRecordWithMovieMetadata:(id)a3;
- (void)processCancelRecording;
- (void)processFinishRecording;
- (void)processForceFinishRecording;
- (void)queueMetadataGroup:(id)a3 stream:(id)a4;
- (void)removeIsReadyObservers;
- (void)resetTimeoutRefTime;
- (void)resubmitTimeoutBlock;
- (void)setDefaultAudioWritingBufferCapacity:(unint64_t)a3;
- (void)setDefaultMetadataWritingBufferCapacity:(unint64_t)a3;
- (void)setDefaultWritingBufferCapacity:(unint64_t)a3;
- (void)setDelegate:(id)a3 callbackQueue:(id)a4;
- (void)setFifoBufferCapacity:(unint64_t)a3;
- (void)setFinishingTimeout:(double)a3;
- (void)setMultiplexWritingDisabled:(BOOL)a3;
- (void)setWritingBufferCapacity:(unint64_t)a3 forAudioStream:(id)a4;
- (void)setWritingBufferCapacity:(unint64_t)a3 forMetadataStream:(id)a4;
- (void)setWritingBufferCapacity:(unint64_t)a3 forStream:(id)a4;
- (void)setupAssetWriterStreamInputsWithError:(id *)a3;
- (void)setupAssociatedMetadataInputsWithError:(id *)a3;
- (void)setupMetadataInputsWithError:(id *)a3;
- (void)simulateFailure;
- (void)startFinishingTimeoutTimer;
- (void)startWritingThread;
- (void)triggerWritingThread;
- (void)writeMetadata:(id)a3 forStreamId:(id)a4;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 andMetadata:(id)a4 forStreamId:(id)a5 signpost:(unint64_t)a6;
- (void)writerStatusChanged:(int64_t)a3 writerDelegate:(id)a4 delegateCallbackQueue:(id)a5;
- (void)writingSessionDidStartAtTime:(id *)a3 streamId:(id)a4 mediaType:(int64_t)a5 writerDelegate:(id)a6 delegateCallbackQueue:(id)a7;
@end

@implementation MOVStreamWriter

- (void)writerStatusChanged:(int64_t)a3 writerDelegate:(id)a4 delegateCallbackQueue:(id)a5
{
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MOVStreamWriter_Delegate__writerStatusChanged_writerDelegate_delegateCallbackQueue___block_invoke;
  block[3] = &unk_279847E18;
  v11 = v8;
  v12 = self;
  v13 = a3;
  v9 = v8;
  dispatch_async(a5, block);
}

void __86__MOVStreamWriter_Delegate__writerStatusChanged_writerDelegate_delegateCallbackQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) streamWriter:*(a1 + 40) changedStatusTo:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 32) streamWriterDidCancelRecording:*(a1 + 40)];
        }
      }

      else if (v3 == 8 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v4 = *(a1 + 32);
        v5 = [*(a1 + 40) criticalError];
        [v4 streamWriterDidFailWithError:v5];
      }
    }

    else if (v3 == 3)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 32) streamWriterDidFinishPreparing];
      }
    }

    else if (v3 == 5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(a1 + 32) streamWriterDidFinishRecording];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)writingSessionDidStartAtTime:(id *)a3 streamId:(id)a4 mediaType:(int64_t)a5 writerDelegate:(id)a6 delegateCallbackQueue:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__MOVStreamWriter_Delegate__writingSessionDidStartAtTime_streamId_mediaType_writerDelegate_delegateCallbackQueue___block_invoke;
    block[3] = &unk_279847E40;
    v16 = v13;
    v17 = self;
    v20 = *&a3->var0;
    var3 = a3->var3;
    v18 = v12;
    v19 = a5;
    dispatch_async(v14, block);
  }
}

void __114__MOVStreamWriter_Delegate__writingSessionDidStartAtTime_streamId_mediaType_writerDelegate_delegateCallbackQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  [v3 streamWriter:v4 writingSessionDidStartAtTime:&v7 stream:v5 mediaType:v6];
  objc_autoreleasePoolPop(v2);
}

- (MOVStreamWriter)initWithURL:(id)a3 andExpectedFrameRate:(double)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    +[MIOLog recheckDebugEnabled];
    v35 = 0;
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9 isDirectory:&v35];
    v11 = v35;

    if ((v10 & v11) != 0)
    {
      v33 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Target path is an existing directory." userInfo:0];
      objc_exception_throw(v33);
    }

    v34.receiver = self;
    v34.super_class = MOVStreamWriter;
    v12 = [(MOVStreamWriter *)&v34 init];
    if (v12)
    {
      if (+[MIOLog debugEnabled])
      {
        v13 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v7 path];
          *buf = 138543362;
          *&buf[4] = v14;
          _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_DEBUG, "MOVStreamWriter init with URL %{public}@", buf, 0xCu);
        }
      }

      [v12 setLegacyKeysMode:1];
      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
      v16 = dispatch_queue_create("com.apple.streamwriter.writing", v15);
      v17 = *(v12 + 2);
      *(v12 + 2) = v16;

      v18 = dispatch_queue_create("com.apple.streamwriter.processing", 0);
      v19 = *(v12 + 3);
      *(v12 + 3) = v18;

      v20 = dispatch_semaphore_create(0);
      v21 = *(v12 + 4);
      *(v12 + 4) = v20;

      v22 = dispatch_semaphore_create(0);
      v23 = *(v12 + 5);
      *(v12 + 5) = v22;

      objc_storeStrong(v12 + 11, a3);
      objc_storeWeak(v12 + 65, 0);
      *(v12 + 13) = a4;
      v24 = MEMORY[0x277CBF2C0];
      v25 = *(MEMORY[0x277CBF2C0] + 16);
      *(v12 + 120) = *MEMORY[0x277CBF2C0];
      *(v12 + 56) = 1;
      *(v12 + 136) = v25;
      *(v12 + 152) = *(v24 + 32);
      *(v12 + 49) = 10;
      *(v12 + 10) = 0x404E000000000000;
      *(v12 + 122) = 16800;
      *(v12 + 25) = xmmword_25792B570;
      *(v12 + 123) = 0;
      *(v12 + 22) = 0x3FF0000000000000;
      v12[376] = 0;
      [v12 setWriteThreadCount:0];
      v26 = objc_opt_new();
      [v12 activateNewState:v26 byEvent:@"init"];

      v27 = MEMORY[0x277CC0890];
      *buf = *MEMORY[0x277CC0890];
      v37 = *(MEMORY[0x277CC0890] + 16);
      [v12 setSessionStartTime:buf];
      *buf = *v27;
      v37 = *(v27 + 16);
      [v12 setMovieFragmentInterval:buf];
      [v12 setInProcessRecording:0];
      v28 = *(v12 + 59);
      *(v12 + 59) = 0;

      v29 = os_log_create("com.apple.movstreamwriter.writeravf", "PointsOfInterest");
      v30 = *(v12 + 57);
      *(v12 + 57) = v29;

      *(v12 + 58) = os_signpost_id_generate(*(v12 + 57));
      v12[64] = 0;
      *(v12 + 9) = 3;
    }

    self = v12;
    v31 = self;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)dealloc
{
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "MOVStreamIO MOVStreamWriter dealloc", buf, 2u);
  }

  [(MOVStreamWriter *)self removeIsReadyObservers];
  [(MOVStreamWriter *)self closeEncodersAfterFailure];
  [(MOVStreamWriter *)self clearAllFifoQueues];
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    do
    {
      timeoutBlock = begin_node->_timeoutBlock;
      if (timeoutBlock)
      {
        CFRelease(timeoutBlock);
      }

      m_delegateCallbackQueue = begin_node->m_delegateCallbackQueue;
      if (m_delegateCallbackQueue)
      {
        do
        {
          m_writingQueue = m_delegateCallbackQueue;
          m_delegateCallbackQueue = *m_delegateCallbackQueue;
        }

        while (m_delegateCallbackQueue);
      }

      else
      {
        do
        {
          m_writingQueue = begin_node->m_writingQueue;
          v9 = *m_writingQueue == begin_node;
          begin_node = m_writingQueue;
        }

        while (!v9);
      }

      begin_node = m_writingQueue;
    }

    while (m_writingQueue != p_end_node);
  }

  self->m_streamDataMap.__tree_.__end_node_.__left_ = 0;
  self->m_streamDataMap.__tree_.__size_ = 0;
  self->m_streamDataMap.__tree_.__begin_node_ = p_end_node;
  v10 = self->m_metadataDataMap.__tree_.__begin_node_;
  v11 = &self->m_metadataDataMap.__tree_.__end_node_;
  if (v10 != &self->m_metadataDataMap.__tree_.__end_node_)
  {
    do
    {
      multiThreadWritingThreadsCount = v10->_multiThreadWritingThreadsCount;
      if (multiThreadWritingThreadsCount)
      {
        CFRelease(multiThreadWritingThreadsCount);
      }

      v13 = v10->m_delegateCallbackQueue;
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v10->m_writingQueue;
          v9 = *v14 == v10;
          v10 = v14;
        }

        while (!v9);
      }

      v10 = v14;
    }

    while (v14 != v11);
  }

  self->m_metadataDataMap.__tree_.__end_node_.__left_ = 0;
  self->m_metadataDataMap.__tree_.__size_ = 0;
  self->m_metadataDataMap.__tree_.__begin_node_ = v11;
  v15 = self->m_associatedMetadataDataMap.__tree_.__begin_node_;
  v16 = &self->m_associatedMetadataDataMap.__tree_.__end_node_;
  if (v15 != &self->m_associatedMetadataDataMap.__tree_.__end_node_)
  {
    do
    {
      v17 = v15->_timeoutBlock;
      if (v17 != &v15->_multiThreadWritingEnabled)
      {
        do
        {
          v18 = *(v17 + 9);
          if (v18)
          {
            CFRelease(v18);
          }

          v19 = *(v17 + 1);
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = *(v17 + 2);
              v9 = *v20 == v17;
              v17 = v20;
            }

            while (!v9);
          }

          v17 = v20;
        }

        while (v20 != &v15->_multiThreadWritingEnabled);
      }

      v21 = v15->m_delegateCallbackQueue;
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v15->m_writingQueue;
          v9 = *v22 == v15;
          v15 = v22;
        }

        while (!v9);
      }

      v15 = v22;
    }

    while (v22 != v16);
  }

  self->m_associatedMetadataDataMap.__tree_.__end_node_.__left_ = 0;
  self->m_associatedMetadataDataMap.__tree_.__size_ = 0;
  self->m_associatedMetadataDataMap.__tree_.__begin_node_ = v16;
  v23.receiver = self;
  v23.super_class = MOVStreamWriter;
  [(MOVStreamWriter *)&v23 dealloc];
}

- (void)setMultiplexWritingDisabled:(BOOL)a3
{
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "Setting multiplexWritingDisabled is not supported anymore.", v4, 2u);
  }
}

- (MIOMovieMetadataUtility)movieMetadataUtility
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(MOVStreamWriter *)self status]== 5 && !self->_movieMetadataUtility)
  {
    v3 = [MIOMovieMetadataUtility alloc];
    v4 = [(AVAssetWriter *)self->m_assetWriter outputURL];
    v11 = 0;
    v5 = [(MIOMovieMetadataUtility *)v3 initWithURL:v4 error:&v11];
    v6 = v11;
    movieMetadataUtility = self->_movieMetadataUtility;
    self->_movieMetadataUtility = v5;

    if (!self->_movieMetadataUtility)
    {
      v8 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "Eror creating movieMetadataUtility: %{public}@.", buf, 0xCu);
      }
    }
  }

  v9 = self->_movieMetadataUtility;

  return v9;
}

- (BOOL)setMediaTimeScale:(int)a3 forStream:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    {
      v10 = [(MOVStreamWriter *)self isAudioStream:v9];
      if (v10)
      {
        if (a5)
        {
          *a5 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Cannot set baseMediaTimeScale for audio stream." code:7];
        }
      }

      else
      {
        *(v9 + 208) = a3;
      }

      v11 = !v10;
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Unknown stream id." code:7];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Cannot set baseMediaTimeScale in current writer state." code:17];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)setMediaTimeScale:(int)a3 forMetadataStream:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    v10 = v9 != 0;
    if (v9)
    {
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Unknown metadata stream id." code:7];
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Cannot set baseMediaTimeScale in current writer state." code:17];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeWithSeconds:(SEL)a3
{
  v6 = [(MOVStreamWriter *)self baseMediaTimeScale];

  return CMTimeMakeWithSeconds(retstr, a4, v6);
}

- (void)setDefaultWritingBufferCapacity:(unint64_t)a3
{
  self->_defaultWritingBufferCapacity = a3;
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    do
    {
      if (![(MOVStreamWriter *)self isAudioStream:&begin_node[7]])
      {
        begin_node[15].__left_ = self->_defaultWritingBufferCapacity;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->__left_ == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != p_end_node);
  }
}

- (void)setDefaultAudioWritingBufferCapacity:(unint64_t)a3
{
  self->_defaultAudioWritingBufferCapacity = a3;
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    do
    {
      if ([(MOVStreamWriter *)self isAudioStream:&begin_node[7]])
      {
        begin_node[15].__left_ = self->_defaultAudioWritingBufferCapacity;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->__left_ == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != p_end_node);
  }
}

- (void)setDefaultMetadataWritingBufferCapacity:(unint64_t)a3
{
  self->_defaultMetadataWritingBufferCapacity = a3;
  begin_node = self->m_metadataDataMap.__tree_.__begin_node_;
  if (begin_node != &self->m_metadataDataMap.__tree_.__end_node_)
  {
    do
    {
      begin_node->m_assetWriter = a3;
      m_delegateCallbackQueue = begin_node->m_delegateCallbackQueue;
      if (m_delegateCallbackQueue)
      {
        do
        {
          m_writingQueue = m_delegateCallbackQueue;
          m_delegateCallbackQueue = *m_delegateCallbackQueue;
        }

        while (m_delegateCallbackQueue);
      }

      else
      {
        do
        {
          m_writingQueue = begin_node->m_writingQueue;
          v6 = m_writingQueue->super.isa == begin_node;
          begin_node = m_writingQueue;
        }

        while (!v6);
      }

      begin_node = m_writingQueue;
    }

    while (m_writingQueue != &self->m_metadataDataMap.__tree_.__end_node_);
  }
}

- (void)setWritingBufferCapacity:(unint64_t)a3 forStream:(id)a4
{
  v6 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if ([(MOVStreamWriter *)self isAudioStream:v7])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is an audio stream userInfo:{use [MOVStreamWriter setWritingBufferCapacity:forAudioStream:]", 0}];
    objc_exception_throw(v9);
  }

  *(v7 + 64) = a3;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)setWritingBufferCapacity:(unint64_t)a3 forAudioStream:(id)a4
{
  v6 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if (![(MOVStreamWriter *)self isAudioStream:v7])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is a video stream userInfo:{use [MOVStreamWriter setWritingBufferCapacity:forStream:]", 0}];
    objc_exception_throw(v9);
  }

  *(v7 + 64) = a3;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)setWritingBufferCapacity:(unint64_t)a3 forMetadataStream:(id)a4
{
  v6 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v7);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (unint64_t)writingBufferCapacityForStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if ([(MOVStreamWriter *)self isAudioStream:v5])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is an audio stream userInfo:{use [MOVStreamWriter writingBufferCapacityForAudioStream:]", 0}];
    objc_exception_throw(v9);
  }

  v6 = *(v5 + 64);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (unint64_t)writingBufferCapacityForAudioStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if (![(MOVStreamWriter *)self isAudioStream:v5])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is not an audio stream userInfo:{use [MOVStreamWriter writingBufferCapacityForStream:]", 0}];
    objc_exception_throw(v9);
  }

  v6 = *(v5 + 64);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (unint64_t)writingBufferCapacityForMetadataStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v7);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (unint64_t)writingBufferUsageForStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if ([(MOVStreamWriter *)self isAudioStream:v5])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is an audio stream userInfo:{use [MOVStreamWriter writingBufferUsageForAudioStream:]", 0}];
    objc_exception_throw(v9);
  }

  v6 = [*(v5 + 56) count];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (unint64_t)writingBufferUsageForAudioStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v8);
  }

  if (![(MOVStreamWriter *)self isAudioStream:v5])
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Stream is not an audio stream userInfo:{use [MOVStreamWriter writingBufferUsageForStream:]", 0}];
    objc_exception_throw(v9);
  }

  v6 = [*(v5 + 56) count];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (unint64_t)writingBufferUsageForMetadataStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown stream id." userInfo:0];
    objc_exception_throw(v7);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (BOOL)activateNewState:(id)a3 byEvent:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7 && self->_state != v7)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = [v9 stringWithFormat:@"State Change: %@ - (%@) -> %@", v10, v8, objc_opt_class()];
    v12 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    v13 = [(MOVStreamWriterState *)self->_state writerStatus];
    objc_storeStrong(&self->_state, a3);
    [(MOVStreamWriter *)self setCanWriteData:[(MOVStreamWriterState *)self->_state canWriteData:self]];
    v14 = [(MOVStreamWriterState *)self->_state writerStatus]== 6 || [(MOVStreamWriterState *)self->_state writerStatus]== 7;
    [(MOVStreamWriter *)self setIsOrWasCanceled:v14];
    v15 = [(MOVStreamWriterState *)self->_state writerStatus];
    [(MOVStreamWriterState *)self->_state activateWithContext:self];
    if (v13 != v15)
    {
      [(MOVStreamWriter *)self willChangeValueForKey:@"status"];
      [(MOVStreamWriter *)self didChangeValueForKey:@"status"];
      v16 = [(MOVStreamWriter *)self delegate];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [(MOVStreamWriter *)self delegate];
        [(MOVStreamWriter *)self writerStatusChanged:v15 writerDelegate:v18 delegateCallbackQueue:self->m_delegateCallbackQueue];
      }
    }
  }

  return v7 != 0;
}

- (void)deleteMOVFile
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  m_writeURL = self->m_writeURL;
  v6 = 0;
  [v3 removeItemAtURL:m_writeURL error:&v6];
  v5 = v6;

  if (v5)
  {
    [(MOVStreamWriter *)self informDelegateAboutError:v5];
  }
}

- (int64_t)status
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  if (state)
  {
    v4 = [(MOVStreamWriterState *)state writerStatus];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)setDelegate:(id)a3 callbackQueue:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && !v6)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Caller must provide a delegateCallbackQueue" userInfo:0];
    objc_exception_throw(v9);
  }

  v7 = self;
  objc_sync_enter(v7);
  [(MOVStreamWriter *)v7 setDelegate:v10];
  m_delegateCallbackQueue = v7->m_delegateCallbackQueue;
  v7->m_delegateCallbackQueue = v6;

  objc_sync_exit(v7);
}

- (BOOL)enableAVEHighPerformanceProfile
{
  v3 = [(MOVStreamWriterState *)self->_state canConfigure:self];
  if (v3)
  {
    self->m_enableAVEHighPerformanceProfile = 1;
  }

  return v3;
}

- (BOOL)setExpectedFrameRate:(double)a3
{
  if (self->m_expectedFrameRate >= 0.0)
  {
    v4 = [(MOVStreamWriterState *)self->_state canConfigure:self];
    if (v4)
    {
      self->m_expectedFrameRate = a3;
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)setVideoTransform:(CGAffineTransform *)a3
{
  v5 = [(MOVStreamWriterState *)self->_state canConfigure:self];
  if (v5)
  {
    v6 = *&a3->a;
    v7 = *&a3->c;
    *&self->m_videoTransform.tx = *&a3->tx;
    *&self->m_videoTransform.c = v7;
    *&self->m_videoTransform.a = v6;
  }

  return v5;
}

- (BOOL)relateStream:(id)a3 toStream:(id)a4 relationSpecifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, [v10 UTF8String]);
    p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream %@", v10];
      [MEMORY[0x277CCA9B8] populateStreamError:a6 message:v20 code:26];

      v16 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
      v15 = p_end_node == v14;
      v16 = p_end_node != v14;
      if (v15)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream %@", v11];
        [MEMORY[0x277CCA9B8] populateStreamError:a6 message:v19 code:26];
      }

      else
      {
        objc_storeStrong((v17 + 104), a4);
        v18 = v12;
        v19 = *(v17 + 112);
        *(v17 + 112) = v18;
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)setRealTimeCapture:(BOOL)a3
{
  v5 = [(MOVStreamWriterState *)self->_state canConfigure:self];
  if (v5)
  {
    self->m_realtime = a3;
  }

  return v5;
}

- (BOOL)setShouldOptimizeForNetworkUse:(BOOL)a3
{
  v5 = [(MOVStreamWriterState *)self->_state canConfigure:self];
  if (v5)
  {
    self->m_shouldOptimizeForNetworkUse = a3;
  }

  return v5;
}

- (void)logFifoUsage
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v2, OS_LOG_TYPE_INFO, "[FIFO] Usage:", buf, 2u);
  }

  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    do
    {
      v4 = begin_node + 4;
      if (SHIBYTE(begin_node[6].__left_) < 0)
      {
        v4 = v4->__left_;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
      v6 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [begin_node[32].__left_ fifoItemCount];
        v8 = [begin_node[9].__left_ isReadyForMoreMediaData];
        v9 = [begin_node[10].__left_ isReadyForMoreMediaData];
        *buf = 138544130;
        v23 = v5;
        v24 = 2048;
        v25 = v7;
        v26 = 1024;
        v27 = v8;
        v28 = 1024;
        v29 = v9;
        _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_INFO, "  [FIFO] %{public}@ = %lu ready: %d %d", buf, 0x22u);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v11 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v11 = begin_node[2].__left_;
          v12 = v11->super.isa == begin_node;
          begin_node = v11;
        }

        while (!v12);
      }

      begin_node = v11;
    }

    while (v11 != &self->m_streamDataMap.__tree_.__end_node_);
  }

  v13 = self->m_metadataDataMap.__tree_.__begin_node_;
  if (v13 != &self->m_metadataDataMap.__tree_.__end_node_)
  {
    do
    {
      v14 = v13 + 4;
      if (SHIBYTE(v13[6].__left_) < 0)
      {
        v14 = v14->__left_;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      v16 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v13[15].__left_ fifoItemCount];
        v18 = [v13[7].__left_ isReadyForMoreMediaData];
        *buf = 138543874;
        v23 = v15;
        v24 = 2048;
        v25 = v17;
        v26 = 1024;
        v27 = v18;
        _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_INFO, "  [FIFO] %{public}@ = %lu (metadata)  ready: %d", buf, 0x1Cu);
      }

      isa = v13[1].__left_;
      if (isa)
      {
        do
        {
          v20 = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v20 = v13[2].__left_;
          v12 = v20->super.isa == v13;
          v13 = v20;
        }

        while (!v12);
      }

      v13 = v20;
    }

    while (v20 != &self->m_metadataDataMap.__tree_.__end_node_);
  }
}

- (BOOL)checkIfFifoAreEmpty
{
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node == &self->m_streamDataMap.__tree_.__end_node_)
  {
LABEL_9:
    v8 = self->m_metadataDataMap.__tree_.__begin_node_;
    v9 = &self->m_metadataDataMap.__tree_.__end_node_;
    if (v8 == v9)
    {
      return 1;
    }

    else
    {
      do
      {
        v10 = [v8[15].__left_ fifoItemCount];
        result = v10 == 0;
        if (v10)
        {
          break;
        }

        left = v8[1].__left_;
        if (left)
        {
          do
          {
            v13 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v13 = v8[2].__left_;
            v7 = v13->__left_ == v8;
            v8 = v13;
          }

          while (!v7);
        }

        v8 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    while (![begin_node->m_orderedMetadataStreamNames.__begin_ fifoItemCount])
    {
      m_delegateCallbackQueue = begin_node->m_delegateCallbackQueue;
      if (m_delegateCallbackQueue)
      {
        do
        {
          m_writingQueue = m_delegateCallbackQueue;
          m_delegateCallbackQueue = *m_delegateCallbackQueue;
        }

        while (m_delegateCallbackQueue);
      }

      else
      {
        do
        {
          m_writingQueue = begin_node->m_writingQueue;
          v7 = *m_writingQueue == begin_node;
          begin_node = m_writingQueue;
        }

        while (!v7);
      }

      begin_node = m_writingQueue;
      if (m_writingQueue == p_end_node)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

- (void)addMetadataTrack:(id)a3 copyData:(BOOL)a4
{
  v6 = a3;
  [(MOVStreamWriter *)self addMetadataTrack:v6 formatDescription:0];
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addTimeRangeMetadataTrack:(id)a3
{
  v4 = a3;
  begin_node = self->m_metadataDataMap.__tree_.__begin_node_;
  if (begin_node != &self->m_metadataDataMap.__tree_.__end_node_)
  {
    do
    {
      if (begin_node->m_shouldOptimizeForNetworkUse)
      {
        v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot add two time range metadata tracks to the same writer" userInfo:0];
        objc_exception_throw(v10);
      }

      m_delegateCallbackQueue = begin_node->m_delegateCallbackQueue;
      if (m_delegateCallbackQueue)
      {
        do
        {
          m_writingQueue = m_delegateCallbackQueue;
          m_delegateCallbackQueue = *m_delegateCallbackQueue;
        }

        while (m_delegateCallbackQueue);
      }

      else
      {
        do
        {
          m_writingQueue = begin_node->m_writingQueue;
          v8 = m_writingQueue->super.isa == begin_node;
          begin_node = m_writingQueue;
        }

        while (!v8);
      }

      begin_node = m_writingQueue;
    }

    while (m_writingQueue != &self->m_metadataDataMap.__tree_.__end_node_);
  }

  v9 = [MEMORY[0x277CE6520] createMIOTimeRangeMetadataStreamFormatDescription];
  if (!v9)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot create format description for time range metadata track." userInfo:0];
    objc_exception_throw(v11);
  }

  [(MOVStreamWriter *)self addMetadataTrack:v4 formatDescription:v9];
  CFRelease(v9);
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addMetadataTrack:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Invalid metadata streamId 'nil'." userInfo:0];
    objc_exception_throw(v18);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  v8 = self;
  objc_sync_enter(v8);
  if (([(MOVStreamWriterState *)v8->_state canConfigure:v8]& 1) == 0)
  {
    v19 = @"Cannot add tracks while not idle";
    goto LABEL_12;
  }

  {
    v19 = @"Cannot add two metadata tracks with the same name";
LABEL_12:
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  v9 = objc_opt_new();
  v10 = v9;
  v11 = [(MOVStreamWriter *)v8 defaultMetadataWritingBufferCapacity];
  if (a4)
  {
    CFRetain(a4);
  }

  v21 = objc_opt_new();
  v13 = *v12;
  *v12 = 0;

  v14 = *(v12 + 8);
  *(v12 + 8) = 0;

  *(v12 + 24) = 0;
  *(v12 + 16) = a4;
  objc_storeStrong((v12 + 32), v9);
  v15 = *(v12 + 48);
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;

  *(v12 + 56) = 1;
  objc_storeStrong((v12 + 64), v21);
  *(v12 + 72) = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v8->m_orderedMetadataStreamNames, __p);
  v24 = __p;
  v16 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v8->m_lastPtsForMetadataStream, __p);
  v17 = MEMORY[0x277CC0890];
  *(v16 + 56) = *MEMORY[0x277CC0890];
  *(v16 + 72) = *(v17 + 16);

  objc_sync_exit(v8);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addMetadataTrackAssociatedWith:(id)a3 withIdentifier:(id)a4 withFormatDescription:(opaqueCMFormatDescription *)a5
{
  v8 = a3;
  v9 = a4;
  std::string::basic_string[abi:ne200100]<0>(v27, [v8 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) == 0)
  {
    v19 = @"Cannot add tracks while not idle";
    goto LABEL_15;
  }

  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find stream with identifier %@", v8];
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v20);
  }

  {
    {
      v19 = @"Cannot add two metadata tracks with the same name";
LABEL_15:
      v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v19 userInfo:0];
      objc_exception_throw(v21);
    }
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v22 = [(MOVStreamWriter *)self defaultMetadataWritingBufferCapacity];
  LOBYTE(v23) = 1;
  v24 = objc_opt_new();
  v13 = *v12;
  *v12 = 0;

  v14 = *(v12 + 8);
  *(v12 + 8) = 0;

  *(v12 + 24) = 0;
  *(v12 + 16) = a5;
  v15 = *(v12 + 32);
  *(v12 + 32) = 0;

  v16 = *(v12 + 48);
  *(v12 + 40) = v22;
  *(v12 + 48) = 0;

  *(v12 + 56) = v23;
  v17 = *(v12 + 64);
  *(v12 + 64) = v24;
  v18 = v24;

  *(v12 + 72) = 0;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

- (void)addTrackForStreamWithIdentifier:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 recordingConfiguration:(id)a5
{
  v8 = a3;
  v9 = a5;
  v63 = v8;
  std::string::basic_string[abi:ne200100]<0>(&v84, [v8 UTF8String]);
  if (!v9 || ![v9 count])
  {
    v57 = @"recordingConfiguration cannot be null or empty";
    goto LABEL_40;
  }

  if (!a4)
  {
    v10 = [v9 valueForKey:@"StreamEncoderType"];
    v11 = [v10 intValue];

    if (v11 != 17)
    {
      v57 = @"Format description cannot be null";
LABEL_40:
      v58 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v57 userInfo:0];
      objc_exception_throw(v58);
    }
  }

  v12 = self;
  objc_sync_enter(v12);
  if (([(MOVStreamWriterState *)v12->_state canConfigure:v12]& 1) == 0)
  {
    v59 = @"Cannot add tracks while not idle";
    goto LABEL_43;
  }

  {
    v59 = @"Cannot add two tracks with the same stream name";
LABEL_43:
    v60 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v59 userInfo:0];
    objc_exception_throw(v60);
  }

  v13 = [v9 objectForKey:@"PixelBufferExactBytesPerRow"];
  v62 = v13;
  if (v13)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a4);
    if (![MOVStreamIOUtility verifyExactBytesPerRow:v13 width:Dimensions.width height:*&Dimensions >> 32 pixelFormat:CMFormatDescriptionGetMediaSubType(a4)])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Not matching kMIOPixelBufferExactBytesPerRow value %@.", v13, v13];
      v61 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v61);
    }
  }

  MediaType = CMFormatDescriptionGetMediaType(a4);
  v16 = [v9 objectForKey:@"VideoTrackTypeInfo"];

  if (!v16 && MediaType != 1936684398)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"No video track type info (MIOVideoTrackTypeInfo) specified for stream '%@'.", v8, v13];
    v18 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:v17 code:0];
  }

  v19 = [v9 objectForKey:@"BufferCacheMode"];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 intValue];
      goto LABEL_17;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Surface cache mode (MIOBufferCacheMode) is not an NSNumber value, specified for stream '%@'.", v8];
    v22 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:v21 code:0];
  }

  v20 = 0;
LABEL_17:
  v23 = [v9 objectForKey:@"EncodeAttachments"];
  if (!v23)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encode attachment keys for stream '%@' are not provided as an Array.", v63];
    if (!v28)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v24 = v23;
  if ([v24 count])
  {
    v25 = [v24 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = 0;
      goto LABEL_27;
    }

    v29 = @"Encode attachment keys for stream '%@' are not Strings.";
  }

  else
  {
    v29 = @"Encode attachment keys for stream '%@' are defined but empty.";
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:v29, v63];
LABEL_27:

  v28 = v27;
  if (v27)
  {
LABEL_28:

    v23 = 0;
    v30 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:v28 code:0];
  }

LABEL_29:

LABEL_30:
  v78 = 0;
  v81 = 0;
  *obj = 0u;
  *v67 = 0u;
  *v68 = 0u;
  *v70 = 0u;
  *v71 = 0u;
  *v72 = 0u;
  v75 = 0;
  v73 = 0;
  if (a4)
  {
    v31 = CFRetain(a4);
  }

  else
  {
    v31 = 0;
  }

  v64 = v31;
  v32 = [v9 copy];
  v33 = v67[1];
  v67[1] = v32;

  v65 = 0;
  v34 = v71[1];
  v71[1] = 0;

  objc_storeStrong(&v73, v23);
  v35 = [v9 objectForKey:@"DoNotRecordAttachments"];
  v74 = [v35 BOOLValue];

  v36 = objc_opt_new();
  v37 = v75;
  v75 = v36;

  v38 = MEMORY[0x277CC0890];
  v76 = *MEMORY[0x277CC0890];
  *&v77 = *(MEMORY[0x277CC0890] + 16);
  if (MediaType == 1936684398)
  {
    v39 = [(MOVStreamWriter *)v12 defaultAudioWritingBufferCapacity];
  }

  else
  {
    v39 = [(MOVStreamWriter *)v12 defaultWritingBufferCapacity];
  }

  v69 = v39;
  v40 = objc_opt_new();
  objc_storeStrong(&v68[1], v40);
  *(&v77 + 1) = 0;
  v41 = objc_opt_new();
  v42 = v78;
  v78 = v41;

  v80 = v20;
  v82 = 0;
  v43 = objc_opt_new();
  v44 = v81;
  v81 = v43;

  size = v12->m_streamDataMap.__tree_.__size_;
  v83 = size % [(MOVStreamWriter *)v12 writingThreadsCount];
  v46 = +[MOVStreamPreProcessorFactory defaultFactory];
  v47 = [v46 preProcessorForFormat:v64 recordingConfiguration:v9];
  v48 = v71[0];
  v71[0] = v47;

  v49 = [MOVStreamOutputSettings outputSettingsForStream:&v64 defaultFrameRate:v12->m_enableAVEHighPerformanceProfile enableAVEHighPerformanceProfile:v12->m_expectedFrameRate];
  v51 = v64;
  *(v50 + 8) = v65;
  *v50 = v51;
  objc_storeStrong((v50 + 16), obj[0]);
  objc_storeStrong((v50 + 24), obj[1]);
  objc_storeStrong((v50 + 32), v67[0]);
  objc_storeStrong((v50 + 40), v67[1]);
  objc_storeStrong((v50 + 48), v68[0]);
  objc_storeStrong((v50 + 56), v68[1]);
  *(v50 + 64) = v69;
  objc_storeStrong((v50 + 72), v70[0]);
  objc_storeStrong((v50 + 80), v70[1]);
  objc_storeStrong((v50 + 88), v71[0]);
  objc_storeStrong((v50 + 96), v71[1]);
  objc_storeStrong((v50 + 104), v72[0]);
  objc_storeStrong((v50 + 112), v72[1]);
  objc_storeStrong((v50 + 120), v73);
  *(v50 + 128) = v74;
  objc_storeStrong((v50 + 136), v75);
  v52 = v77;
  *(v50 + 144) = v76;
  *(v50 + 160) = v52;
  objc_storeStrong((v50 + 176), v78);
  v53 = v79;
  *(v50 + 192) = v80;
  *(v50 + 184) = v53;
  objc_storeStrong((v50 + 200), v81);
  v54 = v82;
  *(v50 + 212) = v83;
  *(v50 + 208) = v54;
  std::vector<std::string>::push_back[abi:ne200100](&v12->m_orderedStreamNames, &v84);
  v86 = &v84;
  v55 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v12->m_lastPtsForStream, &v84);
  *(v55 + 56) = *v38;
  *(v55 + 72) = *(v38 + 16);
  v86 = &v84;
  v56 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v12->m_lastPtsForAttachmentsStream, &v84);
  *(v56 + 56) = *v38;
  *(v56 + 72) = *(v38 + 16);

  objc_sync_exit(v12);

  if (v85 < 0)
  {
    operator delete(v84);
  }
}

- (void)addAudioTrackForStreamWithIdentifier:(id)a3 audioFormat:(id)a4 additionalSettings:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 formatDescription];
  if (!v10)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid audio format" userInfo:0];
    objc_exception_throw(v13);
  }

  v11 = +[MOVStreamIOUtility audioNoneEncoderConfig];
  v12 = [v11 mutableCopy];

  [v12 setObject:v8 forKey:@"AudioFormatObject"];
  if (v9)
  {
    [v12 setObject:v9 forKey:@"AdditionalAudioSettings"];
  }

  [(MOVStreamWriter *)self addTrackForStreamWithIdentifier:v14 formatDescription:v10 recordingConfiguration:v12];
}

- (BOOL)setTrackMetadata:(id)a3 forStream:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream %@", v9];
      [MEMORY[0x277CCA9B8] populateStreamError:a5 message:v10 code:26];
LABEL_17:
      v18 = 0;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = [v10 objectForKeyedSubscript:v14];
            if (![(MOVStreamWriter *)self isCustomTrackMetadataCompatibleObject:v15])
            {
              if (a5)
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incompatible item %@:%@.", v14, objc_opt_class(), v21];
                *a5 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v19 code:10];
              }

              goto LABEL_17;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = v10;
      v10 = *(v16 + 72);
      *(v16 + 72) = v17;
      v18 = 1;
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)setTrackMetadataItems:(id)a3 forStream:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    v11 = &self->m_streamDataMap.__tree_.__end_node_ != v10;
    if (&self->m_streamDataMap.__tree_.__end_node_ == v10)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream %@", v9];
      [MEMORY[0x277CCA9B8] populateStreamError:a5 message:v14 code:26];
    }

    else
    {
      v13 = v8;
      v14 = *(v12 + 80);
      *(v12 + 80) = v13;
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateStreamError:a5 message:@"Writer is not in MIOWriterStatusInit state." code:17];
    v11 = 0;
  }

  return v11;
}

- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream %@", v9];
      [MEMORY[0x277CCA9B8] populateStreamError:a5 message:v10 code:26];
LABEL_17:
      v18 = 0;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = [v10 objectForKeyedSubscript:v14];
            if (![(MOVStreamWriter *)self isCustomTrackMetadataCompatibleObject:v15])
            {
              if (a5)
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incompatible item %@:%@.", v14, objc_opt_class(), v21];
                *a5 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v19 code:10];
              }

              goto LABEL_17;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = v10;
      v10 = *(v16 + 48);
      *(v16 + 48) = v17;
      v18 = 1;
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)prepareToRecordWithMovieMetadata:(id)a3
{
  v4 = a3;
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Current state does not support prepareToRecord." userInfo:0];
    objc_exception_throw(v12);
  }

  v15 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NSURL *)self->m_writeURL path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v15];
  v8 = (v7 & v15);

  if (v8 == 1)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Target path is an existing directory." userInfo:0];
    objc_exception_throw(v13);
  }

  v9 = self;
  objc_sync_enter(v9);
  [(MOVStreamWriter *)v9 setMovMetadataItems:v4];
  v10 = [(MOVStreamWriterState *)self->_state prepareRecording:v9];
  v11 = [(MOVStreamWriter *)v9 activateNewState:v10 byEvent:@"prepareToRecord"];

  if (!v11)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Current state does not support prepareToRecord." userInfo:0];
    objc_exception_throw(v14);
  }

  objc_sync_exit(v9);
}

- (void)executePrepareToRecordWithMovieMetadata:(id)a3
{
  v4 = a3;
  if (+[MIOLog debugEnabled])
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_DEBUG, "Start prepareToRecordWithMovieMetadata", buf, 2u);
    }
  }

  v6 = dispatch_queue_create("prepareQueue", 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__MOVStreamWriter_executePrepareToRecordWithMovieMetadata___block_invoke;
  v8[3] = &unk_279847E68;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __59__MOVStreamWriter_executePrepareToRecordWithMovieMetadata___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(*(a1 + 32) + 88) error:0];

  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "Init av writer...", &buf, 2u);
  }

  v4 = *MEMORY[0x277CE5DA8];
  v5 = [*(*(a1 + 32) + 88) pathExtension];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqual:@"mp4"];

  if (v7)
  {
    v8 = *MEMORY[0x277CE5D98];

    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_INFO, "⚠️⚠️⚠️ WARNING [MOVStreamIO]: Selected file type is 'mp4'. Be aware that this can and will cause data loss. If you can please use 'mov'. ⚠️⚠️⚠️", &buf, 2u);
    }

    v4 = v8;
  }

  v10 = objc_alloc(MEMORY[0x277CE6460]);
  v11 = *(*(a1 + 32) + 88);
  v67 = 0;
  v12 = [v10 initWithURL:v11 fileType:v4 error:&v67];
  v13 = v67;
  v14 = *(a1 + 32);
  v15 = *(v14 + 96);
  *(v14 + 96) = v12;

  if ([*(a1 + 32) inProcessRecording])
  {
    v16 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_INFO, "AVAssetWriter set requiresInProcessOperation = YES", &buf, 2u);
    }

    [*(*(a1 + 32) + 96) setValue:MEMORY[0x277CBEC38] forKey:@"requiresInProcessOperation"];
    v17 = [*(*(a1 + 32) + 96) valueForKey:@"requiresInProcessOperation"];
    v18 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v17 intValue];
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v19;
      _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_INFO, "Check AVAssetWriter.requiresInProcessOperation is %d", &buf, 8u);
    }
  }

  [*(*(a1 + 32) + 96) setShouldOptimizeForNetworkUse:*(*(a1 + 32) + 113)];
  v20 = *(a1 + 32);
  if ((v20[113] & 1) == 0)
  {
    goto LABEL_17;
  }

  v21 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_257883000, v21, OS_LOG_TYPE_INFO, "AVAssetWriter shouldOptimizeForNetworkUse = YES", &buf, 2u);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
LABEL_17:
    [v20 movieFragmentInterval];
    if (buf.flags)
    {
      v22 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        if (v23)
        {
          [v23 movieFragmentInterval];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        Seconds = CMTimeGetSeconds(&buf);
        *v68 = 134217984;
        v69 = Seconds;
        _os_log_impl(&dword_257883000, v22, OS_LOG_TYPE_INFO, "MOVStreamWriter set movieFragmentInterval to %f", v68, 0xCu);
      }

      [*(a1 + 32) movieFragmentInterval];
      v25 = *(*(a1 + 32) + 96);
      buf = v66;
      [v25 setMovieFragmentInterval:&buf];
    }
  }

  if (!v13)
  {
    v26 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_257883000, v26, OS_LOG_TYPE_INFO, "Writer setupAssetWriterStreamInputs", &buf, 2u);
    }

    v27 = *(a1 + 32);
    v65 = 0;
    [v27 setupAssetWriterStreamInputsWithError:&v65];
    v28 = v65;
    if (!v28)
    {
      v29 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_257883000, v29, OS_LOG_TYPE_INFO, "Writer setupMetadataInputs", &buf, 2u);
      }

      v30 = *(a1 + 32);
      v64 = 0;
      [v30 setupMetadataInputsWithError:&v64];
      v28 = v64;
      if (!v28)
      {
        v31 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_257883000, v31, OS_LOG_TYPE_INFO, "Writer setupAssociatedMetadataInputs", &buf, 2u);
        }

        v32 = *(a1 + 32);
        v63 = 0;
        [v32 setupAssociatedMetadataInputsWithError:&v63];
        v28 = v63;
      }
    }

    v13 = v28;
  }

  v33 = objc_opt_new();
  v34 = +[MOVStreamWriter getMOVStreamIOMetadataItem];
  if (v34)
  {
    [v33 addObject:v34];
  }

  if (*(a1 + 40))
  {
    [v33 addObjectsFromArray:?];
  }

  v35 = [*(a1 + 32) timeRangeMetadataKeyHint];
  v36 = v35 == 0;

  if (!v36)
  {
    v37 = [*(a1 + 32) timeRangeMetadataKeyHint];
    v38 = [MOVStreamWriter getTimeRangeMetadataKeyHintMetadataItem:v37 error:0];

    if (v38)
    {
      [v33 addObject:v38];
    }
  }

  v39 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_INFO, "Writer add MOV metadata", &buf, 2u);
  }

  [*(*(a1 + 32) + 96) setMetadata:v33];
  if (!v13)
  {
    v40 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_257883000, v40, OS_LOG_TYPE_INFO, "Writer startWriting", &buf, 2u);
    }

    if ([*(*(a1 + 32) + 96) startWriting])
    {
      v41 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_257883000, v41, OS_LOG_TYPE_INFO, "Writer register KVO", &buf, 2u);
      }

      [*(a1 + 32) addIsReadyObservers];
      v13 = 0;
    }

    else
    {
      v13 = [*(*(a1 + 32) + 96) error];
    }
  }

  v42 = *(a1 + 32);
  objc_sync_enter(v42);
  v43 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_257883000, v43, OS_LOG_TYPE_INFO, "Writer transition status", &buf, 2u);
  }

  v44 = *(a1 + 32);
  v45 = v44[48];
  if (v13)
  {
    v46 = [v45 criticalErrorOccurred:v13 context:*(a1 + 32)];
    [v44 activateNewState:v46 byEvent:@"executePrepareToRecord"];
LABEL_65:

    goto LABEL_66;
  }

  v47 = [v45 prepareFinished:*(a1 + 32)];
  v48 = [v44 activateNewState:v47 byEvent:@"executePrepareToRecord"];

  if ((v48 & 1) == 0)
  {
    __assert_rtn("[MOVStreamWriter executePrepareToRecordWithMovieMetadata:]_block_invoke", "MOVStreamWriter.mm", 1303, "0");
  }

  if ([*(a1 + 32) multiThreadWritingEnabled])
  {
    v49 = [*(a1 + 32) writingThreadsCount];
    v50 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v49;
      _os_log_impl(&dword_257883000, v50, OS_LOG_TYPE_INFO, "Multi thread writing mode enabled. Using %zu sample buffer writing threads.", &buf, 0xCu);
    }

    v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:v49];
    v52 = *(a1 + 32);
    v53 = *(v52 + 432);
    *(v52 + 432) = v51;

    if (v49)
    {
      v54 = 0;
      do
      {
        v55 = [*(a1 + 32) startWritingThreadForNonMetadataOnlyThreadId:v54];
        [*(*(a1 + 32) + 432) addObject:v55];

        ++v54;
      }

      while (v49 > v54);
    }

    v56 = [*(a1 + 32) startWritingThreadForMetadata];
    v57 = *(a1 + 32);
    v58 = *(v57 + 440);
    *(v57 + 440) = v56;

    v59 = [*(a1 + 32) startWritingThreadForNonMetadataOnlyThreadId:255];
    v60 = *(a1 + 32);
    v46 = *(v60 + 448);
    *(v60 + 448) = v59;
    goto LABEL_65;
  }

  v61 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_257883000, v61, OS_LOG_TYPE_INFO, "Default thread writing mode enabled.", &buf, 2u);
  }

  [*(a1 + 32) startWritingThread];
LABEL_66:
  objc_sync_exit(v42);

  objc_autoreleasePoolPop(context);
}

- (BOOL)setWritingThreadPriority:(double)a3 error:(id *)a4
{
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
    v8 = [v7 objectForKey:@"WRITING_THREAD_PRIORITY"];

    if (v8)
    {
      [MEMORY[0x277CCA9B8] populateStreamError:a4 message:@"Writing-Thread priority is overriden by defaults. Setting has no effect." code:17];
    }

    else
    {
      if (a3 <= 1.0 && a3 >= 0.0)
      {
        self->m_writingThreadPriority = a3;
        v9 = 1;
        goto LABEL_13;
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Priority must be floating point number from 0.0 to 1.0." code:17];
        *a4 = v9 = 0;
        goto LABEL_13;
      }
    }

    v9 = 0;
LABEL_13:

    return v9;
  }

  if (!a4)
  {
    return 0;
  }

  [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Cannot set writingThreadPriority in current writer state." code:17];
  *a4 = v9 = 0;
  return v9;
}

- (double)writingThreadPriority
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  v4 = [v3 objectForKey:@"WRITING_THREAD_PRIORITY"];
  if (!v4)
  {
LABEL_9:
    m_writingThreadPriority = self->m_writingThreadPriority;
    goto LABEL_10;
  }

  v5 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [v4 doubleValue];
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "writingThreadPriority overridden by defaults write: %f", &v11, 0xCu);
  }

  [v4 doubleValue];
  m_writingThreadPriority = v7;
  if (v7 > 1.0 || v7 < 0.0)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = m_writingThreadPriority;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "writingThreadPriority out of bounds [0..1] using %f", &v11, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:

  return m_writingThreadPriority;
}

- (BOOL)setMultiThreadWritingEnabled:(BOOL)a3 error:(id *)a4
{
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) != 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
    v8 = [v7 objectForKey:@"MULTI_THREAD_WRITING"];
    v9 = v8 == 0;

    if (v8)
    {
      [MEMORY[0x277CCA9B8] populateStreamError:a4 message:@"Multi-Thread-Writing is overriden by defaults. Setting has no effect." code:17];
    }

    else
    {
      self->_multiThreadWritingEnabled = a3;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:@"Writer is not in MIOWriterStatusInit state." code:17];
    return 0;
  }

  return v9;
}

- (BOOL)multiThreadWritingEnabled
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  v4 = [v3 objectForKey:@"MULTI_THREAD_WRITING"];

  if (v4)
  {
    multiThreadWritingEnabled = [v3 BOOLForKey:@"MULTI_THREAD_WRITING"];
  }

  else
  {
    multiThreadWritingEnabled = self->_multiThreadWritingEnabled;
  }

  return multiThreadWritingEnabled & 1;
}

- (BOOL)setMultiThreadWritingThreadsCount:(unint64_t)a3 error:(id *)a4
{
  if (([(MOVStreamWriterState *)self->_state canConfigure:self]& 1) == 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = @"Writer is not in MIOWriterStatusInit state.";
LABEL_7:
    [v10 populateStreamError:a4 message:v11 code:17];
    return 0;
  }

  if (!a3)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = @"Multi-Thread-Writing thread count must be larger than 0.";
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  v8 = [v7 objectForKey:@"MULTI_THREAD_WRITING_COUNT"];
  v9 = v8 == 0;

  if (v8)
  {
    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:@"Multi-Thread-Writing thread count is overriden by defaults. Setting has no effect." code:17];
  }

  else
  {
    self->_multiThreadWritingThreadsCount = a3;
  }

  return v9;
}

- (unint64_t)writingThreadsCount
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  multiThreadWritingThreadsCount = self->_multiThreadWritingThreadsCount;
  v5 = [v3 objectForKey:@"MULTI_THREAD_WRITING_COUNT"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    if (v7)
    {
      multiThreadWritingThreadsCount = v7;
    }
  }

  return multiThreadWritingThreadsCount;
}

- (void)addIsReadyObservers
{
  v0 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_257883000, v0, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: 'addIsReadyObservers' called twice ⛔️⛔️⛔️", v1, 2u);
  }

  __assert_rtn("[MOVStreamWriter addIsReadyObservers]", "MOVStreamWriter.mm", 1445, "0");
}

- (void)removeIsReadyObservers
{
  if (self->m_observingIsReady)
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v21 = v6;
    v22 = v7;
    self->m_observingIsReady = 0;
    begin_node = self->m_streamDataMap.__tree_.__begin_node_;
    p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
    if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
    {
      do
      {
        [begin_node[9].__left_ removeObserver:self forKeyPath:{@"readyForMoreMediaData", v17, v18, v19, v20, v21, v22}];
        [begin_node[10].__left_ removeObserver:self forKeyPath:@"readyForMoreMediaData"];
        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v12 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v12 = begin_node[2].__left_;
            v13 = v12->__left_ == begin_node;
            begin_node = v12;
          }

          while (!v13);
        }

        begin_node = v12;
      }

      while (v12 != p_end_node);
    }

    v14 = self->m_metadataDataMap.__tree_.__begin_node_;
    if (v14 != &self->m_metadataDataMap.__tree_.__end_node_)
    {
      do
      {
        [v14->_timeoutBlock removeObserver:self forKeyPath:{@"readyForMoreMediaData", v17, v18, v19, v20}];
        m_delegateCallbackQueue = v14->m_delegateCallbackQueue;
        if (m_delegateCallbackQueue)
        {
          do
          {
            m_writingQueue = m_delegateCallbackQueue;
            m_delegateCallbackQueue = *m_delegateCallbackQueue;
          }

          while (m_delegateCallbackQueue);
        }

        else
        {
          do
          {
            m_writingQueue = v14->m_writingQueue;
            v13 = m_writingQueue->super.isa == v14;
            v14 = m_writingQueue;
          }

          while (!v13);
        }

        v14 = m_writingQueue;
      }

      while (m_writingQueue != &self->m_metadataDataMap.__tree_.__end_node_);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:*MEMORY[0x277CCA2F0]];
  v11 = [v10 BOOLValue];

  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    while (1)
    {
      v13 = begin_node[9].__left_;
      objc_sync_enter(v13);
      v14 = begin_node[9].__left_ == v8 || begin_node[10].__left_ == v8;
      if (v14)
      {
        break;
      }

      objc_sync_exit(v13);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v16 = left;
          left = left->super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v16 = begin_node[2].__left_;
          v14 = v16->super.isa == begin_node;
          begin_node = v16;
        }

        while (!v14);
      }

      begin_node = v16;
      if (v16 == &self->m_streamDataMap.__tree_.__end_node_)
      {
        goto LABEL_22;
      }
    }

    v17 = begin_node + 4;
    if (SHIBYTE(begin_node[6].__left_) < 0)
    {
      v17 = v17->__left_;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
    v19 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = 138543618;
      v28 = v18;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_INFO, "[KVO] Update stream '%{public}@' input ready: %d", &v27, 0x12u);
    }

    if ([(MOVStreamWriterState *)self->_state writerStatus]== 3)
    {
      [(MOVStreamWriter *)self informDelegateAboutIsReady:v11 forStream:v18];
    }

    if (v11)
    {
      [(MOVStreamWriter *)self consumeSamplesOfVideoAudioStream:v18];
    }

    objc_sync_exit(v13);
  }

LABEL_22:
  v20 = self->m_metadataDataMap.__tree_.__begin_node_;
  if (v20 != &self->m_metadataDataMap.__tree_.__end_node_)
  {
    while (1)
    {
      v21 = v20[7].__left_;
      objc_sync_enter(v21);
      if (v20[7].__left_ == v8)
      {
        break;
      }

      objc_sync_exit(v21);

      isa = v20[1].__left_;
      if (isa)
      {
        do
        {
          v23 = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v23 = v20[2].__left_;
          v14 = v23->super.isa == v20;
          v20 = v23;
        }

        while (!v14);
      }

      v20 = v23;
      if (v23 == &self->m_metadataDataMap.__tree_.__end_node_)
      {
        goto LABEL_40;
      }
    }

    v24 = v20 + 4;
    if (SHIBYTE(v20[6].__left_) < 0)
    {
      v24 = v24->__left_;
    }

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
    v26 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = 138543618;
      v28 = v25;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_257883000, v26, OS_LOG_TYPE_INFO, "[KVO] Update metadata stream '%{public}@' input ready: %d", &v27, 0x12u);
    }

    if ([(MOVStreamWriterState *)self->_state writerStatus]== 3)
    {
      [(MOVStreamWriter *)self informDelegateAboutIsReady:v11 forStream:v25];
    }

    if (v11)
    {
      [(MOVStreamWriter *)self consumeMetadatOfMetadataStream:v25];
    }

    objc_sync_exit(v21);
  }

LABEL_40:
}

- (int)attachmentSerializationModeForStream:()basic_string<char withDefaultMode:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v5 = v4 = v3;
  v6 = v5;
  if (v5)
  {
    v4 = [v5 intValue];
  }

  return v4;
}

- (void)appendPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 toStreamId:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v36, [v27 UTF8String]);
  {
    v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append to stream that hasn't been set up." userInfo:0];
    objc_exception_throw(v25);
  }

  if (([(MOVStreamWriterState *)self->_state canAppendData:self]& 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot append: writer is not recording. Current writer state: %@", objc_opt_class()];
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v26);
  }

  if (+[MIOLog debugEnabled])
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *buf = 134218242;
      v38 = Seconds;
      v39 = 2114;
      v40 = v27;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_DEBUG, "MOVStreamWriter appendPixelBuffer at '%5.3f' to stream '%{public}@'", buf, 0x16u);
    }
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((time.flags & 1) == 0)
  {
    time = *a4;
    [(MOVStreamWriter *)self setSessionStartTime:&time];
  }

  v11 = v10;
  if (*(v10 + 48) && (v12 = *(v10 + 176), objc_sync_enter(v12), v13 = [*(v11 + 48) pendingFrames], v14 = *(v11 + 168), objc_sync_exit(v12), v12, v15 = *(v11 + 56), objc_sync_enter(v15), v16 = objc_msgSend(*(v11 + 56), "count"), objc_sync_exit(v15), v15, v17 = v13 & ~(v13 >> 63), v18 = *(v11 + 64), v14 + v17 + v16 > v18))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[VTEncoder] processing buffer for stream '%@' is full, dropping buffer (Pending:%lld Queue:%ld Fifo:%ld Capacity:%ld) (%llu/%llu/%llu/%llu).", v27, v17, v14, v16, v18, -[MOVStreamWriter writeThreadCount](self, "writeThreadCount"), objc_msgSend(*(v11 + 200), "visitCount"), objc_msgSend(*(v11 + 200), "attemptCount"), objc_msgSend(*(v11 + 200), "writeCount")];
    v20 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v19 code:18];
    v21 = [v20 errorByAddingStreamId:v27];

    [(MOVStreamWriter *)self informDelegateAboutError:v21];
    [(MOVStreamWriter *)self triggerWritingThread];
  }

  else
  {
    v22 = *(v11 + 176);
    objc_sync_enter(v22);
    ++*(v11 + 168);
    objc_sync_exit(v22);

    CVPixelBufferRetain(a3);
    m_processingQueue = self->m_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = __65__MOVStreamWriter_appendPixelBuffer_presentationTime_toStreamId___block_invoke;
    block[3] = &unk_2868CE150;
    block[4] = self;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v36;
    }

    v31 = a3;
    v24 = v27;
    v33 = *&a4->var0;
    var3 = a4->var3;
    v29 = v24;
    v32 = v11;
    dispatch_async(m_processingQueue, block);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void __65__MOVStreamWriter_appendPixelBuffer_presentationTime_toStreamId___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = (a1 + 48);
  if (*(v4 + 128))
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = [MIOPixelBufferUtility isPixelBufferRawBayer:*(a1 + 72)];
  v7 = [MIOPixelBufferUtility isPixelBufferCompandedRawBayer:*(a1 + 72)];
  v8 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *(a1 + 48), *(a1 + 56));
    v9 = *(a1 + 32);
  }

  else
  {
    *&v56.__r_.__value_.__l.__data_ = *v3;
    v56.__r_.__value_.__r.__words[2] = *(a1 + 64);
    v9 = v8;
  }

  v10 = [v8 attachmentSerializationModeForStream:&v56 withDefaultMode:1 fromMap:v9 + 184];
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    if (v10 == 1)
    {
      goto LABEL_16;
    }
  }

  else if (v10 == 1 || !v7)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"Mode for pixel buffer attachments for RawBayer pixel buffers is not set to PLIST! Default format is overridden by client (kMIOFrameAttachmentSerializationMode) code:{this will be ignored for RawBayer.", 0}];
  v10 = 1;
LABEL_16:
  v13 = *(a1 + 72);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *&sampleTiming.duration.value = *(a1 + 88);
  sampleTiming.duration.epoch = *(a1 + 104);
  v5 = [v14 getMetadataGroupForBuffer:v13 stream:v15 presentationTime:&sampleTiming serializationMode:v10];
LABEL_17:
  v16 = *(v4 + 88);
  v17 = *(a1 + 72);
  v55 = 0;
  v18 = [v16 processedPixelBufferCopyOf:v17 streamData:v4 error:&v55];
  v19 = v55;
  CFRelease(*(a1 + 72));
  v20 = *(a1 + 32);
  if (v18)
  {
    if ([v20 canWriteData])
    {
      sampleBufferOut = 0;
      v21 = *(MEMORY[0x277CC0920] + 48);
      *&sampleTiming.presentationTimeStamp.timescale = *(MEMORY[0x277CC0920] + 32);
      *&sampleTiming.decodeTimeStamp.value = v21;
      v22 = *(MEMORY[0x277CC0920] + 64);
      v23 = *(MEMORY[0x277CC0920] + 16);
      *&sampleTiming.duration.value = *MEMORY[0x277CC0920];
      *&sampleTiming.duration.epoch = v23;
      *&sampleTiming.presentationTimeStamp.value = *(a1 + 88);
      v24 = *(a1 + 104);
      sampleTiming.decodeTimeStamp.epoch = v22;
      sampleTiming.presentationTimeStamp.epoch = v24;
      v25 = *(v4 + 48);
      if (v25)
      {
        time1 = *(a1 + 88);
        [v25 encodeFrame:v18 pts:&time1 frameProperties:0 metadata:v5];
        CFRelease(v18);
      }

      else
      {
        v31 = [*(v4 + 88) formatDescriptionForPixelBuffer:v18 streamData:v4];
        v32 = CMSampleBufferCreateForImageBuffer(*MEMORY[0x277CBECE8], v18, 1u, 0, 0, v31, &sampleTiming, &sampleBufferOut);
        if (sampleBufferOut)
        {
          v33 = *(a1 + 32);
          time1.value = a1 + 48;
          v34 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v33 + 304, (a1 + 48));
          v36 = *(v34 + 56);
          v35 = v34 + 56;
          v57 = v36;
          v37 = *(v35 + 12);
          v58 = *(v35 + 8);
          if ((v37 & 1) == 0 || (v38 = *(v35 + 16), time1.value = *v35, time1.timescale = *(v35 + 8), time1.flags = v37, time1.epoch = v38, time2 = *(a1 + 88), CMTimeCompare(&time1, &time2) < 0))
          {
            v43 = *(a1 + 32);
            v44 = sampleBufferOut;
            time1 = *(a1 + 88);
            if (*(a1 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v50, *(a1 + 48), *(a1 + 56));
            }

            else
            {
              *&v50.__r_.__value_.__l.__data_ = *v3;
              v50.__r_.__value_.__r.__words[2] = *(a1 + 64);
            }

            [v43 newSampleReady:v44 metadata:v5 presentationTime:&time1 streamKey:&v50 streamId:*(a1 + 40) isAudioSample:0];
            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            CFRelease(sampleBufferOut);
            v39 = MEMORY[0x277CCACA8];
            time1 = *(a1 + 88);
            Seconds = CMTimeGetSeconds(&time1);
            time1.value = v57;
            time1.timescale = v58;
            time1.flags = v37;
            time1.epoch = v38;
            v41 = [v39 stringWithFormat:@"Sample buffer was appended with presentation timestamp (%f) less than (or equal to) previous sample buffer (%f) for stream '%@'. Dropping frame.", *&Seconds, CMTimeGetSeconds(&time1), *(a1 + 40)];
            v42 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v41 code:15];
            [*(a1 + 32) informDelegateAboutError:v42];
          }
        }

        else
        {
          v45 = v32;
          v46 = [MOVStreamIOUtility formatForPixelBuffer:v18];
          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sample buffer creation failed (error: %i) for stream '%@'. Dropping frame. Info: Used FD: %@  Buffer FD: %@", v45, *(a1 + 40), v31, v46];
          if (v46)
          {
            CFRelease(v46);
          }

          v48 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v47 code:14];
          [*(a1 + 32) informDelegateAboutError:v48];
        }

        CFRelease(v18);
      }

      v49 = *(*(a1 + 80) + 176);
      objc_sync_enter(v49);
      --*(v4 + 168);
      objc_sync_exit(v49);
    }

    else
    {
      CFRelease(v18);
      v30 = *(*(a1 + 80) + 176);
      objc_sync_enter(v30);
      --*(v4 + 168);
      objc_sync_exit(v30);
    }
  }

  else
  {
    v26 = v20;
    objc_sync_enter(v26);
    v27 = *(a1 + 32);
    v28 = [v27[48] criticalErrorOccurred:v19 context:v27];
    [v27 activateNewState:v28 byEvent:@"appendPixelBuffer"];

    objc_sync_exit(v26);
    v29 = *(*(a1 + 80) + 176);
    objc_sync_enter(v29);
    --*(v4 + 168);
    objc_sync_exit(v29);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)appendVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 attachmentMetadata:(id)a4 streamId:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!a3)
  {
    v16 = @"Sample Buffer cannot be nil.";
    goto LABEL_23;
  }

  if (!v8)
  {
    v16 = @"Attachments cannot be nil.";
LABEL_23:
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, [v9 UTF8String]);
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append to a stream that hasn't been set up." userInfo:0];
    objc_exception_throw(v18);
  }

  if (![(MOVStreamWriter *)self getPixelFormatForStream:v10 fromMap:&self->m_streamDataMap])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Pixel format not defined for stream '%@'.", v10];
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v19);
  }

  memset(&v28, 0, sizeof(v28));
  CMSampleBufferGetPresentationTimeStamp(&v28, a3);
  if ((v28.flags & 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Sample Buffer with invalid PTS for stream '%@'.", v10];
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v20);
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((time.flags & 1) == 0)
  {
    time = v28;
    [(MOVStreamWriter *)self setSessionStartTime:&time];
  }

  if ([(MOVStreamWriter *)self encoderTypeForStream:v10]- 19 <= 0xFFFFFFFD)
  {
    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append sample buffer with encoder type not MIOStreamEncoderTypeNone." userInfo:0];
    objc_exception_throw(v21);
  }

  if (+[MIOLog debugEnabled])
  {
    v11 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      time = v28;
      Seconds = CMTimeGetSeconds(&time);
      *buf = 134218242;
      v31 = Seconds;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_DEBUG, "MOVStreamWriter appendSampleBuffer at '%5.3f' to stream '%{public}@'", buf, 0x16u);
    }
  }

  CFRetain(a3);
  m_processingQueue = self->m_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __71__MOVStreamWriter_appendVideoSampleBuffer_attachmentMetadata_streamId___block_invoke;
  block[3] = &unk_2868CE048;
  block[4] = self;
  v25 = a3;
  v14 = v8;
  v23 = v14;
  __p[1] = v28;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __p[0] = v29;
  }

  v15 = v10;
  v24 = v15;
  dispatch_async(m_processingQueue, block);

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void __71__MOVStreamWriter_appendVideoSampleBuffer_attachmentMetadata_streamId___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    __p = *(a1 + 64);
  }

  [v4 newSampleReady:v3 metadata:v5 presentationTime:&v7 streamKey:&__p streamId:*(a1 + 48) isAudioSample:0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)appendSampleBuffer:(opaqueCMSampleBuffer *)a3 attachments:(id)a4 streamId:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!a3)
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Sample Buffer cannot be nil." userInfo:0];
    objc_exception_throw(v16);
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, [v9 UTF8String]);
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append to a stream that hasn't been set up." userInfo:0];
    objc_exception_throw(v17);
  }

  if (([(MOVStreamWriterState *)self->_state canAppendData:self]& 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot append: writer is not recording. Current writer state: %@", objc_opt_class()];
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v18);
  }

  if (![(MOVStreamWriter *)self getPixelFormatForStream:v10 fromMap:&self->m_streamDataMap])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Pixel format not defined for stream '%@'.", v10];
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v19);
  }

  memset(&v28, 0, sizeof(v28));
  CMSampleBufferGetPresentationTimeStamp(&v28, a3);
  if (+[MIOLog debugEnabled])
  {
    v11 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      time = v28;
      Seconds = CMTimeGetSeconds(&time);
      *buf = 134218242;
      v31 = Seconds;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_DEBUG, "MOVStreamWriter appendSampleBuffer at '%5.3f' to stream '%{public}@'", buf, 0x16u);
    }
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((time.flags & 1) == 0)
  {
    time = v28;
    [(MOVStreamWriter *)self setSessionStartTime:&time];
  }

  CFRetain(a3);
  m_processingQueue = self->m_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __59__MOVStreamWriter_appendSampleBuffer_attachments_streamId___block_invoke;
  block[3] = &unk_2868CE080;
  v14 = v8;
  v21 = v14;
  v22 = self;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v29;
  }

  v25 = a3;
  v26 = v28;
  v15 = v10;
  v23 = v15;
  dispatch_async(m_processingQueue, block);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void __59__MOVStreamWriter_appendSampleBuffer_attachments_streamId___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    if (*(a1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(a1 + 56), *(a1 + 64));
      v4 = *(a1 + 40);
    }

    else
    {
      v25 = *(a1 + 56);
      v4 = v3;
    }

    v6 = [v3 attachmentSerializationModeForStream:&v25 withDefaultMode:1 fromMap:v4 + 184];
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v7 = [*(a1 + 32) copy];
    if (v6)
    {
      v8 = [MOVStreamIOUtility getPlistFriendlyCopyOf:v7];

      v23 = 0;
      v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v23];
      v10 = v23;
    }

    else
    {
      v8 = [MOVStreamIOUtility getJsonFriendlyCopy:v7];

      v24 = 0;
      v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:&v24];
      v10 = v24;
    }

    v11 = v9;
    v12 = v10;
    if (v12)
    {
      v13 = v12;
      [*(a1 + 40) informDelegateAboutError:v12];
      CFRelease(*(a1 + 80));

      v5 = 0;
      goto LABEL_19;
    }

    v14 = [MEMORY[0x277CE6558] metadataItem];
    [v14 setIdentifier:@"mdta/com.apple.stream_sample_attachments"];
    [v14 setDataType:*MEMORY[0x277CC05B8]];
    [v14 setExtraAttributes:0];
    [v14 setValue:v11];
    v15 = objc_alloc(MEMORY[0x277CE6648]);
    v26[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    start = *(a1 + 88);
    duration = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&v22, &start, &duration);
    v5 = [v15 initWithItems:v16 timeRange:&v22];
  }

  else
  {
    v5 = 0;
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 80);
  *&v22.start.value = *(a1 + 88);
  v22.start.epoch = *(a1 + 104);
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
  }

  [v17 newSampleReady:v18 metadata:v5 presentationTime:&v22 streamKey:&__p streamId:*(a1 + 48) isAudioSample:0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:

  objc_autoreleasePoolPop(v2);
}

- (void)newSampleReady:(opaqueCMSampleBuffer *)a3 metadata:(id)a4 presentationTime:(id *)a5 streamKey:()basic_string<char streamId:()std:(std::allocator<char>> *)a6 :char_traits<char> isAudioSample:
{
  v28 = v7;
  v8 = v6;
  v32 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = v8;
  if ([(MOVStreamWriter *)self isOrWasCanceled])
  {
    CFRelease(a3);
  }

  else
  {
    v27 = a5;
    v16 = *(v15 + 56);
    objc_sync_enter(v16);
    v17 = objc_opt_new();
    [v17 setSampleBuffer:a3];
    [v17 setMetadata:v13];
    [v16 addObject:v17];
    [*(v15 + 200) setFifoItemCount:{objc_msgSend(v16, "count")}];
    if (+[MIOLog debugEnabled])
    {
      v18 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        *&buf[4] = v14;
        v30 = 2048;
        v31 = [v16 count];
        _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_DEBUG, "[FIFO] add to fifo '%{public}@' %lu", buf, 0x16u);
      }
    }

    if ([v16 count] > *(v15 + 64) && -[MOVStreamWriter fifoDropsEnabled:](self, "fifoDropsEnabled:", v15))
    {
      v26 = [v16 firstObject];
      v19 = [v26 sampleBuffer];
      [v16 removeObjectAtIndex:0];
      CFRelease(v19);
      var0 = a6;
      if (*(&a6->var0.var1 + 23) < 0)
      {
        var0 = a6->var0.var1.var0;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FIFO] FIFO buffer for stream '%s' is full, dropping older buffer (%llu/%llu/%llu/%llu) .", var0, -[MOVStreamWriter writeThreadCount](self, "writeThreadCount"), objc_msgSend(*(v15 + 200), "visitCount"), objc_msgSend(*(v15 + 200), "attemptCount"), objc_msgSend(*(v15 + 200), "writeCount")];
      v22 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v21 code:18];
      v23 = [v22 errorByAddingStreamId:v14];

      [(MOVStreamWriter *)self informDelegateAboutError:v23];
    }

    objc_sync_exit(v16);
    if ((v28 & 1) == 0)
    {
      *buf = a6;
      v24 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->m_lastPtsForStream, a6);
      v25 = *&v27->var0;
      *(v24 + 72) = v27->var3;
      *(v24 + 56) = v25;
    }

    [(MOVStreamWriter *)self consumeSamplesOfVideoAudioStream:v14];
  }
}

- (void)encoder:(id)a3 encodedSampleBuffer:(opaqueCMSampleBuffer *)a4 metadata:(id)a5 presentationTime:(id *)a6 streamId:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v14 UTF8String]);
  time1.value = &__p;
  v15 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->m_lastPtsForStream, &__p.__r_.__value_.__l.__data_);
  v17 = *(v15 + 56);
  v16 = v15 + 56;
  v32 = v17;
  v18 = *(v16 + 12);
  v33 = *(v16 + 8);
  if (v18 & 1) == 0 || (v19 = *(v16 + 16), time1.value = *v16, time1.timescale = *(v16 + 8), time1.flags = v18, time1.epoch = v19, time2 = *a6, CMTimeCompare(&time1, &time2) < 0) || ([v12 frameReorderingEnabled])
  {
    v20 = [(MOVStreamWriter *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if ((v21 & 1) == 0 || (-[MOVStreamWriter delegate](self, "delegate"), v22 = objc_claimAutoreleasedReturnValue(), time1 = *a6, v23 = [v22 streamWriter:self encodedBuffer:a4 pts:&time1 metadata:v13 forStream:v14], v22, (v23 & 1) == 0))
    {
      time1 = *a6;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = __p;
      }

      [(MOVStreamWriter *)self newSampleReady:a4 metadata:v13 presentationTime:&time1 streamKey:&v28 streamId:v14 isAudioSample:0];
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    CFRelease(a4);
    v24 = MEMORY[0x277CCACA8];
    time1 = *a6;
    Seconds = CMTimeGetSeconds(&time1);
    time1.value = v32;
    time1.timescale = v33;
    time1.flags = v18;
    time1.epoch = v19;
    v26 = [v24 stringWithFormat:@"Sample buffer was appended with presentation timestamp (%f) less than (or equal to) previous sample buffer (%f) for stream '%@'. Dropping frame.", *&Seconds, CMTimeGetSeconds(&time1), v14];
    v27 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v26 code:15];
    [(MOVStreamWriter *)self informDelegateAboutError:v27];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)encoder:(id)a3 encodingFailedForStream:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sample buffer encoding failed (encoder status: %i flags: %d) for stream '%@'.", objc_msgSend(v11, "lastEncodingStatus"), objc_msgSend(v11, "lastEncodingInfoFlags"), v6];
  v9 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v8 code:14];
  v10 = [(MOVStreamWriterState *)v7->_state criticalErrorOccurred:v9 context:v7];
  [(MOVStreamWriter *)v7 activateNewState:v10 byEvent:@"encodingFailedForStream"];

  objc_sync_exit(v7);
}

- (void)simulateFailure
{
  v4 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"SIMULATED ERROR FOR TESTING" code:0];
  v3 = [MOVStreamWriterState criticalErrorOccurred:"criticalErrorOccurred:context:" context:?];
  [(MOVStreamWriter *)self activateNewState:v3 byEvent:@"simulateFailure"];
}

- (id)encoder:(id)a3 overrideVideoEncoderSpecificationForStreamId:(id)a4
{
  v5 = a4;
  v6 = [(MOVStreamWriter *)self customEncoderConfigDelegate];

  if (v6)
  {
    v7 = [(MOVStreamWriter *)self customEncoderConfigDelegate];
    v8 = [(MOVStreamWriter *)v7 streamWriter:self overrideVideoEncoderSpecificationForStream:v5];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing customEncoderConfigDelegate '%@'. Cannot encode!", v5];
    v10 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v9 code:14];
    v11 = [(MOVStreamWriterState *)v7->_state criticalErrorOccurred:v10 context:v7];
    [(MOVStreamWriter *)v7 activateNewState:v11 byEvent:@"overrideVideoEncoderSpecificationForStreamId"];

    objc_sync_exit(v7);
    v8 = 0;
  }

  return v8;
}

- (BOOL)encoder:(id)a3 configureSessionOverride:(OpaqueVTCompressionSession *)a4 streamId:(id)a5
{
  v7 = a5;
  v8 = [(MOVStreamWriter *)self customEncoderConfigDelegate];

  if (v8)
  {
    v9 = [(MOVStreamWriter *)self customEncoderConfigDelegate];
    v10 = [(MOVStreamWriter *)v9 streamWriter:self configureSessionOverride:a4 forStream:v7];
  }

  else
  {
    v9 = self;
    objc_sync_enter(v9);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing customEncoderConfigDelegate '%@'. Cannot encode!", v7];
    v12 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v11 code:14];
    v13 = [(MOVStreamWriterState *)v9->_state criticalErrorOccurred:v12 context:v9];
    [(MOVStreamWriter *)v9 activateNewState:v13 byEvent:@"configureSessionOverride"];

    objc_sync_exit(v9);
    v10 = 0;
  }

  return v10;
}

- (unsigned)encoder:(id)a3 codecTypeOverrideForstreamId:(id)a4
{
  v5 = a4;
  v6 = [(MOVStreamWriter *)self customEncoderConfigDelegate];

  if (v6)
  {
    v7 = [(MOVStreamWriter *)self customEncoderConfigDelegate];
    v8 = [(MOVStreamWriter *)v7 streamWriter:self codecTypeOverrideForStream:v5];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing customEncoderConfigDelegate '%@'. Cannot encode!", v5];
    v10 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v9 code:14];
    v11 = [(MOVStreamWriterState *)v7->_state criticalErrorOccurred:v10 context:v7];
    [(MOVStreamWriter *)v7 activateNewState:v11 byEvent:@"codecTypeOverrideForstreamId"];

    objc_sync_exit(v7);
    v8 = 0;
  }

  return v8;
}

- (void)appendTimeMetadataGroup:(id)a3 toStream:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  std::string::basic_string[abi:ne200100]<0>(v24, [v7 UTF8String]);
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append metadata when the track was never added. Call addMetadataTrack: before prepareToRecord." userInfo:0];
    objc_exception_throw(v13);
  }

  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    v21 = 0u;
    memset(time, 0, sizeof(time));
  }

  v22 = *time;
  v23 = *&time[16];
  if (+[MIOLog debugEnabled])
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *time = v22;
      *&time[16] = v23;
      Seconds = CMTimeGetSeconds(time);
      *buf = 134218242;
      v27 = Seconds;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_DEBUG, "MOVStreamWriter metadata group at '%5.3f' to stream '%{public}@'", buf, 0x16u);
    }
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((time[12] & 1) == 0)
  {
    *time = v22;
    *&time[16] = v23;
    [(MOVStreamWriter *)self setSessionStartTime:time];
  }

  m_processingQueue = self->m_processingQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__MOVStreamWriter_appendTimeMetadataGroup_toStream___block_invoke;
  v14[3] = &unk_279847E90;
  v18 = v22;
  v19 = v23;
  v11 = v7;
  v15 = v11;
  v16 = self;
  v12 = v6;
  v17 = v12;
  dispatch_async(m_processingQueue, v14);

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void __52__MOVStreamWriter_appendTimeMetadataGroup_toStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 68))
  {
    [*(a1 + 40) queueMetadataGroup:*(a1 + 48) stream:*(a1 + 32)];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid time stamp is not supported for metadata for stream '%@'.", *(a1 + 32)];
    v4 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v3 code:16];
    [*(a1 + 40) informDelegateAboutError:v4];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)appendTimeCode:(CVSMPTETime *)a3 rangeStart:(unint64_t)a4 rangeEnd:(unint64_t)a5 withTimeStamp:(id *)a6 toStream:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a7;
  std::string::basic_string[abi:ne200100]<0>(&v38, [v12 UTF8String]);
  {
    v25 = @"Cannot append metadata when the track was never added. Call addMetadataTrack: before prepareToRecord.";
    goto LABEL_23;
  }

  {
    v25 = @"Can only append metadata to time range metadata track.";
LABEL_23:
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  time1.value = &v38;
  v13 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->m_lastPtsForMetadataStream, &v38.__r_.__value_.__l.__data_);
  v15 = *(v13 + 56);
  v14 = v13 + 56;
  v40 = v15;
  v16 = *(v14 + 12);
  v41 = *(v14 + 8);
  if ((v16 & 1) == 0 || (v17 = *(v14 + 16), time1.value = *v14, time1.timescale = *(v14 + 8), time1.flags = v16, time1.epoch = v17, time2 = *a6, CMTimeCompare(&time1, &time2) < 0))
  {
    if (+[MIOLog debugEnabled])
    {
      v22 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        time1 = *a6;
        Seconds = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 134218242;
        *(&time2.value + 4) = Seconds;
        LOWORD(time2.flags) = 2114;
        *(&time2.flags + 2) = v12;
        _os_log_impl(&dword_257883000, v22, OS_LOG_TYPE_DEBUG, "MOVStreamWriter time range metadata at '%5.3f' to stream '%{public}@'", &time2, 0x16u);
      }
    }

    [(MOVStreamWriter *)self sessionStartTime];
    if ((time1.flags & 1) == 0)
    {
      time1 = *a6;
      [(MOVStreamWriter *)self setSessionStartTime:&time1];
    }

    m_processingQueue = self->m_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = __77__MOVStreamWriter_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_toStream___block_invoke;
    block[3] = &unk_2868CE188;
    v30 = a4;
    v31 = a5;
    v33 = *&a3->subframes;
    v34 = *&a3->hours;
    v35 = *&a6->var0;
    var3 = a6->var3;
    v28 = v12;
    v29 = self;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v38;
    }

    dispatch_async(m_processingQueue, block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v20 = v28;
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    time1 = *a6;
    v19 = CMTimeGetSeconds(&time1);
    time1.value = v40;
    time1.timescale = v41;
    time1.flags = v16;
    time1.epoch = v17;
    v20 = [v18 stringWithFormat:@"Metadata was appended with presentation timestamp (%f) less than (or equal to) previous sample buffer (%f) for stream '%@'. Dropping sample.", *&v19, CMTimeGetSeconds(&time1), v12];
    v21 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v20 code:15];
    [(MOVStreamWriter *)self informDelegateAboutError:v21];
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void __77__MOVStreamWriter_appendTimeCode_rangeStart_rangeEnd_withTimeStamp_toStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v4 = [MEMORY[0x277CE6520] metadataItemForTimeRangeMetadataStartTime:*(a1 + 48)];
  [v3 addObject:v4];

  v5 = [MEMORY[0x277CE6520] metadataItemForTimeRangeMetadataEndTime:*(a1 + 56)];
  [v3 addObject:v5];

  *&v16.start.value = *(a1 + 88);
  v16.start.epoch = *(a1 + 104);
  v6 = [MEMORY[0x277CE6520] metadataItemForTimeCode:&v16];
  [v3 addObject:v6];

  if (*(a1 + 124))
  {
    v9 = objc_alloc(MEMORY[0x277CE6648]);
    start = *(a1 + 112);
    duration = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&v16, &start, &duration);
    v7 = [v9 initWithItems:v3 timeRange:&v16];
    if (!v7)
    {
      v13 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"No metadata appended because the AVTimedMetadataGroup* is nil" code:0];
      goto LABEL_6;
    }

    [*(a1 + 40) queueMetadataGroup:v7 stream:*(a1 + 32)];
    v10 = *(a1 + 40);
    v16.start.value = a1 + 64;
    v11 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10 + 328, (a1 + 64));
    v12 = *(a1 + 112);
    *(v11 + 72) = *(a1 + 128);
    *(v11 + 56) = v12;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid time stamp is not supported for metadata for stream '%@'.", *(a1 + 32)];
    v8 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v7 code:16];
    [*(a1 + 40) informDelegateAboutError:v8];
  }

LABEL_6:
  objc_autoreleasePoolPop(v2);
}

- (void)appendMetadata:(id)a3 withTimeStamp:(id *)a4 toStream:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v24, [v9 UTF8String]);
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append metadata when the track was never added. Call addMetadataTrack: before prepareToRecord." userInfo:0];
    objc_exception_throw(v15);
  }

  if (+[MIOLog debugEnabled])
  {
    v10 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      time = *a4;
      Seconds = CMTimeGetSeconds(&time);
      *buf = 134218242;
      v26 = Seconds;
      v27 = 2114;
      v28 = v9;
      _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_DEBUG, "MOVStreamWriter metadata at '%5.3f' to stream '%{public}@'", buf, 0x16u);
    }
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((time.flags & 1) == 0)
  {
    time = *a4;
    [(MOVStreamWriter *)self setSessionStartTime:&time];
  }

  m_processingQueue = self->m_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __57__MOVStreamWriter_appendMetadata_withTimeStamp_toStream___block_invoke;
  block[3] = &unk_2868CE0B8;
  v13 = v8;
  v17 = v13;
  v18 = self;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v24;
  }

  v21 = *&a4->var0;
  var3 = a4->var3;
  v14 = v9;
  v19 = v14;
  dispatch_async(m_processingQueue, block);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void __57__MOVStreamWriter_appendMetadata_withTimeStamp_toStream___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count])
  {
    v30 = (a1 + 56);
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = a1;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v3)
    {
      v4 = *v38;
      v5 = *MEMORY[0x277CC05B8];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v38 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v37 + 1) + 8 * i);
          v8 = [MEMORY[0x277CE6558] metadataItem];
          v9 = v8;
          if (*(v2 + 24))
          {
            v10 = @"mdta/com.apple.rawIMUDict";
          }

          else
          {
            v10 = @"mdta/com.apple.metadata_stream_item";
          }

          [v8 setIdentifier:v10];
          [v9 setDataType:v5];
          [v9 setExtraAttributes:0];
          if (*(v2 + 56) == 1)
          {
            v11 = [v7 copy];
            [v9 setValue:v11];
          }

          else
          {
            [v9 setValue:v7];
          }

          [v34 addObject:v9];
        }

        v3 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v3);
    }

    if (*(v32 + 92))
    {
      v15 = objc_alloc(MEMORY[0x277CE6648]);
      start = *(v32 + 80);
      duration = **&MEMORY[0x277CC0890];
      CMTimeRangeMake(&v36, &start, &duration);
      v12 = [v15 initWithItems:v34 timeRange:&v36];
      v16 = *(v32 + 40);
      v36.start.value = v30;
      v17 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16 + 328, v30);
      v19 = *(v17 + 56);
      v18 = v17 + 56;
      duration.value = v19;
      v20 = *(v18 + 12);
      duration.timescale = *(v18 + 8);
      if ((v20 & 1) == 0 || (v21 = *(v18 + 16), v36.start.value = *v18, v36.start.timescale = *(v18 + 8), v36.start.flags = v20, v36.start.epoch = v21, start = *(v32 + 80), CMTimeCompare(&v36.start, &start) < 0))
      {
        if (v12)
        {
          [*(v32 + 40) queueMetadataGroup:v12 stream:*(v32 + 48)];
          v26 = *(v32 + 40);
          v36.start.value = v30;
          v27 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v26 + 328, v30);
          v28 = *(v32 + 80);
          *(v27 + 72) = *(v32 + 96);
          *(v27 + 56) = v28;
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"No metadata appended because the AVTimedMetadataGroup* is nil" code:0];
        }
      }

      else
      {
        v22 = MEMORY[0x277CCACA8];
        *&v36.start.value = *(v32 + 80);
        v36.start.epoch = *(v32 + 96);
        Seconds = CMTimeGetSeconds(&v36.start);
        v36.start.value = duration.value;
        v36.start.timescale = duration.timescale;
        v36.start.flags = v20;
        v36.start.epoch = v21;
        v24 = [v22 stringWithFormat:@"Metadata was appended with presentation timestamp (%f) less than (or equal to) previous sample buffer (%f) for stream '%@'. Dropping sample.", *&Seconds, CMTimeGetSeconds(&v36.start), *(v32 + 48)];
        v25 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v24 code:15];
        [*(v32 + 40) informDelegateAboutError:v25];
      }
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid time stamp is not supported for metadata for stream '%@'.", *(v32 + 48)];
      v13 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v12 code:16];
      [*(v32 + 40) informDelegateAboutError:v13];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"No metadata appended because it's empty" code:0];
  }

  objc_autoreleasePoolPop(context);
}

- (void)queueMetadataGroup:(id)a3 stream:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  v9 = *(v8 + 32);
  objc_sync_enter(v9);
  [v9 addObject:v6];
  [*(v8 + 64) setFifoItemCount:{objc_msgSend(v9, "count")}];
  if (+[MIOLog debugEnabled])
  {
    v10 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 count];
      *buf = 138543618;
      v18 = v7;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_DEBUG, "[FIFO] add to fifo '%{public}@' %lu", buf, 0x16u);
    }
  }

  if ([v9 count] > *(v8 + 40))
  {
    [v9 removeObjectAtIndex:0];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"FIFO buffer for metadata stream '%@' is full, dropping older buffer (%llu/%llu/%llu/%llu).", v7, -[MOVStreamWriter writeThreadCount](self, "writeThreadCount"), objc_msgSend(*(v8 + 64), "visitCount"), objc_msgSend(*(v8 + 64), "attemptCount"), objc_msgSend(*(v8 + 64), "writeCount")];
    v13 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v12 code:18];
    v14 = [v13 errorByAddingStreamId:v7];

    [(MOVStreamWriter *)self informDelegateAboutError:v14];
  }

  objc_sync_exit(v9);

  [(MOVStreamWriter *)self consumeMetadatOfMetadataStream:v7];
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)appendMetadata:(id)a3 associatedWith:(id)a4 toStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  std::string::basic_string[abi:ne200100]<0>(&v23, [v9 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(&v22, [v10 UTF8String]);
  [(MOVStreamWriter *)self sessionStartTime];
  if ((BYTE12(v19) & 1) == 0)
  {
    if (v8)
    {
      [v8 timeRange];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
    }

    v17 = v19;
    v18 = v20;
    [(MOVStreamWriter *)self setSessionStartTime:&v17];
  }

  m_processingQueue = self->m_processingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = __58__MOVStreamWriter_appendMetadata_associatedWith_toStream___block_invoke;
  v13[3] = &unk_2868CDFD8;
  v13[4] = self;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v23;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v22;
  }

  v12 = v8;
  v14 = v12;
  dispatch_async(m_processingQueue, v13);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void __58__MOVStreamWriter_appendMetadata_associatedWith_toStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append associated metadata when the track was never added. Call addMetadataTrackAssociatedWith:forIdentifier: before prepareToRecord." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 95) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v9 = *(a1 + 72);
    }

    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    [v5 asyncWriteAssociatedMetadata:v4 metadataKey:&v9 associatedStreamKey:&__p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"No metadata appended because it's empty" code:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)startSessionWithFallbackSampleTime:(id *)a3 streamId:(id)a4 mediaType:(int64_t)a5 writerDelegate:(id)a6 delegateCallbackQueue:(id)a7 error:(id *)a8
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = self;
  objc_sync_enter(v17);
  if (v17->m_haveStartedSession)
  {
    v18 = 1;
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    [(MOVStreamWriter *)v17 sessionStartTime];
    flags = 0 >> 96;
    if (0 >> 96 != 1)
    {
      v25 = *a3;
      flags = v25.flags;
    }

    if ((flags & 0x1D) == 1)
    {
      if (+[MIOLog debugEnabled])
      {
        v20 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          time = v25;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138543618;
          v27 = v14;
          v28 = 2048;
          v29 = Seconds;
          _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, "Start Session by '%{public}@' at %f", buf, 0x16u);
        }
      }

      m_assetWriter = v17->m_assetWriter;
      time = v25;
      [(AVAssetWriter *)m_assetWriter startSessionAtSourceTime:&time];
      time = v25;
      [(MOVStreamWriter *)v17 writingSessionDidStartAtTime:&time streamId:v14 mediaType:a5 writerDelegate:v15 delegateCallbackQueue:v16];
      v18 = 1;
      v17->m_haveStartedSession = 1;
    }

    else
    {
      [MEMORY[0x277CCA9B8] populateReaderError:a8 message:@"Writer invalid sessionStartTime code:{startSession failed.", 16}];
      v18 = 0;
    }
  }

  objc_sync_exit(v17);

  return v18;
}

- (void)asyncWriteAssociatedMetadata:(id)a3 metadataKey:()basic_string<char associatedStreamKey:()std:(std::allocator<char>> *)a4 :char_traits<char>
{
  v5 = v4;
  v8 = a3;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nullptr IMU metadata" userInfo:0];
    objc_exception_throw(v11);
  }

  m_writingQueue = self->m_writingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = __80__MOVStreamWriter_asyncWriteAssociatedMetadata_metadataKey_associatedStreamKey___block_invoke;
  v12[3] = &unk_2868CDFD8;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  if (*(&a4->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, a4->var0.var1.var0, a4->var0.var1.var1);
  }

  else
  {
    v14 = *a4;
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
  }

  else
  {
    __p = *v5;
  }

  dispatch_async(m_writingQueue, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v14.var0.var1 + 23) < 0)
  {
    operator delete(v14.var0.var1.var0);
  }
}

void __80__MOVStreamWriter_asyncWriteAssociatedMetadata_metadataKey_associatedStreamKey___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) canWriteData];
  objc_sync_exit(v3);

  if (v4)
  {
    v5 = *(a1 + 32);
    if ((v5[114] & 1) == 0)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        [v6 timeRange];
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
      }

      v30 = v32;
      v31 = v33;
      v7 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v7 = *v7;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      v9 = [*(a1 + 32) delegate];
      v10 = *(*(a1 + 32) + 8);
      v29 = 0;
      v11 = [v5 startSessionWithFallbackSampleTime:&v30 streamId:v8 mediaType:2 writerDelegate:v9 delegateCallbackQueue:v10 error:&v29];
      v12 = v29;

      if ((v11 & 1) == 0)
      {
        v22 = *(a1 + 32);
        objc_sync_enter(v22);
        v23 = *(a1 + 32);
        v24 = [v23[48] criticalErrorOccurred:v12 context:v23];
        [v23 activateNewState:v24 byEvent:@"asyncWriteAssociatedMetadata"];

        objc_sync_exit(v22);
        goto LABEL_23;
      }

      v5 = *(a1 + 32);
    }

    v13 = (a1 + 72);
    v15 = (a1 + 48);
    if ([*v16 isReadyForMoreMediaData])
    {
      if (*(a1 + 40))
      {
        v17 = [v16[1] appendTimedMetadataGroup:?];
        v18 = *(a1 + 32);
        if (v17)
        {
          if (*(a1 + 71) < 0)
          {
            v15 = *v15;
          }

          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
          [v18 informDelegateAboutMediaWrittenForStream:v19 mediaType:2];
        }

        else
        {
          v25 = [v18[12] error];
          v26 = *(a1 + 32);
          objc_sync_enter(v26);
          v27 = *(a1 + 32);
          v28 = [v27[48] criticalErrorOccurred:v25 context:v27];
          [v27 activateNewState:v28 byEvent:@"asyncWriteAssociatedMetadata"];

          objc_sync_exit(v26);
        }
      }
    }

    else
    {
      if (*(a1 + 71) < 0)
      {
        v15 = *v15;
      }

      if (*(a1 + 95) < 0)
      {
        v13 = *v13;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%s associated with %s] metadata input not ready for more data, dropping samples", v15, v13];
      v21 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:v20 code:0];
    }
  }

LABEL_23:
  objc_autoreleasePoolPop(v2);
}

- (void)appendAudioBuffer:(opaqueCMSampleBuffer *)a3 forStream:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append audioSample <null>." userInfo:0];
    objc_exception_throw(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&v18, [v6 UTF8String]);
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot append stream type that hasn't been set up." userInfo:0];
    objc_exception_throw(v11);
  }

  [(MOVStreamWriter *)self sessionStartTime];
  if ((v17.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&v16, a3);
    v17 = v16;
    [(MOVStreamWriter *)self setSessionStartTime:&v17];
  }

  CFRetain(a3);
  m_processingQueue = self->m_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = __47__MOVStreamWriter_appendAudioBuffer_forStream___block_invoke;
  block[3] = &unk_2868CE010;
  v14 = a3;
  block[4] = self;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v18;
  }

  v9 = v7;
  v13 = v9;
  dispatch_async(m_processingQueue, block);

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void __47__MOVStreamWriter_appendAudioBuffer_forStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) getAudioMetadataForBuffer:?];
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    CMSampleBufferGetPresentationTimeStamp(&v8, v5);
    if (*(a1 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      __p = *(a1 + 56);
    }

    [v4 newSampleReady:v5 metadata:v3 presentationTime:&v8 streamKey:&__p streamId:*(a1 + 40) isAudioSample:1];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"Could not append audio sample because it is nil" code:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)finishRecording
{
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "[FINISH] finishRecording", v9, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  if (([(MOVStreamWriterState *)v4->_state canFinishRecording:v4]& 1) == 0)
  {
    v7 = @"Current writer state does not support finishRecording.";
    goto LABEL_8;
  }

  v5 = [(MOVStreamWriterState *)v4->_state finishRecording:v4];
  v6 = [(MOVStreamWriter *)v4 activateNewState:v5 byEvent:@"finishRecording"];

  if (!v6)
  {
    v7 = @"Cannot finishRecording.";
LABEL_8:
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v7 userInfo:0];
    objc_exception_throw(v8);
  }

  objc_sync_exit(v4);
}

- (void)finishAndDrainFifoFirst
{
  if ([(MOVStreamWriter *)self checkIfFifoAreEmpty])
  {
    obj = self;
    objc_sync_enter(obj);
    v3 = [(MOVStreamWriterState *)obj->_state nextFinishStep:?];
    v4 = [(MOVStreamWriter *)obj activateNewState:v3 byEvent:@"finishAndDrainFifoFirst"];

    if (!v4)
    {
      __assert_rtn("[MOVStreamWriter finishAndDrainFifoFirst]", "MOVStreamWriter.mm", 2527, "0");
    }

    objc_sync_exit(obj);
  }

  else
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "[FINISH] startFinishingTimeoutTimer (items in fifos)", buf, 2u);
    }

    [(MOVStreamWriter *)self triggerWritingThread];
    [(MOVStreamWriter *)self startFinishingTimeoutTimer];
  }
}

- (void)setFinishingTimeout:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (a3 < 45.0)
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      v7 = a3;
      v8 = 2048;
      v9 = 0x4046800000000000;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_ERROR, "⚠️⚠️⚠️ WARNING [MOVStreamIO]: setFinishingTimeout to %.1f sec below recommended minimum value %.1f sec.", &v6, 0x16u);
    }
  }

  v4->_finishingTimeout = a3;
  objc_sync_exit(v4);
}

- (double)finishingTimeout
{
  v2 = self;
  objc_sync_enter(v2);
  finishingTimeout = v2->_finishingTimeout;
  objc_sync_exit(v2);

  return finishingTimeout;
}

- (void)startFinishingTimeoutTimer
{
  v3 = dispatch_queue_create("com.apple.movstreamwriter.timeout", 0);
  timeoutQueue = self->_timeoutQueue;
  self->_timeoutQueue = v3;

  [(MOVStreamWriter *)self resubmitTimeoutBlock];
}

- (void)resubmitTimeoutBlock
{
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __39__MOVStreamWriter_resubmitTimeoutBlock__block_invoke;
  v10 = &unk_279847EB8;
  objc_copyWeak(&v11, &location);
  v3 = dispatch_block_create(0, &v7);
  timeoutBlock = self->_timeoutBlock;
  self->_timeoutBlock = v3;

  [(MOVStreamWriter *)self finishingTimeout:v7];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_after(v6, self->_timeoutQueue, self->_timeoutBlock);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__MOVStreamWriter_resubmitTimeoutBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [WeakRetained status] == 4)
  {
    [WeakRetained informDelegateAboutFinishingTimeout];
    [WeakRetained forceFinishRecording];
  }
}

- (void)resetTimeoutRefTime
{
  timeoutBlock = self->_timeoutBlock;
  if (timeoutBlock)
  {
    dispatch_block_cancel(timeoutBlock);

    [(MOVStreamWriter *)self resubmitTimeoutBlock];
  }
}

- (void)cancelTimeoutBlock
{
  timeoutBlock = self->_timeoutBlock;
  if (timeoutBlock)
  {
    dispatch_block_cancel(timeoutBlock);
  }
}

- (void)cancelRecording
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MOVStreamWriterState *)obj->_state cancelRecording:?];
  [(MOVStreamWriter *)obj activateNewState:v2 byEvent:@"cancelRecording"];

  objc_sync_exit(obj);
}

- (void)clearAllFifoQueues
{
  v23 = *MEMORY[0x277D85DE8];
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node != &self->m_streamDataMap.__tree_.__end_node_)
  {
    do
    {
      v5 = begin_node[14].__left_;
      objc_sync_enter(v5);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v6);
            }

            CFRelease([*(*(&v18 + 1) + 8 * i) sampleBuffer]);
          }

          v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }

      [v6 removeAllObjects];
      [begin_node[32].__left_ setFifoItemCount:0];
      objc_sync_exit(v6);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v11 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v11 = begin_node[2].__left_;
          v12 = v11->__left_ == begin_node;
          begin_node = v11;
        }

        while (!v12);
      }

      begin_node = v11;
    }

    while (v11 != p_end_node);
  }

  v13 = self->m_metadataDataMap.__tree_.__begin_node_;
  v14 = &self->m_metadataDataMap.__tree_.__end_node_;
  if (v13 != v14)
  {
    do
    {
      v15 = v13[11].__left_;
      objc_sync_enter(v15);
      [v15 removeAllObjects];
      [v13[15].__left_ setFifoItemCount:0];
      objc_sync_exit(v15);

      v16 = v13[1].__left_;
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = v16->__left_;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v13[2].__left_;
          v12 = v17->__left_ == v13;
          v13 = v17;
        }

        while (!v12);
      }

      v13 = v17;
    }

    while (v17 != v14);
  }
}

- (void)forceFinishRecording
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MOVStreamWriterState *)obj->_state forceFinishRecording:?];
  [(MOVStreamWriter *)obj activateNewState:v2 byEvent:@"forceFinishRecording"];

  objc_sync_exit(obj);
}

- (void)closeEncodersAfterFailure
{
  v3 = dispatch_group_create();
  begin_node = self->m_streamDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_streamDataMap.__tree_.__end_node_;
  if (begin_node != p_end_node)
  {
    do
    {
      left = begin_node[13].__left_;
      if (left)
      {
        [left closeEncoderInDispatchGroup:v3];
      }

      v7 = begin_node[1].__left_;
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  v10 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v3, v10))
  {
    v11 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "Timeout closing encoders.", v12, 2u);
    }
  }
}

- (void)processForceFinishRecording
{
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording", buf, 2u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MOVStreamWriter_processForceFinishRecording__block_invoke;
  block[3] = &unk_279847EE0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __46__MOVStreamWriter_processForceFinishRecording__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 01", buf, 2u);
  }

  [*(a1 + 32) cancelTimeoutBlock];
  v4 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v30 = 0;
    _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 02", v30, 2u);
  }

  [*(a1 + 32) clearAllFifoQueues];
  v5 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v29 = 0;
    _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 03", v29, 2u);
  }

  v6 = dispatch_group_create();
  v7 = *(a1 + 32);
  v8 = *(v7 + 184);
  v9 = (v7 + 192);
  if (v8 != (v7 + 192))
  {
    do
    {
      v10 = v8[13];
      if (v10)
      {
        [v10 closeEncoderInDispatchGroup:v6];
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v9);
  }

  v14 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v28 = 0;
    _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 04", v28, 2u);
  }

  [*(a1 + 32) finishingTimeout];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  dispatch_group_wait(v6, v16);
  v17 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v27 = 0;
    _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 05", v27, 2u);
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 184);
  v20 = (v18 + 192);
  if (v19 != (v18 + 192))
  {
    do
    {
      [v19[9] markAsFinished];
      [v19[10] markAsFinished];
      v21 = v19[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v19[2];
          v13 = *v22 == v19;
          v19 = v22;
        }

        while (!v13);
      }

      v19 = v22;
    }

    while (v22 != v20);
  }

  v23 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v26 = 0;
    _os_log_impl(&dword_257883000, v23, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 06", v26, 2u);
  }

  [*(a1 + 32) setFinalConsume:1];
  [*(a1 + 32) triggerWritingThread];
  v24 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *v25 = 0;
    _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_INFO, "[FINISH] processForceFinishRecording 07", v25, 2u);
  }

  [*(a1 + 32) finishAVWriter];
  objc_autoreleasePoolPop(v2);
}

- (void)finishAVWriter
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "[FINISH] finishAVWriter 01", buf, 2u);
  }

  m_assetWriter = self->m_assetWriter;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__MOVStreamWriter_finishAVWriter__block_invoke;
  v5[3] = &unk_279847EE0;
  v5[4] = self;
  [(AVAssetWriter *)m_assetWriter finishWritingWithCompletionHandler:v5];
}

void __33__MOVStreamWriter_finishAVWriter__block_invoke(uint64_t a1)
{
  v2 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v2, OS_LOG_TYPE_INFO, "[FINISH] finishAVWriter 02", buf, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*(a1 + 32) + 96) error];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5[48] criticalErrorOccurred:v4 context:*(a1 + 32)];
    v7 = [v5 activateNewState:v6 byEvent:@"finishAVWriter"];

    if ((v7 & 1) == 0)
    {
      __assert_rtn("[MOVStreamWriter finishAVWriter]_block_invoke", "MOVStreamWriter.mm", 2717, "0");
    }
  }

  else
  {
    if ([*(a1 + 32) preserveSessionStartTime])
    {
      [*(a1 + 32) sessionStartTime];
      v8 = [*(*(a1 + 32) + 96) outputURL];
      v14 = 0;
      v9 = [MOVStreamIOUtility saveSessionStartTime:buf toMovieAtURL:v8 error:&v14];
      v10 = v14;

      if (v9)
      {
        v4 = v10;
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving sessionStartTime: %@", v10];
        v4 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:v11 code:0];

        [*(a1 + 32) informDelegateAboutError:v4];
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = *(a1 + 32);
    v13 = [v12[48] nextFinishStep:v12];
    LOBYTE(v12) = [v12 activateNewState:v13 byEvent:@"finishAVWriter"];

    if ((v12 & 1) == 0)
    {
      __assert_rtn("[MOVStreamWriter finishAVWriter]_block_invoke", "MOVStreamWriter.mm", 2733, "0");
    }
  }

  objc_sync_exit(v3);
}

- (void)processCancelRecording
{
  objc_initWeak(&location, self);
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  v4 = dispatch_queue_create("com.apple.streamwriter.cancel", v3);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MOVStreamWriter_processCancelRecording__block_invoke;
  block[3] = &unk_279847F08;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(v4, block);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

void __41__MOVStreamWriter_processCancelRecording__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[12];
    if (v5 && [v5 status] == 1)
    {
      [v4[12] cancelWriting];
    }

    [v4 clearAllFifoQueues];
    [v4 closeEncodersAfterFailure];
    [v4 setFinalConsume:1];
    [v4 triggerWritingThread];
    v6 = v4;
    objc_sync_enter(v6);
    v7 = [*(*(a1 + 32) + 384) finishedCancelRecording:?];
    [v6 activateNewState:v7 byEvent:@"processCancelRecording"];

    objc_sync_exit(v6);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)deleteFileOnCancel
{
  v3 = objc_opt_new();
  v4 = [(NSURL *)self->m_writeURL path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [(NSURL *)self->m_writeURL path];
    v9 = 0;
    v7 = [v3 removeItemAtPath:v6 error:&v9];
    v8 = v9;

    if ((v7 & 1) == 0)
    {
      [(MOVStreamWriter *)self informDelegateAboutError:v8];
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)processFinishRecording
{
  m_processingQueue = self->m_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MOVStreamWriter_processFinishRecording__block_invoke;
  block[3] = &unk_279847EE0;
  block[4] = self;
  dispatch_async(m_processingQueue, block);
}

void __41__MOVStreamWriter_processFinishRecording__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logFifoUsage];
  v3 = dispatch_group_create();
  if (+[MIOLog debugEnabled])
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_DEBUG, "Close all VT encoders.", buf, 2u);
    }
  }

  v5 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 01", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  v8 = (v6 + 192);
  if (v7 != (v6 + 192))
  {
    do
    {
      v9 = v7[13];
      if (v9)
      {
        [v9 closeEncoderInDispatchGroup:v3];
      }

      v10 = v7[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }

  v13 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 02", buf, 2u);
  }

  if (+[MIOLog debugEnabled])
  {
    v14 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_DEBUG, "Wait for encoders...", buf, 2u);
    }
  }

  [*(a1 + 32) finishingTimeout];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  dispatch_group_wait(v3, v16);
  if (+[MIOLog debugEnabled])
  {
    v17 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_DEBUG, "All encoders closed.", buf, 2u);
    }
  }

  v18 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 03", buf, 2u);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 184);
  v21 = (v19 + 192);
  if (v20 != (v19 + 192))
  {
    do
    {
      v22 = v20[13];
      if (v22)
      {
        v20[13] = 0;
      }

      v23 = v20[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v20[2];
          v12 = *v24 == v20;
          v20 = v24;
        }

        while (!v12);
      }

      v20 = v24;
    }

    while (v24 != v21);
  }

  objc_autoreleasePoolPop(v2);
  v25 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v25, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 04", buf, 2u);
  }

  if ([*(a1 + 32) checkIfFifoAreEmpty])
  {
    v26 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v26, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 05", buf, 2u);
    }

    v27 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v27, OS_LOG_TYPE_INFO, "Last Trigger!", buf, 2u);
    }

    [*(a1 + 32) setFinalConsume:1];
    [*(a1 + 32) triggerWritingThread];
    v28 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 06", buf, 2u);
    }

    v29 = *(a1 + 32);
    v30 = *(v29 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__MOVStreamWriter_processFinishRecording__block_invoke_548;
    block[3] = &unk_279847EE0;
    block[4] = v29;
    dispatch_async(v30, block);
  }

  else
  {
    [*(a1 + 32) logFifoUsage];
    v31 = *(a1 + 32);
    objc_sync_enter(v31);
    v32 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"Late frames arrived from encoder. Drain fifos again..." code:0];
    v33 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v33, OS_LOG_TYPE_INFO, "Still frames in Fifo. Wait...", buf, 2u);
    }

    v34 = *(a1 + 32);
    v35 = [v34[48] finishRecording:v34];
    [v34 activateNewState:v35 byEvent:@"processFinishRecording-checkIfFifoAreEmpty"];

    objc_sync_exit(v31);
  }
}

void __41__MOVStreamWriter_processFinishRecording__block_invoke_548(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v2, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 07", buf, 2u);
  }

  v3 = os_signpost_id_generate(*(*(a1 + 32) + 456));
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v6 = (v4 + 192);
  if (v5 != (v4 + 192))
  {
    v7 = v3;
    do
    {
      v8 = v5 + 4;
      if (*(v5 + 55) < 0)
      {
        v8 = *v8;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      if ([v5[24] count])
      {
        v10 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v32 = v9;
          _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_INFO, "Writing pending frame attachments for stream '%{public}@'.", buf, 0xCu);
        }
      }

      v11 = [v5[24] sortedArrayUsingComparator:&__block_literal_global_4];
      [v5[24] removeAllObjects];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = *v27;
LABEL_13:
        v15 = 0;
        while (1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (([*(a1 + 32) writeVideoFrameStreamAttachmentsData:*(*(&v26 + 1) + 8 * v15) toMetadataAdaptor:v5[11] ofStream:v9 signpost:v7] & 1) == 0)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v13)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != v6);
  }

  v19 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 08", buf, 2u);
  }

  [*(a1 + 32) cancelTimeoutBlock];
  v20 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 09", buf, 2u);
  }

  v21 = *(a1 + 32);
  objc_sync_enter(v21);
  v22 = *(a1 + 32);
  v23 = [v22[48] nextFinishStep:v22];
  LOBYTE(v22) = [v22 activateNewState:v23 byEvent:@"processFinishRecording"];

  objc_sync_exit(v21);
  if (v22)
  {
    v24 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_INFO, "[FINISH] processFinishRecording 10", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
}

uint64_t __41__MOVStreamWriter_processFinishRecording__block_invoke_549(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v12 = *time1;
  v13 = *&time1[16];
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v9 = *time1;
  *time1 = v12;
  *&time1[16] = v13;
  v8 = v9;
  v6 = CMTimeCompare(time1, &v8);

  return v6;
}

- (void)checkForFinishing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MOVStreamWriter *)v2 state];
  v4 = [v3 stopWriterWhenFifosAreEmpty:v2];

  if (v4 && [(MOVStreamWriter *)v2 checkIfFifoAreEmpty])
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "FINISHING!", v9, 2u);
    }

    v6 = [(MOVStreamWriter *)v2 state];
    v7 = [v6 nextFinishStep:v2];
    v8 = [(MOVStreamWriter *)v2 activateNewState:v7 byEvent:@"checkForFinishing"];

    if (!v8)
    {
      __assert_rtn("[MOVStreamWriter checkForFinishing]", "MOVStreamWriter.mm", 2903, "0");
    }
  }

  objc_sync_exit(v2);
}

- (void)triggerWritingThread
{
  dispatch_semaphore_signal(self->_writingSema);
  writingMetadataSema = self->_writingMetadataSema;

  dispatch_semaphore_signal(writingMetadataSema);
}

- (int)getCountByPriorityForFifo:(unint64_t)a3 capacity:(unint64_t)a4
{
  if (a3 <= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)startWritingThread
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CCACC8]);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __37__MOVStreamWriter_startWritingThread__block_invoke;
  v9 = &unk_279847EB8;
  objc_copyWeak(&v10, &location);
  v4 = [v3 initWithBlock:&v6];
  writeThread = self->_writeThread;
  self->_writeThread = v4;

  [(NSThread *)self->_writeThread setName:@"MOVStreamWriter", v6, v7, v8, v9];
  [(NSThread *)self->_writeThread setQualityOfService:33];
  [(NSThread *)self->_writeThread start];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__MOVStreamWriter_startWritingThread__block_invoke(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.movstreamwriter.writingthread", "PointsOfInterest");
  v89 = os_signpost_id_generate(v2);
  v87 = v2;
  spid = os_signpost_id_generate(v2);
  v3 = objc_autoreleasePoolPush();
  v91 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v97 = os_signpost_id_generate(WeakRetained[57]);
  [(os_log_t *)WeakRetained writingThreadPriority];
  v6 = v5;

  objc_autoreleasePoolPop(v3);
  if (([MEMORY[0x277CCACC8] setThreadPriority:v6] & 1) == 0)
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "[WritingThread] Cannot set priority to %f.", buf, 0xCu);
    }
  }

  v88 = spid - 1;
  v93 = v89 - 1;
  *&v7 = 67109120;
  v85 = v7;
  while (2)
  {
    v9 = v87;
    v10 = v9;
    log = v9;
    if (v88 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = os_signpost_enabled(v9);
      v10 = log;
      if (v11)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "write thread", "", buf, 2u);
        v10 = log;
      }
    }

    v90 = 1;
    do
    {
      v12 = log;
      v13 = v12;
      if (v93 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v89, "write fifo samples", "", buf, 2u);
      }

      v95 = v13;

      context = objc_autoreleasePoolPush();
      v14 = objc_loadWeakRetained((v91 + 32));
      v101 = v14;
      if (!v14)
      {
        v90 = 0;
        v99 = 1;
        v36 = 5;
        goto LABEL_144;
      }

      v15 = v14[23];
      v96 = v14 + 24;
      if (v15 == v14 + 24)
      {
        v16 = 0;
        v99 = 0;
        goto LABEL_75;
      }

      v99 = 0;
      v16 = 0;
      do
      {
        [v15[32] setVisitCount:{objc_msgSend(v15[32], "visitCount", v85) + 1}];
        if (*(v15 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v108, v15[4], v15[5]);
        }

        else
        {
          v108 = *(v15 + 4);
        }

        if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v108;
        }

        else
        {
          v17 = v108.__r_.__value_.__r.__words[0];
        }

        v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        v18 = [v101 isAudioStream:v15 + 7];
        v19 = v15[14];
        objc_sync_enter(v19);
        v20 = [v101 getCountByPriorityForFifo:objc_msgSend(v15[14] capacity:{"count"), v15[15]}];
        if (v20 < 1)
        {
          goto LABEL_62;
        }

        v98 = v18;
        while (![v15[14] count])
        {
LABEL_43:
          if (!--v20)
          {
            goto LABEL_50;
          }
        }

        [v15[32] setAttemptCount:{objc_msgSend(v15[32], "attemptCount") + 1}];
        ++v16;
        if ([v15[9] isReadyForMoreMediaData] && ((v15[23] & 1) != 0 || objc_msgSend(v15[10], "isReadyForMoreMediaData")))
        {
          if (![v19 count])
          {
            goto LABEL_45;
          }

          v21 = [v19 firstObject];
          v22 = [v21 sampleBuffer];
          v23 = [v21 metadata];
          if (+[MIOLog debugEnabled])
          {
            v24 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              CMSampleBufferGetPresentationTimeStamp(&time, v22);
              Seconds = CMTimeGetSeconds(&time);
              v26 = [v19 count];
              v27 = v15[15];
              *buf = 138544130;
              *&buf[4] = v100;
              *&buf[12] = 2048;
              *&buf[14] = Seconds;
              *&buf[22] = 2048;
              *&buf[24] = v26;
              LOWORD(v107) = 2048;
              *(&v107 + 2) = v27;
              _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Consume (%{public}@) PTS: %f (%lu/%lu)", buf, 0x2Au);
            }
          }

          v28 = v101;
          if ((*(v101 + 114) & 1) == 0)
          {
            CMSampleBufferGetPresentationTimeStamp(buf, v22);
            v29 = [v101 delegate];
            v30 = v101[1];
            v104 = 0;
            v31 = [v101 startSessionWithFallbackSampleTime:buf streamId:v100 mediaType:v98 writerDelegate:v29 delegateCallbackQueue:v30 error:&v104];
            v32 = v104;

            if (v31)
            {

              v28 = v101;
              goto LABEL_36;
            }

            v38 = v101;
            objc_sync_enter(v38);
            v39 = [v101[48] criticalErrorOccurred:v32 context:v38];
            [v38 activateNewState:v39 byEvent:@"startWritingThread-sample"];

            objc_sync_exit(v38);
            v36 = 1;
LABEL_53:

            goto LABEL_54;
          }

LABEL_36:
          if ([v28 canWriteData])
          {
            [v101 writeSampleBuffer:v22 andMetadata:v23 forStreamId:v100 signpost:v97];
            [v15[32] setWriteCount:{objc_msgSend(v15[32], "writeCount") + 1}];
            v99 = 1;
          }

          else
          {
            if ([v101 isOrWasCanceled])
            {
              [v19 removeObjectAtIndex:0];
              [v15[32] setFifoItemCount:{objc_msgSend(v19, "count")}];
              CFRelease(v22);
              v36 = 8;
              goto LABEL_53;
            }

            v33 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = [v101[48] name];
              *buf = 138543618;
              *&buf[4] = v100;
              *&buf[12] = 2114;
              *&buf[14] = v34;
              _os_log_impl(&dword_257883000, v33, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: [FIFO] CANNOT Write Item of stream '%{public}@' for state %{public}@ ⛔️⛔️⛔️", buf, 0x16u);
            }
          }

          [v19 removeObjectAtIndex:0];
          [v15[32] setFifoItemCount:{objc_msgSend(v19, "count")}];
          CFRelease(v22);
          v35 = [v19 count] == 0;

          if (v35)
          {
LABEL_45:
            v36 = 8;
            v37 = 1;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

        if (!+[MIOLog debugEnabled])
        {
LABEL_50:
          v37 = 0;
          v36 = 8;
          goto LABEL_55;
        }

        v21 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v100;
          _os_log_impl(&dword_257883000, v21, OS_LOG_TYPE_DEBUG, "[WritingThread] Input for %{public}@ not ready.", buf, 0xCu);
        }

        v36 = 8;
LABEL_54:

        v37 = 0;
LABEL_55:
        if (v36 == 8)
        {
          v36 = 0;
          if (v37)
          {
            if (+[MIOLog debugEnabled])
            {
              v40 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v100;
                _os_log_impl(&dword_257883000, v40, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Precheck All Fifo items written '%{public}@'", buf, 0xCu);
              }
            }

            [v101 checkForFinishing];
LABEL_62:
            v36 = 0;
          }
        }

        objc_sync_exit(v19);

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (v36)
        {
          goto LABEL_144;
        }

        v41 = v15[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v15[2];
            v43 = *v42 == v15;
            v15 = v42;
          }

          while (!v43);
        }

        v15 = v42;
      }

      while (v42 != v96);
LABEL_75:
      v44 = v101[29];
      if (v44 == v101 + 30)
      {
LABEL_137:
        v36 = 0;
        if ((v99 & 1) == 0 && v16)
        {
          if (+[MIOLog debugEnabled])
          {
            v70 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = v85;
              *&buf[4] = v16;
              _os_log_impl(&dword_257883000, v70, OS_LOG_TYPE_DEBUG, "[WritingThread] nothing written (attempts: %d).", buf, 8u);
            }
          }

          v36 = 0;
          v99 = 0;
        }

        goto LABEL_144;
      }

      while (2)
      {
        if (*(v44 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&time, v44[4], v44[5]);
        }

        else
        {
          time = *(v44 + 4);
        }

        if (time.epoch >= 0)
        {
          p_time = &time;
        }

        else
        {
          p_time = time.value;
        }

        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_time, v85}];
        [v44[15] setVisitCount:{objc_msgSend(v44[15], "visitCount") + 1}];
        v47 = v44[11];
        objc_sync_enter(v47);
        v48 = [v101 getCountByPriorityForFifo:objc_msgSend(v44[11] capacity:{"count"), v44[12]}];
        if (v48 < 1)
        {
          goto LABEL_127;
        }

        while (2)
        {
          if (![v47 count])
          {
LABEL_106:
            if (!--v48)
            {
              goto LABEL_112;
            }

            continue;
          }

          break;
        }

        [v44[15] setAttemptCount:{objc_msgSend(v44[15], "attemptCount") + 1}];
        ++v16;
        if ([v44[7] isReadyForMoreMediaData])
        {
          if (![v47 count])
          {
            goto LABEL_108;
          }

          v49 = [v47 firstObject];
          if (+[MIOLog debugEnabled])
          {
            v50 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              if (v49)
              {
                [v49 timeRange];
              }

              else
              {
                v107 = 0u;
                memset(buf, 0, sizeof(buf));
              }

              v103 = *buf;
              v51 = CMTimeGetSeconds(&v103);
              v52 = [v47 count];
              v53 = v44[12];
              LODWORD(v108.__r_.__value_.__l.__data_) = 138544130;
              *(v108.__r_.__value_.__r.__words + 4) = v46;
              WORD2(v108.__r_.__value_.__r.__words[1]) = 2048;
              *(&v108.__r_.__value_.__r.__words[1] + 6) = v51;
              HIWORD(v108.__r_.__value_.__r.__words[2]) = 2048;
              v109 = v52;
              v110 = 2048;
              v111 = v53;
              _os_log_impl(&dword_257883000, v50, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Consume (%{public}@) PTS: %f (%lu/%lu)", &v108, 0x2Au);
            }
          }

          v54 = v101;
          if ((*(v101 + 114) & 1) == 0)
          {
            if (v49)
            {
              v55 = v101;
              [v49 timeRange];
            }

            else
            {
              v107 = 0u;
              memset(buf, 0, sizeof(buf));
              v55 = v101;
            }

            v108 = *buf;
            v56 = [v55 delegate];
            v57 = v55[1];
            v102 = 0;
            v58 = [v55 startSessionWithFallbackSampleTime:&v108 streamId:v46 mediaType:2 writerDelegate:v56 delegateCallbackQueue:v57 error:&v102];
            v59 = v102;

            if ((v58 & 1) == 0)
            {
              v65 = v101;
              objc_sync_enter(v65);
              v66 = [v101[48] criticalErrorOccurred:v59 context:v65];
              [v65 activateNewState:v66 byEvent:@"startWritingThread-metadata"];

              objc_sync_exit(v65);
              v63 = 1;
              goto LABEL_116;
            }

            v54 = v101;
          }

          if ([v54 canWriteData])
          {
            [v101 writeMetadata:v49 forStreamId:v46];
            [v44[15] setWriteCount:{objc_msgSend(v44[15], "writeCount") + 1}];
            v99 = 1;
          }

          else
          {
            if ([v101 isOrWasCanceled])
            {
              [v47 removeObjectAtIndex:0];
              [v44[15] setFifoItemCount:{objc_msgSend(v47, "count")}];
              goto LABEL_115;
            }

            v60 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = [v101[48] name];
              *buf = 138543618;
              *&buf[4] = v46;
              *&buf[12] = 2114;
              *&buf[14] = v61;
              _os_log_impl(&dword_257883000, v60, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: [FIFO] CANNOT Write Item of metadata stream '%{public}@' for state %{public}@ ⛔️⛔️⛔️", buf, 0x16u);
            }
          }

          [v47 removeObjectAtIndex:0];
          [v44[15] setFifoItemCount:{objc_msgSend(v47, "count")}];
          v62 = [v47 count] == 0;

          if (v62)
          {
LABEL_108:
            v63 = 13;
            v64 = 1;
            goto LABEL_117;
          }

          goto LABEL_106;
        }

        if (!+[MIOLog debugEnabled])
        {
LABEL_112:
          v64 = 0;
          v63 = 13;
          goto LABEL_117;
        }

        v49 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v46;
          _os_log_impl(&dword_257883000, v49, OS_LOG_TYPE_DEBUG, "[WritingThread] Input for %{public}@ not ready.", buf, 0xCu);
        }

LABEL_115:
        v63 = 13;
LABEL_116:

        v64 = 0;
LABEL_117:
        if (v63 == 13)
        {
          v36 = 0;
        }

        else
        {
          v36 = v63;
        }

        if (v63 == 13 && v64)
        {
          if (+[MIOLog debugEnabled])
          {
            v67 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v46;
              _os_log_impl(&dword_257883000, v67, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Precheck All Fifo items written '%{public}@'", buf, 0xCu);
            }
          }

          [v101 checkForFinishing];
LABEL_127:
          v36 = 0;
        }

        objc_sync_exit(v47);

        if (SHIBYTE(time.epoch) < 0)
        {
          operator delete(time.value);
        }

        if (!v36)
        {
          v68 = v44[1];
          if (v68)
          {
            do
            {
              v69 = v68;
              v68 = *v68;
            }

            while (v68);
          }

          else
          {
            do
            {
              v69 = v44[2];
              v43 = *v69 == v44;
              v44 = v69;
            }

            while (!v43);
          }

          v44 = v69;
          if (v69 == v101 + 30)
          {
            goto LABEL_137;
          }

          continue;
        }

        break;
      }

LABEL_144:

      objc_autoreleasePoolPop(context);
      if (v36)
      {
        if (v36 == 5)
        {
          break;
        }

        goto LABEL_166;
      }

      v71 = v95;
      v72 = v71;
      if (v93 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v72, OS_SIGNPOST_INTERVAL_END, v89, "write fifo samples", "", buf, 2u);
      }
    }

    while ((v99 & 1) != 0);
    v73 = objc_autoreleasePoolPush();
    v74 = objc_loadWeakRetained((v91 + 32));
    v75 = v74;
    if (!v74)
    {
      v90 = 0;
      goto LABEL_160;
    }

    if ([v74 finalConsume])
    {
      v76 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v76, OS_LOG_TYPE_INFO, "[WritingThread] finalConsume", buf, 2u);
      }

      v77 = v95;
      v78 = v77;
      if (v88 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v77))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v78, OS_SIGNPOST_INTERVAL_END, spid, "write thread", "", buf, 2u);
      }

      [v75 clearAllFifoQueues];
LABEL_160:
      v36 = 3;
    }

    else
    {
      v79 = v75[4];
      v80 = dispatch_time(0, 11100000);
      dispatch_semaphore_wait(v79, v80);
      v81 = v95;
      v82 = v81;
      if (v88 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v82, OS_SIGNPOST_INTERVAL_END, spid, "write thread", "", buf, 2u);
      }

      [v75 setWriteThreadCount:{objc_msgSend(v75, "writeThreadCount") + 1}];
      v90 = [v75 canWriteData];

      v75 = 0;
      v36 = 0;
    }

    objc_autoreleasePoolPop(v73);
LABEL_166:
    v83 = v95;
    if (!v36)
    {
      if ((v90 & 1) == 0)
      {
LABEL_170:
        v84 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_257883000, v84, OS_LOG_TYPE_INFO, "[WritingThread] Exiting writing loop.", buf, 2u);
        }

        v83 = v95;
        goto LABEL_173;
      }

      continue;
    }

    break;
  }

  if (v36 == 3)
  {
    goto LABEL_170;
  }

LABEL_173:
}

- (void)consumeMetadatOfMetadataStream:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[MIOLog debugEnabled])
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_DEBUG, "consumeMetadatOfMetadataStream: %@", &v9, 0xCu);
    }
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MOVStreamWriter *)v6 state];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MOVStreamWriter *)v6 resetTimeoutRefTime];
  }

  objc_sync_exit(v6);

  [(MOVStreamWriter *)v6 triggerWritingThread];
}

- (void)consumeSamplesOfVideoAudioStream:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[MIOLog debugEnabled])
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_DEBUG, "consumeSamplesOfVideoAudioStream: %@", &v9, 0xCu);
    }
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MOVStreamWriter *)v6 state];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MOVStreamWriter *)v6 resetTimeoutRefTime];
  }

  objc_sync_exit(v6);

  [(MOVStreamWriter *)v6 triggerWritingThread];
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 andMetadata:(id)a4 forStreamId:(id)a5 signpost:(unint64_t)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v10 = a5;
  std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
  v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v13 = self->_perfLogAVF;
  v14 = v13;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_257883000, v14, OS_SIGNPOST_INTERVAL_BEGIN, a6, "mio.appendSampleBuffer", "", buf, 2u);
  }

  v15 = [*(v11 + 16) appendSampleBuffer:a3];
  v16 = self->_perfLogAVF;
  v17 = v16;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_257883000, v17, OS_SIGNPOST_INTERVAL_END, a6, "mio.appendSampleBuffer", "", buf, 2u);
  }

  if (v15)
  {
    v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v12;
    if (v18 > 0xA7D8C0)
    {
      v19 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].value) = 138543618;
        *(&buf[0].value + 4) = v10;
        LOWORD(buf[0].flags) = 2048;
        *(&buf[0].flags + 2) = v18;
        _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_ERROR, "[MIO PERF] duration %{public}@ %llu", buf, 0x16u);
      }
    }

    if (!v34 || (*(v11 + 128) & 1) != 0)
    {
LABEL_31:
      [(MOVStreamWriter *)self informDelegateAboutMediaWrittenForStream:v10 mediaType:*(v11 + 184)];
      goto LABEL_33;
    }

    [v34 timeRange];
    v40 = buf[0];
    if ([*(v11 + 48) frameReorderingEnabled])
    {
      if (*(v11 + 156))
      {
        buf[0] = *(v11 + 144);
        time2 = v40;
        v32 = CMTimeCompare(buf, &time2);
        v33 = *(v11 + 136);
        if (v32 < 1)
        {
          v20 = [v33 sortedArrayUsingComparator:&__block_literal_global_576];
          [*(v11 + 136) removeAllObjects];
          [*(v11 + 136) addObject:v34];
          *(v11 + 144) = v40;
        }

        else
        {
          [v33 addObject:v34];
          v20 = 0;
        }

        goto LABEL_18;
      }

      *(v11 + 144) = v40;
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithObject:v34];
LABEL_18:
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v22)
    {
      v23 = *v36;
LABEL_20:
      v24 = 0;
      while (1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v35 + 1) + 8 * v24);
        v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (![(MOVStreamWriter *)self writeVideoFrameStreamAttachmentsData:v25 toMetadataAdaptor:*(v11 + 32) ofStream:v10 signpost:a6])
        {
          break;
        }

        v27 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v26;
        if (v27 > 0xA7D8C0)
        {
          v28 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf[0].value) = 138543618;
            *(&buf[0].value + 4) = v10;
            LOWORD(buf[0].flags) = 2048;
            *(&buf[0].flags + 2) = v27;
            _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_INFO, "[MIO PERF a] %{public}@ duration %llu", buf, 0x16u);
          }
        }

        if (v22 == ++v24)
        {
          v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v22)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }

    goto LABEL_31;
  }

  v29 = [(AVAssetWriter *)self->m_assetWriter error];
  v30 = self;
  objc_sync_enter(v30);
  v31 = [(MOVStreamWriterState *)v30->_state criticalErrorOccurred:v29 context:v30];
  [(MOVStreamWriter *)v30 activateNewState:v31 byEvent:@"writeSampleBuffer"];

  objc_sync_exit(v30);
LABEL_33:
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t __70__MOVStreamWriter_writeSampleBuffer_andMetadata_forStreamId_signpost___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v12 = *time1;
  v13 = *&time1[16];
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    v11 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v9 = *time1;
  *time1 = v12;
  *&time1[16] = v13;
  v8 = v9;
  v6 = CMTimeCompare(time1, &v8);

  return v6;
}

- (BOOL)writeVideoFrameStreamAttachmentsData:(id)a3 toMetadataAdaptor:(id)a4 ofStream:(id)a5 signpost:(unint64_t)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  std::string::basic_string[abi:ne200100]<0>(__p, [v12 UTF8String]);
  *time1 = __p;
  v13 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->m_lastPtsForAttachmentsStream, __p);
  v37 = *(v13 + 56);
  v14 = *(v13 + 68);
  v38 = *(v13 + 64);
  v15 = *(v13 + 72);
  if (v10)
  {
    [v10 timeRange];
  }

  else
  {
    v33 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v34 = *time1;
  if (v14)
  {
    *time1 = v37;
    *&time1[8] = __PAIR64__(v14, v38);
    *&time1[16] = v15;
    time2 = v34;
    if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0)
    {
      v16 = MEMORY[0x277CCACA8];
      *time1 = v34;
      Seconds = CMTimeGetSeconds(time1);
      *time1 = v37;
      *&time1[8] = __PAIR64__(v14, v38);
      *&time1[16] = v15;
      v18 = [v16 stringWithFormat:@"Sample buffers attachments appended with presentation timestamp (%f) less than (or equal to) previous sample buffer (%f) for stream '%@'. Inconsistency!", *&Seconds, CMTimeGetSeconds(time1), v12];
      v19 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v18 code:15];
      [(MOVStreamWriter *)self informDelegateAboutError:v19];

      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_22;
    }
  }

  v20 = self->_perfLogAVF;
  v21 = v20;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *time1 = 0;
    _os_signpost_emit_with_name_impl(&dword_257883000, v21, OS_SIGNPOST_INTERVAL_BEGIN, a6, "mio.att_appendTimedMetadataGroup", "", time1, 2u);
  }

  v22 = [v11 appendTimedMetadataGroup:v10];
  v23 = self->_perfLogAVF;
  v24 = v23;
  if (a6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *time1 = 0;
    _os_signpost_emit_with_name_impl(&dword_257883000, v24, OS_SIGNPOST_INTERVAL_END, a6, "mio.att_appendTimedMetadataGroup", "", time1, 2u);
  }

  if (v22)
  {
    *time1 = __p;
    v25 = std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->m_lastPtsForAttachmentsStream, __p);
    *(v25 + 56) = v34;
  }

  else
  {
    v26 = [(AVAssetWriter *)self->m_assetWriter error];
    v27 = self;
    objc_sync_enter(v27);
    v28 = [(MOVStreamWriterState *)v27->_state criticalErrorOccurred:v26 context:v27];
    [(MOVStreamWriter *)v27 activateNewState:v28 byEvent:@"writeMetadataOfSample"];

    objc_sync_exit(v27);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
    if (!v22)
    {
LABEL_22:
      v29 = 0;
      goto LABEL_23;
    }
  }

  else if (!v22)
  {
    goto LABEL_22;
  }

  v29 = 1;
LABEL_23:

  return v29;
}

- (void)writeMetadata:(id)a3 forStreamId:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  if (v6)
  {
    v9 = v8;
    if (+[MIOLog debugEnabled])
    {
      v10 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_DEBUG, "writeMetadata: call 'metadataAdaptor appendTimedMetadataGroup' for stream: %@", buf, 0xCu);
      }
    }

    v11 = self->_perfLogAVF;
    v12 = v11;
    avfAppendMetadataSignPost = self->_avfAppendMetadataSignPost;
    if (avfAppendMetadataSignPost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v12, OS_SIGNPOST_INTERVAL_BEGIN, avfAppendMetadataSignPost, "mio.append.timed.metadata.group", "", buf, 2u);
    }

    v14 = [*(v9 + 8) appendTimedMetadataGroup:v6];
    v15 = self->_perfLogAVF;
    v16 = v15;
    v17 = self->_avfAppendMetadataSignPost;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v16, OS_SIGNPOST_INTERVAL_END, v17, "mio.append.timed.metadata.group", "", buf, 2u);
    }

    if (+[MIOLog debugEnabled])
    {
      v18 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = v7;
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_DEBUG, "writeMetadata: call 'metadataAdaptor appendTimedMetadataGroup' for stream: %@ Success: %d", buf, 0x12u);
      }
    }

    if (v14)
    {
      [(MOVStreamWriter *)self informDelegateAboutMediaWrittenForStream:v7 mediaType:2];
    }

    else
    {
      v19 = [(AVAssetWriter *)self->m_assetWriter error];
      v20 = self;
      objc_sync_enter(v20);
      v21 = [(MOVStreamWriterState *)v20->_state criticalErrorOccurred:v19 context:v20];
      [(MOVStreamWriter *)v20 activateNewState:v21 byEvent:@"writeMetadata"];

      objc_sync_exit(v20);
    }
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

- (double)getExpectedFrameRateForStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  v6 = v5;
  if (v5 && ([v5 objectForKey:@"ExpectedFrameRateForStream"], v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
  {
    [v7 doubleValue];
    m_expectedFrameRate = v9;
  }

  else
  {
    m_expectedFrameRate = self->m_expectedFrameRate;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return m_expectedFrameRate;
}

- (CGAffineTransform)getVideoTransformForStream:(SEL)a3
{
  v6 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  v8 = v7;
  if (v7 && ([v7 objectForKey:@"VideoTransform"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [MOVStreamIOUtility CGAffineTransformValueFromNSValue:v9];
  }

  else
  {
    v10 = *&self->m_videoTransform.c;
    *&retstr->a = *&self->m_videoTransform.a;
    *&retstr->c = v10;
    *&retstr->tx = *&self->m_videoTransform.tx;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return result;
}

- (int)encoderTypeForStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  v6 = v5;
  if (!v5)
  {
    __assert_rtn("[MOVStreamWriter encoderTypeForStream:]", "MOVStreamWriter.mm", 3423, "configuration");
  }

  v7 = [v5 objectForKey:@"StreamEncoderType"];
  v8 = [v7 intValue];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (void)setupAssetWriterStreamInputsWithError:(id *)a3
{
  v116 = *MEMORY[0x277D85DE8];
  begin = self->m_orderedStreamNames.__begin_;
  end = self->m_orderedStreamNames.__end_;
  if (begin == end)
  {
    return;
  }

  v93 = *MEMORY[0x277CE5EA8];
  v90 = *MEMORY[0x277CE5E48];
  v88 = *MEMORY[0x277CE6198];
  v89 = *MEMORY[0x277CE5E70];
  while (1)
  {
    v99 = begin;
    v6 = v99;
    if (*(v99 + 23) < 0)
    {
      v6 = *v99;
    }

    v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v7 = [MOVStreamOutputSettings outputSettingsForStream:v5 defaultFrameRate:self->m_enableAVEHighPerformanceProfile enableAVEHighPerformanceProfile:self->m_expectedFrameRate];
    v98 = v7;
    if (!v7)
    {
      goto LABEL_32;
    }

    v8 = [v7 settings];
    v9 = v8 == 0;

    if (v9)
    {
      if ([v98 useAsVCPConfig])
      {
        v14 = [MOVStreamVideoEncoderInterface alloc];
        v15 = [v98 encoderSpecVCP];
        v16 = [v98 sessionPropertiesVCP];
        v17 = [(MOVStreamVideoEncoderInterface *)v14 initForVCPEncodingStream:v104 videoEncoderSpec:v15 sessionProperties:v16 delegate:self];
        v18 = *(v5 + 48);
        *(v5 + 48) = v17;
      }

      else
      {
        v19 = [v98 config];
        v20 = v19 == 0;

        if (v20)
        {
          v25 = [MOVStreamVideoEncoderInterface alloc];
          [v98 expectedFrameRate];
          v26 = [(MOVStreamVideoEncoderInterface *)v25 initWithExpectedFrameRate:v104 forStream:self delegate:self->m_enableAVEHighPerformanceProfile enableAVEHighPerformanceProfile:?];
          v22 = *(v5 + 48);
          *(v5 + 48) = v26;
        }

        else
        {
          v21 = [MOVStreamVideoEncoderInterface alloc];
          v22 = [v98 config];
          v23 = [(MOVStreamVideoEncoderInterface *)v21 initForStream:v104 configuration:v22 delegate:self];
          v24 = *(v5 + 48);
          *(v5 + 48) = v23;
        }

        [*(v5 + 48) setCustomEncoderConfig:{objc_msgSend(v98, "useCustomEncoderConfig")}];
      }

      v27 = +[MOVStreamOptions sharedOptions];
      v28 = [v27 disableVTPreSetup];

      if (v28)
      {
        v13 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v104;
          _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_INFO, "Pre-initialize VTCompressionSession for stream '%{public}@' disabled.", buf, 0xCu);
        }

        v100 = 0;
        goto LABEL_23;
      }

      v29 = [*(v5 + 88) createTrackFormatDescriptionFromStreamData:v5];
      v30 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&dword_257883000, v30, OS_LOG_TYPE_INFO, "Pre-initialize VTCompressionSession for stream '%{public}@'...", buf, 0xCu);
      }

      if (([*(v5 + 48) preSetupWithFormatDescription:v29] & 1) == 0)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Orig fd: %@  Used fd: %@", *v5, v29];
        v32 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          *&buf[4] = v104;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_impl(&dword_257883000, v32, OS_LOG_TYPE_INFO, "Pre-initialize VTCompressionSession for stream '%{public}@' failed (%{public}@)! Will try again after first pixel buffer is appended...", buf, 0x16u);
        }
      }

      if (v29)
      {
        CFRelease(v29);
      }

LABEL_32:
      v100 = 0;
      goto LABEL_33;
    }

    v10 = [v98 settings];
    v11 = [(MOVStreamWriter *)self inProcessRecording];
    v100 = v10;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_ERROR, "MOVStreamWriter.inProcessRecording requires custom or none encoder settings. Encoding for stream %{public}@ will not performed in process!", buf, 0xCu);
      }

LABEL_23:
    }

LABEL_33:
    MediaType = CMFormatDescriptionGetMediaType(*v5);
    v102 = [MIOMediaTypeUtility matchingAVMediaTypeFromCMType:MediaType];
    *(v5 + 184) = [MIOMediaTypeUtility matchingMIOMediaTypeFromCMType:MediaType];
    if (*v5)
    {
      v34 = v102;
    }

    else
    {
      v35 = v93;

      *(v5 + 184) = 0;
      v34 = v35;
    }

    v103 = v34;
    if (!v34)
    {
      v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported media type (%d) for stream '%@'.", MediaType, v104];
      [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v85 code:11];

LABEL_103:
      goto LABEL_109;
    }

    if (![(AVAssetWriter *)self->m_assetWriter canApplyOutputSettings:v100 forMediaType:?])
    {
      v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to use output settings (%@) for track '%@'.", v100, v104];
      [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v86 code:11];

      goto LABEL_103;
    }

    v97 = *(v5 + 208);
    if (v97 <= 0)
    {
      v97 = [(MOVStreamWriter *)self baseMediaTimeScale];
    }

    v36 = [*(v5 + 88) createTrackFormatDescriptionFromStreamData:v5];
    v37 = +[MOVStreamOptions sharedOptions];
    v38 = [v37 skipSourceHint];

    if (v38 && v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v39 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v104;
      _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_INFO, "Will add AVAssetWriterInput for stream '%{public}@'", buf, 0xCu);
    }

    if (+[MIOLog debugEnabled])
    {
      v40 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        *&buf[4] = v104;
        *&buf[12] = 2114;
        *&buf[14] = v100;
        *&buf[22] = 2114;
        *&buf[24] = v36;
        _os_log_impl(&dword_257883000, v40, OS_LOG_TYPE_DEBUG, "Will add AVAssetWriterInput for stream '%{public}@' with outputSettings: %{public}@ \n sourceFormatHint: %{public}@", buf, 0x20u);
      }
    }

    v41 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:v103 outputSettings:v100 sourceFormatHint:v36];
    v42 = *(v5 + 16);
    *(v5 + 16) = v41;

    if (v36)
    {
      CFRelease(v36);
    }

    if (v103 != v90)
    {
      [*(v5 + 16) setMediaTimeScale:v97];
    }

    if (v103 == v93)
    {
      [(MOVStreamWriter *)self getVideoTransformForStream:v104];
      v43 = *(v5 + 16);
      *buf = v107;
      *&buf[16] = v108;
      v115 = v109;
      [v43 setTransform:buf];
    }

    [*(v5 + 16) setExpectsMediaDataInRealTime:self->m_realtime];
    if ([(MOVStreamWriter *)self legacyKeysMode])
    {
      v96 = [(MOVStreamWriter *)self getTrackMetadataForStream:v104];
      v113[0] = v96;
      v94 = [(MOVStreamWriter *)self getLegacyTrackMetadataForStream:v104];
      v113[1] = v94;
      v95 = [(MOVStreamWriter *)self getTrackInputPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v113[2] = v95;
      v44 = [(MOVStreamWriter *)self getTrackEncodedPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v113[3] = v44;
      v45 = [(MOVStreamWriter *)self getLegacyTrackInputPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v113[4] = v45;
      v46 = [(MOVStreamWriter *)self getLegacyTrackEncodedPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v113[5] = v46;
      v47 = [(MOVStreamWriter *)self getLegacyTrackMetadataForAttachmentsSerializationMode:v104 fromMap:&self->m_streamDataMap];
      v113[6] = v47;
      v48 = [(MOVStreamWriter *)self getTrackMetadataForAttachmentsSerializationMode:v104 fromMap:&self->m_streamDataMap];
      v113[7] = v48;
      v49 = [(MOVStreamWriter *)self getTrackMetadataForTrackTypeInfo:v104 fromMap:&self->m_streamDataMap];
      v113[8] = v49;
      v50 = [(MOVStreamWriter *)self getTrackMIOStreamEncoderTypeMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v113[9] = v50;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:10];
      v101 = [v51 mutableCopy];
    }

    else
    {
      v96 = [(MOVStreamWriter *)self getTrackMetadataForStream:v104];
      v112[0] = v96;
      v94 = [(MOVStreamWriter *)self getTrackInputPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v112[1] = v94;
      v95 = [(MOVStreamWriter *)self getTrackEncodedPixelFormatMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v112[2] = v95;
      v44 = [(MOVStreamWriter *)self getTrackMetadataForAttachmentsSerializationMode:v104 fromMap:&self->m_streamDataMap];
      v112[3] = v44;
      v45 = [(MOVStreamWriter *)self getTrackMetadataForTrackTypeInfo:v104 fromMap:&self->m_streamDataMap];
      v112[4] = v45;
      v46 = [(MOVStreamWriter *)self getTrackMIOStreamEncoderTypeMetadataForStream:v104 fromMap:&self->m_streamDataMap];
      v112[5] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:6];
      v101 = [v47 mutableCopy];
    }

    if (*(v5 + 104) && *(v5 + 112))
    {
      v52 = [(MOVStreamWriter *)self createRelatedToStreamMetadata:?];
      [v101 addObject:v52];

      v53 = [(MOVStreamWriter *)self createRelationSpecifierMetadata:*(v5 + 112)];
      [v101 addObject:v53];
    }

    v54 = [(MOVStreamWriter *)self getTrackMetadataForExactBytesPerRow:v104 fromMap:&self->m_streamDataMap error:a3];
    v55 = v54;
    if (*a3 && !v54)
    {

      goto LABEL_109;
    }

    if (v54)
    {
      [v101 addObject:v54];
    }

    v56 = [MEMORY[0x277CE6520] qtTrackMetadataItemsForStreamId:v104];
    [v101 addObjectsFromArray:v56];

    if ([MIOPixelBufferUtility isPixelFormatRawBayer:[(MOVStreamWriter *)self getPixelFormatForStream:v104 fromMap:&self->m_streamDataMap]])
    {
      v57 = [(MOVStreamWriter *)self getTrackMetadataForRawBayerRearrangeType:v104 fromMap:&self->m_streamDataMap];
      if (v57)
      {
        [v101 addObject:v57];
      }
    }

    v58 = [*(v5 + 40) objectForKey:@"OutputPixelFormatOverride"];
    v59 = v58;
    if (v58)
    {
      v60 = [MEMORY[0x277CE6520] trackMetadataItemWithOutputPixelFormatOverride:{objc_msgSend(v58, "intValue")}];
      if (v60)
      {
        [v101 addObject:v60];
      }
    }

    v61 = [*(v5 + 40) objectForKey:@"AdditionalCompressionProperties"];
    v62 = v61 == 0;

    if (v62)
    {
      v64 = v55;
    }

    else
    {
      v63 = [*(v5 + 40) objectForKey:@"AdditionalCompressionProperties"];
      v106 = 0;
      v64 = [MEMORY[0x277CE6520] trackMetadataItemWithAdditionalCompressionProperties:v63 error:&v106];
      v65 = v106;

      if (v65)
      {
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create track metadata item for additional encoder settings of stream %@. Error: %@", v104, v65];
        v67 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v66;
          _os_log_impl(&dword_257883000, v67, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }
      }

      else if (v64)
      {
        [v101 addObject:v64];
      }
    }

    v68 = [(MOVStreamWriter *)self customTrackMetadataForStream:v104 fromMap:&self->m_streamDataMap];
    if (v68)
    {
      [v101 addObjectsFromArray:v68];
    }

    v69 = [v101 copy];
    [*(v5 + 16) setMetadata:v69];

    if (*(v99 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v105, *v99, v99[1]);
    }

    else
    {
      v70 = *v99;
      v105.__r_.__value_.__r.__words[2] = v99[2];
      *&v105.__r_.__value_.__l.__data_ = v70;
    }

    [*(v5 + 16) setMarksOutputTrackAsEnabled:{-[MOVStreamWriter marksOutputTracksAsEnabledForStream:fromMap:](self, "marksOutputTracksAsEnabledForStream:fromMap:", &v105, &self->m_streamDataMap)}];
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    if (*(v5 + 128) != 1)
    {
      break;
    }

    if (![(AVAssetWriter *)self->m_assetWriter canAddInput:*(v5 + 16)])
    {
      v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add stream input to the asset writer to stream: %@", v104];
      [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v73 code:13];
      goto LABEL_108;
    }

    [(AVAssetWriter *)self->m_assetWriter addInput:*(v5 + 16)];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v72 = objc_opt_respondsToSelector();

    if (v72)
    {
      v73 = objc_loadWeakRetained(&self->_delegate);
      v111 = *(v5 + 16);
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
      [v73 streamWriter:self stream:v104 preparedTrackInputs:v74 mediaType:*(v5 + 184)];
LABEL_98:
    }

    begin = v99 + 3;
    if (v99 + 3 == end)
    {
      return;
    }
  }

  v75 = [(MOVStreamWriter *)self createMetadataFormatDescription:@"mdta/com.apple.stream_sample_attachments"];
  if (v75)
  {
    v76 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:v89 outputSettings:0 sourceFormatHint:v75];
    v77 = *(v5 + 24);
    *(v5 + 24) = v76;

    CFRelease(v75);
    v73 = [MOVStreamIOUtility qtTrackNameForAssociatedAttachmentsTrack:v104];
    v74 = [MEMORY[0x277CE6520] qtTrackMetadataItemsForStreamId:v73];
    [*(v5 + 24) setMetadata:v74];
    [*(v5 + 24) setMediaTimeScale:v97];
    [*(v5 + 24) setExpectsMediaDataInRealTime:self->m_realtime];
    [*(v5 + 24) addTrackAssociationWithTrackOfInput:*(v5 + 16) type:v88];
    v78 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:*(v5 + 24)];
    v79 = *(v5 + 32);
    *(v5 + 32) = v78;

    if (![(AVAssetWriter *)self->m_assetWriter canAddInput:*(v5 + 16)]|| ![(AVAssetWriter *)self->m_assetWriter canAddInput:*(v5 + 24)])
    {
      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add stream and metadata inputs to the asset writer to stream: %@", v104];
      [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v87 code:13];

      goto LABEL_108;
    }

    [(AVAssetWriter *)self->m_assetWriter addInput:*(v5 + 16)];
    [(AVAssetWriter *)self->m_assetWriter addInput:*(v5 + 24)];
    v80 = objc_loadWeakRetained(&self->_delegate);
    v81 = objc_opt_respondsToSelector();

    if (v81)
    {
      v82 = objc_loadWeakRetained(&self->_delegate);
      v83 = *(v5 + 24);
      v110[0] = *(v5 + 16);
      v110[1] = v83;
      v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
      [v82 streamWriter:self stream:v104 preparedTrackInputs:v84 mediaType:*(v5 + 184)];
    }

    goto LABEL_98;
  }

  v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get metadata format description for stream: %@", v104];
  [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v73 code:12];
LABEL_108:

LABEL_109:
}

- (void)setupMetadataInputsWithError:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  begin = self->m_orderedMetadataStreamNames.__begin_;
  end = self->m_orderedMetadataStreamNames.__end_;
  if (begin != end)
  {
    v35 = *MEMORY[0x277CE5E70];
    v37 = *MEMORY[0x277CC05F0];
    while (1)
    {
      v6 = begin;
      if (*(begin + 23) < 0)
      {
        v6 = *begin;
      }

      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      v7 = v5[2];
      if (!v7)
      {
        v8 = *(v5 + 24) ? @"mdta/com.apple.rawIMUDict" : @"mdta/com.apple.metadata_stream_item";
        v7 = [(MOVStreamWriter *)self createMetadataFormatDescription:v8];
        if (!v7)
        {
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get metadata format description for stream: %@", v38];
          [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v33 code:12];

          return;
        }
      }

      v9 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:v35 outputSettings:0 sourceFormatHint:v7];
      v10 = *v5;
      *v5 = v9;

      v5[2] = 0;
      CFRelease(v7);
      v11 = *(v5 + 18);
      if (v11 <= 0)
      {
        v11 = [(MOVStreamWriter *)self baseMediaTimeScale];
      }

      v12 = [MEMORY[0x277CE6558] metadataItem];
      v13 = v12;
      if (*(v5 + 24))
      {
        v14 = @"mdta/com.apple.imuTrackType";
      }

      else
      {
        v14 = @"mdta/com.apple.track_kind";
      }

      [v12 setIdentifier:v14];
      v15 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v41 = v38;
        _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_INFO, "Setup metadata track with streamId %{public}@", buf, 0xCu);
      }

      [v13 setDataType:v37];
      [v13 setExtraAttributes:0];
      [v13 setValue:v38];
      if ([(MOVStreamWriter *)self legacyKeysMode])
      {
        v16 = [MEMORY[0x277CE6558] metadataItem];
        v17 = +[MIOVersion versionZero];
        v18 = [v17 versionedKey:@"mdta/com.apple.track_kind" modifier:@"metadata"];
        [v16 setIdentifier:v18];

        if (+[MIOLog debugEnabled])
        {
          v19 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v16 identifier];
            *buf = 138543362;
            v41 = v20;
            _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_DEBUG, "Setup metadata track with legacy identifier %{public}@", buf, 0xCu);
          }
        }

        [v16 setDataType:v37];
        [v16 setExtraAttributes:0];
        [v16 setValue:v38];
        v21 = [MEMORY[0x277CBEB18] arrayWithObjects:{v13, v16, 0}];
      }

      else
      {
        v21 = [MEMORY[0x277CBEB18] arrayWithObjects:{v13, 0}];
      }

      v22 = [(MOVStreamWriter *)self getTrackMetadataForTimeRangeMetadata:v38 fromMap:&self->m_metadataDataMap];
      [v21 addObject:v22];
      v23 = [(MOVStreamWriter *)self customMetadataTrackMetadataForStream:v38 fromMap:&self->m_metadataDataMap];
      if ([v23 count])
      {
        [v21 addObjectsFromArray:v23];
      }

      v24 = [MEMORY[0x277CE6520] qtTrackMetadataItemsForStreamId:v38];
      [v21 addObjectsFromArray:v24];

      [*v5 setMetadata:v21];
      [*v5 setMediaTimeScale:v11];
      [*v5 setExpectsMediaDataInRealTime:self->m_realtime];
      v25 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:*v5];
      v26 = v5[1];
      v5[1] = v25;

      v27 = [(AVAssetWriter *)self->m_assetWriter canAddInput:*v5];
      if (!v27)
      {
        break;
      }

      [(AVAssetWriter *)self->m_assetWriter addInput:*v5];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = objc_loadWeakRetained(&self->_delegate);
        v39 = *v5;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        [v30 streamWriter:self stream:v38 preparedTrackInputs:v31 mediaType:2];

LABEL_30:
      }

      begin += 3;
      if (begin == end || !v27)
      {
        return;
      }
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't add metadata input to the asset writer to stream: %@", v38];
    [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v30 code:13];
    goto LABEL_30;
  }
}

- (void)setupAssociatedMetadataInputsWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  begin_node = self->m_associatedMetadataDataMap.__tree_.__begin_node_;
  p_end_node = &self->m_associatedMetadataDataMap.__tree_.__end_node_;
  if (begin_node != &self->m_associatedMetadataDataMap.__tree_.__end_node_)
  {
    v36 = *MEMORY[0x277CE5E70];
    v37 = *MEMORY[0x277CC05F0];
    v35 = *MEMORY[0x277CE6198];
    while (1)
    {
      v5 = begin_node + 4;
      if (SHIBYTE(begin_node[6].__left_) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, begin_node[4].__left_, begin_node[5].__left_);
        v6 = MEMORY[0x277CCACA8];
        if (SHIBYTE(begin_node[6].__left_) < 0)
        {
          v5 = v5->__left_;
        }
      }

      else
      {
        *&v38.__r_.__value_.__l.__data_ = *&v5->__left_;
        v38.__r_.__value_.__r.__words[2] = begin_node[6].__left_;
        v6 = MEMORY[0x277CCACA8];
      }

      v7 = [v6 stringWithUTF8String:v5];
      {
        break;
      }

      left = begin_node[7].__left_;
      if (left == &begin_node[8])
      {
LABEL_26:
        v29 = 1;
      }

      else
      {
        while (1)
        {
          v9 = left + 4;
          if (SHIBYTE(left[6].__left_) < 0)
          {
            v9 = v9->__left_;
          }

          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
          v12 = *(v11 + 208);
          if (v12 <= 0)
          {
            v12 = [(MOVStreamWriter *)self baseMediaTimeScale];
          }

          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"mdta/%@", v10];
          v14 = [MEMORY[0x277CE6558] metadataItem];
          [v14 setIdentifier:v13];
          [v14 setDataType:v37];
          [v14 setExtraAttributes:0];
          [v14 setValue:v7];
          v15 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v42 = v7;
            v43 = 2114;
            v44 = v10;
            _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_INFO, "Setup associated metadata track for streamId %{public}@ metadataId %{public}@", buf, 0x16u);
          }

          v16 = left[9].__left_;
          if (!v16)
          {
            v16 = [(MOVStreamWriter *)self createMetadataFormatDescription:v13];
            if (!v16)
            {
              break;
            }
          }

          v17 = [objc_alloc(MEMORY[0x277CE6468]) initWithMediaType:v36 outputSettings:0 sourceFormatHint:v16];
          v18 = left[7].__left_;
          left[7].__left_ = v17;

          left[9].__left_ = 0;
          CFRelease(v16);
          v40 = v14;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          [left[7].__left_ setMetadata:v19];

          [left[7].__left_ setMediaTimeScale:v12];
          [left[7].__left_ setExpectsMediaDataInRealTime:self->m_realtime];
          [left[7].__left_ addTrackAssociationWithTrackOfInput:*(v11 + 16) type:v35];
          v20 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:left[7].__left_];
          v21 = left[8].__left_;
          left[8].__left_ = v20;

          if (![(AVAssetWriter *)self->m_assetWriter canAddInput:left[7].__left_])
          {
            break;
          }

          [(AVAssetWriter *)self->m_assetWriter addInput:left[7].__left_];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v23 = objc_opt_respondsToSelector();

          if (v23)
          {
            v24 = objc_loadWeakRetained(&self->_delegate);
            v39 = *(v11 + 24);
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
            [v24 streamWriter:self stream:v7 preparedTrackInputs:v25 mediaType:2];
          }

          v26 = left[1].__left_;
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = v26->__left_;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = left[2].__left_;
              v28 = v27->__left_ == left;
              left = v27;
            }

            while (!v28);
          }

          left = v27;
          if (v27 == &begin_node[8])
          {
            goto LABEL_26;
          }
        }

        [MEMORY[0x277CCA9B8] populateStreamError:a3 message:@"Unable to get metadata format" code:13];

        v29 = 0;
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (v29)
      {
        v30 = begin_node[1].__left_;
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = v30->__left_;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = begin_node[2].__left_;
            v28 = v31->__left_ == begin_node;
            begin_node = v31;
          }

          while (!v28);
        }

        begin_node = v31;
        if (v31 != p_end_node)
        {
          continue;
        }
      }

      return;
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot setup metadata associated with %@: %@ stream doesn't exist", v7, v7];
    [MEMORY[0x277CCA9B8] populateStreamError:a3 message:v32 code:13];

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }
}

- (unint64_t)fifoBufferSizeForStream:(id)a3
{
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  {
  }

  else
  {
    v5 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (void)setFifoBufferCapacity:(unint64_t)a3
{
  [(MOVStreamWriter *)self setDefaultWritingBufferCapacity:?];
  [(MOVStreamWriter *)self setDefaultAudioWritingBufferCapacity:a3];

  [(MOVStreamWriter *)self setDefaultMetadataWritingBufferCapacity:a3];
}

- (void)appendTimeCode:(CVSMPTETime *)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 withTimeStamp:(id *)a6 toStream:(id)a7
{
  v8 = *a3;
  v7 = *a6;
  [(MOVStreamWriter *)self appendTimeCode:&v8 rangeStart:a4 rangeEnd:a5 withTimeStamp:&v7 toStream:a7];
}

- (BOOL)setVideoTransformFromOrientation:(int)a3
{
  v3 = *&a3;
  v5 = [(MOVStreamWriterState *)self->_state canConfigure:self];
  if (v5)
  {
    [MOVStreamIOUtility transformAngleFromVideoOrientation:v3];
    CGAffineTransformMakeRotation(&v9, v6);
    v7 = *&v9.c;
    *&self->m_videoTransform.a = *&v9.a;
    *&self->m_videoTransform.c = v7;
    *&self->m_videoTransform.tx = *&v9.tx;
  }

  return v5;
}

- (id)startWritingThreadForNonMetadataOnlyThreadId:(unsigned __int8)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = v3;
  v4 = objc_alloc(MEMORY[0x277CCACC8]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__MOVStreamWriter_startWritingThreadForNonMetadataOnlyThreadId___block_invoke;
  v11 = &unk_279847F50;
  objc_copyWeak(&v13, &location);
  v12 = v14;
  v5 = [v4 initWithBlock:&v8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"MOVStreamWriterSamples.%u", v3, v8, v9, v10, v11];
  [v5 setName:v6];
  [v5 setQualityOfService:33];
  [v5 start];

  objc_destroyWeak(&v13);
  _Block_object_dispose(v14, 8);
  objc_destroyWeak(&location);

  return v5;
}

void __64__MOVStreamWriter_startWritingThreadForNonMetadataOnlyThreadId___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v80 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {

    objc_autoreleasePoolPop(v2);
    return;
  }

  v4 = WeakRetained;
  v5 = MEMORY[0x277CCACC8];
  [(os_log_t *)WeakRetained writingThreadPriority];
  if (([v5 setThreadPriority:?] & 1) == 0)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(os_log_t *)v4 writingThreadPriority];
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v7;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, "[WritingThread] Cannot set priority to %f.", &buf, 0xCu);
    }
  }

  v78 = os_signpost_id_generate(v4[57]);
  LOBYTE(v72) = [(os_log_t *)v4 canWriteData];

  objc_autoreleasePoolPop(v2);
  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.movstreamwriter.writingthread.%u", *(*(*(v80 + 32) + 8) + 24)];
  v8 = v67;
  v9 = os_log_create([v67 UTF8String], "PointsOfInterest");
  v10 = os_signpost_id_generate(v9);
  v69 = v9;
  v77 = 0;
  spid = os_signpost_id_generate(v9);
  v70 = spid - 1;
  v71 = v10;
  v74 = v10 - 1;
  do
  {
    if ((v72 & 1) == 0)
    {
      goto LABEL_126;
    }

    v11 = v69;
    v12 = v11;
    if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(buf.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "write thread", "", &buf, 2u);
    }

    v73 = v12;

    v13 = 0;
    LOBYTE(v72) = 1;
    do
    {
      v14 = v73;
      v15 = v14;
      if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v71, "write fifo samples", "", &buf, 2u);
      }

      v76 = v15;

      v75 = objc_autoreleasePoolPush();
      v84 = objc_loadWeakRetained((v80 + 40));
      if (!v84)
      {
        LOBYTE(v72) = 0;
        v42 = 5;
        v79 = 1;
        goto LABEL_94;
      }

      v16 = *(v84 + 23);
      v17 = v84 + 192;
      if (v16 == v84 + 192)
      {
        v13 = 0;
        v79 = 0;
        v82 = 0;
LABEL_92:
        v42 = 0;
        goto LABEL_93;
      }

      v79 = 0;
      v13 = 0;
      v18 = 0;
      v82 = 0;
      while (1)
      {
        v19 = [v84 isAudioStream:v16 + 56];
        v20 = v19;
        v21 = *(*(*(v80 + 32) + 8) + 24);
        if (v21 == 255)
        {
          if (v19)
          {
            break;
          }

          goto LABEL_79;
        }

        v22 = v21 == v16[268] ? v19 : 1;
        if ((v22 & 1) == 0)
        {
          break;
        }

LABEL_79:
        v47 = *(v16 + 1);
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = *(v16 + 2);
            v49 = *v48 == v16;
            v16 = v48;
          }

          while (!v49);
        }

        v16 = v48;
        if (v48 == v17)
        {
          if (!(v79 & 1 | (v18 == 0)) && +[MIOLog debugEnabled])
          {
            v50 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.value) = 67109120;
              HIDWORD(buf.value) = v18;
              _os_log_impl(&dword_257883000, v50, OS_LOG_TYPE_DEBUG, "[WritingThread] nothing written (attempts: %d).", &buf, 8u);
            }
          }

          goto LABEL_92;
        }
      }

      [*(v16 + 32) setVisitCount:{objc_msgSend(*(v16 + 32), "visitCount") + 1}];
      if (v16[55] < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *(v16 + 4), *(v16 + 5));
      }

      else
      {
        v87 = *(v16 + 32);
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v87;
      }

      else
      {
        v23 = v87.__r_.__value_.__r.__words[0];
      }

      v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
      v24 = *(v16 + 14);
      objc_sync_enter(v24);
      v25 = [v84 getCountByPriorityForFifo:objc_msgSend(*(v16 + 14) capacity:{"count"), *(v16 + 15)}];
      if (v77 == 1)
      {
        v25 = [*(v16 + 14) count];
      }

      if (v25 < 1)
      {
LABEL_74:
        v42 = 0;
        goto LABEL_75;
      }

      v81 = v20;
      while (2)
      {
        if (![*(v16 + 14) count])
        {
          goto LABEL_54;
        }

        [*(v16 + 32) setAttemptCount:{objc_msgSend(*(v16 + 32), "attemptCount") + 1}];
        ++v18;
        if ([*(v16 + 9) isReadyForMoreMediaData] && ((v16[184] & 1) != 0 || objc_msgSend(*(v16 + 10), "isReadyForMoreMediaData")))
        {
          if (![v24 count])
          {
            goto LABEL_56;
          }

          v26 = [v24 firstObject];
          v27 = [v26 sampleBuffer];
          v28 = [v26 metadata];
          v29 = v84;
          if (+[MIOLog debugEnabled])
          {
            v30 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              CMSampleBufferGetPresentationTimeStamp(&time, v27);
              Seconds = CMTimeGetSeconds(&time);
              v32 = [v24 count];
              v33 = *(v16 + 15);
              LODWORD(buf.value) = 138544130;
              *(&buf.value + 4) = v83;
              LOWORD(buf.flags) = 2048;
              *(&buf.flags + 2) = Seconds;
              HIWORD(buf.epoch) = 2048;
              v89 = v32;
              v90 = 2048;
              v91 = v33;
              _os_log_impl(&dword_257883000, v30, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Consume (%{public}@) PTS: %f (%lu/%lu)", &buf, 0x2Au);
            }

            v29 = v84;
          }

          if ((*(v29 + 114) & 1) == 0)
          {
            CMSampleBufferGetPresentationTimeStamp(&buf, v27);
            v34 = [v29 delegate];
            v35 = v29[1];
            v85 = 0;
            v36 = [v29 startSessionWithFallbackSampleTime:&buf streamId:v83 mediaType:v81 writerDelegate:v34 delegateCallbackQueue:v35 error:&v85];
            v37 = v85;

            if (v36)
            {

              v29 = v84;
              goto LABEL_47;
            }

            v44 = v84;
            objc_sync_enter(v44);
            v45 = [*(v84 + 48) criticalErrorOccurred:v37 context:v44];
            [v44 activateNewState:v45 byEvent:@"startWritingThreadForNonMetadataOnlyThreadId"];

            objc_sync_exit(v44);
            v42 = 1;
LABEL_64:

            goto LABEL_65;
          }

LABEL_47:
          if ([v29 canWriteData])
          {
            [v29 writeSampleBuffer:v27 andMetadata:v28 forStreamId:v83 signpost:v78];
            [*(v16 + 32) setWriteCount:{objc_msgSend(*(v16 + 32), "writeCount") + 1}];
            v79 = 1;
          }

          else
          {
            if ([v29 isOrWasCanceled])
            {
              [v24 removeObjectAtIndex:0];
              [*(v16 + 32) setFifoItemCount:{objc_msgSend(v24, "count")}];
              CFRelease(v27);
              v42 = 8;
              goto LABEL_64;
            }

            v38 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = [*(v84 + 48) name];
              LODWORD(buf.value) = 138543618;
              *(&buf.value + 4) = v83;
              LOWORD(buf.flags) = 2114;
              *(&buf.flags + 2) = v39;
              _os_log_impl(&dword_257883000, v38, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: [FIFO] CANNOT Write Item of stream '%{public}@' for state %{public}@ ⛔️⛔️⛔️", &buf, 0x16u);
            }
          }

          [v24 removeObjectAtIndex:0];
          [*(v16 + 32) setFifoItemCount:{objc_msgSend(v24, "count")}];
          CFRelease(v27);
          v40 = [v24 count] == 0;

          if (v40)
          {
LABEL_56:
            v42 = 8;
            v41 = 1;
            goto LABEL_66;
          }

LABEL_54:
          if (!--v25)
          {
            v41 = 0;
            v42 = 8;
            goto LABEL_66;
          }

          continue;
        }

        break;
      }

      v43 = v84;
      if (!+[MIOLog debugEnabled])
      {
        v41 = 0;
        v42 = 8;
        goto LABEL_67;
      }

      v26 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.value) = 138543362;
        *(&buf.value + 4) = v83;
        _os_log_impl(&dword_257883000, v26, OS_LOG_TYPE_DEBUG, "[WritingThread] Input for %{public}@ not ready.", &buf, 0xCu);
      }

      v42 = 8;
LABEL_65:

      v41 = 0;
LABEL_66:
      v43 = v84;
LABEL_67:
      if (v42 == 8)
      {
        v42 = 0;
        if (v41)
        {
          if (+[MIOLog debugEnabled])
          {
            v46 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.value) = 138543362;
              *(&buf.value + 4) = v83;
              _os_log_impl(&dword_257883000, v46, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Precheck All Fifo items written '%{public}@'", &buf, 0xCu);
            }

            v43 = v84;
          }

          [v43 checkForFinishing];
          goto LABEL_74;
        }
      }

LABEL_75:
      objc_sync_exit(v24);

      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      ++v82;
      v13 = 1;
      if (!v42)
      {
        v17 = v84 + 192;
        goto LABEL_79;
      }

      v82 = v77;
LABEL_93:

      v77 = v82;
LABEL_94:
      objc_autoreleasePoolPop(v75);
      if (v42)
      {
        if (v42 == 5)
        {
          break;
        }

        goto LABEL_124;
      }

      v51 = v76;
      v52 = v51;
      if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v52, OS_SIGNPOST_INTERVAL_END, v71, "write fifo samples", "", &buf, 2u);
      }
    }

    while ((v79 & 1) != 0);
    v53 = objc_autoreleasePoolPush();
    v54 = objc_loadWeakRetained((v80 + 40));
    v55 = v54;
    if (!v54)
    {
      LOBYTE(v72) = 0;
      goto LABEL_112;
    }

    if ([v54 finalConsume])
    {
      v56 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_257883000, v56, OS_LOG_TYPE_INFO, "[WritingThread] finalConsume", &buf, 2u);
      }

      v57 = v76;
      v58 = v57;
      if (v70 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v57))
      {
        LOWORD(buf.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v58, OS_SIGNPOST_INTERVAL_END, spid, "write thread", "", &buf, 2u);
      }

      if (!*(*(*(v80 + 32) + 8) + 24))
      {
        [v55 clearAllFifoQueues];
      }

LABEL_112:
      v42 = 3;
    }

    else
    {
      v72 = [v55 canWriteData] & v13;
      if (v72 == 1)
      {
        v59 = v55[4];
        v60 = dispatch_time(0, 5000000);
        dispatch_semaphore_wait(v59, v60);
        v61 = v76;
        v62 = v61;
        if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
        {
          LOWORD(buf.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v62, OS_SIGNPOST_INTERVAL_END, spid, "write thread", "", &buf, 2u);
        }
      }

      [v55 setWriteThreadCount:{objc_msgSend(v55, "writeThreadCount") + 1}];

      if ((v13 & 1) == 0)
      {
        v63 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v64 = *(*(*(v80 + 32) + 8) + 24);
          LODWORD(buf.value) = 67109120;
          HIDWORD(buf.value) = v64;
          _os_log_impl(&dword_257883000, v63, OS_LOG_TYPE_INFO, "[WritingThread.%u] No streams assigned.", &buf, 8u);
        }
      }

      v55 = 0;
      v42 = 0;
    }

    objc_autoreleasePoolPop(v53);
LABEL_124:
    ;
  }

  while (!v42);
  if (v42 == 3)
  {
LABEL_126:
    v65 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = *(*(*(v80 + 32) + 8) + 24);
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v66;
      _os_log_impl(&dword_257883000, v65, OS_LOG_TYPE_INFO, "[WritingThread.%u] Exiting writing loop.", &buf, 8u);
    }
  }
}

- (id)startWritingThreadForMetadata
{
  objc_initWeak(&location, self);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  [(MOVStreamWriter *)self writingThreadPriority];
  v9[3] = v3;
  v4 = objc_alloc(MEMORY[0x277CCACC8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MOVStreamWriter_startWritingThreadForMetadata__block_invoke;
  v7[3] = &unk_279847F78;
  v7[4] = v9;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithBlock:v7];
  [v5 setName:@"MOVStreamWriterMetadata"];
  [v5 setQualityOfService:33];
  [v5 start];
  objc_destroyWeak(&v8);
  _Block_object_dispose(v9, 8);
  objc_destroyWeak(&location);

  return v5;
}

void __48__MOVStreamWriter_startWritingThreadForMetadata__block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] setThreadPriority:*(*(*(a1 + 32) + 8) + 24)] & 1) == 0)
  {
    v1 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 134217984;
      *&buf[4] = v2;
      _os_log_impl(&dword_257883000, v1, OS_LOG_TYPE_ERROR, "[WritingThread] Cannot set priority to %f.", buf, 0xCu);
    }
  }

  v3 = os_log_create([@"com.apple.movstreamwriter.writingthread.metadata" UTF8String], "PointsOfInterest");
  v4 = os_signpost_id_generate(v3);
  v56 = v3;
  spid = os_signpost_id_generate(v3);
  v57 = spid - 1;
  v58 = v4;
  v62 = v4 - 1;
  *&v5 = 67109120;
  v54 = v5;
  while (2)
  {
    v6 = v56;
    v7 = v6;
    log = v6;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = os_signpost_enabled(v6);
      v7 = log;
      if (v8)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "write thread metadata", "", buf, 2u);
        v7 = log;
      }
    }

    v59 = 1;
    while (2)
    {
      v9 = log;
      v10 = v9;
      if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v58, "write fifo metadata", "", buf, 2u);
      }

      v63 = v10;

      context = objc_autoreleasePoolPush();
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v12 = WeakRetained;
      if (!WeakRetained)
      {
        v59 = 0;
        v66 = 1;
        v31 = 5;
        goto LABEL_85;
      }

      if (!WeakRetained[31])
      {
        v66 = 0;
        v59 = 0;
        v31 = 5;
        goto LABEL_84;
      }

      v13 = WeakRetained[29];
      v65 = WeakRetained + 30;
      if (v13 == WeakRetained + 30)
      {
        v31 = 0;
        v66 = 0;
        goto LABEL_84;
      }

      v66 = 0;
      v14 = 0;
      while (2)
      {
        if (*(v13 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v69, v13[4], v13[5]);
        }

        else
        {
          v69 = *(v13 + 4);
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v69;
        }

        else
        {
          v15 = v69.__r_.__value_.__r.__words[0];
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v15, v54}];
        [v13[15] setVisitCount:{objc_msgSend(v13[15], "visitCount") + 1}];
        v17 = v13[11];
        objc_sync_enter(v17);
        v18 = [v12 getCountByPriorityForFifo:objc_msgSend(v13[11] capacity:{"count"), v13[12]}];
        if (v18 < 1)
        {
          goto LABEL_65;
        }

        while (1)
        {
          if (![v17 count])
          {
            goto LABEL_47;
          }

          [v13[15] setAttemptCount:{objc_msgSend(v13[15], "attemptCount") + 1}];
          ++v14;
          if (![v13[7] isReadyForMoreMediaData])
          {
            break;
          }

          if (![v17 count])
          {
            goto LABEL_49;
          }

          v19 = [v17 firstObject];
          if (+[MIOLog debugEnabled])
          {
            v20 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              if (v19)
              {
                [v19 timeRange];
              }

              else
              {
                v71 = 0u;
                memset(buf, 0, sizeof(buf));
              }

              time = *buf;
              Seconds = CMTimeGetSeconds(&time);
              v22 = [v17 count];
              v23 = v13[12];
              *v72 = 138544130;
              *&v72[4] = v16;
              *&v72[12] = 2048;
              *&v72[14] = Seconds;
              *&v72[22] = 2048;
              v73 = v22;
              v74 = 2048;
              v75 = v23;
              _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Consume (%{public}@) PTS: %f (%lu/%lu)", v72, 0x2Au);
            }
          }

          if ((*(v12 + 114) & 1) == 0)
          {
            if (v19)
            {
              [v19 timeRange];
            }

            else
            {
              v71 = 0u;
              memset(buf, 0, sizeof(buf));
            }

            *v72 = *buf;
            *&v72[16] = *&buf[16];
            v24 = [v12 delegate];
            v25 = v12[1];
            v67 = 0;
            v26 = [v12 startSessionWithFallbackSampleTime:v72 streamId:v16 mediaType:2 writerDelegate:v24 delegateCallbackQueue:v25 error:&v67];
            v27 = v67;

            if ((v26 & 1) == 0)
            {
              v33 = v12;
              objc_sync_enter(v33);
              v34 = [v12[48] criticalErrorOccurred:v27 context:v33];
              [v33 activateNewState:v34 byEvent:@"startWritingThreadForMetadata"];

              objc_sync_exit(v33);
              v31 = 1;
              goto LABEL_57;
            }
          }

          if ([v12 canWriteData])
          {
            [v12 writeMetadata:v19 forStreamId:v16];
            [v13[15] setWriteCount:{objc_msgSend(v13[15], "writeCount") + 1}];
            v66 = 1;
          }

          else
          {
            if ([v12 isOrWasCanceled])
            {
              [v17 removeObjectAtIndex:0];
              [v13[15] setFifoItemCount:{objc_msgSend(v17, "count")}];
              goto LABEL_56;
            }

            v28 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = [v12[48] name];
              *buf = 138543618;
              *&buf[4] = v16;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              _os_log_impl(&dword_257883000, v28, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: [FIFO] CANNOT Write Item of metadata stream '%{public}@' for state %{public}@ ⛔️⛔️⛔️", buf, 0x16u);
            }
          }

          [v17 removeObjectAtIndex:0];
          [v13[15] setFifoItemCount:{objc_msgSend(v17, "count")}];
          v30 = [v17 count] == 0;

          if (v30)
          {
LABEL_49:
            v31 = 8;
            v32 = 1;
            goto LABEL_58;
          }

LABEL_47:
          if (!--v18)
          {
            goto LABEL_53;
          }
        }

        if (!+[MIOLog debugEnabled])
        {
LABEL_53:
          v32 = 0;
          v31 = 8;
          goto LABEL_58;
        }

        v19 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_DEBUG, "[WritingThread] Input for %{public}@ not ready.", buf, 0xCu);
        }

LABEL_56:
        v31 = 8;
LABEL_57:

        v32 = 0;
LABEL_58:
        if (v31 == 8)
        {
          v31 = 0;
          if (v32)
          {
            if (+[MIOLog debugEnabled])
            {
              v35 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                *&buf[4] = v16;
                _os_log_impl(&dword_257883000, v35, OS_LOG_TYPE_DEBUG, "[WritingThread] [FIFO] Precheck All Fifo items written '%{public}@'", buf, 0xCu);
              }
            }

            [v12 checkForFinishing];
LABEL_65:
            v31 = 0;
          }
        }

        objc_sync_exit(v17);

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (!v31)
        {
          v36 = v13[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = v13[2];
              v38 = *v37 == v13;
              v13 = v37;
            }

            while (!v38);
          }

          v13 = v37;
          if (v37 == v65)
          {
            if (!(v66 & 1 | (v14 == 0)) && +[MIOLog debugEnabled])
            {
              v39 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = v54;
                *&buf[4] = v14;
                _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_DEBUG, "[WritingThread] nothing written (attempts: %d).", buf, 8u);
              }
            }

            v31 = 0;
            break;
          }

          continue;
        }

        break;
      }

LABEL_84:

LABEL_85:
      objc_autoreleasePoolPop(context);
      if (!v31)
      {
        v40 = v63;
        v41 = v40;
        if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v41, OS_SIGNPOST_INTERVAL_END, v58, "write fifo metadata", "", buf, 2u);
        }

        if ((v66 & 1) == 0)
        {
LABEL_92:
          v42 = objc_autoreleasePoolPush();
          v43 = objc_loadWeakRetained((a1 + 40));
          v44 = v43;
          if (v43)
          {
            v45 = v43[5].isa;
            if ([v44 canWriteData])
            {
              v46 = v44[31].isa != 0;
            }

            else
            {
              v46 = 0;
            }

            v59 = v46;
            if ([v44 finalConsume]& 1 | !v46)
            {
              v47 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_257883000, v47, OS_LOG_TYPE_INFO, "[Meta WritingThread] finalConsume", buf, 2u);
              }

              v48 = v63;
              v49 = v48;
              if (v57 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v48))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_257883000, v49, OS_SIGNPOST_INTERVAL_END, spid, "write thread metadata", "", buf, 2u);
              }

              v31 = 3;
              v50 = v45;
            }

            else
            {
              [v44 setWriteThreadCount:[v44 writeThreadCount]+ 1];
              v31 = v57 < 0xFFFFFFFFFFFFFFFELL;

              v51 = dispatch_time(0, 5000000);
              dispatch_semaphore_wait(v45, v51);
              v52 = v63;
              v50 = v52;
              if (v57 < 0xFFFFFFFFFFFFFFFELL)
              {
                if (os_signpost_enabled(v52))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_257883000, v50, OS_SIGNPOST_INTERVAL_END, spid, "write thread metadata", "", buf, 2u);
                }

                v31 = 0;
              }

              v44 = v45;
            }
          }

          else
          {
            v59 = 0;
            v31 = 3;
          }

          objc_autoreleasePoolPop(v42);
          goto LABEL_111;
        }

        continue;
      }

      break;
    }

    if (v31 == 5)
    {
      goto LABEL_92;
    }

LABEL_111:
    if (!v31)
    {
      if ((v59 & 1) == 0)
      {
LABEL_115:
        v53 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_257883000, v53, OS_LOG_TYPE_INFO, "[WritingThread Metadata] Exiting writing loop.", buf, 2u);
        }

        goto LABEL_118;
      }

      continue;
    }

    break;
  }

  if (v31 == 3)
  {
    goto LABEL_115;
  }

LABEL_118:
}

- (void)informDelegateAboutError:(id)a3
{
  v4 = a3;
  v5 = [(MOVStreamWriter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    m_delegateCallbackQueue = self->m_delegateCallbackQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__MOVStreamWriter_informDelegateAboutError___block_invoke;
    v8[3] = &unk_279847E68;
    v8[4] = self;
    v9 = v4;
    dispatch_async(m_delegateCallbackQueue, v8);
  }
}

void __44__MOVStreamWriter_informDelegateAboutError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  [v3 streamWriterEncounteredAnError:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)informDelegateAboutIsReady:(BOOL)a3 forStream:(id)a4
{
  v6 = a4;
  v7 = [(MOVStreamWriter *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    m_delegateCallbackQueue = self->m_delegateCallbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MOVStreamWriter_informDelegateAboutIsReady_forStream___block_invoke;
    block[3] = &unk_279847FA0;
    block[4] = self;
    v11 = v6;
    v12 = a3;
    dispatch_async(m_delegateCallbackQueue, block);
  }
}

void __56__MOVStreamWriter_informDelegateAboutIsReady_forStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  [v3 streamWriter:*(a1 + 32) inputForStream:*(a1 + 40) changedIsReadyStatusTo:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)informDelegateAboutFinishingTimeout
{
  v3 = [(MOVStreamWriter *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    m_delegateCallbackQueue = self->m_delegateCallbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MOVStreamWriter_informDelegateAboutFinishingTimeout__block_invoke;
    block[3] = &unk_279847EE0;
    block[4] = self;
    dispatch_async(m_delegateCallbackQueue, block);
  }
}

void __54__MOVStreamWriter_informDelegateAboutFinishingTimeout__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  [v3 streamWriterReachedFinishingTimeout:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)informDelegateAboutMediaWrittenForStream:(id)a3 mediaType:(int64_t)a4
{
  v6 = a3;
  v7 = [(MOVStreamWriter *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    m_delegateCallbackQueue = self->m_delegateCallbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MOVStreamWriter_informDelegateAboutMediaWrittenForStream_mediaType___block_invoke;
    block[3] = &unk_279847FC8;
    block[4] = self;
    v11 = v6;
    v12 = a4;
    dispatch_async(m_delegateCallbackQueue, block);
  }
}

void __70__MOVStreamWriter_informDelegateAboutMediaWrittenForStream_mediaType___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  [v3 streamWriter:*(a1 + 32) mediaWrittenForStream:*(a1 + 40) mediaType:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (MOVStreamCustomEncoderConfigDelegate)customEncoderConfigDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customEncoderConfigDelegate);

  return WeakRetained;
}

- (MOVStreamWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 23) = self + 192;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 29) = self + 240;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 35) = self + 288;
  *(self + 36) = 0;
  *(self + 39) = 0;
  *(self + 40) = 0;
  *(self + 37) = 0;
  *(self + 38) = self + 312;
  *(self + 41) = self + 336;
  *(self + 42) = 0;
  *(self + 45) = 0;
  *(self + 46) = 0;
  *(self + 43) = 0;
  *(self + 44) = self + 360;
  return self;
}

+ (id)getMOVStreamIOMetadataItem
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setObject:@"3.34.5" forKey:@"version"];
  v3 = +[MOVStreamOptions sharedOptions];
  v4 = [v3 currentOptions];
  [v2 setObject:v4 forKey:@"default_options"];

  v5 = [MOVStreamIOUtility getJsonFriendlyCopy:v2];
  v12 = 0;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:100 options:0 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 localizedDescription];
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "Unable to serialize MOVStream State metatdata as JSON: %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CE6558] metadataItem];
    [v10 setIdentifier:@"mdta/com.apple.framework.state.MOVStreamIO"];
    [v10 setDataType:*MEMORY[0x277CC05B8]];
    [v10 setExtraAttributes:0];
    [v10 setValue:v6];
  }

  return v10;
}

+ (id)getTimeRangeMetadataKeyHintMetadataItem:(id)a3 error:(id *)a4
{
  v4 = [MOVStreamIOUtility plistSerializedObject:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CE6558] metadataItem];
    [v5 setIdentifier:@"mdta/com.apple.framework.mio.timeRangeMetadataKeyHint"];
    [v5 setDataType:*MEMORY[0x277CC05B8]];
    [v5 setValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getAudioMetadataForBuffer:(opaqueCMSampleBuffer *)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CE6558] metadataItem];
  [v4 setIdentifier:@"mdta/com.apple.stream_sample_attachments"];
  [v4 setDataType:*MEMORY[0x277CC05B8]];
  [v4 setExtraAttributes:0];
  v5 = *MEMORY[0x277CBECE8];
  v6 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], a3, 1u);
  if (v6)
  {
    v7 = [MOVStreamIOUtility getPlistFriendlyCopyOf:v6];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  memset(&v22, 0, sizeof(v22));
  CMSampleBufferGetPresentationTimeStamp(&v22, a3);
  v9 = [v8 objectForKey:@"OriginalTimestampWhenWrittenToFile"];
  v10 = v9 == 0;

  if (v10)
  {
    time.start = v22;
    v11 = CMTimeCopyAsDictionary(&time.start, v5);
    [v8 setObject:v11 forKey:@"OriginalTimestampWhenWrittenToFile"];
  }

  v21 = 0;
  v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:&v21];
  v13 = v21;
  if (v13)
  {
    v14 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 localizedDescription];
      LODWORD(time.start.value) = 138543362;
      *(&time.start.value + 4) = v15;
      _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_ERROR, "Unable to serialize audio metatdata as PLIST: %{public}@", &time, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    [v4 setValue:v12];
    v17 = objc_alloc(MEMORY[0x277CE6648]);
    v24[0] = v4;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    start = v22;
    v19 = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&time, &start, &v19);
    v16 = [v17 initWithItems:v14 timeRange:&time];
  }

  return v16;
}

- (BOOL)isReadyForMoreDataForStreamId:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v6 = *(a4 + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  while ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v6 + 4) & 0x80) != 0)
  {
LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, __p) & 0x80) != 0)
  {
    ++v6;
    goto LABEL_5;
  }

  if ([*(v7 + 16) isReadyForMoreMediaData])
  {
    v8 = [*(v7 + 24) isReadyForMoreMediaData];
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getMetadataGroupForBuffer:(__CVBuffer *)a3 stream:(id)a4 presentationTime:(id *)a5 serializationMode:(int)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CE6558] metadataItem];
  if ([(MOVStreamWriter *)self legacyKeysMode])
  {
    v11 = +[MIOVersion versionZero];
    v12 = [v11 versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];
    [v10 setIdentifier:v12];
  }

  else
  {
    [v10 setIdentifier:@"mdta/com.apple.stream_sample_attachments"];
  }

  [v10 setDataType:*MEMORY[0x277CC05B8]];
  [v10 setExtraAttributes:0];
  v13 = [MIOPixelBufferUtility isPixelBufferRawBayer:a3];
  v14 = [MIOPixelBufferUtility isPixelBufferCompandedRawBayer:a3];
  v29 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
  if (a6)
  {
    [MOVStreamIOUtility getPlistFriendlyCopyOf:v29];
  }

  else
  {
    [MOVStreamIOUtility getJsonFriendlyCopy:v29];
  }
  v15 = ;
  v16 = [v15 objectForKey:@"OriginalTimestampWhenWrittenToFile"];

  if (!v16)
  {
    *&time.start.value = *&a5->var0;
    time.start.epoch = a5->var3;
    v17 = CMTimeCopyAsDictionary(&time.start, *MEMORY[0x277CBECE8]);
    [v15 setObject:v17 forKey:@"OriginalTimestampWhenWrittenToFile"];
  }

  if (a6)
  {
    if (v13 || v14)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a3)];
      [v15 setValue:v18 forKey:@"RawBayerFormat"];
    }

    v33 = 0;
    v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v15 format:200 options:0 error:&v33];
    v20 = v33;
    if (([MEMORY[0x277CCAC58] propertyList:v19 isValidForFormat:200] & 1) == 0)
    {
      v21 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.start.value) = 0;
        v22 = "Error: The metadata dictionary is not valid for XML v1.0 plist Format";
        goto LABEL_23;
      }

LABEL_24:

LABEL_25:
      v26 = 0;
      goto LABEL_27;
    }

    if (v20 || !v19)
    {
      v21 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.start.value) = 0;
        v22 = "Error: Cannot serialize metadata to plist";
LABEL_23:
        _os_log_impl(&dword_257883000, v21, OS_LOG_TYPE_ERROR, v22, &time, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v32 = 0;
    v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:0 error:&v32];
    v23 = v32;
    if (v23)
    {
      v20 = v23;
      v24 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v20 localizedDescription];
        LODWORD(time.start.value) = 138543362;
        *(&time.start.value + 4) = v25;
        _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, "Unable to serialize depth metatdata as JSON: %{public}@", &time, 0xCu);
      }

      goto LABEL_25;
    }
  }

  [v10 setValue:v19];
  v27 = objc_alloc(MEMORY[0x277CE6648]);
  v35[0] = v10;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  start = *a5;
  duration = **&MEMORY[0x277CC0890];
  CMTimeRangeMake(&time, &start, &duration);
  v26 = [v27 initWithItems:v20 timeRange:&time];
LABEL_27:

  return v26;
}

- (BOOL)marksOutputTracksAsEnabledForStream:()basic_string<char fromMap:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v4 = v3;
  var0 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = [v7 objectForKey:@"MarksOutputTrackAsEnabled"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue];
  }

  else if (*(v4 + 16) == 1)
  {
    v10 = 1;
  }

  else
  {
    qmemcpy(v21, "610L010L3.315.114ggr4ggb4rbg4brg", sizeof(v21));
    std::set<unsigned int>::set[abi:ne200100](&v19, v21, 8);
    if (*(&var0->var0.var1 + 23) < 0)
    {
      var0 = var0->var0.var1.var0;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:var0];
    v12 = [(MOVStreamWriter *)self getPixelFormatForStream:v11 fromMap:v4];
    v13 = v20[0];
    if (!v20[0])
    {
      goto LABEL_15;
    }

    v14 = v20;
    do
    {
      v15 = *(v13 + 7);
      v16 = v15 >= v12;
      v17 = v15 < v12;
      if (v16)
      {
        v14 = v13;
      }

      v13 = v13[v17];
    }

    while (v13);
    if (v14 == v20 || v12 < *(v14 + 7))
    {
LABEL_15:
      v14 = v20;
    }

    v10 = v14 == v20;

    std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&v19, v20[0]);
  }

  return v10;
}

- (int)attachmentSerializationModeForStream:()basic_string<char withDefaultMode:()std:(std::allocator<char>> *)a3 :char_traits<char> fromMap:
{
  v6 = v5 = v3;
  v7 = v6;
  if (v6)
  {
    v5 = [v6 intValue];
  }

  return v5;
}

- (id)customTrackMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
  if ([*(v5 + 72) count] || objc_msgSend(*(v5 + 80), "count"))
  {
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(v5 + 72);
    v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      v9 = *MEMORY[0x277CC05F0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [MEMORY[0x277CE6558] metadataItem];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"mdta/custom.", v11];
          [v12 setIdentifier:v13];
          [v12 setDataType:v9];
          [v12 setExtraAttributes:0];
          v14 = [*(v5 + 72) objectForKey:v11];
          [v12 setValue:v14];

          [v6 addObject:v12];
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    if ([*(v5 + 80) count])
    {
      [v6 addObjectsFromArray:*(v5 + 80)];
    }

    v15 = [v6 copy];
  }

  else
  {
    v15 = 0;
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

- (id)customMetadataTrackMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
  if ([*(v5 + 48) count])
  {
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(v5 + 48);
    v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      v9 = *MEMORY[0x277CC05F0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [MEMORY[0x277CE6558] metadataItem];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"mdta/custom.", v11];
          [v12 setIdentifier:v13];
          [v12 setDataType:v9];
          [v12 setExtraAttributes:0];
          v14 = [*(v5 + 48) objectForKey:v11];
          [v12 setValue:v14];

          [v6 addObject:v12];
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    v15 = [v6 copy];
  }

  else
  {
    v15 = 0;
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

- (id)getTrackMetadataForAttachmentsSerializationMode:(id)a3 fromMap:(void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CE6558] metadataItem];
  [v7 setIdentifier:@"mdta/com.apple.stream_sample_attachments_serialization_mode"];
  [v7 setDataType:*MEMORY[0x277CC05F0]];
  [v7 setExtraAttributes:0];
  std::string::basic_string[abi:ne200100]<0>(&v12, [v6 UTF8String]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  v8 = [(MOVStreamWriter *)self attachmentSerializationModeForStream:&__p withDefaultMode:1 fromMap:a4];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v8, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  [v7 setValue:v9];

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

- (id)getLegacyTrackMetadataForAttachmentsSerializationMode:(id)a3 fromMap:(void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CE6558] metadataItem];
  v8 = +[MIOVersion versionZero];
  v9 = [v8 versionedKey:@"mdta/com.apple.stream_sample_attachments_serialization_mode" modifier:0];
  [v7 setIdentifier:v9];

  [v7 setDataType:*MEMORY[0x277CC05F0]];
  [v7 setExtraAttributes:0];
  std::string::basic_string[abi:ne200100]<0>(&v14, [v6 UTF8String]);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v10 = [(MOVStreamWriter *)self attachmentSerializationModeForStream:&__p withDefaultMode:1 fromMap:a4];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v10, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  [v7 setValue:v11];

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v7;
}

- (id)getTrackMetadataForRawBayerRearrangeType:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_2868E3A08;
  }

  v8 = [MEMORY[0x277CE6558] metadataItem];
  [v8 setIdentifier:@"mdta/com.apple.stream_raw_bayer_rearrange_type"];
  [v8 setDataType:*MEMORY[0x277CC05E8]];
  [v8 setExtraAttributes:0];
  [v8 setValue:v7];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getTrackMetadataForTimeRangeMetadata:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (id)getTrackMetadataForStream:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE6558] metadataItem];
  [v4 setIdentifier:@"mdta/com.apple.track_kind"];
  [v4 setDataType:*MEMORY[0x277CC05F0]];
  [v4 setExtraAttributes:0];
  [v4 setValue:v3];

  return v4;
}

- (id)getLegacyTrackMetadataForStream:(id)a3
{
  v3 = a3;
  {
    [MOVStreamWriter(TrackMetadata) getLegacyTrackMetadataForStream:]::legacyVersion = +[MIOVersion versionZero];
  }

  v4 = [MEMORY[0x277CE6558] metadataItem];
  v5 = [-[MOVStreamWriter(TrackMetadata) getLegacyTrackMetadataForStream:]::legacyVersion versionedKey:@"mdta/com.apple.track_kind" modifier:0];
  [v4 setIdentifier:v5];

  [v4 setDataType:*MEMORY[0x277CC05F0]];
  [v4 setExtraAttributes:0];
  [v4 setValue:v3];

  return v4;
}

- (id)getTrackInputPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [*(v6 + 88) inputPixelFormatFromStreamData:v6];
  v8 = [MEMORY[0x277CE6558] metadataItem];
  [v8 setIdentifier:@"mdta/com.apple.stream_sample_format"];
  [v8 setDataType:*MEMORY[0x277CC05F0]];
  [v8 setExtraAttributes:0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v8 setValue:v9];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getTrackMIOStreamEncoderTypeMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [v6 intValue];

  v8 = [MEMORY[0x277CE6558] metadataItem];
  [v8 setIdentifier:@"mdta/com.apple.writer_encoder_type"];
  [v8 setDataType:*MEMORY[0x277CC05D0]];
  [v8 setExtraAttributes:0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v8 setValue:v9];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getLegacyTrackInputPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [*(v6 + 88) inputPixelFormatFromStreamData:v6];
  v8 = [MEMORY[0x277CE6558] metadataItem];
  v9 = +[MIOVersion versionZero];
  v10 = [v9 versionedKey:@"mdta/com.apple.stream_sample_format" modifier:0];
  [v8 setIdentifier:v10];

  [v8 setDataType:*MEMORY[0x277CC05F0]];
  [v8 setExtraAttributes:0];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v8 setValue:v11];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getLegacyTrackEncodedPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [*(v6 + 88) encodedPixelFormatFromStreamData:v6];
  v8 = [MEMORY[0x277CE6558] metadataItem];
  v9 = +[MIOVersion versionZero];
  v10 = [v9 versionedKey:@"mdta/com.apple.stream_encoded_sample_format" modifier:0];
  [v8 setIdentifier:v10];

  [v8 setDataType:*MEMORY[0x277CC05F0]];
  [v8 setExtraAttributes:0];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v8 setValue:v11];

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)getTrackEncodedPixelFormatMetadataForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [*(v6 + 88) encodedPixelFormatFromStreamData:v6];
  v8 = [MEMORY[0x277CE6558] metadataItem];
  [v8 setIdentifier:@"mdta/com.apple.stream_encoded_sample_format"];
  [v8 setDataType:*MEMORY[0x277CC05F0]];
  [v8 setExtraAttributes:0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v8 setValue:v9];

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

- (id)createRelatedToStreamMetadata:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE6558] metadataItem];
  [v4 setIdentifier:@"mdta/com.apple.stream_related_to_stream"];
  [v4 setDataType:*MEMORY[0x277CC05F0]];
  [v4 setExtraAttributes:0];
  [v4 setValue:v3];

  return v4;
}

- (id)createRelationSpecifierMetadata:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE6558] metadataItem];
  [v4 setIdentifier:@"mdta/com.apple.stream_relation_specifier"];
  [v4 setDataType:*MEMORY[0x277CC05F0]];
  [v4 setExtraAttributes:0];
  [v4 setValue:v3];

  return v4;
}

- (id)getTrackMetadataForTrackTypeInfo:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CE6558] metadataItem];
  [v6 setIdentifier:@"mdta/com.apple.stream_type_info"];
  [v6 setDataType:*MEMORY[0x277CC05F0]];
  [v6 setExtraAttributes:0];
  v7 = std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  if (v7)
  {
    [v6 setValue:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    [v6 setValue:v8];
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (id)getTrackMetadataForExactBytesPerRow:(id)a3 fromMap:(void *)a4 error:(id *)a5
{
  v7 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  v9 = *(v8 + 40);
  v10 = [v9 objectForKey:@"PixelBufferExactBytesPerRow"];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v11 = [MEMORY[0x277CE6558] metadataItem];
  [v11 setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row"];
  [v11 setExtraAttributes:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MOVStreamIOUtility plistSerializedObject:v10 error:a5];
      if (v13)
      {
        [v11 setDataType:*MEMORY[0x277CC05B8]];
        [v11 setValue:v13];
        [v11 setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar"];
        goto LABEL_12;
      }
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:@"Invalid value type for PixelBufferExactBytesPerRow." code:10];
    }

LABEL_18:
    v15 = v11;
    v11 = 0;
    goto LABEL_19;
  }

  v12 = [MIOPixelBufferUtility numberOfPlanesForPixelFormatType:CMFormatDescriptionGetMediaSubType(*v8)];
  if (v12 < 1)
  {
    [v11 setDataType:*MEMORY[0x277CC05D8]];
    [v11 setValue:v10];
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12];
  do
  {
    [v13 addObject:v10];
    --v12;
  }

  while (v12);
  v14 = [MOVStreamIOUtility plistSerializedObject:v13 error:a5];
  if (!v14)
  {

    goto LABEL_18;
  }

  [v11 setDataType:*MEMORY[0x277CC05B8]];
  [v11 setValue:v14];
  [v11 setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar"];

LABEL_12:
LABEL_16:
  v15 = 0;
LABEL_19:

LABEL_20:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

- (opaqueCMFormatDescription)createMetadataFormatDescription:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  formatDescriptionOut = 0;
  if ([(MOVStreamWriter *)self legacyKeysMode])
  {
    v5 = +[MIOVersion versionZero];
    v6 = [v5 versionedKey:v4 modifier:0];

    v8 = *MEMORY[0x277CC0600];
    v25[0] = *MEMORY[0x277CC0610];
    v7 = v25[0];
    v25[1] = v8;
    v9 = *MEMORY[0x277CC05B8];
    v26[0] = v6;
    v26[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v27[0] = v10;
    v23[0] = v7;
    v23[1] = v8;
    v24[0] = v4;
    v24[1] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  }

  else
  {
    v13 = *MEMORY[0x277CC0600];
    v20[0] = *MEMORY[0x277CC0610];
    v20[1] = v13;
    v14 = *MEMORY[0x277CC05B8];
    v21[0] = v4;
    v21[1] = v14;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v22 = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  }

  if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, v12, &formatDescriptionOut))
  {
    v15 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_ERROR, "Can't create metadata format description...", v18, 2u);
    }

    v16 = 0;
    formatDescriptionOut = 0;
  }

  else
  {
    v16 = formatDescriptionOut;
  }

  return v16;
}

- (BOOL)isCustomTrackMetadataCompatibleObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (unsigned)getPixelFormatForStream:(id)a3 fromMap:(void *)a4
{
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v7 = [objc_opt_class() getPixelFormatFromStreamData:v6];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

+ (unsigned)getPixelFormatFromStreamData:(StreamRecordingData *)a3
{
  v4 = a3->var5;
  v5 = [v4 objectForKeyedSubscript:@"PixelFormat"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PixelFormat"];
    MediaSubType = [v6 intValue];
  }

  else
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(a3->var0);
  }

  return MediaSubType;
}

@end