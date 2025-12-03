@interface MADHEVCAlphaSequenceWriter
+ (id)assetWriterWithURL:(id)l;
- (MADHEVCAlphaSequenceWriter)initWithFrameCount:(unint64_t)count;
- (id)finishWithEndTime:(id *)time;
- (int)addPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time;
- (int)createAssetWriterInputWithFormatDescription:(opaqueCMFormatDescription *)description;
- (opaqueCMSampleBuffer)popSample;
- (void)dealloc;
- (void)processMediaRequest;
- (void)pushSample:(opaqueCMSampleBuffer *)sample;
@end

@implementation MADHEVCAlphaSequenceWriter

- (MADHEVCAlphaSequenceWriter)initWithFrameCount:(unint64_t)count
{
  v43 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = MADHEVCAlphaSequenceWriter;
  v3 = [(MADHEVCAlphaSequenceWriter *)&v38 init];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = NSTemporaryDirectory();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [uUIDString stringByAppendingPathExtension:@".mov"];
    v9 = [v5 stringByAppendingPathComponent:v8];
    v10 = [v4 fileURLWithPath:v9];
    url = v3->_url;
    v3->_url = v10;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)v3->_url path];
    LODWORD(uUID) = [defaultManager fileExistsAtPath:path];

    if (uUID)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        path2 = [(NSURL *)v3->_url path];
        *buf = 138412290;
        v40 = path2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing existing file at path %@", buf, 0xCu);
      }

      path3 = [(NSURL *)v3->_url path];
      v37 = 0;
      v16 = [defaultManager removeItemAtPath:path3 error:&v37];
      v17 = v37;

      if ((v16 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          path4 = [(NSURL *)v3->_url path];
          v19 = [v17 description];
          *buf = 138412546;
          v40 = path4;
          v41 = 2112;
          v42 = v19;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove existing file at path %@ (%@)", buf, 0x16u);
        }

LABEL_18:

        v33 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
    }

    v20 = v3->_url;
    v21 = *MEMORY[0x1E69874C0];
    v36 = v17;
    v22 = [MEMORY[0x1E6987ED8] assetWriterWithURL:v20 fileType:v21 error:&v36];
    v23 = v36;

    writer = v3->_writer;
    v3->_writer = v22;

    if (!v3->_writer)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = [v23 description];
        *buf = 138412290;
        v40 = v34;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset writer (%@)", buf, 0xCu);
      }

      v17 = v23;
      goto LABEL_18;
    }

    array = [MEMORY[0x1E695DF70] array];
    sampleQueue = v3->_sampleQueue;
    v3->_sampleQueue = array;

    v27 = dispatch_semaphore_create(5);
    enqueueSemaphore = v3->_enqueueSemaphore;
    v3->_enqueueSemaphore = v27;

    v29 = dispatch_semaphore_create(0);
    dequeueSemaphore = v3->_dequeueSemaphore;
    v3->_dequeueSemaphore = v29;

    v31 = dispatch_semaphore_create(0);
    completionSemaphore = v3->_completionSemaphore;
    v3->_completionSemaphore = v31;

    atomic_store(1u, &v3->_status);
  }

  v33 = v3;
LABEL_19:

  return v33;
}

+ (id)assetWriterWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(objc_opt_class()) initWithURL:lCopy];

  return v4;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_status);
  if (v3 == 1)
  {
    *buf = *MEMORY[0x1E6960C70];
    *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    v4 = [(MADHEVCAlphaSequenceWriter *)self finishWithEndTime:buf];
  }

  while ([(NSMutableArray *)self->_sampleQueue count])
  {
    *buf = [(NSMutableArray *)self->_sampleQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_sampleQueue removeObjectAtIndex:0];
    CF<__CVBuffer *>::~CF(buf);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  url = self->_url;
  if (url)
  {
    path = [(NSURL *)url path];
    v8 = [defaultManager fileExistsAtPath:path];

    if (v8)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        path2 = [(NSURL *)self->_url path];
        *buf = 138412290;
        *&buf[4] = path2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Removing temporary file at path %@", buf, 0xCu);
      }

      path3 = [(NSURL *)self->_url path];
      v16 = 0;
      v11 = [defaultManager removeItemAtPath:path3 error:&v16];
      v12 = v16;

      if ((v11 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = self->_url;
        v14 = [v12 description];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove temporary file %@ (%@)", buf, 0x16u);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = MADHEVCAlphaSequenceWriter;
  [(MADHEVCAlphaSequenceWriter *)&v15 dealloc];
}

- (void)pushSample:(opaqueCMSampleBuffer *)sample
{
  dispatch_semaphore_wait(self->_enqueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (sample)
  {
    v5 = self->_sampleQueue;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_sampleQueue addObject:sample];
    objc_sync_exit(v5);
  }

  dequeueSemaphore = self->_dequeueSemaphore;

  dispatch_semaphore_signal(dequeueSemaphore);
}

- (opaqueCMSampleBuffer)popSample
{
  dispatch_semaphore_wait(self->_dequeueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = self->_sampleQueue;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_sampleQueue count])
  {
    v4 = [(NSMutableArray *)self->_sampleQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_sampleQueue removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  dispatch_semaphore_signal(self->_enqueueSemaphore);
  return v4;
}

- (void)processMediaRequest
{
  if ([(AVAssetWriterInput *)self->_input isReadyForMoreMediaData])
  {
    while (1)
    {
      popSample = [(MADHEVCAlphaSequenceWriter *)self popSample];
      input = self->_input;
      if (!popSample)
      {
        [(AVAssetWriterInput *)input markAsFinished];
        writer = self->_writer;
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __49__MADHEVCAlphaSequenceWriter_processMediaRequest__block_invoke;
        v5[3] = &unk_1E834BDC0;
        v5[4] = self;
        [(AVAssetWriter *)writer finishWritingWithCompletionHandler:v5];
        goto LABEL_8;
      }

      if (![(AVAssetWriterInput *)input appendSampleBuffer:?])
      {
        break;
      }

      CF<__CVBuffer *>::~CF(&popSample);
      if (![(AVAssetWriterInput *)self->_input isReadyForMoreMediaData])
      {
        return;
      }
    }

    atomic_store(3u, &self->_status);
    [(AVAssetWriter *)self->_writer cancelWriting];
    dispatch_semaphore_signal(self->_completionSemaphore);
LABEL_8:
    CF<__CVBuffer *>::~CF(&popSample);
  }
}

- (int)createAssetWriterInputWithFormatDescription:(opaqueCMFormatDescription *)description
{
  v26[4] = *MEMORY[0x1E69E9840];
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v5 = *MEMORY[0x1E6987CB0];
  v26[0] = *MEMORY[0x1E6987CF8];
  v6 = *MEMORY[0x1E6987E08];
  v25[0] = v5;
  v25[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:Dimensions];
  v26[1] = v7;
  v25[2] = *MEMORY[0x1E6987D70];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(*&Dimensions)];
  v26[2] = v8;
  v25[3] = *MEMORY[0x1E6987D30];
  v23 = *MEMORY[0x1E6983850];
  v24 = &unk_1F49BB308;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];

  v11 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v10];
  input = self->_input;
  self->_input = v11;

  if (!self->_input)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "Failed to create asset writer input";
    goto LABEL_10;
  }

  [(AVAssetWriter *)self->_writer addInput:?];
  if (![(AVAssetWriter *)self->_writer startWriting])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "Failed to start asset writer";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
LABEL_11:
    v16 = -18;
    goto LABEL_12;
  }

  writer = self->_writer;
  *buf = *MEMORY[0x1E6960CC0];
  v22 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVAssetWriter *)writer startSessionAtSourceTime:buf];
  v14 = dispatch_queue_create("VCPSimpleMovieWriter.mediaDataRequest", 0);
  v15 = self->_input;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__MADHEVCAlphaSequenceWriter_createAssetWriterInputWithFormatDescription___block_invoke;
  v20[3] = &unk_1E834BDC0;
  v20[4] = self;
  [(AVAssetWriterInput *)v15 requestMediaDataWhenReadyOnQueue:v14 usingBlock:v20];

  v16 = 0;
LABEL_12:

  return v16;
}

- (int)addPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time
{
  if (!buffer)
  {
    return -50;
  }

  v5 = atomic_load(&self->_status);
  if (v5 != 1)
  {
    return -18;
  }

  formatDescriptionOut = 0;
  v8 = CMVideoFormatDescriptionCreateForImageBuffer(0, buffer, &formatDescriptionOut);
  if (!v8 && (self->_input || (v8 = [(MADHEVCAlphaSequenceWriter *)self createAssetWriterInputWithFormatDescription:formatDescriptionOut]) == 0))
  {
    *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
    sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    sampleTiming.presentationTimeStamp = *time;
    sampleTiming.decodeTimeStamp = sampleTiming.duration;
    sampleBufferOut = 0;
    v8 = CMSampleBufferCreateForImageBuffer(0, buffer, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
    if (!v8)
    {
      if (sampleBufferOut)
      {
        v9 = CFRetain(sampleBufferOut);
      }

      else
      {
        v9 = 0;
      }

      [(MADHEVCAlphaSequenceWriter *)self pushSample:v9];
    }

    CF<__CVBuffer *>::~CF(&sampleBufferOut);
  }

  CF<__CVBuffer *>::~CF(&formatDescriptionOut);
  return v8;
}

- (id)finishWithEndTime:(id *)time
{
  p_status = &self->_status;
  v4 = atomic_load(&self->_status);
  if (v4 == 1)
  {
    [(MADHEVCAlphaSequenceWriter *)self pushSample:0];
    dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    atomic_store(2u, p_status);
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self->_url];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end