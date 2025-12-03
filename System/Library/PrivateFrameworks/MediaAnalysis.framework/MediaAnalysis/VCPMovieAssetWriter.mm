@interface VCPMovieAssetWriter
+ (VCPMovieAssetWriter)assetWriterWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio;
+ (VCPMovieAssetWriter)assetWriterWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio enableStyle:(BOOL)style hasStyleApplied:(BOOL)applied;
- (VCPMovieAssetWriter)initWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio enableStyle:(BOOL)style hasStyleApplied:(BOOL)applied;
- (id).cxx_construct;
- (int)addAdditionalAuxTracks:(opaqueCMSampleBuffer *)tracks toTrack:(id)track;
- (int)addAuxPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time withAttachment:(id)attachment;
- (int)addLivePhotoInfoBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)addPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time withAttachment:(id)attachment;
- (int)addStyleInfoData:(id)data timerange:(id *)timerange;
- (int)appendMetadataTrack;
- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)copyPixelBufferForDelta:(__CVBuffer *)delta toPixelBuffer:(__CVBuffer *)buffer;
- (int)dispatchEncoding;
- (int)finish;
- (int)passthroughAuxTrackFrom:(id)from to:(id)to;
- (int)passthroughMetadataTrackFrom:(id)from to:(id)to;
- (int)processLivePhotoInfoMetadataTrack;
- (int)processStillImageMetadataTrack;
- (int)setupAdditionalAuxTrack;
- (int)setupAudioTrack;
- (int)setupAuxTrack:(int64_t)track withOutputSize:(CGSize)size;
- (int)setupMetadataTrack;
- (int)setupVideoTrack:(int64_t)track withOutputSize:(CGSize)size;
- (opaqueCMSampleBuffer)popAuxSample;
- (opaqueCMSampleBuffer)popLivePhotoInfoSample;
- (opaqueCMSampleBuffer)popSample;
- (void)cancel;
- (void)dealloc;
- (void)pushAuxSample:(opaqueCMSampleBuffer *)sample;
- (void)pushLivePhotoInfoSample:(opaqueCMSampleBuffer *)sample;
- (void)pushSample:(opaqueCMSampleBuffer *)sample;
- (void)updateStillPTS:(id *)s;
@end

@implementation VCPMovieAssetWriter

- (VCPMovieAssetWriter)initWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio enableStyle:(BOOL)style hasStyleApplied:(BOOL)applied
{
  appliedCopy = applied;
  audioCopy = audio;
  height = size.height;
  width = size.width;
  v87 = *MEMORY[0x1E69E9840];
  lCopy = l;
  trackCopy = track;
  v82.receiver = self;
  v82.super_class = VCPMovieAssetWriter;
  v18 = [(VCPMovieAssetWriter *)&v82 init];
  if (!v18)
  {
    goto LABEL_32;
  }

  bitrateCopy = bitrate;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v21 = [defaultManager fileExistsAtPath:path];

  if (v21)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [lCopy path];
      *buf = 138412290;
      v84 = path2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing existing file at path %@", buf, 0xCu);
    }

    path3 = [lCopy path];
    v81 = 0;
    v24 = [defaultManager removeItemAtPath:path3 error:&v81];
    v25 = v81;

    if ((v24 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        path4 = [lCopy path];
        v27 = [v25 description];
        *buf = 138412546;
        v84 = path4;
        v85 = 2112;
        v86 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to remove existing file at path %@ (%@)", buf, 0x16u);
      }

LABEL_37:

      v76 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v25 = 0;
  }

  objc_storeStrong(&v18->_track, track);
  asset = [(AVAssetTrack *)v18->_track asset];
  asset = v18->_asset;
  v18->_asset = asset;

  v30 = *MEMORY[0x1E69874C0];
  v80 = v25;
  v31 = [MEMORY[0x1E6987ED8] assetWriterWithURL:lCopy fileType:v30 error:&v80];
  v32 = v80;

  writer = v18->_writer;
  v18->_writer = v31;

  v25 = v32;
  if (!v18->_writer)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = [v32 description];
      *buf = 138412290;
      v84 = v74;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset writer (%@)", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (audioCopy)
  {
    v34 = [(AVAsset *)v18->_asset vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E69875A0]];
    audioTrack = v18->_audioTrack;
    v18->_audioTrack = v34;

    if (!v18->_audioTrack)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Asset does not have an audio track", buf, 2u);
      }

      goto LABEL_37;
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  sampleQueue = v18->_sampleQueue;
  v18->_sampleQueue = array;

  array2 = [MEMORY[0x1E695DF70] array];
  livePhotoInfoQueue = v18->_livePhotoInfoQueue;
  v18->_livePhotoInfoQueue = array2;

  v40 = dispatch_semaphore_create(5);
  enqueueSemaphore = v18->_enqueueSemaphore;
  v18->_enqueueSemaphore = v40;

  v42 = dispatch_semaphore_create(0);
  dequeueSemaphore = v18->_dequeueSemaphore;
  v18->_dequeueSemaphore = v42;

  v44 = dispatch_semaphore_create(5);
  livePhotoInfoEnqueueSemaphore = v18->_livePhotoInfoEnqueueSemaphore;
  v18->_livePhotoInfoEnqueueSemaphore = v44;

  v46 = dispatch_semaphore_create(0);
  livePhotoInfoDequeueSemaphore = v18->_livePhotoInfoDequeueSemaphore;
  v18->_livePhotoInfoDequeueSemaphore = v46;

  v48 = dispatch_group_create();
  encodingGroup = v18->_encodingGroup;
  v18->_encodingGroup = v48;

  v50 = MEMORY[0x1E6960C70];
  v18->_status = 1;
  *&v18->_stillPTS.value = *v50;
  v18->_stillPTS.epoch = *(v50 + 16);
  v18->_enableAudio = audioCopy;
  v51 = dispatch_queue_create("com.apple.mediaanalysisd.movieassetwriter.status", 0);
  statusOperationQueue = v18->_statusOperationQueue;
  v18->_statusOperationQueue = v51;

  v53 = dispatch_queue_create("com.apple.mediaanalysisd.movieassetwriter.mediaDataRequest.videoEncoding", 0);
  videoQueue = v18->_videoQueue;
  v18->_videoQueue = v53;

  if (v18->_enableAudio)
  {
    v55 = dispatch_queue_create("com.apple.mediaanalysisd.movieassetwriter.mediaDataRequest.audioEncoding", 0);
    audioQueue = v18->_audioQueue;
    v18->_audioQueue = v55;
  }

  v57 = dispatch_queue_create("com.apple.mediaanalysisd.movieassetwriter.mediaDataRequest.metadataEncoding", 0);
  metadataQueue = v18->_metadataQueue;
  v18->_metadataQueue = v57;

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  inputToOutputMap = v18->_inputToOutputMap;
  v18->_inputToOutputMap = strongToStrongObjectsMapTable;

  v18->_enableStyle = style;
  v18->_hasStyleApplied = appliedCopy;
  if (appliedCopy)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    auxsampleQueue = v18->_auxsampleQueue;
    v18->_auxsampleQueue = array3;

    v63 = dispatch_semaphore_create(5);
    auxEnqueueSemaphore = v18->_auxEnqueueSemaphore;
    v18->_auxEnqueueSemaphore = v63;

    v65 = dispatch_semaphore_create(0);
    auxDequeueSemaphore = v18->_auxDequeueSemaphore;
    v18->_auxDequeueSemaphore = v65;

    v67 = dispatch_queue_create("com.apple.mediaanalysisd.movieassetwriter.mediaDataRequest.auxEncoding", 0);
    auxQueue = v18->_auxQueue;
    v18->_auxQueue = v67;
  }

  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  auxInputToOutputMap = v18->_auxInputToOutputMap;
  v18->_auxInputToOutputMap = strongToStrongObjectsMapTable2;

  v71 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v18->_asset error:0];
  assetReader = v18->_assetReader;
  v18->_assetReader = v71;

  if ([(VCPMovieAssetWriter *)v18 setupVideoTrack:bitrateCopy withOutputSize:width, height]|| v18->_enableAudio && [(VCPMovieAssetWriter *)v18 setupAudioTrack]|| v18->_enableStyle && (v18->_hasStyleApplied && [(VCPMovieAssetWriter *)v18 setupAuxTrack:bitrateCopy withOutputSize:width, height]|| [(VCPMovieAssetWriter *)v18 setupAdditionalAuxTrack]) || [(VCPMovieAssetWriter *)v18 setupMetadataTrack])
  {
  }

  else
  {
    startReading = [(AVAssetReader *)v18->_assetReader startReading];

    if (startReading)
    {
LABEL_32:
      v73 = v18;
      goto LABEL_33;
    }
  }

  v73 = 0;
LABEL_33:
  v76 = v73;
LABEL_38:

  return v76;
}

+ (VCPMovieAssetWriter)assetWriterWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio
{
  audioCopy = audio;
  height = size.height;
  width = size.width;
  lCopy = l;
  trackCopy = track;
  v14 = [objc_alloc(objc_opt_class()) initWithURL:lCopy andTrack:trackCopy andBitrate:bitrate withOutputSize:audioCopy enableAudio:0 enableStyle:0 hasStyleApplied:{width, height}];

  return v14;
}

+ (VCPMovieAssetWriter)assetWriterWithURL:(id)l andTrack:(id)track andBitrate:(int64_t)bitrate withOutputSize:(CGSize)size enableAudio:(BOOL)audio enableStyle:(BOOL)style hasStyleApplied:(BOOL)applied
{
  appliedCopy = applied;
  styleCopy = style;
  audioCopy = audio;
  height = size.height;
  width = size.width;
  lCopy = l;
  trackCopy = track;
  v18 = [objc_alloc(objc_opt_class()) initWithURL:lCopy andTrack:trackCopy andBitrate:bitrate withOutputSize:audioCopy enableAudio:styleCopy enableStyle:appliedCopy hasStyleApplied:{width, height}];

  return v18;
}

- (void)dealloc
{
  if (self->_status == 1)
  {
    [(VCPMovieAssetWriter *)self cancel];
  }

  while ([(NSMutableArray *)self->_sampleQueue count])
  {
    v4 = [(NSMutableArray *)self->_sampleQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_sampleQueue removeObjectAtIndex:0];
    CF<__CVBuffer *>::~CF(&v4);
  }

  if (self->_hasStyleApplied)
  {
    while ([(NSMutableArray *)self->_auxsampleQueue count])
    {
      v4 = [(NSMutableArray *)self->_auxsampleQueue objectAtIndexedSubscript:0];

      [(NSMutableArray *)self->_auxsampleQueue removeObjectAtIndex:0];
      CF<__CVBuffer *>::~CF(&v4);
    }
  }

  while ([(NSMutableArray *)self->_livePhotoInfoQueue count])
  {
    v4 = [(NSMutableArray *)self->_livePhotoInfoQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_livePhotoInfoQueue removeObjectAtIndex:0];
    CF<__CVBuffer *>::~CF(&v4);
  }

  v3.receiver = self;
  v3.super_class = VCPMovieAssetWriter;
  [(VCPMovieAssetWriter *)&v3 dealloc];
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

- (void)pushAuxSample:(opaqueCMSampleBuffer *)sample
{
  dispatch_semaphore_wait(self->_auxEnqueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (sample)
  {
    v5 = self->_auxsampleQueue;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_auxsampleQueue addObject:sample];
    objc_sync_exit(v5);
  }

  auxDequeueSemaphore = self->_auxDequeueSemaphore;

  dispatch_semaphore_signal(auxDequeueSemaphore);
}

- (opaqueCMSampleBuffer)popAuxSample
{
  dispatch_semaphore_wait(self->_auxDequeueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = self->_auxsampleQueue;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_auxsampleQueue count])
  {
    v4 = [(NSMutableArray *)self->_auxsampleQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_auxsampleQueue removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  dispatch_semaphore_signal(self->_auxEnqueueSemaphore);
  return v4;
}

- (void)pushLivePhotoInfoSample:(opaqueCMSampleBuffer *)sample
{
  dispatch_semaphore_wait(self->_livePhotoInfoEnqueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (sample)
  {
    v5 = self->_livePhotoInfoQueue;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_livePhotoInfoQueue addObject:sample];
    objc_sync_exit(v5);
  }

  livePhotoInfoDequeueSemaphore = self->_livePhotoInfoDequeueSemaphore;

  dispatch_semaphore_signal(livePhotoInfoDequeueSemaphore);
}

- (opaqueCMSampleBuffer)popLivePhotoInfoSample
{
  dispatch_semaphore_wait(self->_livePhotoInfoDequeueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = self->_livePhotoInfoQueue;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_livePhotoInfoQueue count])
  {
    v4 = [(NSMutableArray *)self->_livePhotoInfoQueue objectAtIndexedSubscript:0];

    [(NSMutableArray *)self->_livePhotoInfoQueue removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  dispatch_semaphore_signal(self->_livePhotoInfoEnqueueSemaphore);
  return v4;
}

- (int)dispatchEncoding
{
  if (![(AVAssetWriter *)self->_writer startWriting])
  {
    return -18;
  }

  writer = self->_writer;
  v14 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVAssetWriter *)writer startSessionAtSourceTime:&v14];
  dispatch_group_enter(self->_encodingGroup);
  input = self->_input;
  videoQueue = self->_videoQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke;
  v13[3] = &unk_1E834BDC0;
  v13[4] = self;
  [(AVAssetWriterInput *)input requestMediaDataWhenReadyOnQueue:videoQueue usingBlock:v13];
  if (self->_enableStyle && self->_hasStyleApplied)
  {
    dispatch_group_enter(self->_encodingGroup);
    auxInput = self->_auxInput;
    auxQueue = self->_auxQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_12;
    v12[3] = &unk_1E834BDC0;
    v12[4] = self;
    [(AVAssetWriterInput *)auxInput requestMediaDataWhenReadyOnQueue:auxQueue usingBlock:v12];
  }

  if (self->_enableAudio)
  {
    dispatch_group_enter(self->_encodingGroup);
    audioInput = self->_audioInput;
    audioQueue = self->_audioQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_14;
    v11[3] = &unk_1E834BDC0;
    v11[4] = self;
    [(AVAssetWriterInput *)audioInput requestMediaDataWhenReadyOnQueue:audioQueue usingBlock:v11];
  }

  return [(VCPMovieAssetWriter *)self processLivePhotoInfoMetadataTrack];
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) isReadyForMoreMediaData])
  {
    while (1)
    {
      v2 = *(a1 + 32);
      if (v2[30] != 1)
      {
        goto LABEL_7;
      }

      v3 = [v2 popSample];
      v12 = v3;
      v4 = *(a1 + 32);
      if (*(v4 + 240) == 3)
      {
        break;
      }

      if (!v3)
      {
        v5 = 0;
        v6 = 1;
        goto LABEL_11;
      }

      if (([*(v4 + 72) appendSampleBuffer:v3] & 1) == 0)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_11;
      }

      CF<__CVBuffer *>::~CF(&v12);
      if (([*(*(a1 + 32) + 72) isReadyForMoreMediaData] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = 0;
    v6 = 0;
LABEL_11:
    CF<__CVBuffer *>::~CF(&v12);
    goto LABEL_12;
  }

LABEL_7:
  v5 = 0;
  v6 = 0;
LABEL_12:
  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2;
  block[3] = &unk_1E834FF30;
  block[4] = v7;
  v10 = v5;
  v11 = v6;
  dispatch_sync(v8, block);
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return;
  }

  if (*(a1 + 41) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Video encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 40) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Video encoding failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Video encoding aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 40) == 1)
  {
    *(v6 + 240) = 3;
    v6 = *(a1 + 32);
  }

  [*(v6 + 72) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_12(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) isReadyForMoreMediaData])
  {
    while (1)
    {
      v2 = *(a1 + 32);
      if (v2[30] != 1)
      {
        goto LABEL_7;
      }

      v3 = [v2 popAuxSample];
      v12 = v3;
      v4 = *(a1 + 32);
      if (*(v4 + 240) == 3)
      {
        break;
      }

      if (!v3)
      {
        v5 = 0;
        v6 = 1;
        goto LABEL_11;
      }

      if (([*(v4 + 80) appendSampleBuffer:v3] & 1) == 0)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_11;
      }

      CF<__CVBuffer *>::~CF(&v12);
      if (([*(*(a1 + 32) + 80) isReadyForMoreMediaData] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = 0;
    v6 = 0;
LABEL_11:
    CF<__CVBuffer *>::~CF(&v12);
    goto LABEL_12;
  }

LABEL_7:
  v5 = 0;
  v6 = 0;
LABEL_12:
  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2_13;
  block[3] = &unk_1E834FF30;
  block[4] = v7;
  v10 = v5;
  v11 = v6;
  dispatch_sync(v8, block);
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2_13(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return;
  }

  if (*(a1 + 41) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 40) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux encoding failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux encoding aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 40) == 1)
  {
    *(v6 + 240) = 3;
    v6 = *(a1 + 32);
  }

  [*(v6 + 80) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_14(uint64_t a1)
{
  if ([*(*(a1 + 32) + 88) isReadyForMoreMediaData])
  {
    do
    {
      v2 = *(a1 + 32);
      if (*(v2 + 240) != 1)
      {
        break;
      }

      v3 = [*(v2 + 24) copyNextSampleBuffer];
      if (!v3)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_7;
      }

      v4 = v3;
      v5 = [*(*(a1 + 32) + 88) appendSampleBuffer:v3];
      CFRelease(v4);
      if (!v5)
      {
        v6 = 0;
        v7 = 1;
        goto LABEL_7;
      }
    }

    while (([*(*(a1 + 32) + 88) isReadyForMoreMediaData] & 1) != 0);
  }

  v6 = 0;
  v7 = 0;
LABEL_7:
  v8 = *(a1 + 32);
  v9 = *(v8 + 200);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2_15;
  v10[3] = &unk_1E834FF30;
  v10[4] = v8;
  v11 = v7;
  v12 = v6;
  dispatch_sync(v9, v10);
}

void __39__VCPMovieAssetWriter_dispatchEncoding__block_invoke_2_15(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return;
  }

  if (*(a1 + 41) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Audio encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 40) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Audio encoding failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Audio encoding aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 40) == 1)
  {
    *(v6 + 240) = 3;
    v6 = *(a1 + 32);
  }

  [*(v6 + 88) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  v16[4] = *MEMORY[0x1E69E9840];
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (self->_pixelBufferPool.value_)
  {
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pixel buffers are not IOSurface-backed; copying", v14, 2u);
  }

  v15[0] = *MEMORY[0x1E6966130];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(buffer)];
  v16[0] = v9;
  v15[1] = *MEMORY[0x1E6966208];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(buffer)];
  v16[1] = v10;
  v15[2] = *MEMORY[0x1E69660B8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(buffer)];
  v15[3] = *MEMORY[0x1E69660D8];
  v16[2] = v11;
  v16[3] = MEMORY[0x1E695E0F8];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (p_pixelBufferPool->value_)
  {
    CFRelease(p_pixelBufferPool->value_);
    p_pixelBufferPool->value_ = 0;
  }

  PixelBuffer = CVPixelBufferPoolCreate(0, 0, v12, &p_pixelBufferPool->value_);

  if (!PixelBuffer)
  {
LABEL_16:
    if (self->_transferSession.value_ || (PixelBuffer = VTPixelTransferSessionCreate(0, &self->_transferSession.value_)) == 0)
    {
      PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, p_pixelBufferPool->value_, pixelBuffer);
      if (!PixelBuffer)
      {
        return VTPixelTransferSessionTransferImage(self->_transferSession.value_, buffer, *pixelBuffer);
      }
    }
  }

  return PixelBuffer;
}

- (int)copyPixelBufferForDelta:(__CVBuffer *)delta toPixelBuffer:(__CVBuffer *)buffer
{
  v16[4] = *MEMORY[0x1E69E9840];
  p_pixelBufferPool = &self->_pixelBufferPool;
  if (self->_pixelBufferPool.value_)
  {
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pixel buffers are not IOSurface-backed; copying", v14, 2u);
  }

  v15[0] = *MEMORY[0x1E6966130];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(delta)];
  v16[0] = v9;
  v15[1] = *MEMORY[0x1E6966208];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(delta)];
  v16[1] = v10;
  v15[2] = *MEMORY[0x1E69660B8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(delta)];
  v15[3] = *MEMORY[0x1E69660D8];
  v16[2] = v11;
  v16[3] = MEMORY[0x1E695E0F8];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  if (p_pixelBufferPool->value_)
  {
    CFRelease(p_pixelBufferPool->value_);
    p_pixelBufferPool->value_ = 0;
  }

  PixelBuffer = CVPixelBufferPoolCreate(0, 0, v12, &p_pixelBufferPool->value_);

  if (!PixelBuffer)
  {
LABEL_16:
    if (self->_transferSessionDelta.value_ || (PixelBuffer = VTPixelTransferSessionCreate(0, &self->_transferSessionDelta.value_)) == 0)
    {
      PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, p_pixelBufferPool->value_, buffer);
      if (!PixelBuffer)
      {
        return VTPixelTransferSessionTransferImage(self->_transferSessionDelta.value_, delta, *buffer);
      }
    }
  }

  return PixelBuffer;
}

- (int)addPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time withAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (buffer)
  {
    if (self->_status == 1)
    {
      formatDescriptionOut = 0;
      v9 = CMVideoFormatDescriptionCreateForImageBuffer(0, buffer, &formatDescriptionOut);
      if (v9)
      {
LABEL_22:
        CF<__CVBuffer *>::~CF(&formatDescriptionOut);
        goto LABEL_23;
      }

      *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
      sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      sampleTiming.presentationTimeStamp = *time;
      sampleTiming.decodeTimeStamp = sampleTiming.duration;
      cf = 0;
      if (CVPixelBufferGetIOSurface(buffer))
      {
        target = 0;
        cf = CFRetain(buffer);
        CF<__CVBuffer *>::~CF(&target);
      }

      else
      {
        v9 = [(VCPMovieAssetWriter *)self copyPixelBuffer:buffer toPixelBuffer:&cf];
        if (v9)
        {
LABEL_21:
          CF<__CVBuffer *>::~CF(&cf);
          goto LABEL_22;
        }
      }

      target = 0;
      v9 = CMSampleBufferCreateForImageBuffer(0, cf, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &target);
      if (!v9)
      {
        v10 = *MEMORY[0x1E69604E0];
        v11 = [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E69604E0]];

        v12 = MEMORY[0x1E695E4D0];
        if (v11 || (v10 = *MEMORY[0x1E6960508], [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E6960508]], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
        {
          CMSetAttachment(target, v10, *v12, 1u);
        }

        v14 = *MEMORY[0x1E69604D8];
        v15 = [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E69604D8]];

        if (v15)
        {
          CMSetAttachment(target, v14, *v12, 1u);
        }

        if (target)
        {
          v16 = CFRetain(target);
        }

        else
        {
          v16 = 0;
        }

        [(VCPMovieAssetWriter *)self pushSample:v16];
      }

      CF<__CVBuffer *>::~CF(&target);
      goto LABEL_21;
    }

    v9 = -18;
  }

  else
  {
    v9 = -50;
  }

LABEL_23:

  return v9;
}

- (int)addAuxPixelBuffer:(__CVBuffer *)buffer withTime:(id *)time withAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (buffer)
  {
    if (self->_status == 1)
    {
      formatDescriptionOut = 0;
      v9 = CMVideoFormatDescriptionCreateForImageBuffer(0, buffer, &formatDescriptionOut);
      if (v9)
      {
LABEL_22:
        CF<__CVBuffer *>::~CF(&formatDescriptionOut);
        goto LABEL_23;
      }

      *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
      sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      sampleTiming.presentationTimeStamp = *time;
      sampleTiming.decodeTimeStamp = sampleTiming.duration;
      cf = 0;
      if (CVPixelBufferGetIOSurface(buffer))
      {
        target = 0;
        cf = CFRetain(buffer);
        CF<__CVBuffer *>::~CF(&target);
      }

      else
      {
        v9 = [(VCPMovieAssetWriter *)self copyPixelBufferForDelta:buffer toPixelBuffer:&cf];
        if (v9)
        {
LABEL_21:
          CF<__CVBuffer *>::~CF(&cf);
          goto LABEL_22;
        }
      }

      target = 0;
      v9 = CMSampleBufferCreateForImageBuffer(0, cf, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &target);
      if (!v9)
      {
        v10 = *MEMORY[0x1E69604E0];
        v11 = [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E69604E0]];

        v12 = MEMORY[0x1E695E4D0];
        if (v11 || (v10 = *MEMORY[0x1E6960508], [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E6960508]], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
        {
          CMSetAttachment(target, v10, *v12, 1u);
        }

        v14 = *MEMORY[0x1E69604D8];
        v15 = [attachmentCopy objectForKeyedSubscript:*MEMORY[0x1E69604D8]];

        if (v15)
        {
          CMSetAttachment(target, v14, *v12, 1u);
        }

        if (target)
        {
          v16 = CFRetain(target);
        }

        else
        {
          v16 = 0;
        }

        [(VCPMovieAssetWriter *)self pushAuxSample:v16];
      }

      CF<__CVBuffer *>::~CF(&target);
      goto LABEL_21;
    }

    v9 = -18;
  }

  else
  {
    v9 = -50;
  }

LABEL_23:

  return v9;
}

- (int)addLivePhotoInfoBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (!buffer)
  {
    return -50;
  }

  if (self->_status != 1)
  {
    return -18;
  }

  [(VCPMovieAssetWriter *)self pushLivePhotoInfoSample:v3, v4];
  return 0;
}

- (void)updateStillPTS:(id *)s
{
  v3 = *&s->var0;
  self->_stillPTS.epoch = s->var3;
  *&self->_stillPTS.value = v3;
}

- (int)setupMetadataTrack
{
  v47 = *MEMORY[0x1E69E9840];
  asset = [(AVAssetTrack *)self->_track asset];
  metadata = [asset metadata];
  [(AVAssetWriter *)self->_writer setMetadata:metadata];

  v4 = *MEMORY[0x1E69875D0];
  [asset vcp_enabledTracksWithMediaType:*MEMORY[0x1E69875D0]];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v5)
  {
    v32 = 0;
    goto LABEL_38;
  }

  v7 = *v41;
  v38 = *MEMORY[0x1E69629E0];
  v37 = *MEMORY[0x1E69603C8];
  v35 = *MEMORY[0x1E6990A00];
  *&v6 = 138412290;
  v34 = v6;
  do
  {
    v8 = 0;
    do
    {
      if (*v41 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v40 + 1) + 8 * v8);
      formatDescriptions = [v9 formatDescriptions];
      firstObject = [formatDescriptions firstObject];

      if (firstObject)
      {
        v12 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
        formatDescriptions2 = [v9 formatDescriptions];
        if ([formatDescriptions2 count] != 1)
        {
          goto LABEL_37;
        }

        v14 = objc_alloc(MEMORY[0x1E6987EE0]);
        v15 = [formatDescriptions2 objectAtIndexedSubscript:0];
        v16 = [v14 initWithMediaType:v4 outputSettings:0 sourceFormatHint:v15];

        if ([v12 containsObject:v38])
        {
          v17 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v9 outputSettings:0];
          stillImageOutput = self->_stillImageOutput;
          self->_stillImageOutput = v17;

          if (![(AVAssetReader *)self->_assetReader canAddOutput:self->_stillImageOutput])
          {
            goto LABEL_36;
          }

          [(AVAssetReader *)self->_assetReader addOutput:self->_stillImageOutput];
          objc_storeStrong(&self->_stillImageInput, v16);
          v19 = [(AVAssetWriter *)self->_writer canAddInput:self->_stillImageInput];
          p_stillImageInput = &self->_stillImageInput;
          if (!v19)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        }

        if ([v12 containsObject:v37])
        {
          v21 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v9 outputSettings:0];
          videoOrientationOutput = self->_videoOrientationOutput;
          self->_videoOrientationOutput = v21;

          if (![(AVAssetReader *)self->_assetReader canAddOutput:self->_videoOrientationOutput])
          {
            goto LABEL_36;
          }

          [(AVAssetReader *)self->_assetReader addOutput:self->_videoOrientationOutput];
          objc_storeStrong(&self->_videoOrientationInput, v16);
          v23 = [(AVAssetWriter *)self->_writer canAddInput:self->_videoOrientationInput];
          p_stillImageInput = &self->_videoOrientationInput;
          if (!v23)
          {
            goto LABEL_36;
          }

LABEL_18:
          [(AVAssetWriter *)self->_writer addInput:*p_stillImageInput];
        }

        else
        {
          if ([v12 containsObject:v35])
          {
            objc_storeStrong(&self->_livePhotoInfoInput, v16);
            v24 = [(AVAssetWriter *)self->_writer canAddInput:self->_livePhotoInfoInput];
            p_stillImageInput = &self->_livePhotoInfoInput;
            if (!v24)
            {
              goto LABEL_36;
            }

            goto LABEL_18;
          }

          if ([v12 containsObject:@"mdta/com.apple.quicktime.smartstyle-info"])
          {
            v25 = [objc_alloc(MEMORY[0x1E6987EF8]) initWithAssetWriterInput:v16];
            styleInfoAdaptor = self->_styleInfoAdaptor;
            self->_styleInfoAdaptor = v25;

            writer = self->_writer;
            assetWriterInput = [(AVAssetWriterInputMetadataAdaptor *)self->_styleInfoAdaptor assetWriterInput];
            LOBYTE(writer) = [(AVAssetWriter *)writer canAddInput:assetWriterInput];

            if ((writer & 1) == 0)
            {
              goto LABEL_36;
            }

            v29 = self->_writer;
            assetWriterInput2 = [(AVAssetWriterInputMetadataAdaptor *)self->_styleInfoAdaptor assetWriterInput];
            [(AVAssetWriter *)v29 addInput:assetWriterInput2];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v45 = v12;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unknown metadata with identifiers: %@", buf, 0xCu);
            }

            assetWriterInput2 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v9 outputSettings:0];
            if (![(AVAssetReader *)self->_assetReader canAddOutput:assetWriterInput2]|| ([(AVAssetReader *)self->_assetReader addOutput:assetWriterInput2], ![(AVAssetWriter *)self->_writer canAddInput:v16]))
            {

LABEL_36:
LABEL_37:

              v32 = -18;
              goto LABEL_38;
            }

            [(AVAssetWriter *)self->_writer addInput:v16];
            [(NSMapTable *)self->_inputToOutputMap setObject:assetWriterInput2 forKey:v16];
          }
        }
      }

      ++v8;
    }

    while (v5 != v8);
    v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    v5 = v31;
    v32 = 0;
  }

  while (v31);
LABEL_38:

  return v32;
}

- (int)setupAdditionalAuxTrack
{
  v51 = *MEMORY[0x1E69E9840];
  asset = [(AVAssetTrack *)self->_track asset];
  metadata = [asset metadata];
  [(AVAssetWriter *)self->_writer setMetadata:metadata];

  asset2 = [(AVAssetTrack *)self->_track asset];
  v29 = *MEMORY[0x1E69875B0];
  v5 = [asset2 tracksWithMediaType:?];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v30 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v30)
  {
    v31 = *v43;
    v28 = *MEMORY[0x1E6987708];
    v25 = *MEMORY[0x1E6987858];
    v26 = *MEMORY[0x1E6987908];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        formatDescriptions = [v6 formatDescriptions];
        firstObject = [formatDescriptions firstObject];

        if (firstObject)
        {
          v33 = [v6 metadataForFormat:v28];
          v9 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v29 outputSettings:0 sourceFormatHint:0];
          if (v33)
          {
            v10 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v33 withKey:v26 keySpace:v25];
            if (v10)
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v24 = v10;
              v11 = v10;
              v12 = [v11 countByEnumeratingWithState:&v38 objects:v49 count:16];
              if (v12)
              {
                v13 = *v39;
                while (2)
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v39 != v13)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v15 = *(*(&v38 + 1) + 8 * j);
                    [v9 setMarksOutputTrackAsEnabled:{objc_msgSend(v6, "isEnabled")}];
                    stringValue = [v15 stringValue];
                    v17 = [stringValue isEqualToString:@"com.apple.quicktime.video-map.smart-style-delta-map"];

                    if ((v17 & 1) == 0)
                    {
                      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        stringValue2 = [v15 stringValue];
                        *buf = 138412290;
                        *&buf[4] = stringValue2;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Setting up aux track with name: %@", buf, 0xCu);
                      }

                      if (v6)
                      {
                        [v6 preferredTransform];
                      }

                      else
                      {
                        v36 = 0u;
                        v37 = 0u;
                        v35 = 0u;
                      }

                      *buf = v35;
                      v47 = v36;
                      v48 = v37;
                      [v9 setTransform:buf];
                      metadata2 = [v6 metadata];
                      [v9 setMetadata:metadata2];

                      if (![(AVAssetWriter *)self->_writer canAddInput:v9])
                      {

                        v22 = -18;
                        goto LABEL_33;
                      }

                      [(AVAssetWriter *)self->_writer addInput:v9];
                      auxInputToOutputMap = self->_auxInputToOutputMap;
                      stringValue3 = [v15 stringValue];
                      [(NSMapTable *)auxInputToOutputMap setObject:v9 forKey:stringValue3];
                    }
                  }

                  v12 = [v11 countByEnumeratingWithState:&v38 objects:v49 count:16];
                  if (v12)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v24;
            }
          }
        }
      }

      v22 = 0;
      v30 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v30);
  }

  else
  {
    v22 = 0;
  }

LABEL_33:

  return v22;
}

- (int)setupAudioTrack
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69582B0];
  v15[0] = &unk_1F49BD8A0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v4 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:self->_audioTrack outputSettings:v3];
  audioOutput = self->_audioOutput;
  self->_audioOutput = v4;

  if ([(AVAssetReader *)self->_assetReader canAddOutput:self->_audioOutput])
  {
    [(AVAssetReader *)self->_assetReader addOutput:self->_audioOutput];
    formatDescriptions = [(AVAssetTrack *)self->_audioTrack formatDescriptions];
    if ([formatDescriptions count] == 1)
    {
      v7 = MEMORY[0x1E6987EE0];
      v8 = [formatDescriptions objectAtIndexedSubscript:0];
      v9 = [v7 assetWriterInputWithMediaType:*MEMORY[0x1E69875A0] outputSettings:0 sourceFormatHint:v8];
      audioInput = self->_audioInput;
      self->_audioInput = v9;

      if (self->_audioInput)
      {
        [(AVAssetWriter *)self->_writer addInput:?];
        v11 = 0;
LABEL_10:

        goto LABEL_11;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset audio writer input", v13, 2u);
      }
    }

    v11 = -18;
    goto LABEL_10;
  }

  v11 = -18;
LABEL_11:

  return v11;
}

- (int)setupVideoTrack:(int64_t)track withOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v37[6] = *MEMORY[0x1E69E9840];
  formatDescriptions = [(AVAssetTrack *)self->_track formatDescriptions];
  if ([formatDescriptions count] == 1)
  {
    v9 = [formatDescriptions objectAtIndexedSubscript:0];

    MediaSubType = CMFormatDescriptionGetMediaSubType(v9);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (MediaSubType == 1635148593)
    {
      v20 = *MEMORY[0x1E69837E8];
      v34[0] = *MEMORY[0x1E69837F0];
      v34[1] = v20;
      v35[0] = MEMORY[0x1E695E118];
      v35[1] = &unk_1F49BD8E8;
      v34[2] = *MEMORY[0x1E6983558];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:track];
      v34[3] = *MEMORY[0x1E6983518];
      v35[2] = v21;
      v35[3] = MEMORY[0x1E695E110];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];

      [v11 setObject:*MEMORY[0x1E6987CE8] forKeyedSubscript:*MEMORY[0x1E6987CB0]];
      [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6987D30]];
      if (*MEMORY[0x1E695F060] == width && *(MEMORY[0x1E695F060] + 8) == height)
      {
        goto LABEL_12;
      }

      v22 = [MEMORY[0x1E696AD98] numberWithLong:rint(width)];
      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6987E08]];

      v18 = [MEMORY[0x1E696AD98] numberWithLong:rint(height)];
      [v11 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6987D70]];
    }

    else
    {
      if (MediaSubType != 1752589105)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        LOWORD(v30[0]) = 0;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "[FRC] Unexpected codec type";
        goto LABEL_21;
      }

      v12 = MEMORY[0x1E695E110];
      v13 = *MEMORY[0x1E69837F0];
      v36[0] = *MEMORY[0x1E6983520];
      v36[1] = v13;
      v37[0] = MEMORY[0x1E695E110];
      v37[1] = MEMORY[0x1E695E118];
      v14 = *MEMORY[0x1E69838C0];
      v36[2] = *MEMORY[0x1E69836F0];
      v36[3] = v14;
      v37[2] = &unk_1F49BD8B8;
      v37[3] = &unk_1F49BD8D0;
      v36[4] = *MEMORY[0x1E6983558];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:track];
      v36[5] = *MEMORY[0x1E6983780];
      v37[4] = v15;
      v37[5] = v12;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:6];

      [v11 setObject:*MEMORY[0x1E6987CF0] forKeyedSubscript:*MEMORY[0x1E6987CB0]];
      [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6987D30]];
      if (*MEMORY[0x1E695F060] == width && *(MEMORY[0x1E695F060] + 8) == height)
      {
LABEL_12:

        v23 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v11 sourceFormatHint:v9];
        input = self->_input;
        self->_input = v23;

        v25 = self->_input;
        if (v25)
        {
          if (self->_track)
          {
            [(AVAssetTrack *)self->_track preferredTransform];
            v25 = self->_input;
          }

          else
          {
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
          }

          v30[0] = v31;
          v30[1] = v32;
          v30[2] = v33;
          [(AVAssetWriterInput *)v25 setTransform:v30];
          metadata = [(AVAssetTrack *)self->_track metadata];
          [(AVAssetWriterInput *)self->_input setMetadata:metadata];

          [(AVAssetWriter *)self->_writer addInput:self->_input];
          v19 = 0;
          goto LABEL_25;
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          v19 = -18;
LABEL_25:

          goto LABEL_26;
        }

        LOWORD(v30[0]) = 0;
        v26 = MEMORY[0x1E69E9C10];
        v27 = "Failed to create asset video writer input";
LABEL_21:
        _os_log_impl(&dword_1C9B70000, v26, OS_LOG_TYPE_ERROR, v27, v30, 2u);
        goto LABEL_22;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithLong:rint(width)];
      [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6987E08]];

      v18 = [MEMORY[0x1E696AD98] numberWithLong:rint(height)];
      [v11 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6987D70]];
    }

    goto LABEL_12;
  }

  v19 = -18;
LABEL_26:

  return v19;
}

- (int)setupAuxTrack:(int64_t)track withOutputSize:(CGSize)size
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = [(AVAssetTrack *)self->_track asset:size.width];
  v5 = *MEMORY[0x1E69875B0];
  v6 = [v4 tracksWithMediaType:*MEMORY[0x1E69875B0]];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  v62 = v5;
  v8 = 0;
  if (v7)
  {
    v68 = *MEMORY[0x1E6987708];
    v69 = *v84;
    v66 = *MEMORY[0x1E6987858];
    v67 = *MEMORY[0x1E6987908];
    do
    {
      v70 = v7;
      for (i = 0; i != v70; ++i)
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v83 + 1) + 8 * i);
        v11 = [v10 metadataForFormat:v68];
        v72 = v11;
        if (v11)
        {
          v12 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v11 withKey:v67 keySpace:v66];
          v71 = v12;
          if (v12)
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v79 objects:v91 count:16];
            if (v14)
            {
              v15 = *v80;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v80 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  stringValue = [*(*(&v79 + 1) + 8 * j) stringValue];
                  v18 = [stringValue isEqualToString:@"com.apple.quicktime.video-map.smart-style-delta-map"];

                  if (v18)
                  {
                    v19 = v10;

                    v8 = v19;
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v79 objects:v91 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v7);
  }

  formatDescriptions = [v8 formatDescriptions];
  if ([formatDescriptions count] == 1)
  {
    v21 = [formatDescriptions objectAtIndexedSubscript:0];

    PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v21, 0, 1u);
    v23 = CMVideoFormatDescriptionGetPresentationDimensions(v21, 0, 0);
    v89[0] = *MEMORY[0x1E6987C98];
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:PresentationDimensions.width];
    v90[0] = v24;
    v89[1] = *MEMORY[0x1E6987C78];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:PresentationDimensions.height];
    v26 = *MEMORY[0x1E6987C80];
    v90[1] = v25;
    v90[2] = &unk_1F49BD900;
    v27 = *MEMORY[0x1E6987C90];
    v89[2] = v26;
    v89[3] = v27;
    v90[3] = &unk_1F49BD900;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = MEMORY[0x1E695E110];
    v31 = *MEMORY[0x1E6983520];
    v87[0] = *MEMORY[0x1E6983518];
    v87[1] = v31;
    v88[0] = MEMORY[0x1E695E110];
    v88[1] = MEMORY[0x1E695E110];
    v32 = MEMORY[0x1E695E118];
    v33 = *MEMORY[0x1E69836F0];
    v87[2] = *MEMORY[0x1E69837F0];
    v87[3] = v33;
    v88[2] = MEMORY[0x1E695E118];
    v88[3] = &unk_1F49BD918;
    v34 = *MEMORY[0x1E69838C0];
    v88[4] = &unk_1F49BD8D0;
    v35 = *MEMORY[0x1E6983558];
    v87[4] = v34;
    v87[5] = v35;
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:track];
    v37 = *MEMORY[0x1E6983780];
    v88[5] = v36;
    v88[6] = v30;
    v38 = *MEMORY[0x1E6983638];
    v87[6] = v37;
    v87[7] = v38;
    v39 = *MEMORY[0x1E6983700];
    v88[7] = &unk_1F49BD930;
    v88[8] = &unk_1F49BB688;
    v40 = *MEMORY[0x1E6983710];
    v87[8] = v39;
    v87[9] = v40;
    v41 = *MEMORY[0x1E6983728];
    v88[9] = &unk_1F49BD8D0;
    v88[10] = v32;
    v42 = *MEMORY[0x1E69837C8];
    v87[10] = v41;
    v87[11] = v42;
    v43 = *MEMORY[0x1E6983810];
    v88[11] = &unk_1F49BD948;
    v88[12] = v32;
    v44 = *MEMORY[0x1E6987C88];
    v87[12] = v43;
    v87[13] = v44;
    v45 = *MEMORY[0x1E69837D0];
    v46 = *MEMORY[0x1E6983F78];
    v88[13] = v28;
    v88[14] = v46;
    v47 = *MEMORY[0x1E69835B0];
    v87[14] = v45;
    v87[15] = v47;
    v48 = *MEMORY[0x1E6983670];
    v49 = *MEMORY[0x1E6983CB0];
    v88[15] = *MEMORY[0x1E6965DD0];
    v88[16] = v49;
    v87[16] = v48;
    v87[17] = v39;
    v88[17] = &unk_1F49BB688;
    v88[18] = &unk_1F49BD8D0;
    v50 = *MEMORY[0x1E6983878];
    v87[18] = v40;
    v87[19] = v50;
    v51 = *MEMORY[0x1E6965F60];
    v87[20] = *MEMORY[0x1E69838B8];
    v52 = *MEMORY[0x1E6965FC8];
    v88[19] = v51;
    v88[20] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:21];

    [v29 setObject:*MEMORY[0x1E6987CF0] forKeyedSubscript:*MEMORY[0x1E6987CB0]];
    [v29 setObject:v53 forKeyedSubscript:*MEMORY[0x1E6987D30]];
    v54 = [MEMORY[0x1E696AD98] numberWithInt:v23.width];
    [v29 setObject:v54 forKeyedSubscript:*MEMORY[0x1E6987E08]];

    v55 = [MEMORY[0x1E696AD98] numberWithInt:v23.height];
    [v29 setObject:v55 forKeyedSubscript:*MEMORY[0x1E6987D70]];

    v56 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:v62 outputSettings:v29 sourceFormatHint:0];
    auxInput = self->_auxInput;
    self->_auxInput = v56;

    v58 = self->_auxInput;
    if (v58)
    {
      if (v8)
      {
        [v8 preferredTransform];
        v58 = self->_auxInput;
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
        v76 = 0u;
      }

      *buf = v76;
      v74 = v77;
      v75 = v78;
      [(AVAssetWriterInput *)v58 setTransform:buf];
      metadata = [v8 metadata];
      [(AVAssetWriterInput *)self->_auxInput setMetadata:metadata];

      -[AVAssetWriterInput setMarksOutputTrackAsEnabled:](self->_auxInput, "setMarksOutputTrackAsEnabled:", [v8 isEnabled]);
      [(AVAssetWriter *)self->_writer addInput:self->_auxInput];
      v59 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create asset video writer input", buf, 2u);
      }

      v59 = -18;
    }
  }

  else
  {
    v59 = -18;
  }

  return v59;
}

- (int)appendMetadataTrack
{
  processStillImageMetadataTrack = [(VCPMovieAssetWriter *)self processStillImageMetadataTrack];
  if (processStillImageMetadataTrack)
  {
    return processStillImageMetadataTrack;
  }

  processStillImageMetadataTrack = [(VCPMovieAssetWriter *)self passthroughMetadataTrackFrom:self->_videoOrientationOutput to:self->_videoOrientationInput];
  if (processStillImageMetadataTrack)
  {
    return processStillImageMetadataTrack;
  }

  keyEnumerator = [(NSMapTable *)self->_inputToOutputMap keyEnumerator];
  v7 = 0;
  while (1)
  {
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v9 = [(NSMapTable *)self->_inputToOutputMap objectForKey:nextObject];
    v4 = [(VCPMovieAssetWriter *)self passthroughMetadataTrackFrom:v9 to:nextObject];

    v7 = nextObject;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (int)addAdditionalAuxTracks:(opaqueCMSampleBuffer *)tracks toTrack:(id)track
{
  v6 = [(NSMapTable *)self->_auxInputToOutputMap objectForKey:track];
  if (![v6 isReadyForMoreMediaData])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  if (tracks && self->_status == 1)
  {
    if (([v6 appendSampleBuffer:tracks] & 1) == 0)
    {
      CFRelease(tracks);
      self->_status = 3;
      v7 = -18;
      goto LABEL_7;
    }

    CFRelease(tracks);
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (int)addStyleInfoData:(id)data timerange:(id *)timerange
{
  v13[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = objc_alloc(MEMORY[0x1E6988160]);
  v13[0] = dataCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = *&timerange->var0.var3;
  v12[0] = *&timerange->var0.var0;
  v12[1] = v9;
  v12[2] = *&timerange->var1.var1;
  v10 = [v7 initWithItems:v8 timeRange:v12];

  [(AVAssetWriterInputMetadataAdaptor *)self->_styleInfoAdaptor appendTimedMetadataGroup:v10];
  return 0;
}

- (int)processStillImageMetadataTrack
{
  dispatch_group_enter(self->_encodingGroup);
  stillImageInput = self->_stillImageInput;
  metadataQueue = self->_metadataQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__VCPMovieAssetWriter_processStillImageMetadataTrack__block_invoke;
  v6[3] = &unk_1E834BDC0;
  v6[4] = self;
  [(AVAssetWriterInput *)stillImageInput requestMediaDataWhenReadyOnQueue:metadataQueue usingBlock:v6];
  return 0;
}

void __53__VCPMovieAssetWriter_processStillImageMetadataTrack__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) isReadyForMoreMediaData])
  {
    do
    {
      v2 = *(a1 + 32);
      if (*(v2 + 240) != 1)
      {
        break;
      }

      v3 = [*(v2 + 40) copyNextSampleBuffer];
      if (!v3)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_8;
      }

      v4 = v3;
      if (CMSampleBufferGetNumSamples(v3))
      {
        outputPresentationTimeStamp = *(*(a1 + 32) + 272);
        CMSampleBufferSetOutputPresentationTimeStamp(v4, &outputPresentationTimeStamp);
        if (([*(*(a1 + 32) + 104) appendSampleBuffer:v4] & 1) == 0)
        {
          CFRelease(v4);
          v5 = 0;
          v6 = 1;
          goto LABEL_8;
        }
      }

      CFRelease(v4);
    }

    while (([*(*(a1 + 32) + 104) isReadyForMoreMediaData] & 1) != 0);
  }

  v5 = 0;
  v6 = 0;
LABEL_8:
  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__VCPMovieAssetWriter_processStillImageMetadataTrack__block_invoke_2;
  v9[3] = &unk_1E834FF30;
  v9[4] = v7;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v8, v9);
}

void __53__VCPMovieAssetWriter_processStillImageMetadataTrack__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return;
  }

  if (*(a1 + 41) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Still image metadata encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 40) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Still image metadata failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Still image metadata aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 40) == 1)
  {
    *(v6 + 240) = 3;
    v6 = *(a1 + 32);
  }

  [*(v6 + 104) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

- (int)processLivePhotoInfoMetadataTrack
{
  dispatch_group_enter(self->_encodingGroup);
  livePhotoInfoInput = self->_livePhotoInfoInput;
  metadataQueue = self->_metadataQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VCPMovieAssetWriter_processLivePhotoInfoMetadataTrack__block_invoke;
  v6[3] = &unk_1E834BDC0;
  v6[4] = self;
  [(AVAssetWriterInput *)livePhotoInfoInput requestMediaDataWhenReadyOnQueue:metadataQueue usingBlock:v6];
  return 0;
}

void __56__VCPMovieAssetWriter_processLivePhotoInfoMetadataTrack__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 96) isReadyForMoreMediaData])
  {
    while (1)
    {
      v2 = *(a1 + 32);
      if (v2[30] != 1)
      {
        goto LABEL_7;
      }

      v3 = [v2 popLivePhotoInfoSample];
      v12 = v3;
      v4 = *(a1 + 32);
      if (*(v4 + 240) == 3)
      {
        break;
      }

      if (!v3)
      {
        v5 = 0;
        v6 = 1;
        goto LABEL_11;
      }

      if (([*(v4 + 96) appendSampleBuffer:v3] & 1) == 0)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_11;
      }

      CF<__CVBuffer *>::~CF(&v12);
      if (([*(*(a1 + 32) + 96) isReadyForMoreMediaData] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = 0;
    v6 = 0;
LABEL_11:
    CF<__CVBuffer *>::~CF(&v12);
    goto LABEL_12;
  }

LABEL_7:
  v5 = 0;
  v6 = 0;
LABEL_12:
  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCPMovieAssetWriter_processLivePhotoInfoMetadataTrack__block_invoke_2;
  block[3] = &unk_1E834FF30;
  block[4] = v7;
  v10 = v5;
  v11 = v6;
  dispatch_sync(v8, block);
}

void __56__VCPMovieAssetWriter_processLivePhotoInfoMetadataTrack__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 40) & 1) == 0 && *(a1 + 41) != 1)
  {
    return;
  }

  if (*(a1 + 41) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Live photo info encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 40) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Live photo info encoding failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Live photo info encoding aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 40) == 1)
  {
    *(v6 + 240) = 3;
    v6 = *(a1 + 32);
  }

  [*(v6 + 96) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

- (int)passthroughMetadataTrackFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  dispatch_group_enter(self->_encodingGroup);
  metadataQueue = self->_metadataQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__VCPMovieAssetWriter_passthroughMetadataTrackFrom_to___block_invoke;
  v12[3] = &unk_1E834D020;
  v13 = toCopy;
  selfCopy = self;
  v15 = fromCopy;
  v9 = fromCopy;
  v10 = toCopy;
  [v10 requestMediaDataWhenReadyOnQueue:metadataQueue usingBlock:v12];

  return 0;
}

void __55__VCPMovieAssetWriter_passthroughMetadataTrackFrom_to___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    while (*(*(a1 + 40) + 240) == 1)
    {
      v2 = [*(a1 + 48) copyNextSampleBuffer];
      if (!v2)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_7;
      }

      v3 = v2;
      v4 = [*(a1 + 32) appendSampleBuffer:v2];
      CFRelease(v3);
      if (!v4)
      {
        v5 = 0;
        v6 = 1;
        goto LABEL_7;
      }

      if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
      {
        break;
      }
    }
  }

  v5 = 0;
  v6 = 0;
LABEL_7:
  v7 = *(a1 + 40);
  v8 = *(v7 + 200);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__VCPMovieAssetWriter_passthroughMetadataTrackFrom_to___block_invoke_2;
  v9[3] = &unk_1E834FDC0;
  v9[4] = v7;
  v12 = v6;
  v13 = v5;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  dispatch_sync(v8, v9);
}

void __55__VCPMovieAssetWriter_passthroughMetadataTrackFrom_to___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 240) != 3 && (*(a1 + 56) & 1) == 0 && *(a1 + 57) != 1)
  {
    return;
  }

  v2 = [*(a1 + 40) track];
  v3 = [v2 formatDescriptions];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = CMMetadataFormatDescriptionGetIdentifiers(v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 57) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *v9 = 138412290;
    *&v9[4] = v5;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[FRC] Metadata track encoding finished: %@";
  }

  else if (*(a1 + 56) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *v9 = 138412290;
    *&v9[4] = v5;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[FRC] Metadata track failed: %@";
  }

  else
  {
    if (*(*(a1 + 32) + 240) != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *v9 = 138412290;
    *&v9[4] = v5;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[FRC] Metadata track aborted: %@";
  }

  _os_log_impl(&dword_1C9B70000, v6, OS_LOG_TYPE_DEBUG, v7, v9, 0xCu);
LABEL_20:
  v8 = *(a1 + 32);
  if (*(v8 + 240) == 1 && *(a1 + 56) == 1)
  {
    *(v8 + 240) = 3;
  }

  [*(a1 + 48) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

- (int)passthroughAuxTrackFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  dispatch_group_enter(self->_encodingGroup);
  metadataQueue = self->_metadataQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__VCPMovieAssetWriter_passthroughAuxTrackFrom_to___block_invoke;
  v12[3] = &unk_1E834D020;
  v13 = toCopy;
  selfCopy = self;
  v15 = fromCopy;
  v9 = fromCopy;
  v10 = toCopy;
  [v10 requestMediaDataWhenReadyOnQueue:metadataQueue usingBlock:v12];

  return 0;
}

void __50__VCPMovieAssetWriter_passthroughAuxTrackFrom_to___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isReadyForMoreMediaData])
  {
    while (*(*(a1 + 40) + 240) == 1)
    {
      v2 = [*(a1 + 48) copyNextSampleBuffer];
      if (!v2)
      {
        v6 = 0;
        v5 = 1;
        goto LABEL_7;
      }

      v3 = v2;
      v4 = [*(a1 + 32) appendSampleBuffer:v2];
      CFRelease(v3);
      if (!v4)
      {
        v5 = 0;
        v6 = 1;
        goto LABEL_7;
      }

      if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
      {
        break;
      }
    }
  }

  v5 = 0;
  v6 = 0;
LABEL_7:
  v7 = *(a1 + 40);
  v8 = *(v7 + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCPMovieAssetWriter_passthroughAuxTrackFrom_to___block_invoke_2;
  block[3] = &unk_1E834FF58;
  block[4] = v7;
  v11 = v6;
  v12 = v5;
  v10 = *(a1 + 32);
  dispatch_sync(v8, block);
}

void __50__VCPMovieAssetWriter_passthroughAuxTrackFrom_to___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2 != 3 && (*(a1 + 48) & 1) == 0 && *(a1 + 49) != 1)
  {
    return;
  }

  if (*(a1 + 49) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v9 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux track encoding finished";
    v5 = &v9;
  }

  else if (*(a1 + 48) == 1)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v8 = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux track failed";
    v5 = &v8;
  }

  else
  {
    if (v2 != 3 || MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v7) = 0;
    v3 = MEMORY[0x1E69E9C10];
    v4 = "[FRC] Aux track aborted";
    v5 = &v7;
  }

  _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
LABEL_17:
  v6 = *(a1 + 32);
  if (*(v6 + 240) == 1 && *(a1 + 48) == 1)
  {
    *(v6 + 240) = 3;
  }

  [*(a1 + 40) markAsFinished];
  dispatch_group_leave(*(*(a1 + 32) + 144));
}

- (int)finish
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_status != 1)
  {
    return -18;
  }

  if (self->_enableAudio)
  {
    [(VCPMovieAssetWriter *)self appendMetadataTrack];
  }

  [(VCPMovieAssetWriter *)self pushSample:0];
  if (self->_enableStyle && self->_hasStyleApplied)
  {
    [(VCPMovieAssetWriter *)self pushAuxSample:0];
  }

  [(VCPMovieAssetWriter *)self pushLivePhotoInfoSample:0];
  dispatch_group_wait(self->_encodingGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_status == 3)
  {
    return -18;
  }

  v4 = dispatch_semaphore_create(0);
  writer = self->_writer;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __29__VCPMovieAssetWriter_finish__block_invoke;
  v13 = &unk_1E834D238;
  selfCopy = self;
  v6 = v4;
  v15 = v6;
  [(AVAssetWriter *)writer finishWritingWithCompletionHandler:&v10];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(AVAssetWriter *)self->_writer error:v10];
  LOBYTE(writer) = v7 == 0;

  if (writer)
  {
    v3 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      error = [(AVAssetWriter *)self->_writer error];
      *buf = 138412290;
      v17 = error;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Asset writer failed to complete with error %@", buf, 0xCu);
    }

    v3 = -18;
  }

  return v3;
}

- (void)cancel
{
  statusOperationQueue = self->_statusOperationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__VCPMovieAssetWriter_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(statusOperationQueue, block);
  dispatch_group_wait(self->_encodingGroup, 0xFFFFFFFFFFFFFFFFLL);
  [(AVAssetWriter *)self->_writer cancelWriting];
  [(AVAssetReader *)self->_assetReader cancelReading];
}

uint64_t __29__VCPMovieAssetWriter_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  v3 = MediaAnalysisLogLevel();
  if (v2 == 3)
  {
    if (v3 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FRC] Encoding failed", buf, 2u);
    }
  }

  else
  {
    if (v3 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FRC] Cancelling encoding", v6, 2u);
    }

    *(*(a1 + 32) + 240) = 3;
  }

  while (1)
  {
    dispatch_semaphore_signal(*(*(a1 + 32) + 160));
    if (![*(*(a1 + 32) + 120) count])
    {
      break;
    }

    [*(a1 + 32) popSample];
  }

  while (1)
  {
    dispatch_semaphore_signal(*(*(a1 + 32) + 192));
    result = [*(*(a1 + 32) + 136) count];
    if (!result)
    {
      break;
    }

    [*(a1 + 32) popLivePhotoInfoSample];
  }

  v5 = *(a1 + 32);
  if (*(v5 + 298) == 1)
  {
    while (1)
    {
      dispatch_semaphore_signal(*(v5 + 176));
      result = [*(*(a1 + 32) + 128) count];
      if (!result)
      {
        break;
      }

      [*(a1 + 32) popAuxSample];
      v5 = *(a1 + 32);
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 33) = 0;
  return self;
}

@end