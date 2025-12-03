@interface CAMTimelapseStabilizationMovieWriter
+ (CGSize)_desiredOutputSizeForSourcePixelBuffer:(__CVBuffer *)buffer;
- (BOOL)_appendPixelBufferToMovie:(__CVBuffer *)movie;
- (CAMTimelapseStabilizationMovieWriter)init;
- (CGAffineTransform)_movieTransform;
- (__CVBuffer)_cropPixelBufferIfNeeded:(__CVBuffer *)needed;
- (__CVBuffer)_decodeFirstFrameAgain;
- (__CVBuffer)copySourcePixelBufferForFrameNumber:(int64_t)number outputSampleTime:(id *)time stabilizer:(id)stabilizer;
- (id)copySourceStabilizationMetadataForFrameNumber:(int64_t)number outputSampleTime:(id *)time stabilizer:(id)stabilizer;
- (int)_copyNextSampleBufferFromStabilizer:(opaqueCMSampleBuffer *)stabilizer;
- (int)_copySourcePixelBufferForNextFrame:(__CVBuffer *)frame skipBadFrames:(BOOL)frames;
- (int)_startWritingWithOutputPath:(id)path width:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second frameCount:(int64_t)count preferHEVC:(BOOL)self0 visMetadataCount:(int64_t)self1 videoMetadata:(id)self2;
- (void)_cleanup;
- (void)_decodeFirstFrameAgain;
- (void)_finishMovieWithCompletionHandler:(id)handler;
- (void)_finishMovieWithFailure;
- (void)_finishMovieWithRestartUnstabilized;
- (void)_requestNextFrameReadDecode;
- (void)_reset;
- (void)_restartUnstabilized;
- (void)_setMetadataOnVideoTrackAssetWriterInput:(id)input;
- (void)_writeMovieAsynchronously;
- (void)dealloc;
- (void)setSuspended:(BOOL)suspended;
- (void)writeMovieFromImageFiles:(id)files visMetadataFiles:(id)metadataFiles startDate:(id)date location:(id)location outputPath:(id)path transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second preferHEVC:(BOOL)self0 completionHandler:(id)self1;
@end

@implementation CAMTimelapseStabilizationMovieWriter

- (CAMTimelapseStabilizationMovieWriter)init
{
  v15.receiver = self;
  v15.super_class = CAMTimelapseStabilizationMovieWriter;
  v2 = [(CAMTimelapseStabilizationMovieWriter *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.camera.timelapse.movie.write", 0);
    movieWritingQueue = v2->__movieWritingQueue;
    v2->__movieWritingQueue = v3;

    v5 = dispatch_queue_create("com.apple.camera.timelapse.movie.sync", 0);
    syncQueue = v2->__syncQueue;
    v2->__syncQueue = v5;

    v7 = dispatch_queue_create("com.apple.camera.timelapse.movie.reading", 0);
    readingQueue = v2->__readingQueue;
    v2->__readingQueue = v7;

    v9 = dispatch_queue_create("com.apple.camera.timelapse.movie.decode", 0);
    decodeQueue = v2->__decodeQueue;
    v2->__decodeQueue = v9;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMTimelapseFrameLoadMode", @"com.apple.camera", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v12 = AppIntegerValue;
    }

    else
    {
      v12 = 1;
    }

    v2->__frameLoadMode = v12;
  }

  return v2;
}

- (void)dealloc
{
  [(CAMTimelapseStabilizationMovieWriter *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CAMTimelapseStabilizationMovieWriter;
  [(CAMTimelapseStabilizationMovieWriter *)&v3 dealloc];
}

- (void)_cleanup
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__CAMTimelapseStabilizationMovieWriter__cleanup__block_invoke_13(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v3)
  {
    if (CFArrayGetCount(v3) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 88), v4);
        v6 = ValueAtIndex + 1;
        if (ValueAtIndex[1])
        {
          v7 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            __48__CAMTimelapseStabilizationMovieWriter__cleanup__block_invoke_13_cold_1(v9, v6, &v10, v7);
          }

          CVPixelBufferRelease(*v6);
        }

        free(ValueAtIndex);
        ++v4;
      }

      while (CFArrayGetCount(*(*(a1 + 32) + 88)) > v4);
    }

    CFRelease(*(*(a1 + 32) + 88));
    *(*(a1 + 32) + 88) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 248))
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __48__CAMTimelapseStabilizationMovieWriter__cleanup__block_invoke_13_cold_2();
    }

    CFRelease(*(*(a1 + 32) + 248));
    *(*(a1 + 32) + 248) = 0;
  }
}

- (void)_reset
{
  [(CAMTimelapseStabilizationMovieWriter *)self _cleanup];
  frameFilePaths = self->__frameFilePaths;
  self->__frameFilePaths = 0;

  visMetadataFilePaths = self->__visMetadataFilePaths;
  self->__visMetadataFilePaths = 0;

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  movieCreationDate = self->__movieCreationDate;
  self->__frameList = Mutable;
  self->__movieCreationDate = 0;

  movieCreationLocation = self->__movieCreationLocation;
  self->__movieCreationLocation = 0;

  movieOutputPath = self->__movieOutputPath;
  self->__movieOutputPath = 0;

  v9 = MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->__movieTransform.a = *MEMORY[0x1E695EFD0];
  *&self->__movieTransform.c = v10;
  *&self->__movieTransform.tx = *(v9 + 32);
  self->__movieFramesPerSecond = 0;
  writer = self->__writer;
  self->__writer = 0;

  stabilizer = self->__stabilizer;
  self->__stabilizer = 0;

  videoInput = self->__videoInput;
  self->__videoInput = 0;

  pixelBufferAdaptor = self->__pixelBufferAdaptor;
  self->__pixelBufferAdaptor = 0;

  self->__frameCountWrittenToMovie = 0;
  self->__nextSourceFrameIndex = 0;
  self->__nextMetadataFrameIndex = 0;
  self->__firstFrameIndex = -1;
  self->__badMetadataErrorThreshold = 0x7FFFFFFFFFFFFFFFLL;
  completion = self->__completion;
  self->__completion = 0;
}

- (void)_restartUnstabilized
{
  frameFilePaths = self->__frameFilePaths;
  movieCreationDate = self->__movieCreationDate;
  movieCreationLocation = self->__movieCreationLocation;
  v6 = *&self->__movieTransform.c;
  v20 = *&self->__movieTransform.a;
  v21 = v6;
  v22 = *&self->__movieTransform.tx;
  movieFramesPerSecond = self->__movieFramesPerSecond;
  preferHEVC = self->__preferHEVC;
  completion = self->__completion;
  v10 = self->__movieOutputPath;
  v11 = movieCreationLocation;
  v12 = movieCreationDate;
  v13 = frameFilePaths;
  v14 = _Block_copy(completion);
  v15 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Restarting timelapse movie render without stabilization...", buf, 2u);
  }

  *buf = v20;
  v18 = v21;
  v19 = v22;
  LOBYTE(v16) = preferHEVC;
  [(CAMTimelapseStabilizationMovieWriter *)self writeMovieFromImageFiles:v13 visMetadataFiles:0 startDate:v12 location:v11 outputPath:v10 transform:buf framesPerSecond:movieFramesPerSecond preferHEVC:v16 completionHandler:v14];
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    suspendedCopy = suspended;
    self->_suspended = suspended;
    if (self->__movieWritingQueue)
    {
      v5 = os_log_create("com.apple.camera", "Nebula");
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      if (suspendedCopy)
      {
        if (v6)
        {
          [CAMTimelapseStabilizationMovieWriter setSuspended:];
        }

        dispatch_suspend(self->__movieWritingQueue);
      }

      else
      {
        if (v6)
        {
          [CAMTimelapseStabilizationMovieWriter setSuspended:];
        }

        dispatch_resume(self->__movieWritingQueue);
      }
    }
  }
}

- (void)writeMovieFromImageFiles:(id)files visMetadataFiles:(id)metadataFiles startDate:(id)date location:(id)location outputPath:(id)path transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second preferHEVC:(BOOL)self0 completionHandler:(id)self1
{
  filesCopy = files;
  metadataFilesCopy = metadataFiles;
  dateCopy = date;
  v20 = filesCopy;
  v80 = dateCopy;
  locationCopy = location;
  pathCopy = path;
  handlerCopy = handler;
  v24 = [filesCopy count];
  v85 = 0;
  formatDescriptionOut = 0;
  [(CAMTimelapseStabilizationMovieWriter *)self _reset];
  if (v24 < 1)
  {
    v53 = 0;
    v74 = -1;
LABEL_29:
    v75 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseStabilizationMovieWriter writeMovieFromImageFiles:v74 visMetadataFiles:v75 startDate:? location:? outputPath:? transform:? framesPerSecond:? preferHEVC:? completionHandler:?];
    }

    [(CAMTimelapseStabilizationMovieWriter *)self _reset];
    if (handlerCopy)
    {
      v76 = handlerCopy[2];
      v81 = *MEMORY[0x1E6960CC0];
      *&v82 = *(MEMORY[0x1E6960CC0] + 16);
      v76(handlerCopy, 0, &v81, 0);
    }

    goto LABEL_33;
  }

  v25 = [v80 copy];
  movieCreationDate = self->__movieCreationDate;
  self->__movieCreationDate = v25;

  objc_storeStrong(&self->__movieCreationLocation, location);
  v27 = [pathCopy copy];
  movieOutputPath = self->__movieOutputPath;
  self->__movieOutputPath = v27;

  v29 = *&transform->a;
  v30 = *&transform->tx;
  *&self->__movieTransform.c = *&transform->c;
  *&self->__movieTransform.tx = v30;
  *&self->__movieTransform.a = v29;
  self->__movieFramesPerSecond = second;
  self->__preferHEVC = c;
  v31 = [filesCopy copy];
  frameFilePaths = self->__frameFilePaths;
  self->__frameFilePaths = v31;

  v33 = [metadataFilesCopy copy];
  visMetadataFilePaths = self->__visMetadataFilePaths;
  self->__visMetadataFilePaths = v33;

  v35 = self->__visMetadataFilePaths;
  if (v35 && [(NSArray *)v35 count])
  {
    v36 = vcvtms_s32_f32(v24 * 0.05);
    if (v36 <= 1)
    {
      v36 = 1;
    }

    if (v24 < v36)
    {
      v36 = v24;
    }

    self->__badMetadataErrorThreshold = v36;
    v37 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [CAMTimelapseStabilizationMovieWriter writeMovieFromImageFiles:visMetadataFiles:startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:];
    }
  }

  v79 = handlerCopy;
  v38 = dispatch_semaphore_create([(CAMTimelapseStabilizationMovieWriter *)self _frameLoadMode]!= 0);
  semFileReader = self->__semFileReader;
  self->__semFileReader = v38;

  v40 = dispatch_semaphore_create(0);
  semFrameGetter = self->__semFrameGetter;
  self->__semFrameGetter = v40;

  v42 = [MEMORY[0x1E695DFA8] set];
  badFrameSet = self->__badFrameSet;
  self->__badFrameSet = v42;

  v44 = [MEMORY[0x1E695DFA8] set];
  badMetadataSet = self->__badMetadataSet;
  self->__badMetadataSet = v44;

  [(CAMTimelapseStabilizationMovieWriter *)self _startAsyncDecoding];
  v46 = [(CAMTimelapseStabilizationMovieWriter *)self _copySourcePixelBufferForNextFrame:&v85 skipBadFrames:1];
  if (v46)
  {
    v74 = v46;
    v53 = 0;
  }

  else
  {
    v47 = v85;
    v48 = self->__nextSourceFrameIndex - 1;
    self->__nextSourceFrameIndex = v48;
    self->__nextMetadataFrameIndex = v48;
    self->__firstFrameIndex = v48;
    self->__stashedSourceFrame = v47;
    movieCreationLocation = self->__movieCreationLocation;
    if (!movieCreationLocation)
    {
      v50 = [(NSArray *)self->__frameFilePaths objectAtIndex:?];
      v51 = [CAMNebulaUtilities locationFromJPEGAtPath:v50];
      v52 = self->__movieCreationLocation;
      self->__movieCreationLocation = v51;

      movieCreationLocation = self->__movieCreationLocation;
    }

    v53 = [CAMPersistenceController clientVideoMetadataForLocation:movieCreationLocation withCreationDate:self->__movieCreationDate];
    v54 = CMVideoFormatDescriptionCreateForImageBuffer(0, self->__stashedSourceFrame, &formatDescriptionOut);
    if (v54)
    {
      v74 = v54;
    }

    else
    {
      v78 = pathCopy;
      [objc_opt_class() _desiredOutputSizeForSourcePixelBuffer:self->__stashedSourceFrame];
      v56 = v55;
      v58 = v57;
      v59 = self->__movieOutputPath;
      v60 = v55;
      v61 = v57;
      v62 = formatDescriptionOut;
      v63 = [metadataFilesCopy count];
      v64 = *&self->__movieTransform.c;
      v81 = *&self->__movieTransform.a;
      v82 = v64;
      v83 = *&self->__movieTransform.tx;
      LOBYTE(v77) = c;
      v65 = [(CAMTimelapseStabilizationMovieWriter *)self _startWritingWithOutputPath:v59 width:v60 height:v61 videoFormatDescription:v62 transform:&v81 framesPerSecond:second frameCount:v24 preferHEVC:v77 visMetadataCount:v63 videoMetadata:v53];
      if (v65)
      {
        v74 = v65;
        v20 = filesCopy;
        handlerCopy = v79;
        pathCopy = v78;
      }

      else
      {
        v20 = filesCopy;
        handlerCopy = v79;
        pathCopy = v78;
        if (self->__stabilizer)
        {
          goto LABEL_24;
        }

        Width = CVPixelBufferGetWidth(self->__stashedSourceFrame);
        Height = CVPixelBufferGetHeight(self->__stashedSourceFrame);
        if (v56 == Width && v58 == Height)
        {
          goto LABEL_24;
        }

        v68 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          [CAMTimelapseStabilizationMovieWriter writeMovieFromImageFiles:Height visMetadataFiles:v56 startDate:v58 location:? outputPath:? transform:? framesPerSecond:? preferHEVC:? completionHandler:?];
        }

        v69 = dispatch_queue_create("com.apple.camera.timelapse.movie.framecrop", 0);
        pixelTransferQueue = self->__pixelTransferQueue;
        self->__pixelTransferQueue = v69;

        if (!self->__pixelTransferQueue)
        {
          [CAMTimelapseStabilizationMovieWriter writeMovieFromImageFiles:visMetadataFiles:startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:];
          goto LABEL_25;
        }

        v71 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->__pixelTransferSession);
        if (!v71)
        {
          VTSessionSetProperty(self->__pixelTransferSession, *MEMORY[0x1E6983DF8], *MEMORY[0x1E695E4D0]);
          v71 = VTSessionSetProperty(self->__pixelTransferSession, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
          if (!v71)
          {
LABEL_24:
            v72 = [v79 copy];
            completion = self->__completion;
            self->__completion = v72;

            [(CAMTimelapseStabilizationMovieWriter *)self _writeMovieAsynchronously];
LABEL_25:
            v74 = 0;
            goto LABEL_26;
          }
        }

        v74 = v71;
      }
    }
  }

LABEL_26:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v74)
  {
    goto LABEL_29;
  }

LABEL_33:
}

- (__CVBuffer)_cropPixelBufferIfNeeded:(__CVBuffer *)needed
{
  v23[4] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (self->__pixelTransferSession)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    pixelBufferPool = [(AVAssetWriterInputPixelBufferAdaptor *)self->__pixelBufferAdaptor pixelBufferPool];
    if (pixelBufferPool)
    {
      v6 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], pixelBufferPool, &pixelBufferOut);
      *(v18 + 6) = v6;
      if (!v6)
      {
        Width = CVPixelBufferGetWidth(pixelBufferOut);
        Height = CVPixelBufferGetHeight(pixelBufferOut);
        v22[0] = *MEMORY[0x1E6965D80];
        v9 = [MEMORY[0x1E696AD98] numberWithDouble:Width];
        v23[0] = v9;
        v22[1] = *MEMORY[0x1E6965D60];
        v10 = [MEMORY[0x1E696AD98] numberWithDouble:Height];
        v11 = *MEMORY[0x1E6965D68];
        v23[1] = v10;
        v23[2] = &unk_1F16C8150;
        v12 = *MEMORY[0x1E6965D78];
        v22[2] = v11;
        v22[3] = v12;
        v23[3] = &unk_1F16C8150;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

        CVBufferSetAttachment(needed, *MEMORY[0x1E6965D70], v13, kCVAttachmentMode_ShouldNotPropagate);
        pixelTransferQueue = self->__pixelTransferQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __65__CAMTimelapseStabilizationMovieWriter__cropPixelBufferIfNeeded___block_invoke;
        v16[3] = &unk_1E76FCC68;
        v16[4] = self;
        v16[5] = &v17;
        v16[6] = needed;
        v16[7] = pixelBufferOut;
        dispatch_sync(pixelTransferQueue, v16);
        if (!*(v18 + 6))
        {
          CVPixelBufferRelease(needed);
          needed = pixelBufferOut;
          pixelBufferOut = 0;
        }
      }
    }

    else
    {
      [CAMTimelapseStabilizationMovieWriter _cropPixelBufferIfNeeded:];
    }

    _Block_object_dispose(&v17, 8);
  }

  CVPixelBufferRelease(pixelBufferOut);
  return needed;
}

uint64_t __65__CAMTimelapseStabilizationMovieWriter__cropPixelBufferIfNeeded___block_invoke(uint64_t a1)
{
  result = VTPixelTransferSessionTransferImage(*(*(a1 + 32) + 224), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (__CVBuffer)_decodeFirstFrameAgain
{
  p_firstFrameIndex = &self->__firstFrameIndex;
  v3 = [(NSArray *)self->__frameFilePaths objectAtIndex:self->__firstFrameIndex];
  v4 = [CAMTimelapseJPEGReader newDataFromFilePath:v3];
  if (!v4)
  {
    [(CAMTimelapseStabilizationMovieWriter *)p_firstFrameIndex _decodeFirstFrameAgain];
LABEL_6:

    v5 = 0;
    goto LABEL_3;
  }

  v5 = [CAMTimelapseJPEGReader createPixelBufferFromData:v4 applyTransform:0 maxPixelSize:0 useBGRA:0];
  if (!v5)
  {
    [(CAMTimelapseStabilizationMovieWriter *)p_firstFrameIndex _decodeFirstFrameAgain];
    goto LABEL_6;
  }

LABEL_3:

  return v5;
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2 && [v2 count])
  {
    v3 = [*(*(a1 + 32) + 16) count];
    v4 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_1();
    }

    v5 = 0;
    do
    {
      v6 = objc_autoreleasePoolPush();
      dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
      v7 = *(*(a1 + 32) + 16);
      if (!v7)
      {
        v10 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_4(buf, &buf[1]);
        }

        goto LABEL_20;
      }

      v8 = [v7 objectAtIndex:v5];
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v19 = v5;
        v20 = 2114;
        v21 = v8;
        _os_log_debug_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEBUG, "Reading frame %ld from disk: %{public}@", buf, 0x16u);
      }

      v10 = [CAMTimelapseJPEGReader newDataFromFilePath:v8];
      v11 = malloc_type_malloc(0x18uLL, 0x102004061A0B540uLL);
      if (!v11)
      {
        __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_3(buf, &buf[1], v8);
LABEL_20:

        objc_autoreleasePoolPop(v6);
        goto LABEL_14;
      }

      v12 = v11;
      v13 = *(a1 + 32);
      v14 = *(v13 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_21;
      block[3] = &unk_1E76FA580;
      block[5] = v12;
      block[6] = v5;
      block[4] = v13;
      dispatch_sync(v14, block);
      pl_dispatch_async();
      ++v5;

      objc_autoreleasePoolPop(v6);
    }

    while (v5 < v3);
    v15 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_2();
    }
  }

  else
  {
    __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_5();
  }

LABEL_14:
  v16 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_6();
  }
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_21(void *a1)
{
  v2 = a1[5];
  *v2 = a1[6];
  v2[1] = 0;
  v3 = a1[5];
  v3[16] = 0;
  CFArrayAppendValue(*(a1[4] + 88), v3);
  if (!*(a1[4] + 248))
  {
    v4 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_21_cold_1();
    }

    *(a1[4] + 248) = CPPowerAssertionCreate();
  }
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_25(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_25_cold_1(a1);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [CAMTimelapseJPEGReader createPixelBufferFromData:v3 applyTransform:0 maxPixelSize:0 useBGRA:0];
    v5 = v4;
    if (*(a1 + 32))
    {
      v6 = 0;
      if (v4)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 134217984;
    v16 = v8;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Failed to read/decode frame %ld", buf, 0xCu);
  }

  if (*(*(a1 + 40) + 184) != -1)
  {
    v9 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_25_cold_2();
    }

    v5 = [*(a1 + 40) _decodeFirstFrameAgain];
  }

  v6 = 1;
LABEL_15:
  v10 = [*(a1 + 40) _cropPixelBufferIfNeeded:v5];
  v11 = *(a1 + 40);
  v12 = *(v11 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_26;
  v13[3] = &unk_1E76FAEE0;
  v13[5] = *(a1 + 56);
  v13[6] = v10;
  v14 = v6;
  v13[4] = v11;
  dispatch_sync(v12, v13);
}

void *__59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_26(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = (a1 + 40);
  *(*(a1 + 40) + 8) = *(a1 + 48);
  *(*(a1 + 40) + 16) = *(a1 + 56);
  result = CFArrayGetValueAtIndex(*(*(a1 + 32) + 88), 0);
  if (**v3 == *result)
  {
    v5 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_26_cold_1(v3, v2);
    }

    return dispatch_semaphore_signal(*(*(a1 + 32) + 72));
  }

  return result;
}

- (void)_writeMovieAsynchronously
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  videoInput = self->__videoInput;
  movieWritingQueue = self->__movieWritingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke;
  v4[3] = &unk_1E76FB040;
  v4[4] = self;
  v4[5] = v5;
  [(AVAssetWriterInput *)videoInput requestMediaDataWhenReadyOnQueue:movieWritingQueue usingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke(uint64_t a1, __n128 a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if ((*(v3 + 8) & 1) == 0)
  {
    a2.n128_u64[0] = 134218240;
    v22 = a2;
    while (1)
    {
      if (![*(v3 + 144) isReadyForMoreMediaData])
      {
        return;
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      cf = 0;
      v4 = *(a1 + 32);
      if (!v4[16])
      {
        break;
      }

      sbuf = 0;
      v5 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_1();
      }

      v6 = [*(a1 + 32) _copyNextSampleBufferFromStabilizer:&sbuf];
      if (sbuf)
      {
        cf = CMSampleBufferGetImageBuffer(sbuf);
        v7 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v17 = cf;
          IOSurface = CVPixelBufferGetIOSurface(cf);
          ID = IOSurfaceGetID(IOSurface);
          *buf = v22.n128_u32[0];
          v36 = v17;
          v37 = 1024;
          v38 = ID;
          _os_log_debug_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEBUG, "Got frame %p (Surface ID 0x%d) from stabilizer", buf, 0x12u);
        }

        CFRetain(cf);
        CFRelease(sbuf);
      }

      if (!v6)
      {
        goto LABEL_14;
      }

LABEL_18:
      ++*(*(*(a1 + 40) + 8) + 24);
      if (cf)
      {
        v10 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v15 = CVPixelBufferGetIOSurface(cf);
          v16 = IOSurfaceGetID(v15);
          *buf = 67109120;
          LODWORD(v36) = v16;
          _os_log_debug_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEBUG, "Releasing IOSurface: 0x%x", buf, 8u);
        }

        CFRelease(cf);
      }

      switch(v6)
      {
        case -3:
          v12 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_5(&v24, v25);
          }

          v11 = 1;
          break;
        case -8:
          v21 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_3();
          }

          [*(a1 + 32) _finishMovieWithFailure];
          goto LABEL_43;
        case -7:
          v20 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_4();
          }

          [*(a1 + 32) _finishMovieWithRestartUnstabilized];
LABEL_43:
          _Block_object_dispose(&v31, 8);
          return;
        default:
          v11 = 0;
          break;
      }

      v13 = [*(a1 + 32) _frameLoadMode];
      if (v13 == 2)
      {
        [*(a1 + 32) _requestNextFrameReadDecode];
      }

      else if (v13 == 1)
      {
        v14 = *(a1 + 32);
        if (!v14[16])
        {
          [v14 _requestNextFrameReadDecode];
        }
      }

      _Block_object_dispose(&v31, 8);
      v3 = *(a1 + 32);
      if ((v11 | *(v3 + 8)))
      {
        if (v11)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_28;
          v23[3] = &unk_1E76FCC90;
          v23[4] = v3;
          [v3 _finishMovieWithCompletionHandler:v23];
        }

        return;
      }
    }

    v6 = [v4 _copySourcePixelBufferForNextFrame:&cf skipBadFrames:1];
    if (v6)
    {
      goto LABEL_18;
    }

LABEL_14:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_27;
    block[3] = &unk_1E76FA610;
    v8 = *(*(a1 + 32) + 40);
    v27 = *(a1 + 32);
    v28 = &v31;
    dispatch_sync(v8, block);
    if ((v32[3] & 1) == 0)
    {
      v9 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_2();
      }

      [*(a1 + 32) _appendPixelBufferToMovie:cf];
    }

    goto LABEL_18;
  }
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_27(void *a1)
{
  v2 = *(a1[4] + 200);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1[5] + 8) + 24)];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_27_cold_1();
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_28(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 160);
    v9 = [*(v7 + 136) outputURL];
    LODWORD(buf.value) = 134218242;
    *(&buf.value + 4) = v8;
    LOWORD(buf.flags) = 2114;
    *(&buf.flags + 2) = v9;
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Movie write of %ld frame(s) is complete: %{public}@", &buf, 0x16u);
  }

  v10 = _Block_copy(*(*(a1 + 32) + 240));
  memset(&buf, 0, sizeof(buf));
  if (a2)
  {
    CMTimeMake(&buf, *(*(a1 + 32) + 160), *(*(a1 + 32) + 120));
  }

  else
  {
    buf = **&MEMORY[0x1E6960CC0];
  }

  [*(a1 + 32) _reset];
  if (v10)
  {
    v11 = v10[2];
    v12 = buf;
    v11(v10, a2, &v12, v5);
  }
}

- (int)_copyNextSampleBufferFromStabilizer:(opaqueCMSampleBuffer *)stabilizer
{
  v5 = 0;
  v20 = 0;
  v31 = *MEMORY[0x1E69E9840];
  *&v3 = 134217984;
  v18 = v3;
  while (1)
  {
    v6 = v5;
    if (v5)
    {
LABEL_14:
      *stabilizer = v6;
      return v20;
    }

    stabilizer = self->__stabilizer;
    v26 = 0;
    v5 = [(AVOfflineVideoStabilizer *)stabilizer copyStabilizedSampleBuffer:&v26];
    v8 = v26;
    if (!(v5 | v8))
    {
      break;
    }

    v9 = v8;
    if (!v5 && [v8 code] == -11822)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v10 = self->__nextMetadataFrameIndex - 1;
      v11 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = v18;
        v30 = v10;
        _os_log_debug_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEBUG, "Stabilizer rejected metadata for frame %ld", buf, 0xCu);
      }

      syncQueue = self->__syncQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__CAMTimelapseStabilizationMovieWriter__copyNextSampleBufferFromStabilizer___block_invoke;
      block[3] = &unk_1E76FCCB8;
      block[5] = &v22;
      block[6] = v10;
      block[4] = self;
      dispatch_sync(syncQueue, block);
      v13 = *(v23 + 24);
      if (v13 == 1)
      {
        [(CAMTimelapseStabilizationMovieWriter *)v27 _copyNextSampleBufferFromStabilizer:&v28];
        v20 = -7;
      }

      _Block_object_dispose(&v22, 8);
      if (v13)
      {
        goto LABEL_14;
      }

      v9 = 0;
    }

    if (v9)
    {
      [(CAMTimelapseStabilizationMovieWriter *)v9 _copyNextSampleBufferFromStabilizer:v5, stabilizer];
      v17 = -7;
LABEL_19:
      v20 = v17;

      return v20;
    }
  }

  *stabilizer = 0;
  nextSourceFrameIndex = self->__nextSourceFrameIndex;
  p_nextSourceFrameIndex = &self->__nextSourceFrameIndex;
  if (nextSourceFrameIndex < [*(p_nextSourceFrameIndex - 19) count])
  {
    v9 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseStabilizationMovieWriter *)p_nextSourceFrameIndex _copyNextSampleBufferFromStabilizer:?];
    }

    v17 = -8;
    goto LABEL_19;
  }

  return -3;
}

unint64_t __76__CAMTimelapseStabilizationMovieWriter__copyNextSampleBufferFromStabilizer___block_invoke(void *a1)
{
  v2 = *(a1[4] + 208);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  [v2 addObject:v3];

  result = [*(a1[4] + 208) count];
  if (result > *(a1[4] + 216))
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)_requestNextFrameReadDecode
{
  syncQueue = self->__syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CAMTimelapseStabilizationMovieWriter__requestNextFrameReadDecode__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

intptr_t __67__CAMTimelapseStabilizationMovieWriter__requestNextFrameReadDecode__block_invoke(intptr_t result)
{
  if (!*(*(result + 32) + 192))
  {
    v1 = result;
    v2 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __67__CAMTimelapseStabilizationMovieWriter__requestNextFrameReadDecode__block_invoke_cold_1();
    }

    return dispatch_semaphore_signal(*(*(v1 + 32) + 80));
  }

  return result;
}

- (int)_copySourcePixelBufferForNextFrame:(__CVBuffer *)frame skipBadFrames:(BOOL)frames
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  stashedSourceFrame = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  if (frame)
  {
    if (self->__stashedSourceFrame)
    {
      stashedSourceFrame = self->__stashedSourceFrame;
      self->__stashedSourceFrame = 0;
    }

    else
    {
      do
      {
        v7 = v26;
        if (*(v26 + 6))
        {
          break;
        }

        frameFilePaths = self->__frameFilePaths;
        if (!frameFilePaths)
        {
          goto LABEL_20;
        }

        nextSourceFrameIndex = self->__nextSourceFrameIndex;
        if (nextSourceFrameIndex >= [(NSArray *)frameFilePaths count]|| (syncQueue = self->__syncQueue, block[0] = MEMORY[0x1E69E9820], block[1] = 3221225472, block[2] = __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke, block[3] = &unk_1E76FCCE0, block[4] = self, block[5] = v20, v19 = frames, block[6] = &v25, block[7] = &v21, dispatch_sync(syncQueue, block), (v11 = self->__frameFilePaths) == 0) || (v12 = self->__nextSourceFrameIndex, v12 >= [(NSArray *)v11 count]))
        {
          v7 = v26;
LABEL_20:
          *(v7 + 6) = -3;
          break;
        }

        if (!v22[3] && ![(CAMTimelapseStabilizationMovieWriter *)self _frameLoadMode])
        {
          [(CAMTimelapseStabilizationMovieWriter *)self _requestNextFrameReadDecode];
        }

        if (!v22[3] && !*(v26 + 6))
        {
          v13 = os_log_create("com.apple.camera", "Nebula");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = self->__nextSourceFrameIndex;
            *buf = 134217984;
            v30 = v14;
            _os_log_debug_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEBUG, "Waiting for frame %ld to be decoded...", buf, 0xCu);
          }

          dispatch_semaphore_wait(self->__semFrameGetter, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (!v22[3]);
    }

    v15 = v22[3];
    if (v15)
    {
      ++self->__nextSourceFrameIndex;
      *frame = v15;
    }
  }

  else
  {
    v28 = -1;
  }

  v16 = *(v26 + 6);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v16;
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (CFArrayGetCount(*(*(a1 + 32) + 88)) < 1)
  {
    return;
  }

  v3 = (a1 + 40);
  *(*(*(a1 + 40) + 8) + 24) = CFArrayGetValueAtIndex(*(*(a1 + 32) + 88), 0);
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(v5 + 24);
  if (!v6)
  {
LABEL_7:
    v7 = *(*(v4 + 8) + 24);
    if (*(a1 + 64) == 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      if (*(v7 + 16))
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
      goto LABEL_19;
    }

    v8 = *(*v2 + 26);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:*v7];
    LODWORD(v8) = [v8 containsObject:v9];

    if (v8)
    {
LABEL_13:
      v10 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_2();
      }

      CFArrayRemoveValueAtIndex(*(*v2 + 11), 0);
      CVPixelBufferRelease(*(*(*(*v3 + 8) + 24) + 8));
      free(*(*(*v3 + 8) + 24));
      *(*(*v3 + 8) + 24) = 0;
      ++*(*v2 + 21);
      if ([*v2 _frameLoadMode])
      {
        v11 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_3();
        }

        dispatch_semaphore_signal(*(*v2 + 10));
      }
    }

LABEL_19:
    if (*(*(*v3 + 8) + 24))
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 88), 0);
      v12 = a1 + 56;
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(*(a1 + 40) + 8) + 24) + 8);
      v13 = *(a1 + 40);
      if ((*(a1 + 64) & 1) == 0 && *(*(*(v13 + 8) + 24) + 16) == 1)
      {
        v14 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_4();
        }

        *(*(*(a1 + 48) + 8) + 24) = -5;
        v13 = *(a1 + 40);
      }

      free(*(*(v13 + 8) + 24));
      *(*(*v3 + 8) + 24) = 0;
      v15 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_5(v2, v12);
      }
    }

    return;
  }

  if (*v6 == *(*v2 + 21))
  {
    if (!*(v6 + 8) && (*(v6 + 16) & 1) == 0)
    {
      *(v5 + 24) = 0;
      v4 = *v3;
    }

    goto LABEL_7;
  }

  v16 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_1();
  }

  *(*(*(a1 + 48) + 8) + 24) = -3;
}

+ (CGSize)_desiredOutputSizeForSourcePixelBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v6 = Height;
  if (Height <= Width)
  {
    v7 = Height;
  }

  else
  {
    v7 = Width;
  }

  if (Height <= Width)
  {
    v8 = Width;
  }

  else
  {
    v8 = Height;
  }

  v9 = fabs(v8 / v7 + -1.77777778) < 0.05;
  v10 = *(MEMORY[0x1E695F060] + 8);
  v11 = *MEMORY[0x1E695F060];
  if (v9)
  {
    v11 = 1920.0;
    if (v8 >= 1920.0)
    {
      v10 = 1080.0;
    }

    else
    {
      v11 = 1280.0;
      if (v8 >= 1280.0)
      {
        v10 = 720.0;
      }

      else
      {
        v10 = *(MEMORY[0x1E695F060] + 8);
        v11 = *MEMORY[0x1E695F060];
        if (v8 >= 960.0)
        {
          v11 = 960.0;
          v10 = 540.0;
        }
      }
    }
  }

  v12 = v11 == *MEMORY[0x1E695F060];
  v13 = v10 == *(MEMORY[0x1E695F060] + 8);
  if (v12 && v13)
  {
    v14 = 480.0;
  }

  else
  {
    v14 = v10;
  }

  if (v12 && v13)
  {
    v11 = 640.0;
  }

  if (v6 <= Width)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v6 <= Width)
  {
    v16 = v11;
  }

  else
  {
    v16 = v14;
  }

  result.height = v15;
  result.width = v16;
  return result;
}

- (int)_startWritingWithOutputPath:(id)path width:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second frameCount:(int64_t)count preferHEVC:(BOOL)self0 visMetadataCount:(int64_t)self1 videoMetadata:(id)self2
{
  v55[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  metadataCopy = metadata;
  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v19 = objc_alloc(MEMORY[0x1E6987ED8]);
  v20 = *MEMORY[0x1E69874C0];
  v53 = 0;
  v21 = [v19 initWithURL:v18 fileType:v20 error:&v53];
  v22 = v53;
  p_writer = &self->__writer;
  writer = self->__writer;
  self->__writer = v21;

  if (!self->__writer || v22)
  {
    [CAMTimelapseStabilizationMovieWriter _startWritingWithOutputPath:v22 width:? height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? visMetadataCount:? videoMetadata:?];
LABEL_16:
    v44 = -6;
    goto LABEL_11;
  }

  v46 = v18;
  v25 = pathCopy;
  [(AVAssetWriter *)self->__writer setMetadata:metadataCopy];
  v26 = +[CAMTimelapseSettings sharedInstance];
  v27 = [v26 outputSettingsForWidth:width height:height videoFormatDescription:description framesPerSecond:second frameCount:count useHEVC:c];

  v28 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v27];
  v29 = *&transform->c;
  *v51 = *&transform->a;
  *&v51[16] = v29;
  v52 = *&transform->tx;
  [v28 setTransform:v51];
  [(CAMTimelapseStabilizationMovieWriter *)self _setMetadataOnVideoTrackAssetWriterInput:v28];
  v30 = *MEMORY[0x1E6966130];
  v55[0] = &unk_1F16C8168;
  v31 = *MEMORY[0x1E6966208];
  v54[0] = v30;
  v54[1] = v31;
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:width];
  v55[1] = v32;
  v54[2] = *MEMORY[0x1E69660B8];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:height];
  v55[2] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];

  v35 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v28 sourcePixelBufferAttributes:v34];
  v36 = [(AVAssetWriter *)self->__writer canAddInput:v28];
  if (v36)
  {
    [(AVAssetWriter *)self->__writer addInput:v28];
    objc_storeStrong(&self->__videoInput, v28);
    v37 = v35;
    pixelBufferAdaptor = self->__pixelBufferAdaptor;
    self->__pixelBufferAdaptor = v37;
  }

  else
  {
    [CAMTimelapseStabilizationMovieWriter _startWritingWithOutputPath:v51 width:? height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? visMetadataCount:? videoMetadata:?];
    pixelBufferAdaptor = *v51;
  }

  pathCopy = v25;
  v18 = v46;
  if (!v36)
  {
    v44 = -6;
    v22 = 0;
    goto LABEL_11;
  }

  v22 = 0;
  if (![(AVAssetWriter *)*p_writer startWriting])
  {
    [CAMTimelapseStabilizationMovieWriter _startWritingWithOutputPath:pathCopy width:&self->__writer height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? visMetadataCount:? videoMetadata:?];
    goto LABEL_16;
  }

  v39 = *p_writer;
  *v51 = *MEMORY[0x1E6960CC0];
  *&v51[16] = *(MEMORY[0x1E6960CC0] + 16);
  [(AVAssetWriter *)v39 startSessionAtSourceTime:v51];
  if (metadataCount >= 1)
  {
    memset(v51, 0, 24);
    CMTimeMake(v51, 1, second);
    pixelBufferPool = [(AVAssetWriterInputPixelBufferAdaptor *)self->__pixelBufferAdaptor pixelBufferPool];
    v41 = objc_alloc(MEMORY[0x1E6987200]);
    v49 = *v51;
    v50 = *&v51[16];
    v42 = [v41 initWithTargetFrameDuration:&v49 dataProvider:self destinationBufferPool:pixelBufferPool stabilizationEnabled:1];
    stabilizer = self->__stabilizer;
    self->__stabilizer = v42;

    if (!self->__stabilizer)
    {
      [CAMTimelapseStabilizationMovieWriter _startWritingWithOutputPath:width:height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:visMetadataCount:videoMetadata:];
      goto LABEL_16;
    }
  }

  v44 = 0;
LABEL_11:

  return v44;
}

- (void)_setMetadataOnVideoTrackAssetWriterInput:(id)input
{
  v7[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  metadataItemForTimelapse = [MEMORY[0x1E69BF158] metadataItemForTimelapse];
  v5 = metadataItemForTimelapse;
  if (metadataItemForTimelapse)
  {
    v7[0] = metadataItemForTimelapse;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [inputCopy setMetadata:v6];
  }
}

- (BOOL)_appendPixelBufferToMovie:(__CVBuffer *)movie
{
  if (!movie)
  {
    [CAMTimelapseStabilizationMovieWriter _appendPixelBufferToMovie:];
    return 0;
  }

  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, self->__frameCountWrittenToMovie, self->__movieFramesPerSecond);
  pixelBufferAdaptor = self->__pixelBufferAdaptor;
  v7 = v8;
  if (![(AVAssetWriterInputPixelBufferAdaptor *)pixelBufferAdaptor appendPixelBuffer:movie withPresentationTime:&v7])
  {
    [CAMTimelapseStabilizationMovieWriter _appendPixelBufferToMovie:];
    return 0;
  }

  if ([(AVAssetWriter *)self->__writer status]== AVAssetWriterStatusFailed)
  {
    [CAMTimelapseStabilizationMovieWriter _appendPixelBufferToMovie:?];
    return 0;
  }

  ++self->__frameCountWrittenToMovie;
  return 1;
}

- (void)_finishMovieWithRestartUnstabilized
{
  [(AVAssetWriterInput *)self->__videoInput markAsFinished];
  [(AVAssetWriter *)self->__writer cancelWriting];
  pl_dispatch_async();
}

- (void)_finishMovieWithFailure
{
  [(AVAssetWriterInput *)self->__videoInput markAsFinished];
  [(AVAssetWriter *)self->__writer cancelWriting];
  pl_dispatch_async();
}

void __63__CAMTimelapseStabilizationMovieWriter__finishMovieWithFailure__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 240));
  [*(a1 + 32) _reset];
  if (v2)
  {
    v3 = v2[2];
    v4 = *MEMORY[0x1E6960CC0];
    v5 = *(MEMORY[0x1E6960CC0] + 16);
    v3(v2, 0, &v4, 0);
  }
}

- (void)_finishMovieWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(AVAssetWriterInput *)self->__videoInput markAsFinished];
  metadata = [(AVAssetWriter *)self->__writer metadata];
  writer = self->__writer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CAMTimelapseStabilizationMovieWriter__finishMovieWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E76FCD08;
  v10 = metadata;
  v11 = handlerCopy;
  v9[4] = self;
  v7 = metadata;
  v8 = handlerCopy;
  [(AVAssetWriter *)writer finishWritingWithCompletionHandler:v9];
}

uint64_t __74__CAMTimelapseStabilizationMovieWriter__finishMovieWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 136) status];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (__CVBuffer)copySourcePixelBufferForFrameNumber:(int64_t)number outputSampleTime:(id *)time stabilizer:(id)stabilizer
{
  v17 = 0;
  v8 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAMTimelapseStabilizationMovieWriter copySourcePixelBufferForFrameNumber:outputSampleTime:stabilizer:];
  }

  nextSourceFrameIndex = self->__nextSourceFrameIndex;
  if (nextSourceFrameIndex >= [(NSArray *)self->__frameFilePaths count])
  {
    value = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(value, OS_LOG_TYPE_DEBUG))
    {
      [CAMTimelapseStabilizationMovieWriter copySourcePixelBufferForFrameNumber:&self->__frameFilePaths outputSampleTime:? stabilizer:?];
    }
  }

  else
  {
    v10 = [(CAMTimelapseStabilizationMovieWriter *)self _copySourcePixelBufferForNextFrame:&v17 skipBadFrames:0];
    if (v17)
    {
      if (v10 == -5)
      {
        syncQueue = self->__syncQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __104__CAMTimelapseStabilizationMovieWriter_copySourcePixelBufferForFrameNumber_outputSampleTime_stabilizer___block_invoke;
        block[3] = &unk_1E76F7A38;
        block[4] = self;
        block[5] = number;
        dispatch_sync(syncQueue, block);
      }

      _frameLoadMode = [(CAMTimelapseStabilizationMovieWriter *)self _frameLoadMode];
      if (_frameLoadMode == 1 || _frameLoadMode == 2 && number + 1 < [(AVOfflineVideoStabilizer *)self->__stabilizer preferredSourcePixelBufferPrimingFrameCount])
      {
        [(CAMTimelapseStabilizationMovieWriter *)self _requestNextFrameReadDecode];
      }

      if (time)
      {
        CMTimeMake(&v15, number, self->__movieFramesPerSecond);
        *time = v15;
      }

      value = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(value, OS_LOG_TYPE_DEBUG))
      {
        [CAMTimelapseStabilizationMovieWriter copySourcePixelBufferForFrameNumber:number outputSampleTime:value stabilizer:?];
      }
    }

    else
    {
      [CAMTimelapseStabilizationMovieWriter copySourcePixelBufferForFrameNumber:? outputSampleTime:? stabilizer:?];
      value = v15.value;
    }
  }

  return v17;
}

void __104__CAMTimelapseStabilizationMovieWriter_copySourcePixelBufferForFrameNumber_outputSampleTime_stabilizer___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __104__CAMTimelapseStabilizationMovieWriter_copySourcePixelBufferForFrameNumber_outputSampleTime_stabilizer___block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 200);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  [v4 addObject:v5];
}

- (id)copySourceStabilizationMetadataForFrameNumber:(int64_t)number outputSampleTime:(id *)time stabilizer:(id)stabilizer
{
  v30 = *MEMORY[0x1E69E9840];
  p_nextMetadataFrameIndex = &self->__nextMetadataFrameIndex;
  nextMetadataFrameIndex = self->__nextMetadataFrameIndex;
  if (nextMetadataFrameIndex >= [(NSArray *)self->__visMetadataFilePaths count:number])
  {
    v17 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v24 = self->__nextMetadataFrameIndex;
      v25 = [(NSArray *)self->__visMetadataFilePaths count];
      LODWORD(v28.value) = 134218496;
      *(&v28.value + 4) = number;
      LOWORD(v28.flags) = 2048;
      *(&v28.flags + 2) = v24;
      HIWORD(v28.epoch) = 2048;
      v29 = v25;
      _os_log_debug_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEBUG, "Stabilizer asking for metadata frame %ld (our %ld), I only have %ld, returning nil (EOD)", &v28, 0x20u);
    }

    dictionary = 0;
    v11 = 0;
    v22 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v10 = [(NSArray *)self->__visMetadataFilePaths objectAtIndex:self->__nextMetadataFrameIndex];
  v27 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v10 options:0 error:&v27];
  v12 = v27;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v22 = v12;
    [CAMTimelapseStabilizationMovieWriter copySourceStabilizationMetadataForFrameNumber:v10 outputSampleTime:? stabilizer:?];
    goto LABEL_27;
  }

  v26 = 0;
  dictionary = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v26];
  v15 = v26;
  if (dictionary)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (time)
    {
      CMTimeMake(&v28, number, self->__movieFramesPerSecond);
      v22 = 0;
      *time = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = v15;
    v23 = [CAMTimelapseStabilizationMovieWriter copySourceStabilizationMetadataForFrameNumber:v10 outputSampleTime:v15 stabilizer:dictionary == 0];
    if (v23)
    {
LABEL_27:
      dictionary = [MEMORY[0x1E695DF20] dictionary];
      if (!dictionary)
      {
        goto LABEL_17;
      }
    }
  }

  v17 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      lastPathComponent = [v10 lastPathComponent];
    }

    else
    {
      lastPathComponent = @"<invalid>";
    }

    v21 = *p_nextMetadataFrameIndex;
    LODWORD(v28.value) = 138543874;
    *(&v28.value + 4) = lastPathComponent;
    LOWORD(v28.flags) = 2048;
    *(&v28.flags + 2) = number;
    HIWORD(v28.epoch) = 2048;
    v29 = v21;
    _os_log_debug_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEBUG, "Returning %{public}@ for metadata frame %ld (our %ld)", &v28, 0x20u);
    if (v10)
    {
    }
  }

LABEL_16:

LABEL_17:
  ++*p_nextMetadataFrameIndex;
  v18 = dictionary;

  return v18;
}

- (CGAffineTransform)_movieTransform
{
  v3 = *&self[5].tx;
  *&retstr->a = *&self[5].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].a;
  return self;
}

void __48__CAMTimelapseStabilizationMovieWriter__cleanup__block_invoke_13_cold_1(uint8_t *a1, CVPixelBufferRef *a2, IOSurfaceID *a3, NSObject *a4)
{
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  ID = IOSurfaceGetID(IOSurface);
  *a1 = 67109120;
  *a3 = ID;
  _os_log_debug_impl(&dword_1A3640000, a4, OS_LOG_TYPE_DEBUG, "Releasing IOSurface: 0x%x", a1, 8u);
}

void __48__CAMTimelapseStabilizationMovieWriter__cleanup__block_invoke_13_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setSuspended:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setSuspended:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeMovieFromImageFiles:visMetadataFiles:startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeMovieFromImageFiles:(CGFloat)a3 visMetadataFiles:(CGFloat)a4 startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:.cold.2(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v6 = NSStringFromCGSize(*&a1);
  v13.width = a3;
  v13.height = a4;
  v7 = NSStringFromCGSize(v13);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

- (void)writeMovieFromImageFiles:visMetadataFiles:startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:.cold.3()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)writeMovieFromImageFiles:(int)a1 visMetadataFiles:(NSObject *)a2 startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:.cold.4(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Movie write failed with error: %d", v2, 8u);
}

- (void)_cropPixelBufferIfNeeded:.cold.1()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_decodeFirstFrameAgain
{
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_14(v4))
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  *a2 = v2;
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_3(uint8_t *a1, _BYTE *a2, void *a3)
{
  v6 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_error_impl(&dword_1A3640000, v6, OS_LOG_TYPE_ERROR, "Failed to allocate a frameList node; bailing out.", a1, 2u);
  }
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_5()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_21_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_25_cold_1(uint64_t a1)
{
  [*(a1 + 32) length];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_25_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__CAMTimelapseStabilizationMovieWriter__startAsyncDecoding__block_invoke_26_cold_1(uint64_t a1, CVPixelBufferRef *a2)
{
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  IOSurfaceGetID(IOSurface);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  *v0 = 134217984;
  *v1 = v2;
  _os_log_debug_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEBUG, "Requesting movie frame %ld from stabilizer...", v3, 0xCu);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  *v0 = 134217984;
  *v1 = v2;
  _os_log_debug_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEBUG, "Sending frame %ld to movie writer...", v3, 0xCu);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CAMTimelapseStabilizationMovieWriter__writeMovieAsynchronously__block_invoke_27_cold_1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_copyNextSampleBufferFromStabilizer:(void *)a3 .cold.1(uint8_t *a1, uint64_t *a2, void *a3)
{
  v7 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_14(v7))
  {
    v8 = *a2;
    *a1 = 134217984;
    *a3 = v8;
    _os_log_error_impl(&dword_1A3640000, v3, OS_LOG_TYPE_ERROR, "Encountered %ld frames bad metadata; aborting...", a1, 0xCu);
  }
}

- (void)_copyNextSampleBufferFromStabilizer:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_error_impl(&dword_1A3640000, v6, OS_LOG_TYPE_ERROR, "Stabilizer copyStabilizedSampleBuffer failed — %{public}@", &v7, 0xCu);
  }

  *a3 = a2;
}

- (void)_copyNextSampleBufferFromStabilizer:(uint64_t)a1 .cold.3(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __67__CAMTimelapseStabilizationMovieWriter__requestNextFrameReadDecode__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(&dword_1A3640000, v0, OS_LOG_TYPE_ERROR, "Unepected frame at head of decoded queue: %ld", v1, 0xCu);
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11();
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 8));
  IOSurfaceGetID(IOSurface);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __89__CAMTimelapseStabilizationMovieWriter__copySourcePixelBufferForNextFrame_skipBadFrames___block_invoke_cold_5(uint64_t a1, uint64_t a2)
{
  IOSurface = CVPixelBufferGetIOSurface(*(*(*a2 + 8) + 24));
  IOSurfaceGetID(IOSurface);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)_startWritingWithOutputPath:(void *)a1 width:height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:visMetadataCount:videoMetadata:.cold.1(void *a1)
{
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v3))
  {
    v4 = [a1 localizedDescription];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)_startWritingWithOutputPath:(void *)a1 width:height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:visMetadataCount:videoMetadata:.cold.2(void *a1)
{
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_14(v3))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a1 = v1;
}

- (void)_startWritingWithOutputPath:(uint64_t)a1 width:(id *)a2 height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:visMetadataCount:videoMetadata:.cold.3(uint64_t a1, id *a2)
{
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v4))
  {
    v5 = [*a2 error];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

- (void)_startWritingWithOutputPath:width:height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:visMetadataCount:videoMetadata:.cold.4()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)_appendPixelBufferToMovie:.cold.1()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_appendPixelBufferToMovie:(id *)a1 .cold.2(id *a1)
{
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v3))
  {
    v4 = [*a1 error];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)_appendPixelBufferToMovie:.cold.3()
{
  v1 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)copySourcePixelBufferForFrameNumber:outputSampleTime:stabilizer:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copySourcePixelBufferForFrameNumber:(uint64_t)a1 outputSampleTime:(id *)a2 stabilizer:.cold.2(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

- (void)copySourcePixelBufferForFrameNumber:(uint64_t *)a1 outputSampleTime:(uint64_t)a2 stabilizer:(os_log_t)log .cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Returning frame %ld to stabilizer: %p", &v4, 0x16u);
}

- (void)copySourcePixelBufferForFrameNumber:(void *)a1 outputSampleTime:stabilizer:.cold.4(void *a1)
{
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_14(v3))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a1 = v1;
}

void __104__CAMTimelapseStabilizationMovieWriter_copySourcePixelBufferForFrameNumber_outputSampleTime_stabilizer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (uint64_t)copySourceStabilizationMetadataForFrameNumber:(void *)a1 outputSampleTime:(uint64_t)a2 stabilizer:(char)a3 .cold.1(void *a1, uint64_t a2, char a3)
{
  v6 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_14(v6))
  {
    v8 = [a1 lastPathComponent];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);
  }

  return a3 & 1;
}

- (void)copySourceStabilizationMetadataForFrameNumber:(uint64_t)a1 outputSampleTime:(void *)a2 stabilizer:.cold.2(uint64_t a1, void *a2)
{
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (OUTLINED_FUNCTION_10(v4))
  {
    v5 = [a2 lastPathComponent];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
  }
}

@end