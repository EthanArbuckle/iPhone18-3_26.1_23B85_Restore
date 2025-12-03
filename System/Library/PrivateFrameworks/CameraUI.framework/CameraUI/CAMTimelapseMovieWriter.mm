@interface CAMTimelapseMovieWriter
- (BOOL)_appendPixelBuffer:(__CVBuffer *)buffer;
- (BOOL)_startWritingWithOutputPath:(id)path width:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second frameCount:(int64_t)count preferHEVC:(BOOL)self0 videoMetadata:(id)self1;
- (CAMTimelapseMovieWriter)init;
- (CGSize)_desiredOutputSizeForFrameSize:(CGSize)size;
- (void)_enqueueNextDecode;
- (void)_enqueueNextRead;
- (void)_enqueueNextWrite;
- (void)_finishMovieWithCompletionHandler:(id)handler;
- (void)_reset;
- (void)_setMetadataOnVideoTrackAssetWriterInput:(id)input;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setSuspended:(BOOL)suspended;
- (void)writeMovieFromImageFiles:(id)files visMetadataFiles:(id)metadataFiles startDate:(id)date location:(id)location outputPath:(id)path transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second preferHEVC:(BOOL)self0 completionHandler:(id)self1;
@end

@implementation CAMTimelapseMovieWriter

- (CAMTimelapseMovieWriter)init
{
  v12.receiver = self;
  v12.super_class = CAMTimelapseMovieWriter;
  v2 = [(CAMTimelapseMovieWriter *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.camera.timelapse.movie.sync", 0);
    synchronizationQueue = v2->__synchronizationQueue;
    v2->__synchronizationQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    imageReadQueue = v2->__imageReadQueue;
    v2->__imageReadQueue = v5;

    [(NSOperationQueue *)v2->__imageReadQueue setName:@"com.apple.camera.timelapse.movie.image.read"];
    [(NSOperationQueue *)v2->__imageReadQueue setMaxConcurrentOperationCount:1];
    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    imageDecodeQueue = v2->__imageDecodeQueue;
    v2->__imageDecodeQueue = v7;

    [(NSOperationQueue *)v2->__imageDecodeQueue setName:@"com.apple.camera.timelapse.movie.image.decode"];
    [(NSOperationQueue *)v2->__imageDecodeQueue setMaxConcurrentOperationCount:1];
    v9 = dispatch_queue_create("com.apple.camera.timelapse.movie.write", 0);
    movieWritingQueue = v2->__movieWritingQueue;
    v2->__movieWritingQueue = v9;
  }

  return v2;
}

- (void)_reset
{
  frameFilePaths = self->__frameFilePaths;
  self->__frameFilePaths = 0;

  *&self->__nextReadFileIndex = 0u;
  availableImageData = self->__availableImageData;
  *&self->__residentPixelBufferCount = 0u;

  availablePixelBuffers = self->__availablePixelBuffers;
  self->__availablePixelBuffers = 0;

  inFlightReadFrameIndexes = self->__inFlightReadFrameIndexes;
  self->__inFlightReadFrameIndexes = 0;

  writer = self->__writer;
  self->__writer = 0;

  [(AVAssetWriterInput *)self->__videoInput removeObserver:self forKeyPath:@"readyForMoreMediaData"];
  videoInput = self->__videoInput;
  self->__videoInput = 0;

  pixelBufferAdaptor = self->__pixelBufferAdaptor;
  self->__pixelBufferAdaptor = 0;

  completion = self->__completion;
  *&self->__framesPerSecond = 0u;
  *&self->__currentOutputFrameIndex = 0u;
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    self->_suspended = suspended;
    movieWritingQueue = self->__movieWritingQueue;
    if (movieWritingQueue)
    {
      if (suspended)
      {
        dispatch_suspend(movieWritingQueue);
      }

      else
      {
        dispatch_resume(movieWritingQueue);
      }
    }
  }
}

- (void)writeMovieFromImageFiles:(id)files visMetadataFiles:(id)metadataFiles startDate:(id)date location:(id)location outputPath:(id)path transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second preferHEVC:(BOOL)self0 completionHandler:(id)self1
{
  filesCopy = files;
  dateCopy = date;
  locationCopy = location;
  pathCopy = path;
  handlerCopy = handler;
  [(CAMTimelapseMovieWriter *)self _reset];
  if ([filesCopy count])
  {
    v57 = pathCopy;
    v21 = [filesCopy objectAtIndex:0];
    v22 = [CAMTimelapseJPEGReader newDataFromFilePath:v21];
    v23 = [CAMTimelapseJPEGReader createPixelBufferFromData:v22 applyTransform:1 maxPixelSize:0 useBGRA:0];
    Width = CVPixelBufferGetWidth(v23);
    Height = CVPixelBufferGetHeight(v23);
    if (!locationCopy)
    {
      locationCopy = [CAMNebulaUtilities locationFromJPEGAtPath:v21];
    }

    cCopy2 = c;
    v58 = dateCopy;
    v56 = [CAMPersistenceController clientVideoMetadataForLocation:locationCopy withCreationDate:dateCopy];
    formatDescriptionOut = 0;
    v25 = CMVideoFormatDescriptionCreateForImageBuffer(0, v23, &formatDescriptionOut);
    if (v25)
    {
      v26 = v25;
      v27 = filesCopy;
      v28 = v21;
      v29 = handlerCopy;
      v30 = locationCopy;
      v31 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CAMTimelapseMovieWriter writeMovieFromImageFiles:v26 visMetadataFiles:v31 startDate:? location:? outputPath:? transform:? framesPerSecond:? preferHEVC:? completionHandler:?];
      }

      locationCopy = v30;
      handlerCopy = v29;
      v21 = v28;
      filesCopy = v27;
      cCopy2 = c;
    }

    CVPixelBufferRelease(v23);

    v32 = [filesCopy count];
    [(CAMTimelapseMovieWriter *)self _desiredOutputSizeForFrameSize:Width, Height];
    v33 = MEMORY[0x1E695EFD0];
    v34 = *MEMORY[0x1E695EFD0];
    v35 = *(MEMORY[0x1E695EFD0] + 16);
    *&transform->a = *MEMORY[0x1E695EFD0];
    *&transform->c = v35;
    v36 = *(v33 + 32);
    *&transform->tx = v36;
    v59 = v34;
    v60 = v35;
    v61 = v36;
    LOBYTE(v53) = cCopy2;
    pathCopy = v57;
    v39 = [(CAMTimelapseMovieWriter *)self _startWritingWithOutputPath:v57 width:v37 height:v38 videoFormatDescription:formatDescriptionOut transform:&v59 framesPerSecond:second frameCount:v32 preferHEVC:v53 videoMetadata:v56];
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    dateCopy = v58;
    if (v39)
    {
      v40 = [filesCopy copy];
      frameFilePaths = self->__frameFilePaths;
      self->__frameFilePaths = v40;

      v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
      availableImageData = self->__availableImageData;
      self->__availableImageData = v42;

      v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
      availablePixelBuffers = self->__availablePixelBuffers;
      self->__availablePixelBuffers = v44;

      v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      inFlightReadFrameIndexes = self->__inFlightReadFrameIndexes;
      self->__inFlightReadFrameIndexes = v46;

      self->__framesPerSecond = second;
      v48 = [handlerCopy copy];
      completion = self->__completion;
      self->__completion = v48;

      [(CAMTimelapseMovieWriter *)self _enqueueNextRead];
    }

    else
    {
      v51 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CAMTimelapseMovieWriter writeMovieFromImageFiles:v51 visMetadataFiles:? startDate:? location:? outputPath:? transform:? framesPerSecond:? preferHEVC:? completionHandler:?];
      }

      if (handlerCopy)
      {
        v52 = handlerCopy[2];
        v59 = *MEMORY[0x1E6960CC0];
        *&v60 = *(MEMORY[0x1E6960CC0] + 16);
        v52(handlerCopy, 0, &v59, 0);
      }
    }
  }

  else if (handlerCopy)
  {
    v50 = handlerCopy[2];
    v59 = *MEMORY[0x1E6960CC0];
    *&v60 = *(MEMORY[0x1E6960CC0] + 16);
    v50(handlerCopy, 0, &v59, 0);
  }
}

- (void)_enqueueNextRead
{
  imageReadQueue = self->__imageReadQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  [(NSOperationQueue *)imageReadQueue addOperationWithBlock:v3];
}

void __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__28;
  v21 = __Block_byref_object_dispose__28;
  v22 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke_14;
  block[3] = &unk_1E76FA610;
  block[4] = v2;
  block[5] = &v17;
  block[6] = v16;
  dispatch_sync(v3, block);
  if (v18[5])
  {
    v4 = [CAMTimelapseJPEGReader newDataFromFilePath:?];
    v5 = *(*(a1 + 32) + 72);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke_3;
    v11 = &unk_1E76FCA28;
    v6 = v4;
    v7 = *(a1 + 32);
    v12 = v6;
    v13 = v7;
    v14 = v16;
    dispatch_sync(v5, &v8);
    [*(a1 + 32) _enqueueNextDecode];
    [*(a1 + 32) _enqueueNextRead];
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
}

void __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke_14(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 32) > 1)
  {
    return;
  }

  v3 = *(v1 + 24);
  if (v3 >= [*(v1 + 16) count])
  {
    return;
  }

  v15 = [*(a1[4] + 64) allObjects];
  v4 = [v15 sortedArrayUsingComparator:&__block_literal_global_52];
  v5 = [v4 lastObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = a1[4];
    v9 = *(v8 + 24);
    if (v9 >= v7 + 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = a1[4];
    v9 = *(v8 + 24);
  }

  v10 = [*(v8 + 16) objectAtIndex:v9];
  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *(*(a1[6] + 8) + 24) = *(a1[4] + 24);
  v13 = *(a1[4] + 64);
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1[6] + 8) + 24)];
  [v13 addObject:v14];

  ++*(a1[4] + 24);
  ++*(a1[4] + 32);
LABEL_9:
}

void __43__CAMTimelapseMovieWriter__enqueueNextRead__block_invoke_3(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = v3;
  v4 = *(a1[5] + 48);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1[6] + 8) + 24)];
  [v4 setObject:v9 forKey:v5];

  v6 = a1[6];
  v7 = *(a1[5] + 64);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(v6 + 8) + 24)];
  [v7 removeObject:v8];
}

- (void)_enqueueNextDecode
{
  imageDecodeQueue = self->__imageDecodeQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  [(NSOperationQueue *)imageDecodeQueue addOperationWithBlock:v3];
}

void __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__28;
  v18 = __Block_byref_object_dispose__28;
  v19 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_2;
  block[3] = &unk_1E76FA610;
  block[4] = v2;
  block[5] = &v14;
  block[6] = v13;
  dispatch_sync(v3, block);
  v4 = v15[5];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];

    if (v4 == v5)
    {
      v7 = 0;
    }

    else
    {
      v6 = v15[5];
      v7 = [CAMTimelapseJPEGReader createPixelBufferFromData:v6 applyTransform:1 maxPixelSize:0 useBGRA:0];
    }

    v8 = v15[5];
    v15[5] = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_4;
    v11[3] = &unk_1E76FCCB8;
    v11[4] = v9;
    v11[5] = v13;
    v11[6] = v7;
    dispatch_sync(v10, v11);
    [*(a1 + 32) _enqueueNextWrite];
    [*(a1 + 32) _enqueueNextRead];
    [*(a1 + 32) _enqueueNextDecode];
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
}

void __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 40) <= 1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__28;
    v12 = __Block_byref_object_dispose__28;
    v13 = 0;
    v3 = *(v1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_3;
    v7[3] = &unk_1E76FDB60;
    v7[4] = &v8;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
    if (v9[5])
    {
      v4 = [*(a1[4] + 48) objectForKey:?];
      v5 = *(a1[5] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      *(*(a1[6] + 8) + 24) = [v9[5] integerValue];
      [*(a1[4] + 48) removeObjectForKey:v9[5]];
      ++*(a1[4] + 40);
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 40))
  {
    if ([v8 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v7 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v7 + 40), a2);
LABEL_5:
}

void __45__CAMTimelapseMovieWriter__enqueueNextDecode__block_invoke_4(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 56);
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1[5] + 8) + 24)];
  [v3 setObject:v2 forKey:v4];

  --*(a1[4] + 32);
}

- (void)_enqueueNextWrite
{
  movieWritingQueue = self->__movieWritingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(movieWritingQueue, block);
}

void __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 112) isReadyForMoreMediaData])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__28;
    v21 = __Block_byref_object_dispose__28;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke_2;
    block[3] = &unk_1E76FA610;
    block[4] = v2;
    block[5] = &v17;
    block[6] = &v13;
    dispatch_sync(v3, block);
    v4 = v18[5];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5)
      {
        v6 = CVPixelBufferRetain(v18[5]);
        [*(a1 + 32) _appendPixelBuffer:v6];
        CVPixelBufferRelease(v6);
      }

      v7 = *(a1 + 32);
      v8 = *(v7 + 72);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke_3;
      v11[3] = &unk_1E76F77B0;
      v11[4] = v7;
      dispatch_sync(v8, v11);
      if (*(v14 + 24) != 1 || (v9 = *(a1 + 32), v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke_4, v10[3] = &unk_1E76FCC90, v10[4] = v9, [v9 _finishMovieWithCompletionHandler:v10], (v14[3] & 1) == 0))
      {
        [*(a1 + 32) _enqueueNextDecode];
        [*(a1 + 32) _enqueueNextWrite];
      }
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }
}

void __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke_2(void *a1)
{
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1[4] + 136)];
  v2 = [*(a1[4] + 56) objectForKey:?];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[5] + 8) + 40))
  {
    [*(a1[4] + 56) removeObjectForKey:v7];
    ++*(a1[4] + 136);
    v5 = a1[4];
    v6 = *(v5 + 136);
    *(*(a1[6] + 8) + 24) = v6 == [*(v5 + 16) count];
  }
}

void __44__CAMTimelapseMovieWriter__enqueueNextWrite__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  if (v7)
  {
    v10 = **&MEMORY[0x1E6960CC0];
    if (a2)
    {
      CMTimeMake(&v10, *(v6 + 144), *(v6 + 128));
      v7 = *(*(a1 + 32) + 152);
    }

    v8 = *(v7 + 16);
    v9 = v10;
    v8(v7, a2, &v9, v5);
    v6 = *(a1 + 32);
  }

  [v6 _reset];
}

- (CGSize)_desiredOutputSizeForFrameSize:(CGSize)size
{
  height = 1920.0;
  if (size.height <= 1920.0)
  {
    height = size.height;
  }

  v4 = round(height * 9.0 * 0.0625);
  width = 1920.0;
  if (size.width <= 1920.0)
  {
    width = size.width;
  }

  v6 = round(width * 9.0 * 0.0625);
  v7 = size.width <= size.height;
  if (size.width > size.height)
  {
    v8 = v6;
  }

  else
  {
    v8 = height;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = width;
  }

  result.height = v8;
  result.width = v9;
  return result;
}

- (BOOL)_startWritingWithOutputPath:(id)path width:(int64_t)width height:(int64_t)height videoFormatDescription:(opaqueCMFormatDescription *)description transform:(CGAffineTransform *)transform framesPerSecond:(int64_t)second frameCount:(int64_t)count preferHEVC:(BOOL)self0 videoMetadata:(id)self1
{
  v48[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  metadataCopy = metadata;
  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v19 = objc_alloc(MEMORY[0x1E6987ED8]);
  v20 = *MEMORY[0x1E69874C0];
  v46 = 0;
  v42 = v18;
  v21 = [v19 initWithURL:v18 fileType:v20 error:&v46];
  v22 = v46;
  writer = self->__writer;
  self->__writer = v21;

  if (!self->__writer || v22)
  {
    v36 = v22;
    v25 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseMovieWriter _startWritingWithOutputPath:v36 width:? height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? videoMetadata:?];
    }

    goto LABEL_14;
  }

  v40 = pathCopy;
  v39 = metadataCopy;
  [(AVAssetWriter *)self->__writer setMetadata:metadataCopy];
  v24 = +[CAMTimelapseSettings sharedInstance];
  v25 = [v24 outputSettingsForWidth:width height:height videoFormatDescription:description framesPerSecond:second frameCount:count useHEVC:c];

  v26 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v25];
  v27 = *&transform->c;
  v43 = *&transform->a;
  v44 = v27;
  v45 = *&transform->tx;
  [(AVAssetWriterInput *)v26 setTransform:&v43];
  [(CAMTimelapseMovieWriter *)self _setMetadataOnVideoTrackAssetWriterInput:v26];
  v47 = *MEMORY[0x1E6966130];
  v48[0] = &unk_1F16C8630;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v29 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v26 sourcePixelBufferAttributes:v28];
  if (![(AVAssetWriter *)self->__writer canAddInput:v26])
  {
    v37 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseMovieWriter _startWritingWithOutputPath:v37 width:? height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? videoMetadata:?];
    }

    goto LABEL_13;
  }

  [(AVAssetWriter *)self->__writer addInput:v26];
  videoInput = self->__videoInput;
  self->__videoInput = v26;
  v31 = v26;

  [(AVAssetWriterInput *)self->__videoInput addObserver:self forKeyPath:@"readyForMoreMediaData" options:1 context:0];
  pixelBufferAdaptor = self->__pixelBufferAdaptor;
  self->__pixelBufferAdaptor = v29;

  if (![(AVAssetWriter *)self->__writer startWriting])
  {
    v25 = os_log_create("com.apple.camera", "Nebula");
    pathCopy = v40;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CAMTimelapseMovieWriter _startWritingWithOutputPath:v40 width:&self->__writer height:? videoFormatDescription:? transform:? framesPerSecond:? frameCount:? preferHEVC:? videoMetadata:?];
    }

LABEL_13:
    v36 = 0;
    metadataCopy = v39;
LABEL_14:
    v35 = v42;

    [(CAMTimelapseMovieWriter *)self _reset];
    v34 = 0;
    goto LABEL_15;
  }

  v33 = self->__writer;
  v43 = *MEMORY[0x1E6960CC0];
  *&v44 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVAssetWriter *)v33 startSessionAtSourceTime:&v43];
  v34 = 1;
  metadataCopy = v39;
  pathCopy = v40;
  v35 = v42;
  v36 = 0;
LABEL_15:

  return v34;
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

- (BOOL)_appendPixelBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  if (buffer)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMake(&v11, self->__currentOutputFrameIndex, self->__framesPerSecond);
    pixelBufferAdaptor = self->__pixelBufferAdaptor;
    v10 = v11;
    LODWORD(bufferCopy) = [(AVAssetWriterInputPixelBufferAdaptor *)pixelBufferAdaptor appendPixelBuffer:bufferCopy withPresentationTime:&v10];
    if (bufferCopy)
    {
      ++self->__currentOutputFrameIndex;
    }

    else
    {
      writer = self->__writer;
      p_writer = &self->__writer;
      if ([(AVAssetWriter *)writer status]== AVAssetWriterStatusFailed)
      {
        v8 = os_log_create("com.apple.camera", "Nebula");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CAMTimelapseMovieWriter _appendPixelBuffer:?];
        }
      }
    }
  }

  return bufferCopy;
}

- (void)_finishMovieWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(AVAssetWriterInput *)self->__videoInput markAsFinished];
  metadata = [(AVAssetWriter *)self->__writer metadata];
  writer = self->__writer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CAMTimelapseMovieWriter__finishMovieWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E76FCD08;
  v10 = metadata;
  v11 = handlerCopy;
  v9[4] = self;
  v7 = metadata;
  v8 = handlerCopy;
  [(AVAssetWriter *)writer finishWritingWithCompletionHandler:v9];
}

uint64_t __61__CAMTimelapseMovieWriter__finishMovieWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) status];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"readyForMoreMediaData"])
  {
    v8 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      [(CAMTimelapseMovieWriter *)self _enqueueNextWrite];
    }
  }
}

- (void)writeMovieFromImageFiles:(int)a1 visMetadataFiles:(NSObject *)a2 startDate:location:outputPath:transform:framesPerSecond:preferHEVC:completionHandler:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Error: failed to get videoFormatDescription for pixel buffer: %d", v2, 8u);
}

- (void)_startWritingWithOutputPath:(uint64_t)a1 width:(id *)a2 height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:videoMetadata:.cold.2(uint64_t a1, id *a2)
{
  v7 = [*a2 error];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_startWritingWithOutputPath:(void *)a1 width:height:videoFormatDescription:transform:framesPerSecond:frameCount:preferHEVC:videoMetadata:.cold.3(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_appendPixelBuffer:(id *)a1 .cold.1(id *a1)
{
  v6 = [*a1 error];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end