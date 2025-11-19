@interface MIOWriter
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sessionStartTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeWithSeconds:(SEL)a3;
- (BOOL)addInput:(id)a3 error:(id *)a4;
- (BOOL)canWrite;
- (BOOL)checkStatus:(unsigned int)a3;
- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4 error:(id *)a5;
- (BOOL)setTrackMetadata:(id)a3 forStream:(id)a4 error:(id *)a5;
- (BOOL)setVideoTransform:(CGAffineTransform *)a3 forStream:(id)a4;
- (BOOL)startSession;
- (BOOL)startWriting;
- (MIOMovieMetadataUtility)movieMetadataUtility;
- (MIOWriter)initWithFilePath:(id)a3 error:(id *)a4;
- (MIOWriter)initWithURL:(id)a3 andExpectedFrameRate:(double)a4;
- (id)getFailHandler;
- (id)getWarningHandler;
- (id)newWritingThreadWithName:(id)a3 threadPriority:(double)a4 qualityOfService:(int64_t)a5;
- (id)writerInputsWithMediaType:(int64_t)a3;
- (id)writerInputsWithMediaType:(int64_t)a3 streamId:(id)a4;
- (unsigned)status;
- (void)addMetadataTrack:(id)a3;
- (void)addTrackForStreamWithIdentifier:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 recordingConfiguration:(id)a5;
- (void)appendMetadata:(id)a3 withTimeStamp:(id *)a4 toStream:(id)a5;
- (void)appendPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 toStreamId:(id)a5;
- (void)cancelRecordingWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)fail;
- (void)finishWithCompletionHandler:(id)a3;
- (void)finishWithEndTime:(id *)a3 completionHandler:(id)a4;
- (void)finishWithTimeout:(double)a3 completionHandler:(id)a4;
- (void)finishWithTimeout:(double)a3 endTime:(id *)a4 completionHandler:(id)a5;
- (void)prepareToRecordWithMovieMetadata:(id)a3;
- (void)prepareWriterWithCompletionHandler:(id)a3;
- (void)proposeSessionStartTime:(id *)a3;
- (void)reportError:(id)a3;
- (void)reportWarning:(id)a3;
- (void)setBaseMediaTimeScale:(int)a3;
- (void)setBufferCacheMode:(int)a3;
- (void)setCustomMOVMetadata:(id)a3;
- (void)setDefaultFrameRate:(double)a3;
- (void)setEnableAVEHighPerformanceProfile:(BOOL)a3;
- (void)setFailHandler:(id)a3;
- (void)setFifoBufferCapacity:(unint64_t)a3;
- (void)setInProcessRecording:(BOOL)a3;
- (void)setMovieFragmentInterval:(id *)a3;
- (void)setPreferCustomCompression:(BOOL)a3;
- (void)setPreserveSessionStartTime:(BOOL)a3;
- (void)setRealTime:(BOOL)a3;
- (void)setSessionStartTime:(id *)a3;
- (void)setShouldOptimizeForNetworkUse:(BOOL)a3;
- (void)setStatus:(unsigned int)a3;
- (void)setWarningHandler:(id)a3;
- (void)signalWritingThreadsProceed;
- (void)simulateFailure;
@end

@implementation MIOWriter

- (MIOWriter)initWithURL:(id)a3 andExpectedFrameRate:(double)a4
{
  v5 = [a3 path];
  v6 = [(MIOWriter *)self initWithFilePath:v5 error:0];

  return v6;
}

- (void)prepareToRecordWithMovieMetadata:(id)a3
{
  [(MIOWriter *)self setCustomMOVMetadata:a3];

  [(MIOWriter *)self prepareWriterWithCompletionHandler:&__block_literal_global_2];
}

- (void)addTrackForStreamWithIdentifier:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 recordingConfiguration:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[MIOWriterPixelBufferStreamInput alloc] initWithStreamId:v9 format:a4 recordingConfig:v8];

  [(MIOWriter *)self addInput:v10 error:0];
}

- (BOOL)setTrackMetadata:(id)a3 forStream:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(MIOWriter *)self writerInputsWithMediaType:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 streamId];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          [v15 setCustomMetadata:v8];
          v19 = 1;
          v18 = v10;
          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (a5)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown stream %@.", v9];
    [MEMORY[0x277CCA9B8] internalErrorWithMessage:v18 code:7];
    *a5 = v19 = 0;
LABEL_12:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)addMetadataTrack:(id)a3
{
  v4 = a3;
  v5 = [[MIOWriterDataStreamInput alloc] initWithStreamId:v4];

  [(MIOWriter *)self addInput:v5 error:0];
}

- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(MIOWriter *)self writerInputsWithMediaType:2];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 streamId];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          [v15 setCustomMetadata:v8];
          v19 = 1;
          v18 = v10;
          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (a5)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown stream %@.", v9];
    [MEMORY[0x277CCA9B8] internalErrorWithMessage:v18 code:7];
    *a5 = v19 = 0;
LABEL_12:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)setFifoBufferCapacity:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MIOWriter *)self writerInputs];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setBufferingCapacity:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)appendPixelBuffer:(__CVBuffer *)a3 presentationTime:(id *)a4 toStreamId:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  [(MIOWriter *)self writerInputsWithMediaType:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v10)
  {
LABEL_9:

    [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown video stream '%@'", v8];
    goto LABEL_13;
  }

  v11 = v10;
  v12 = *v24;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v24 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v23 + 1) + 8 * v13);
    v15 = [v14 streamId];
    v16 = [v15 isEqualToString:v8];

    if (v16)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v11)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  v20 = *&a4->var0;
  var3 = a4->var3;
  v22 = 0;
  v17 = [v14 appendPixelBuffer:a3 pts:&v20 error:&v22];
  v18 = v22;
  if ((v17 & 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v18];
LABEL_13:
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v19);
  }
}

- (void)appendMetadata:(id)a3 withTimeStamp:(id *)a4 toStream:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [(MIOWriter *)self writerInputsWithMediaType:2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
LABEL_9:

    [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown metadata stream '%@'", v9];
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *v25;
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v25 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v24 + 1) + 8 * v14);
    v16 = [v15 streamId];
    v17 = [v16 isEqualToString:v9];

    if (v17)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  v21 = *&a4->var0;
  var3 = a4->var3;
  v23 = 0;
  v18 = [v15 appendMetadata:v8 withTimeStamp:&v21 error:&v23];
  v19 = v23;
  if ((v18 & 1) == 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
LABEL_13:
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v20);
  }
}

- (BOOL)setVideoTransform:(CGAffineTransform *)a3 forStream:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(MIOWriter *)self writerInputsWithMediaType:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 streamId];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v16 = *&a3->c;
          v18[0] = *&a3->a;
          v18[1] = v16;
          v18[2] = *&a3->tx;
          [v12 setTransform:v18];
          v15 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (MIOWriter)initWithFilePath:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = @"MIOWriter file path cannot be nil.";
LABEL_8:
    [v13 populateStreamError:a4 message:v14 code:5];
    goto LABEL_9;
  }

  if (![v7 length])
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = @"MIOWriter file path cannot be empty string.";
    goto LABEL_8;
  }

  v34 = 0;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:&v34];
  v11 = v34;

  if (v10 && (v11 & 1) != 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"File path '%@' is an existing directory", v8];
    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:v12 code:5];

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v33.receiver = self;
  v33.super_class = MIOWriter;
  v17 = [(MIOWriter *)&v33 init];
  v18 = v17;
  if (v17)
  {
    *(v17 + 8) = 0x403E000000000000;
    v17[16] = 0;
    v19 = MEMORY[0x277CC0890];
    v32 = *MEMORY[0x277CC0890];
    *(v17 + 20) = *MEMORY[0x277CC0890];
    v20 = *(v19 + 16);
    *(v17 + 36) = v20;
    *(v17 + 26) = 1768843636;
    objc_storeStrong(v17 + 23, a3);
    v21 = objc_opt_new();
    v22 = v18[25];
    v18[25] = v21;

    *(v18 + 13) = v32;
    v18[28] = v20;
    v23 = dispatch_queue_create("mio.writer.notifications", 0);
    v24 = v18[24];
    v18[24] = v23;

    v25 = dispatch_queue_create("mio.writer.status", 0);
    v26 = v18[12];
    v18[12] = v25;

    v18[16] = 0x403E000000000000;
    *(v18 + 112) = 0;
    *(v18 + 29) = 16800;
    *(v18 + 110) = 0;
    *(v18 + 54) = 1;
    v27 = dispatch_group_create();
    v28 = v18[10];
    v18[10] = v27;

    v29 = v18[11];
    v18[11] = 0;

    v18[18] = 0x3FF0000000000000;
    v18[19] = 33;
    v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v31 = v18[20];
    v18[20] = v30;

    v18[22] = 0;
  }

  self = v18;
  v15 = self;
LABEL_10:

  return v15;
}

- (void)dealloc
{
  if (+[MIOLog debugEnabled])
  {
    v3 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_DEBUG, "[MIOWriter dealloc]", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = MIOWriter;
  [(MIOWriter *)&v4 dealloc];
}

- (MIOMovieMetadataUtility)movieMetadataUtility
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(MIOWriter *)self checkStatus:1685024357]&& !self->_movieMetadataUtility)
  {
    v3 = [MIOMovieMetadataUtility alloc];
    v4 = [(MIOWriter *)self avWriter];
    v5 = [v4 outputURL];
    v12 = 0;
    v6 = [(MIOMovieMetadataUtility *)v3 initWithURL:v5 error:&v12];
    v7 = v12;
    movieMetadataUtility = self->_movieMetadataUtility;
    self->_movieMetadataUtility = v6;

    if (!self->_movieMetadataUtility)
    {
      v9 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "Error creating movieMetadataUtility: %{public}@.", buf, 0xCu);
      }
    }
  }

  v10 = self->_movieMetadataUtility;

  return v10;
}

- (id)writerInputsWithMediaType:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MIOOrderedKeysMutableMap *)self->_inputs allValues];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 mediaType] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)writerInputsWithMediaType:(int64_t)a3 streamId:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(MIOWriter *)self writerInputsWithMediaType:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 streamId];
        v13 = [v12 isEqualToString:v6];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (unsigned)status
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1970170734;
  objc_initWeak(&location, self);
  statusQueue = self->_statusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__MIOWriter_status__block_invoke;
  block[3] = &unk_279848040;
  objc_copyWeak(&v6, &location);
  block[4] = &v8;
  dispatch_sync(statusQueue, block);
  LODWORD(statusQueue) = *(v9 + 6);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return statusQueue;
}

void __19__MIOWriter_status__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[26];
  }
}

- (void)setStatus:(unsigned int)a3
{
  objc_initWeak(&location, self);
  statusQueue = self->_statusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__MIOWriter_setStatus___block_invoke;
  block[3] = &unk_279848068;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(statusQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __23__MIOWriter_setStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[26] = *(a1 + 40);
  }
}

- (BOOL)checkStatus:(unsigned int)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  objc_initWeak(&location, self);
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__MIOWriter_checkStatus___block_invoke;
  v7[3] = &unk_279848090;
  objc_copyWeak(&v8, &location);
  v7[4] = &v11;
  v9 = a3;
  dispatch_sync(statusQueue, v7);
  LOBYTE(a3) = *(v12 + 24);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);
  return a3;
}

void __25__MIOWriter_checkStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[26] == *(a1 + 48);
  }
}

- (void)setBaseMediaTimeScale:(int)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_baseMediaTimeScale = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set baseMediaTimeScale after preparing.  No-op."];
  }
}

- (void)setSessionStartTime:(id *)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_sessionStarted)
  {
    objc_sync_exit(obj);

    [(MIOWriter *)obj reportWarning:@"Cannot set sessionStartTime after session was started.  No-op."];
  }

  else
  {
    v4 = *&a3->var0;
    *&obj->_sessionStartTime.flags = a3->var3;
    *(&obj->_sessionStarted + 4) = v4;
    objc_sync_exit(obj);
  }
}

- (void)setRealTime:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_realTime = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set realTime after preparing.  No-op."];
  }
}

- (void)setInProcessRecording:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_inProcessRecording = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set inProcessRecording after preparing.  No-op."];
  }
}

- (void)setShouldOptimizeForNetworkUse:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_shouldOptimizeForNetworkUse = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set shouldOptimizeForNetworkUse after preparing.  No-op."];
  }
}

- (void)setPreferCustomCompression:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_preferCustomCompression = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set preferCustomCompression after preparing.  No-op."];
  }
}

- (void)setEnableAVEHighPerformanceProfile:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_enableAVEHighPerformanceProfile = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set enableAVEHighPerformanceProfile after preparing.  No-op."];
  }
}

- (void)setDefaultFrameRate:(double)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_defaultFrameRate = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set defaultFrameRate after preparing.  No-op."];
  }
}

- (void)setCustomMOVMetadata:(id)a3
{
  v5 = a3;
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    objc_storeStrong(&self->_customMOVMetadata, a3);
  }

  else
  {
    [(MIOWriter *)self reportWarning:@"Cannot set customMOVMetadata after preparing.  No-op."];
  }
}

- (void)setBufferCacheMode:(int)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_bufferCacheMode = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set bufferCacheMode after preparing.  No-op."];
  }
}

- (void)setMovieFragmentInterval:(id *)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    v5 = *&a3->var0;
    self->_movieFragmentInterval.epoch = a3->var3;
    *&self->_movieFragmentInterval.value = v5;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set movieFragmentInterval after preparing.  No-op."];
  }
}

- (void)setPreserveSessionStartTime:(BOOL)a3
{
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    self->_preserveSessionStartTime = a3;
  }

  else
  {

    [(MIOWriter *)self reportWarning:@"Cannot set preserveSessionStartTime after preparing.  No-op."];
  }
}

- (BOOL)canWrite
{
  if ([(MIOWriter *)self checkStatus:1919247481])
  {
    return 1;
  }

  return [(MIOWriter *)self checkStatus:1718186856];
}

- (void)setFailHandler:(id)a3
{
  self->_failHandler = MEMORY[0x259C68980](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (void)setWarningHandler:(id)a3
{
  self->_warningHandler = MEMORY[0x259C68980](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (id)getFailHandler
{
  v2 = MEMORY[0x259C68980](self->_failHandler, a2);

  return v2;
}

- (id)getWarningHandler
{
  v2 = MEMORY[0x259C68980](self->_warningHandler, a2);

  return v2;
}

- (void)reportError:(id)a3
{
  v4 = a3;
  [(MIOWriter *)self fail];
  objc_initWeak(&location, self);
  v5 = [(MIOWriter *)self defaultNotificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MIOWriter_reportError___block_invoke;
  block[3] = &unk_2798480B8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__MIOWriter_reportError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained getFailHandler];

  if (v4)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4[2](v4, v3, *(a1 + 32));
  }
}

- (void)reportWarning:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_ERROR, "WARNING: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(MIOWriter *)self defaultNotificationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__MIOWriter_reportWarning___block_invoke;
  v8[3] = &unk_2798480B8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __27__MIOWriter_reportWarning___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained getWarningHandler];

  if (v4)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4[2](v4, v3, *(a1 + 32));
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeWithSeconds:(SEL)a3
{
  v6 = [(MIOWriter *)self baseMediaTimeScale];

  return CMTimeMakeWithSeconds(retstr, a4, v6);
}

- (BOOL)addInput:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(MIOWriter *)self checkStatus:1768843636])
  {
    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:@"MIOWriter status not MIOWriterInit code:{cannot add input.", 13}];
    goto LABEL_26;
  }

  inputs = self->_inputs;
  v8 = [v6 uuid];
  v9 = [(MIOOrderedKeysMutableMap *)inputs objectForKey:v8];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 streamId];
    v12 = [v10 stringWithFormat:@"Stream '%@' with same media type already exists.", v11];

    [MEMORY[0x277CCA9B8] populateStreamError:a4 message:v12 code:13];
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v6 underlyingInputs];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (![(MIOWriter *)self addInput:*(*(&v35 + 1) + 8 * i) error:a4])
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [(MIOWriter *)self writerInputs];
    v18 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = MEMORY[0x277CCACA8];
            v27 = [v22 streamId];
            v28 = [v6 streamId];
            v29 = [v26 stringWithFormat:@"Input of type 'MIOWriterTimeRangeMetadataStreamInput' ('%@') was already added. Cannot add input '%@'.", v27, v28];

            [MEMORY[0x277CCA9B8] populateStreamError:a4 message:v29 code:13];
            goto LABEL_25;
          }
        }

        v19 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

  v23 = self->_inputs;
  v24 = [v6 uuid];
  [(MIOOrderedKeysMutableMap *)v23 setObject:v6 forKey:v24];

  v25 = 1;
LABEL_27:

  return v25;
}

- (void)prepareWriterWithCompletionHandler:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MIOWriter *)self checkStatus:1768843636])
  {
    v23 = v4;
    [(MIOWriter *)self setStatus:1886545264];
    v24 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(MIOWriter *)self writerInputs];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          if ([v11 threadingOption] != 1)
          {
            if ([v11 useOwnWritingThread])
            {
              v12 = MEMORY[0x277CCACA8];
              v13 = [v11 streamId];
              v14 = [v12 stringWithFormat:@"mio.writing.%@.%ld", v13, objc_msgSend(v11, "mediaType")];

              [v11 writingThreadPriority];
              v16 = -[MIOWriter newWritingThreadWithName:threadPriority:qualityOfService:](self, "newWritingThreadWithName:threadPriority:qualityOfService:", v14, [v11 writingThreadQualityOfService], v15);
              [v24 addObject:v16];
            }

            else
            {
              if (!v8)
              {
                v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"mio.writing.default"];
                [(MIOWriter *)self writingThreadPriority];
                v8 = [(MIOWriter *)self newWritingThreadWithName:v17 threadPriority:[(MIOWriter *)self writingThreadQualityOfService] qualityOfService:v18];
                [v24 addObject:v8];
              }

              v16 = v8;
              v8 = v16;
            }

            [v11 setAssignedWritingThread:v16];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v19 = v24;
    v20 = [v24 copy];
    writingThreads = self->_writingThreads;
    self->_writingThreads = v20;

    v22 = dispatch_queue_create("mio.writer.prepare", 0);
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MIOWriter_prepareWriterWithCompletionHandler___block_invoke;
    block[3] = &unk_2798480E0;
    objc_copyWeak(&v27, &location);
    v4 = v23;
    block[4] = self;
    v26 = v23;
    dispatch_async(v22, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Writer not in MIOWriterInit state." code:17];
    [(MIOWriter *)self setStatus:1717660012];
    (*(v4 + 2))(v4, 0, v19);
  }
}

void __48__MIOWriter_prepareWriterWithCompletionHandler___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v60 = v2;
    v61 = a1;
    v5 = MEMORY[0x277CBEBC0];
    v6 = [WeakRetained filePath];
    v64 = [v5 fileURLWithPath:v6];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtURL:v64 error:0];

    v63 = *MEMORY[0x277CE5DA8];
    v8 = [v64 pathExtension];
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqual:@"mp4"];

    if (v10)
    {
      v11 = *MEMORY[0x277CE5D98];

      v12 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_INFO, "⚠️⚠️⚠️ WARNING [MOVStreamIO]: Selected output file type is 'mp4'. Be aware that this can and will cause data loss. If you can please use QuickTime Movie('.mov'). ⚠️⚠️⚠️", buf, 2u);
      }

      v63 = v11;
    }

    v79 = 0;
    v13 = [objc_alloc(MEMORY[0x277CE6460]) initWithURL:v64 fileType:v63 error:&v79];
    v14 = v79;
    [v4 setAvWriter:v13];

    if (v14)
    {
      [v4 setStatus:1717660012];
      (*(*(v61 + 40) + 16))();
    }

    else
    {
      if ([*(v61 + 32) inProcessRecording])
      {
        v15 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_INFO, "AVAssetWriter set requiresInProcessOperation = YES", buf, 2u);
        }

        v16 = [v4 avWriter];
        [v16 setValue:MEMORY[0x277CBEC38] forKey:@"requiresInProcessOperation"];

        v17 = [v4 avWriter];
        v18 = [v17 valueForKey:@"requiresInProcessOperation"];

        v19 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 intValue];
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&dword_257883000, v19, OS_LOG_TYPE_INFO, "Check AVAssetWriter.requiresInProcessOperation is %d", buf, 8u);
        }
      }

      [v4 movieFragmentInterval];
      if (v78)
      {
        [v4 movieFragmentInterval];
        v21 = [v4 avWriter];
        *buf = v76;
        v83 = v77;
        [v21 setMovieFragmentInterval:buf];
      }

      v22 = [v4 shouldOptimizeForNetworkUse];
      v23 = [v4 avWriter];
      [v23 setShouldOptimizeForNetworkUse:v22];

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v24 = [v4 inputs];
      v25 = [v24 allOrderedKeys];

      v14 = 0;
      v26 = [v25 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v26)
      {
        v27 = *v73;
        while (2)
        {
          v28 = 0;
          v29 = v14;
          do
          {
            if (*v73 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v72 + 1) + 8 * v28);
            v31 = [v4 inputs];
            v32 = [v31 objectForKey:v30];

            v71 = v29;
            LODWORD(v30) = [v32 prepareInputWithWriter:v4 error:&v71];
            v14 = v71;

            if (!v30)
            {
              [v4 setStatus:1717660012];
              (*(*(v61 + 40) + 16))();

              goto LABEL_48;
            }

            ++v28;
            v29 = v14;
          }

          while (v26 != v28);
          v26 = [v25 countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v33 = [v4 inputs];
      obj = [v33 allOrderedKeys];

      v34 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v34)
      {
        v35 = *v68;
        while (2)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v68 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v67 + 1) + 8 * i);
            v38 = [v4 inputs];
            v39 = [v38 objectForKey:v37];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = v39;
              v66 = v14;
              v41 = [v40 establishAssociationsWithError:&v66];
              v42 = v66;

              if (!v41)
              {
                [v4 setStatus:1717660012];
                (*(*(v61 + 40) + 16))();

                v14 = v42;
                goto LABEL_48;
              }

              v14 = v42;
            }
          }

          v34 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }

      v43 = [MEMORY[0x277CE6520] mioMovieMetadataItem];
      v44 = [MEMORY[0x277CBEB18] arrayWithObject:v43];
      v45 = [v4 customMOVMetadata];
      v46 = [v45 count] == 0;

      if (!v46)
      {
        v47 = [v4 customMOVMetadata];
        [v44 addObjectsFromArray:v47];
      }

      v48 = [v4 timeRangeMetadataKeyHint];

      if (v48)
      {
        v49 = MEMORY[0x277CE6520];
        v50 = [v4 timeRangeMetadataKeyHint];
        v65 = v14;
        v51 = [v49 movMetadataItemWithTimeRangeMetadataKeyHint:v50 error:&v65];
        v52 = v65;

        if (v51)
        {
          [v44 addObject:v51];
        }

        v14 = v52;
      }

      if (![*(v61 + 32) disguiseMode])
      {
        v53 = [v44 copy];
        v54 = [v4 avWriter];
        [v54 setMetadata:v53];
      }

      v55 = [v4 avWriter];
      v56 = [v55 startWriting];

      if (v56)
      {
        [v4 setStatus:1919247481];
        [v4 startWriting];

        (*(*(v61 + 40) + 16))();
        v4 = 0;
      }

      else
      {
        [v4 setStatus:1717660012];
        v57 = *(v61 + 40);
        v58 = [v4 avWriter];
        v59 = [v58 error];
        (*(v57 + 16))(v57, 0, v59);
      }
    }

LABEL_48:

    v2 = v60;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)finishWithCompletionHandler:(id)a3
{
  finishStepDefaultTimeout = self->_finishStepDefaultTimeout;
  v4 = *MEMORY[0x277CC0890];
  v5 = *(MEMORY[0x277CC0890] + 16);
  [(MIOWriter *)self finishWithTimeout:&v4 endTime:a3 completionHandler:finishStepDefaultTimeout];
}

- (void)finishWithEndTime:(id *)a3 completionHandler:(id)a4
{
  finishStepDefaultTimeout = self->_finishStepDefaultTimeout;
  v5 = *a3;
  [(MIOWriter *)self finishWithTimeout:&v5 endTime:a4 completionHandler:finishStepDefaultTimeout];
}

- (void)finishWithTimeout:(double)a3 completionHandler:(id)a4
{
  v4 = *MEMORY[0x277CC0890];
  v5 = *(MEMORY[0x277CC0890] + 16);
  [(MIOWriter *)self finishWithTimeout:&v4 endTime:a4 completionHandler:a3];
}

- (void)finishWithTimeout:(double)a3 endTime:(id *)a4 completionHandler:(id)a5
{
  v8 = a5;
  if ([(MIOWriter *)self checkStatus:1919247481])
  {
    [(MIOWriter *)self setStatus:1718186856];
    objc_initWeak(&location, self);
    v9 = dispatch_queue_create("mio.writer.finish", 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__MIOWriter_finishWithTimeout_endTime_completionHandler___block_invoke;
    v12[3] = &unk_279848130;
    objc_copyWeak(v14, &location);
    v10 = v8;
    v14[1] = *&a3;
    v15 = *&a4->var0;
    var3 = a4->var3;
    v12[4] = self;
    v13 = v10;
    dispatch_async(v9, v12);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Writer not in MIOWriterReady state." code:17];
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __57__MIOWriter_finishWithTimeout_endTime_completionHandler___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v34 = a1;
    v33 = objc_autoreleasePoolPush();
    if (+[MIOLog debugEnabled])
    {
      v2 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v2, OS_LOG_TYPE_DEBUG, "FINISH_0: processing queues", buf, 2u);
      }
    }

    v3 = dispatch_group_create();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v4 = [WeakRetained inputs];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v6)
    {
      v7 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v47 + 1) + 8 * i) finishProcessingInDispatchGroup:v3];
        }

        v6 = [v5 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v6);
    }

    v9 = dispatch_time(0, (*(v34 + 56) * 1000000000.0));
    if (dispatch_group_wait(v3, v9))
    {
      v10 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_ERROR, "Could not drain the processing queues within timeout", buf, 2u);
      }
    }

    if (+[MIOLog debugEnabled])
    {
      v11 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_DEBUG, "FINISH_1: fifos", buf, 2u);
      }
    }

    [WeakRetained setDrainWritingThreads:1];
    [WeakRetained signalWritingThreadsProceed];
    v12 = v34;
    v13 = WeakRetained[10];
    v14 = dispatch_time(0, (*(v34 + 56) * 1000000000.0));
    if (dispatch_group_wait(v13, v14))
    {
      v15 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_ERROR, "Could not drain the fifo buffers within timeout", buf, 2u);
      }

      [WeakRetained setForceFinishWritingThreads:1];
      [WeakRetained signalWritingThreadsProceed];
      v12 = v34;
    }

    if (*(v12 + 76))
    {
      v16 = [WeakRetained avWriter];
      *buf = *(v34 + 64);
      v46 = *(v34 + 80);
      [v16 endSessionAtSourceTime:buf];
    }

    if (+[MIOLog debugEnabled])
    {
      v17 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *v51 = 0;
        _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_DEBUG, "FINISH_2: shut down inputs queue", v51, 2u);
      }
    }

    context = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = [WeakRetained inputs];
    v19 = [v18 allValues];

    v20 = [v19 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v41 + 1) + 8 * j);
          v40 = v21;
          v25 = [v24 shutDownOutError:&v40];
          v26 = v40;

          v21 = v26;
          if ((v25 & 1) == 0)
          {
            v27 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = [v24 streamId];
              *v51 = 138543618;
              v52 = v28;
              v53 = 2114;
              v54 = v26;
              _os_log_impl(&dword_257883000, v27, OS_LOG_TYPE_ERROR, "Error on shutdown %{public}@ : %{public}@", v51, 0x16u);
            }
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v20);

      objc_autoreleasePoolPop(context);
      if (v26)
      {
        [WeakRetained setStatus:1717660012];
        (*(*(v34 + 40) + 16))();
LABEL_51:

        objc_autoreleasePoolPop(v33);
        goto LABEL_52;
      }
    }

    else
    {

      objc_autoreleasePoolPop(context);
    }

    if (+[MIOLog debugEnabled])
    {
      v29 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v51 = 0;
        _os_log_impl(&dword_257883000, v29, OS_LOG_TYPE_DEBUG, "FINISH_3: AVAssetWriter", v51, 2u);
      }
    }

    v30 = [WeakRetained avWriter];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __57__MIOWriter_finishWithTimeout_endTime_completionHandler___block_invoke_88;
    v36[3] = &unk_279848108;
    v37 = WeakRetained;
    v31 = *(v34 + 40);
    v38 = *(v34 + 32);
    v39 = v31;
    [v30 finishWritingWithCompletionHandler:v36];

    v21 = v37;
    goto LABEL_51;
  }

  (*(*(a1 + 40) + 16))();
LABEL_52:
}

void __57__MIOWriter_finishWithTimeout_endTime_completionHandler___block_invoke_88(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) avWriter];
  v3 = [v2 status];

  if (v3 == 3)
  {
    [*(a1 + 32) setStatus:1717660012];
    v4 = *(a1 + 48);
    v12 = [*(a1 + 32) avWriter];
    v5 = [v12 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    if ([*(a1 + 40) preserveSessionStartTime] && !objc_msgSend(*(a1 + 40), "disguiseMode"))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 sessionStartTime];
        v6 = *(a1 + 32);
      }

      else
      {
        buf = 0uLL;
        v15 = 0;
      }

      v7 = [v6 avWriter];
      v8 = [v7 outputURL];
      v13 = 0;
      v9 = [MOVStreamIOUtility saveSessionStartTime:&buf toMovieAtURL:v8 error:&v13];
      v10 = v13;

      if (!v9)
      {
        v11 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "Error on saving session start time: %{public}@", &buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) setStatus:1685024357];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)cancelRecordingWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(MIOWriter *)self checkStatus:1919247481])
  {
    [(MIOWriter *)self setStatus:1718186856];
    finishStepDefaultTimeout = self->_finishStepDefaultTimeout;
    objc_initWeak(&location, self);
    v6 = dispatch_queue_create("mio.writer.cancel", 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__MIOWriter_cancelRecordingWithCompletionHandler___block_invoke;
    v7[3] = &unk_279848158;
    objc_copyWeak(v9, &location);
    v8 = v4;
    v9[1] = *&finishStepDefaultTimeout;
    dispatch_async(v6, v7);

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MIOWriter *)self setStatus:1668178796];
    v4[2](v4);
  }
}

void __50__MIOWriter_cancelRecordingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    if (+[MIOLog debugEnabled])
    {
      v4 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_DEBUG, "CANCEL_0: processing queues", buf, 2u);
      }
    }

    v5 = dispatch_group_create();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [WeakRetained inputs];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v31 + 1) + 8 * i) finishProcessingInDispatchGroup:v5];
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v9);
    }

    v12 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    if (dispatch_group_wait(v5, v12))
    {
      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_ERROR, "Could not drain the processing queues within timeout", buf, 2u);
      }
    }

    if (+[MIOLog debugEnabled])
    {
      v14 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_DEBUG, "CANCEL_1: invalidate the input and empty the fifos", buf, 2u);
      }
    }

    v15 = objc_autoreleasePoolPush();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [WeakRetained inputs];
    v17 = [v16 allValues];

    v18 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v27 + 1) + 8 * j) invalidate];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v19);
    }

    objc_autoreleasePoolPop(v15);
    [WeakRetained setForceFinishWritingThreads:1];
    [WeakRetained signalWritingThreadsProceed];
    v22 = WeakRetained[10];
    v23 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    if (dispatch_group_wait(v22, v23))
    {
      v24 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, "Could not close writing threads within timeout", buf, 2u);
      }
    }

    if (+[MIOLog debugEnabled])
    {
      v25 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v25, OS_LOG_TYPE_DEBUG, "CANCEL_2: AVAssetWriter", buf, 2u);
      }
    }

    v26 = [WeakRetained avWriter];
    [v26 cancelWriting];

    [WeakRetained setStatus:1668178796];
    (*(*(a1 + 32) + 16))();

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)proposeSessionStartTime:(id *)a3
{
  if ((self->_sessionStartTime.timescale & 1) == 0)
  {
    v3 = *&a3->var0;
    *&self->_sessionStartTime.flags = a3->var3;
    *(&self->_sessionStarted + 4) = v3;
  }
}

- (BOOL)startSession
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sessionStarted)
  {
    [(MIOWriter *)v2 sessionStartTime];
    if ((v7[36] & 0x1D) != 1)
    {
      v5 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:@"Writer invalid sessionStartTime code:{startSession failed.", 16}];
      [(MIOWriter *)v2 reportError:v5];

      v4 = 0;
      goto LABEL_6;
    }

    v2->_sessionStarted = 1;
    avWriter = v2->_avWriter;
    [(MIOWriter *)v2 sessionStartTime];
    [(AVAssetWriter *)avWriter startSessionAtSourceTime:v7];
  }

  v4 = 1;
LABEL_6:
  objc_sync_exit(v2);

  return v4;
}

- (void)fail
{
  v13 = *MEMORY[0x277D85DE8];
  [(MIOWriter *)self setStatus:1717660012];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(MIOOrderedKeysMutableMap *)self->_inputs allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)signalWritingThreadsProceed
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_writingThreads;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) proceed];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)newWritingThreadWithName:(id)a3 threadPriority:(double)a4 qualityOfService:(int64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [MIOThread alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__MIOWriter_newWritingThreadWithName_threadPriority_qualityOfService___block_invoke;
  v12[3] = &unk_279848180;
  v13[1] = *&a4;
  objc_copyWeak(v13, &location);
  v10 = [(MIOThread *)v9 initWithName:v8 block:v12];
  [(MIOThread *)v10 setQualityOfService:a5];
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v10;
}

void __70__MIOWriter_newWritingThreadWithName_threadPriority_qualityOfService___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 perfLogHandle];
  spid = os_signpost_id_generate(v3);
  v46 = v3;
  v47 = os_signpost_id_generate(v3);
  v49 = a1;
  if (([MEMORY[0x277CCACC8] setThreadPriority:*(a1 + 40)] & 1) == 0)
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "Cannot set writing thread priority to 1.0. Continue with default priority...", buf, 2u);
    }
  }

  v5 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    group = WeakRetained[10];
    dispatch_group_enter(group);
    v8 = [v7 canWrite];

    objc_autoreleasePoolPop(v5);
    if (v8)
    {
      v9 = spid - 1;
      v10 = v47 - 1;
      v45 = spid - 1;
      while (1)
      {
        v11 = v46;
        v12 = v11;
        if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "mio.write.thread", "", buf, 2u);
        }

        v48 = v12;
        while (1)
        {
          v13 = v12;
          v14 = v13;
          if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v47, "mio.write.fifo.samples", "", buf, 2u);
          }

          v15 = objc_autoreleasePoolPush();
          v16 = objc_loadWeakRetained((v49 + 32));
          if (!v16)
          {
            break;
          }

          context = v15;
          v52 = v14;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v50 = v16;
          v17 = [v16 inputs];
          v18 = [v17 allValues];

          v19 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = 0;
            v22 = *v55;
            v53 = 1;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v55 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v54 + 1) + 8 * i);
                v25 = [v24 assignedWritingThread];

                if (v25 == v2)
                {
                  v26 = v2;
                  v27 = objc_autoreleasePoolPush();
                  v28 = [v24 fifoBuffer];
                  v29 = [v28 usage];

                  if (v29)
                  {
                    v21 |= [v24 writeNextItemFromFifo];
                    if (v53)
                    {
                      v30 = [v24 fifoBuffer];
                      v53 = [v30 usage] == 0;
                    }

                    else
                    {
                      v53 = 0;
                    }
                  }

                  v2 = v26;
                  objc_autoreleasePoolPop(v27);
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
            }

            while (v20);
          }

          else
          {
            LOBYTE(v21) = 0;
            v53 = 1;
          }

          objc_autoreleasePoolPop(context);
          v14 = v52;
          v31 = v52;
          v32 = v31;
          v10 = v47 - 1;
          if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_257883000, v32, OS_SIGNPOST_INTERVAL_END, v47, "mio.write.fifo.samples", "", buf, 2u);
          }

          v12 = v48;
          if ((v21 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        objc_autoreleasePoolPop(v15);
        v53 = 1;
LABEL_37:
        v33 = objc_autoreleasePoolPush();
        v34 = objc_loadWeakRetained((v49 + 32));
        v35 = v34;
        if (!v34)
        {
          break;
        }

        if (([v34 drainWritingThreads] & v53) == 1)
        {
          v39 = v2;
          v40 = v14;
          if (v45 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v41 = v40;
            if (os_signpost_enabled(v40))
            {
              *buf = 0;
              goto LABEL_52;
            }
          }

LABEL_53:

          v2 = v39;
          break;
        }

        v9 = spid - 1;
        if ([v35 forceFinishWritingThreads])
        {
          v39 = v2;
          v42 = v14;
          if (v45 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v41 = v42;
            if (os_signpost_enabled(v42))
            {
              *buf = 0;
LABEL_52:
              _os_signpost_emit_with_name_impl(&dword_257883000, v41, OS_SIGNPOST_INTERVAL_END, spid, "mio.write.thread", "", buf, 2u);
            }
          }

          goto LABEL_53;
        }

        [v2 waitWithTimeout:30.0];
        v36 = v14;
        v37 = v36;
        if (v45 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v37, OS_SIGNPOST_INTERVAL_END, spid, "mio.write.thread", "", buf, 2u);
        }

        v38 = [v35 canWrite];
        objc_autoreleasePoolPop(v33);
        if ((v38 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      objc_autoreleasePoolPop(v33);
    }

LABEL_55:
    dispatch_group_leave(group);
  }

  else
  {
    objc_autoreleasePoolPop(v5);
  }
}

- (BOOL)startWriting
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(MIOWriter *)self canWrite];
  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_writingThreads;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) start];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, &v4->super, OS_LOG_TYPE_ERROR, "startWriting canceled because writer is not in state that allows writing.", buf, 2u);
    }
  }

  return v3;
}

- (void)simulateFailure
{
  v3 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"SIMULATED ERROR FOR TESTING" code:0];
  [(MIOWriter *)self reportError:v3];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)sessionStartTime
{
  *&retstr->var0 = *(&self->var3 + 4);
  retstr->var3 = *&self[1].var2;
  return self;
}

@end