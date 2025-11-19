@interface VCPSimpleMovieAssetWriter
+ (id)assetWriterWithURL:(id)a3;
+ (id)assetWriterWithURL:(id)a3 orientation:(unsigned int)a4;
- (CGAffineTransform)trackMatrixForWidth:(SEL)a3 height:(unint64_t)a4 orientation:(unint64_t)a5;
- (VCPSimpleMovieAssetWriter)initWithURL:(id)a3 orientation:(unsigned int)a4;
- (id).cxx_construct;
- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4;
- (int)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4;
- (int)createAssetWriterInputWithFormatDescription:(opaqueCMFormatDescription *)a3 transform:(CGAffineTransform *)a4;
- (int)finish;
- (opaqueCMSampleBuffer)popSample;
- (void)dealloc;
- (void)processMediaRequest;
- (void)pushSample:(opaqueCMSampleBuffer *)a3;
@end

@implementation VCPSimpleMovieAssetWriter

- (VCPSimpleMovieAssetWriter)initWithURL:(id)a3 orientation:(unsigned int)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34.receiver = self;
  v34.super_class = VCPSimpleMovieAssetWriter;
  v7 = [(VCPSimpleMovieAssetWriter *)&v34 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v6 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 path];
        *buf = 138412290;
        v36 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing existing file at path %@", buf, 0xCu);
      }

      v12 = [v6 path];
      v33 = 0;
      v13 = [v8 removeItemAtPath:v12 error:&v33];
      v14 = v33;

      if ((v13 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [v6 path];
          v16 = [v14 description];
          *buf = 138412546;
          v36 = v15;
          v37 = 2112;
          v38 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove existing file at path %@ (%@)", buf, 0x16u);
        }

LABEL_18:

        v29 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = *MEMORY[0x1E69874C0];
    v32 = v14;
    v18 = [MEMORY[0x1E6987ED8] assetWriterWithURL:v6 fileType:v17 error:&v32];
    v19 = v32;

    writer = v7->_writer;
    v7->_writer = v18;

    if (!v7->_writer)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = [v19 description];
        *buf = 138412290;
        v36 = v30;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset writer (%@)", buf, 0xCu);
      }

      v14 = v19;
      goto LABEL_18;
    }

    v21 = [MEMORY[0x1E695DF70] array];
    sampleQueue = v7->_sampleQueue;
    v7->_sampleQueue = v21;

    v23 = dispatch_semaphore_create(5);
    enqueueSemaphore = v7->_enqueueSemaphore;
    v7->_enqueueSemaphore = v23;

    v25 = dispatch_semaphore_create(0);
    dequeueSemaphore = v7->_dequeueSemaphore;
    v7->_dequeueSemaphore = v25;

    v27 = dispatch_semaphore_create(0);
    completionSemaphore = v7->_completionSemaphore;
    v7->_completionSemaphore = v27;

    atomic_store(1u, &v7->_status);
    v7->_orientation = a4;
  }

  v29 = v7;
LABEL_19:

  return v29;
}

+ (id)assetWriterWithURL:(id)a3 orientation:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithURL:v5 orientation:v4];

  return v6;
}

+ (id)assetWriterWithURL:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() assetWriterWithURL:v3 orientation:1];

  return v4;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_status);
  if (v3 == 1)
  {
    [(VCPSimpleMovieAssetWriter *)self finish];
  }

  while ([(NSMutableArray *)self->_sampleQueue count])
  {
    v5 = [(NSMutableArray *)self->_sampleQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_sampleQueue removeObjectAtIndex:0];
    CF<__CVBuffer *>::~CF(&v5);
  }

  v4.receiver = self;
  v4.super_class = VCPSimpleMovieAssetWriter;
  [(VCPSimpleMovieAssetWriter *)&v4 dealloc];
}

- (void)pushSample:(opaqueCMSampleBuffer *)a3
{
  dispatch_semaphore_wait(self->_enqueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v5 = self->_sampleQueue;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_sampleQueue addObject:a3];
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
      v6 = [(VCPSimpleMovieAssetWriter *)self popSample];
      input = self->_input;
      if (!v6)
      {
        [(AVAssetWriterInput *)input markAsFinished];
        writer = self->_writer;
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __48__VCPSimpleMovieAssetWriter_processMediaRequest__block_invoke;
        v5[3] = &unk_1E834BDC0;
        v5[4] = self;
        [(AVAssetWriter *)writer finishWritingWithCompletionHandler:v5];
        goto LABEL_8;
      }

      if (![(AVAssetWriterInput *)input appendSampleBuffer:?])
      {
        break;
      }

      CF<__CVBuffer *>::~CF(&v6);
      if (![(AVAssetWriterInput *)self->_input isReadyForMoreMediaData])
      {
        return;
      }
    }

    atomic_store(3u, &self->_status);
    [(AVAssetWriter *)self->_writer cancelWriting];
    dispatch_semaphore_signal(self->_completionSemaphore);
LABEL_8:
    CF<__CVBuffer *>::~CF(&v6);
  }
}

- (int)createAssetWriterInputWithFormatDescription:(opaqueCMFormatDescription *)a3 transform:(CGAffineTransform *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = *MEMORY[0x1E6987CB0];
  v24[0] = *MEMORY[0x1E6987CE8];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v7 sourceFormatHint:a3];
  input = self->_input;
  self->_input = v8;

  v10 = self->_input;
  if (!v10)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Failed to create asset writer input";
    goto LABEL_10;
  }

  v11 = *&a4->c;
  *buf = *&a4->a;
  v21 = v11;
  v22 = *&a4->tx;
  [(AVAssetWriterInput *)v10 setTransform:buf];
  [(AVAssetWriter *)self->_writer addInput:self->_input];
  if (![(AVAssetWriter *)self->_writer startWriting])
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "Failed to start asset writer";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
LABEL_11:
    v15 = -18;
    goto LABEL_12;
  }

  writer = self->_writer;
  *buf = *MEMORY[0x1E6960CC0];
  *&v21 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVAssetWriter *)writer startSessionAtSourceTime:buf];
  v13 = dispatch_queue_create("VCPSimpleMovieWriter.mediaDataRequest", 0);
  v14 = self->_input;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__VCPSimpleMovieAssetWriter_createAssetWriterInputWithFormatDescription_transform___block_invoke;
  v19[3] = &unk_1E834BDC0;
  v19[4] = self;
  [(AVAssetWriterInput *)v14 requestMediaDataWhenReadyOnQueue:v13 usingBlock:v19];

  v15 = 0;
LABEL_12:

  return v15;
}

- (int)copyPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4
{
  v17[4] = *MEMORY[0x1E69E9840];
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (self->_pixelBufferPool.value_)
  {
    goto LABEL_2;
  }

  fwrite("[WARNING] Pixel buffers are not IOSurface-backed; copying\n", 0x3AuLL, 1uLL, *MEMORY[0x1E69E9848]);
  v16[0] = *MEMORY[0x1E6966130];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(a3)];
  v17[0] = v11;
  v16[1] = *MEMORY[0x1E6966208];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(a3)];
  v17[1] = v12;
  v16[2] = *MEMORY[0x1E69660B8];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(a3)];
  v16[3] = *MEMORY[0x1E69660D8];
  v17[2] = v13;
  v17[3] = MEMORY[0x1E695E0F8];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  if (p_pixelBufferPool->value_)
  {
    CFRelease(p_pixelBufferPool->value_);
    p_pixelBufferPool->value_ = 0;
  }

  PixelBuffer = CVPixelBufferPoolCreate(0, 0, v14, &p_pixelBufferPool->value_);

  if (!PixelBuffer)
  {
LABEL_2:
    value = self->_transferSession.value_;
    p_transferSession = &self->_transferSession;
    if (value || (PixelBuffer = VTPixelTransferSessionCreate(0, &p_transferSession->value_)) == 0)
    {
      PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, p_pixelBufferPool->value_, a4);
      if (!PixelBuffer)
      {
        return VTPixelTransferSessionTransferImage(p_transferSession->value_, a3, *a4);
      }
    }
  }

  return PixelBuffer;
}

- (CGAffineTransform)trackMatrixForWidth:(SEL)a3 height:(unint64_t)a4 orientation:(unint64_t)a5
{
  if (a6 <= 4)
  {
    if (a6 == 2)
    {
      v6 = a4;
      retstr->a = -1.0;
      retstr->b = 0.0;
      retstr->c = 0.0;
      retstr->d = 1.0;
      goto LABEL_14;
    }

    if (a6 != 3)
    {
      if (a6 == 4)
      {
        v7 = a5;
        retstr->b = 0.0;
        retstr->c = 0.0;
        retstr->a = 1.0;
        *&retstr->d = xmmword_1C9F60600;
LABEL_12:
        retstr->ty = v7;
        return self;
      }

LABEL_15:
      v8 = MEMORY[0x1E695EFD0];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *&retstr->a = *MEMORY[0x1E695EFD0];
      *&retstr->c = v9;
      *&retstr->tx = *(v8 + 32);
      return self;
    }

    v10 = a4;
    v11 = a5;
    retstr->a = -1.0;
    retstr->b = 0.0;
    retstr->c = 0.0;
    retstr->d = -1.0;
LABEL_19:
    retstr->tx = v10;
    retstr->ty = v11;
    return self;
  }

  if (a6 > 6)
  {
    if (a6 != 7)
    {
      if (a6 == 8)
      {
        v7 = a4;
        *&retstr->a = xmmword_1C9F60790;
        retstr->d = 0.0;
        retstr->tx = 0.0;
        retstr->c = 1.0;
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    v10 = a5;
    v11 = a4;
    *&retstr->a = xmmword_1C9F60790;
    *&retstr->c = xmmword_1C9F60600;
    goto LABEL_19;
  }

  if (a6 != 5)
  {
    v6 = a5;
    *&retstr->a = xmmword_1C9F61010;
    *&retstr->c = xmmword_1C9F60600;
LABEL_14:
    retstr->tx = v6;
    retstr->ty = 0.0;
    return self;
  }

  *&retstr->a = xmmword_1C9F61010;
  retstr->c = 1.0;
  retstr->d = 0.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4
{
  if (!a3)
  {
    return -50;
  }

  v5 = atomic_load(&self->_status);
  if (v5 == 1)
  {
    formatDescriptionOut = 0;
    v8 = CMVideoFormatDescriptionCreateForImageBuffer(0, a3, &formatDescriptionOut);
    if (v8)
    {
      goto LABEL_20;
    }

    Width = CVPixelBufferGetWidth(a3);
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    [(VCPSimpleMovieAssetWriter *)self trackMatrixForWidth:Width height:CVPixelBufferGetHeight(a3) orientation:self->_orientation];
    if (!self->_input)
    {
      *&sampleTiming.duration.value = v15;
      *&sampleTiming.duration.epoch = v16;
      *&sampleTiming.presentationTimeStamp.timescale = v17;
      v8 = [(VCPSimpleMovieAssetWriter *)self createAssetWriterInputWithFormatDescription:formatDescriptionOut transform:&sampleTiming];
      if (v8)
      {
        goto LABEL_20;
      }
    }

    *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
    sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    sampleTiming.presentationTimeStamp = *a4;
    sampleTiming.decodeTimeStamp = sampleTiming.duration;
    cf = 0;
    if (CVPixelBufferGetIOSurface(a3))
    {
      v12 = 0;
      cf = CFRetain(a3);
      CF<__CVBuffer *>::~CF(&v12);
    }

    else
    {
      v8 = [(VCPSimpleMovieAssetWriter *)self copyPixelBuffer:a3 toPixelBuffer:&cf];
      if (v8)
      {
LABEL_19:
        CF<__CVBuffer *>::~CF(&cf);
LABEL_20:
        CF<__CVBuffer *>::~CF(&formatDescriptionOut);
        return v8;
      }
    }

    v12 = 0;
    v8 = CMSampleBufferCreateForImageBuffer(0, cf, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &v12);
    if (!v8)
    {
      if (v12)
      {
        v10 = CFRetain(v12);
      }

      else
      {
        v10 = 0;
      }

      [(VCPSimpleMovieAssetWriter *)self pushSample:v10];
    }

    CF<__CVBuffer *>::~CF(&v12);
    goto LABEL_19;
  }

  return -18;
}

- (int)finish
{
  v2 = atomic_load(&self->_status);
  if (v2 != 1)
  {
    return -18;
  }

  [(VCPSimpleMovieAssetWriter *)self pushSample:0];
  dispatch_semaphore_wait(self->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end