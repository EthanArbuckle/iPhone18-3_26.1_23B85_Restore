@interface JFXVideoWriter
+ (id)JFX_animojiMetadataIdentifier;
+ (id)JFX_faceAnchorMetadataIdentifier;
+ (id)JFX_funcamCameraPositionMetadataIdentifier;
+ (id)JFX_funcamCaptureInterfaceOrientationMetadataIdentifier;
+ (id)META_ARMetadataTrackForAsset:(id)asset;
+ (id)META_JFXARMetadataIdentifier;
+ (id)META_metadataAssetTrackFromAsset:(id)asset metadataIdentifier:(id)identifier;
+ (void)META_metadataForVideo:(id)video completion:(id)completion;
- (BOOL)JFX_setupAudioOutput:(id *)output;
- (BOOL)JFX_setupAutoExposureMetadataOutput:(id *)output;
- (BOOL)JFX_setupCompressedDepthOutputWithTransform:(CGAffineTransform *)transform error:(id *)error;
- (BOOL)JFX_setupDepthOutputWithTransform:(CGAffineTransform *)transform error:(id *)error;
- (BOOL)JFX_setupFaceMetadataOutput:(id *)output;
- (BOOL)JFX_setupJFXARMetadataTrack:(id *)track;
- (BOOL)JFX_setupMetadataWriterWithTransform:(CGAffineTransform *)transform error:(id *)error;
- (BOOL)JFX_setupVideoOutput:(CGAffineTransform *)output error:(id *)error;
- (BOOL)JFX_setupVideoWriterWithTransform:(CGAffineTransform *)transform error:(id *)error;
- (BOOL)JFX_writeSampleBuffer:(opaqueCMSampleBuffer *)buffer assetWriterInput:(id)input sampleType:(int)type depthAdaptor:(id)adaptor;
- (BOOL)JFX_writerCanBegin:(id *)begin;
- (BOOL)startWriterWithVideoTransform:(CGAffineTransform *)transform error:(id *)error;
- (JFXVideoWriter)initWithFolderURL:(id)l videoOutputSettings:(id)settings audioOutputSettings:(id)outputSettings audioFormatHint:(opaqueCMFormatDescription *)hint;
- (JFXVideoWriterDelegate)delegate;
- (NSURL)metadataURL;
- (NSURL)videoURL;
- (__CVBuffer)JFX_copyDepthBufferAsBGRA:(__CVBuffer *)a;
- (id)JFX_fileLevelMetadata;
- (void)JFX_drainQueuedAudioBufferBeforeSessionStart_noLock;
- (void)JFX_queueAudioBufferBeforeSessionStart:(opaqueCMSampleBuffer *)start;
- (void)JFX_removeFileAtURL:(id)l;
- (void)JFX_startSessionAtSourceTime_noLock:(id *)lock;
- (void)JFX_writeAutoExposureMetadata:(opaqueCMSampleBuffer *)metadata;
- (void)JFX_writeBuffer:(opaqueCMSampleBuffer *)buffer sampleType:(int)type arMetadata:(id)metadata;
- (void)JFX_writeDepthBufferForAVDepthData:(id)data withTimingInfo:(id *)info;
- (void)JFX_writeDepthData:(id)data timingInfo:(id *)info;
- (void)JFX_writeFaceDetectMetadata:(id)metadata pts:(id *)pts;
- (void)JFX_writeFaceMetadata:(id)metadata withTimingInfo:(id *)info;
- (void)JFX_writeJFXARMetadata:(id)metadata time:(id *)time;
- (void)finishWritingWithCompletionHandler:(id)handler;
- (void)setStoreDepthDataAsVideoTrack:(BOOL)track;
- (void)startSessionAtSourceTime:(id *)time;
- (void)writeCameraFrameSet:(id)set;
@end

@implementation JFXVideoWriter

- (void)setStoreDepthDataAsVideoTrack:(BOOL)track
{
  v10[3] = *MEMORY[0x277D85DE8];
  if (track && [(JFXVideoWriter *)self depthDimensions])
  {
    if ([(JFXVideoWriter *)self depthDimensions]>> 32)
    {
      v4 = *MEMORY[0x277CC4E30];
      v10[0] = &unk_28556D3E0;
      v5 = *MEMORY[0x277CC4EC8];
      v9[0] = v4;
      v9[1] = v5;
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[JFXVideoWriter depthDimensions](self, "depthDimensions")}];
      v10[1] = v6;
      v9[2] = *MEMORY[0x277CC4DD8];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[JFXVideoWriter depthDimensions](self, "depthDimensions") >> 32}];
      v10[2] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
      [(JFXVideoWriter *)self setDepthBGRAPixelBufferAttributes:v8];

      BYTE1(self->_audioBufferQ) = 1;
    }
  }
}

- (NSURL)videoURL
{
  folderURL = [(JFXVideoWriter *)self folderURL];
  v3 = [folderURL URLByAppendingPathComponent:@"video.mov" isDirectory:0];

  return v3;
}

- (NSURL)metadataURL
{
  folderURL = [(JFXVideoWriter *)self folderURL];
  v3 = [folderURL URLByAppendingPathComponent:@"metadata.mov" isDirectory:0];

  return v3;
}

- (JFXVideoWriter)initWithFolderURL:(id)l videoOutputSettings:(id)settings audioOutputSettings:(id)outputSettings audioFormatHint:(opaqueCMFormatDescription *)hint
{
  lCopy = l;
  settingsCopy = settings;
  outputSettingsCopy = outputSettings;
  v49 = 0;
  v14 = objc_alloc_init(MEMORY[0x277CCAA00]);
  path = [lCopy path];
  [v14 fileExistsAtPath:path isDirectory:&v49];

  v48.receiver = self;
  v48.super_class = JFXVideoWriter;
  v16 = [(JFXVideoWriter *)&v48 init];
  if (v16)
  {
    if (initWithFolderURL_videoOutputSettings_audioOutputSettings_audioFormatHint__onceToken != -1)
    {
      [JFXVideoWriter initWithFolderURL:videoOutputSettings:audioOutputSettings:audioFormatHint:];
    }

    *(v16 + 37) = JFXSignpostIDFromObject(v16);
    v17 = settingsCopy;
    v18 = v17;
    if (v17)
    {
      hintCopy = hint;
      v19 = [v17 mutableCopy];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277CE62C8]];
      if ([v20 isEqual:*MEMORY[0x277CE6300]])
      {
        v45 = outputSettingsCopy;
        v46 = settingsCopy;
        v44 = *MEMORY[0x277CE6330];
        v21 = [v19 objectForKeyedSubscript:?];
        v22 = [v21 mutableCopy];

        [v22 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CE6298]];
        v23 = *MEMORY[0x277CE62B0];
        v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE62B0]];

        if (v24)
        {
          v25 = [v22 objectForKeyedSubscript:v23];
          [v25 doubleValue];
          v27 = v26;

          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27 * 1.2];
          [v22 setObject:v28 forKeyedSubscript:v23];
        }

        v29 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v22];
        [v19 setObject:v29 forKeyedSubscript:v44];

        v30 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v19];

        v18 = v30;
        outputSettingsCopy = v45;
        settingsCopy = v46;
      }

      hint = hintCopy;
    }

    objc_storeStrong(v16 + 32, l);
    v31 = [v18 copy];
    v32 = *(v16 + 33);
    *(v16 + 33) = v31;

    v33 = [outputSettingsCopy copy];
    v34 = *(v16 + 34);
    *(v16 + 34) = v33;

    *(v16 + 4) = hint;
    *(v16 + 29) = 0x16800000280;
    *(v16 + 112) = 0;
    v16[120] = 0;
    v35 = MEMORY[0x277CC08F0];
    v36 = *MEMORY[0x277CC08F0];
    *(v16 + 124) = *MEMORY[0x277CC08F0];
    v37 = *(v35 + 16);
    *(v16 + 140) = v37;
    *(v16 + 148) = v36;
    *(v16 + 164) = v37;
    *(v16 + 172) = v36;
    *(v16 + 188) = v37;
    atomic_store(0, v16 + 196);
    atomic_store(0, v16 + 197);
    v38 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v39 = *(v16 + 25);
    *(v16 + 25) = v38;

    v16[121] = 0;
    v16[226] = 0;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = *(v16 + 27);
    *(v16 + 27) = v40;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    s_enableAutoExposureFilter = [standardUserDefaults BOOLForKey:@"enableAutoExposureFilter"];

    *(v16 + 57) = 0;
  }

  return v16;
}

void __92__JFXVideoWriter_initWithFolderURL_videoOutputSettings_audioOutputSettings_audioFormatHint___block_invoke()
{
  v0 = s_streamNames;
  s_streamNames = &unk_28556D920;
}

- (BOOL)startWriterWithVideoTransform:(CGAffineTransform *)transform error:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  atomic_store(1u, &self->_sessionMetadataEndTime.epoch + 4);
  if ([(JFXVideoWriter *)self JFX_writerCanBegin:error])
  {
    v7 = *&transform->c;
    v18 = *&transform->a;
    v19 = v7;
    v20 = *&transform->tx;
    v8 = [(JFXVideoWriter *)self JFX_setupVideoWriterWithTransform:&v18 error:error];
    if (v8)
    {
      v9 = *&transform->c;
      v18 = *&transform->a;
      v19 = v9;
      v20 = *&transform->tx;
      v8 = [(JFXVideoWriter *)self JFX_setupMetadataWriterWithTransform:&v18 error:error];
      if (v8)
      {
        videoURL = [(JFXVideoWriter *)self videoURL];
        v21[0] = videoURL;
        metadataURL = [(JFXVideoWriter *)self metadataURL];
        v21[1] = metadataURL;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __54__JFXVideoWriter_startWriterWithVideoTransform_error___block_invoke;
        v17[3] = &unk_278D7BF98;
        v17[4] = self;
        [v12 enumerateObjectsUsingBlock:v17];

        self->_wroteSessionStartTime = 0;
        atomic_store(0, &self->_sessionMetadataEndTime.epoch + 5);
        if ([(AVAssetWriter *)self->_videoAssetWriter startWriting]&& [(AVAssetWriter *)self->_metadataAssetWriter startWriting])
        {
          finishingLock = self->_finishingLock;
          self->_finishingLock = 0;

          if ([(JFXVideoWriter *)self trackOutOfOrderVideoBuffers])
          {
            v14 = objc_alloc_init(WriterReorderQ);
            v15 = self->_finishingLock;
            self->_finishingLock = v14;
          }

          atomic_store(0, &self->_sessionMetadataEndTime.epoch + 4);
          kdebug_trace();
          LOBYTE(v8) = 1;
        }

        else
        {
          SetError(error, @"com.apple.Clips.JFXVideoWriter", 4, @"Could not start writing");
          LOBYTE(v8) = 0;
        }
      }
    }
  }

  else
  {
    kdebug_trace();
    LOBYTE(v8) = 0;
    atomic_store(0, &self->_sessionMetadataEndTime.epoch + 4);
  }

  return v8;
}

- (void)startSessionAtSourceTime:(id *)time
{
  [*&self->_preparingWriter lock];
  v5 = *time;
  [(JFXVideoWriter *)self JFX_startSessionAtSourceTime_noLock:&v5];
  [*&self->_preparingWriter unlock];
}

- (void)writeCameraFrameSet:(id)set
{
  setCopy = set;
  finishingLock = self->_finishingLock;
  v6 = setCopy;
  if (finishingLock)
  {
    v6 = [(NSLock *)finishingLock getReorderedFrameSet:setCopy];
  }

  if (v6)
  {
    colorSampleBuffer = [v6 colorSampleBuffer];
    sampleBufferRef = [colorSampleBuffer sampleBufferRef];

    v9 = [v6 metadataObjectForKey:@"PVFrameSetMetadataARMetadataKey"];
    [(JFXVideoWriter *)self JFX_writeBuffer:sampleBufferRef sampleType:0 arMetadata:v9];
    memset(&timingInfoOut, 0, sizeof(timingInfoOut));
    if (CMSampleBufferGetSampleTimingInfo(sampleBufferRef, 0, &timingInfoOut))
    {
      metadataDict = JFXLog_DebugWriter();
      if (os_log_type_enabled(metadataDict, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter writeCameraFrameSet:];
      }
    }

    else
    {
      if ([(JFXVideoWriter *)self storeDepthDataAsVideoTrack])
      {
        arFrame = [v9 arFrame];
        capturedDepthData = [arFrame capturedDepthData];
        v13 = timingInfoOut;
        [(JFXVideoWriter *)self JFX_writeDepthBufferForAVDepthData:capturedDepthData withTimingInfo:&v13];
      }

      if (![(JFXVideoWriter *)self storeFaceMetadata])
      {
        goto LABEL_12;
      }

      metadataDict = [v6 metadataDict];
      v13 = timingInfoOut;
      [(JFXVideoWriter *)self JFX_writeFaceMetadata:metadataDict withTimingInfo:&v13];
    }

LABEL_12:
  }
}

- (void)JFX_writeDepthData:(id)data timingInfo:(id *)info
{
  v4 = *&info->var2.var0;
  v6[2] = *&info->var1.var1;
  v6[3] = v4;
  var3 = info->var2.var3;
  v5 = *&info->var0.var3;
  v6[0] = *&info->var0.var0;
  v6[1] = v5;
  [(JFXVideoWriter *)self JFX_writeDepthBufferForAVDepthData:data withTimingInfo:v6];
}

- (void)finishWritingWithCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  finishingLock = self->_finishingLock;
  if (finishingLock)
  {
    clearQueuedFrameSet = [(NSLock *)finishingLock clearQueuedFrameSet];
    if (clearQueuedFrameSet)
    {
      [(JFXVideoWriter *)self writeCameraFrameSet:clearQueuedFrameSet];
    }
  }

  kdebug_trace();
  [*&self->_preparingWriter lock];
  atomic_store(1u, &self->_sessionMetadataEndTime.epoch + 5);
  wroteSessionStartTime = self->_wroteSessionStartTime;
  v8 = JFXLog_DebugWriter();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (wroteSessionStartTime)
  {
    if (v9)
    {
      v31 = *(&self->_wroteFirstAudioSample + 3);
      v18 = JFXNSStringForCMTime(&v31);
      v31 = *(&self->_sessionStartTime.epoch + 4);
      v19 = JFXNSStringForCMTime(&v31);
      lhs = *(&self->_sessionStartTime.epoch + 4);
      rhs = *(&self->_wroteFirstAudioSample + 3);
      CMTimeSubtract(&v31, &lhs, &rhs);
      v20 = JFXNSStringForCMTime(&v31);
      LODWORD(v31.value) = 138412802;
      *(&v31.value + 4) = v18;
      LOWORD(v31.flags) = 2112;
      *(&v31.flags + 2) = v19;
      HIWORD(v31.epoch) = 2112;
      v32 = v20;
      _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "Finishing writing with session start time: %@\t\tend time: %@\t duration: %@", &v31, 0x20u);
    }

    v10 = dispatch_group_create();
    metadataAssetWriter = self->_metadataAssetWriter;
    v30[0] = self->_videoAssetWriter;
    v30[1] = metadataAssetWriter;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke;
    v25[3] = &unk_278D7BFC0;
    v26 = v10;
    selfCopy = self;
    v13 = v10;
    [v12 enumerateObjectsUsingBlock:v25];

    v14 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke_3;
    block[3] = &unk_278D7A140;
    block[4] = self;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_group_notify(v13, v14, block);
  }

  else
  {
    if (v9)
    {
      [JFXVideoWriter finishWritingWithCompletionHandler:];
    }

    v16 = dispatch_get_global_queue(21, 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke_61;
    v21[3] = &unk_278D7A168;
    v22 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(v16, v21);

    v13 = v22;
  }

  [*&self->_preparingWriter unlock];
  kdebug_trace();
}

void __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = *(a1 + 40);
  v7 = 172;
  if (!a3)
  {
    v7 = 148;
  }

  v14 = *(v6 + v7);
  time1 = v14;
  time2 = *(v6 + 124);
  v8 = CMTimeCompare(&time1, &time2);
  time1 = v14;
  time2 = **&MEMORY[0x277CC08F0];
  v9 = CMTimeCompare(&time1, &time2);
  if (v8 >= 1)
  {
    time1 = v14;
    [v5 endSessionAtSourceTime:&time1];
  }

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_278D79D20;
    v11 = *(a1 + 32);
    [v5 finishWritingWithCompletionHandler:v10];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = JFXLog_DebugWriter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__JFXVideoWriter_finishWritingWithCompletionHandler___block_invoke_3_cold_1();
  }

  v3 = [*(*(a1 + 32) + 8) status];
  v4 = *(a1 + 32);
  v5 = [v4 videoURL];
  if (v3 != 2)
  {
    [v4 JFX_removeFileAtURL:v5];

    v5 = 0;
  }

  v6 = [*(*(a1 + 32) + 40) status];
  v7 = *(a1 + 32);
  v8 = [v7 metadataURL];
  if (v6 != 2)
  {
    [v7 JFX_removeFileAtURL:v8];

    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)JFX_setupVideoWriterWithTransform:(CGAffineTransform *)transform error:(id *)error
{
  v7 = objc_alloc(MEMORY[0x277CE6460]);
  videoURL = [(JFXVideoWriter *)self videoURL];
  v9 = *MEMORY[0x277CE5DA8];
  v22 = 0;
  v10 = [v7 initWithURL:videoURL fileType:v9 error:&v22];
  v11 = v22;
  videoAssetWriter = self->_videoAssetWriter;
  self->_videoAssetWriter = v10;

  if (!v11)
  {
    CMTimeMakeWithSeconds(&v21, 2.0, 600);
    v15 = self->_videoAssetWriter;
    v18 = *&v21.value;
    *&v19 = v21.epoch;
    [(AVAssetWriter *)v15 setMovieFragmentInterval:&v18];
    v16 = *&transform->c;
    v18 = *&transform->a;
    v19 = v16;
    v20 = *&transform->tx;
    if ([(JFXVideoWriter *)self JFX_setupVideoOutput:&v18 error:error])
    {
      v14 = [(JFXVideoWriter *)self JFX_setupAudioOutput:error];
      goto LABEL_7;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  if (!error)
  {
    goto LABEL_6;
  }

  v13 = v11;
  v14 = 0;
  *error = v11;
LABEL_7:

  return v14;
}

- (BOOL)JFX_setupMetadataWriterWithTransform:(CGAffineTransform *)transform error:(id *)error
{
  v7 = objc_alloc(MEMORY[0x277CE6460]);
  metadataURL = [(JFXVideoWriter *)self metadataURL];
  v9 = *MEMORY[0x277CE5DA8];
  v30 = 0;
  v10 = [v7 initWithURL:metadataURL fileType:v9 error:&v30];
  v11 = v30;
  metadataAssetWriter = self->_metadataAssetWriter;
  self->_metadataAssetWriter = v10;

  if (!v11)
  {
    CMTimeMakeWithSeconds(&v29, 2.0, 600);
    v15 = self->_metadataAssetWriter;
    v26 = *&v29.value;
    *&v27 = v29.epoch;
    [(AVAssetWriter *)v15 setMovieFragmentInterval:&v26];
    jFX_fileLevelMetadata = [(JFXVideoWriter *)self JFX_fileLevelMetadata];
    [(AVAssetWriter *)self->_metadataAssetWriter setMetadata:jFX_fileLevelMetadata];
    if ([(JFXVideoWriter *)self storeDepthDataAsVideoTrack])
    {
      if (![(JFXVideoWriter *)self depthCodecType])
      {
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v18 = [standardUserDefaults integerForKey:@"JFXDepthCodecType"];

        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1212493921;
        }

        [(JFXVideoWriter *)self setDepthCodecType:v19];
      }

      if ([(JFXVideoWriter *)self depthCodecType]== 1111970369)
      {
        v20 = *&transform->c;
        v26 = *&transform->a;
        v27 = v20;
        v28 = *&transform->tx;
        if (![(JFXVideoWriter *)self JFX_setupDepthOutputWithTransform:&v26 error:error])
        {
          v21 = JFXLog_DebugWriter();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoWriter JFX_setupMetadataWriterWithTransform:error:];
          }

          goto LABEL_25;
        }
      }

      else
      {
        v22 = *&transform->c;
        v26 = *&transform->a;
        v27 = v22;
        v28 = *&transform->tx;
        if (![(JFXVideoWriter *)self JFX_setupCompressedDepthOutputWithTransform:&v26 error:error])
        {
          v21 = JFXLog_DebugWriter();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoWriter JFX_setupMetadataWriterWithTransform:error:];
          }

          goto LABEL_25;
        }
      }
    }

    if (![(JFXVideoWriter *)self storeFaceMetadata]|| [(JFXVideoWriter *)self JFX_setupFaceMetadataOutput:error])
    {
      v23 = +[JFXVideoCameraController sharedInstance];
      cameraPosition = [v23 cameraPosition];

      if (cameraPosition != 2 || [(JFXVideoWriter *)self JFX_setupJFXARMetadataTrack:error])
      {
        v14 = [(JFXVideoWriter *)self JFX_setupAutoExposureMetadataOutput:error];
LABEL_27:

        goto LABEL_28;
      }

LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

    v21 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_setupMetadataWriterWithTransform:error:];
    }

LABEL_25:

    goto LABEL_26;
  }

  if (error)
  {
    v13 = v11;
    v14 = 0;
    *error = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (BOOL)JFX_setupCompressedDepthOutputWithTransform:(CGAffineTransform *)transform error:(id *)error
{
  v7 = [[JFXDepthCompressor alloc] initWithDepthCodecType:[(JFXVideoWriter *)self depthCodecType]];
  [(JFXVideoWriter *)self setDepthCompressor:v7];

  depthCompressor = [(JFXVideoWriter *)self depthCompressor];
  v9 = [depthCompressor depthOutputSettingsForDepthDimensions:{-[JFXVideoWriter depthDimensions](self, "depthDimensions")}];

  depthCompressor2 = [(JFXVideoWriter *)self depthCompressor];
  v11 = [depthCompressor2 depthFormatDescriptionForDepthDimensions:{-[JFXVideoWriter depthDimensions](self, "depthDimensions")}];

  v12 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v9 sourceFormatHint:v11];
  compressedDepthAssetWriterInput = self->_compressedDepthAssetWriterInput;
  self->_compressedDepthAssetWriterInput = v12;

  if (v11)
  {
    CFRelease(v11);
  }

  [(AVAssetWriterInput *)self->_compressedDepthAssetWriterInput setExpectsMediaDataInRealTime:1];
  v14 = *&transform->c;
  v19[0] = *&transform->a;
  v19[1] = v14;
  v19[2] = *&transform->tx;
  [(AVAssetWriterInput *)self->_compressedDepthAssetWriterInput setTransform:v19];
  [(AVAssetWriterInput *)self->_compressedDepthAssetWriterInput setMediaTimeScale:600];
  if ([(AVAssetWriter *)self->_metadataAssetWriter canAddInput:self->_compressedDepthAssetWriterInput])
  {
    [(AVAssetWriter *)self->_metadataAssetWriter addInput:self->_compressedDepthAssetWriterInput];
    depthCompressor3 = [(JFXVideoWriter *)self depthCompressor];
    v16 = depthCompressor3 != 0;
  }

  else
  {
    v17 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_setupCompressedDepthOutputWithTransform:error:];
    }

    SetError(error, @"com.apple.Clips.JFXVideoWriter", 4, @"Could not add compressed depth writerInput to the writer");
    v16 = 0;
  }

  return v16;
}

- (BOOL)JFX_setupDepthOutputWithTransform:(CGAffineTransform *)transform error:(id *)error
{
  v7 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:0];
  depthAssetWriterInput = self->_depthAssetWriterInput;
  self->_depthAssetWriterInput = v7;

  [(AVAssetWriterInput *)self->_depthAssetWriterInput setExpectsMediaDataInRealTime:1];
  v9 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v9;
  v17[2] = *&transform->tx;
  [(AVAssetWriterInput *)self->_depthAssetWriterInput setTransform:v17];
  [(AVAssetWriterInput *)self->_depthAssetWriterInput setMediaTimeScale:600];
  v10 = MEMORY[0x277CE6478];
  v11 = self->_depthAssetWriterInput;
  depthBGRAPixelBufferAttributes = [(JFXVideoWriter *)self depthBGRAPixelBufferAttributes];
  v13 = [v10 assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v11 sourcePixelBufferAttributes:depthBGRAPixelBufferAttributes];
  depthAdaptor = self->_depthAdaptor;
  self->_depthAdaptor = v13;

  if (self->_depthAdaptor)
  {
    if ([(AVAssetWriter *)self->_metadataAssetWriter canAddInput:self->_depthAssetWriterInput])
    {
      [(AVAssetWriter *)self->_metadataAssetWriter addInput:self->_depthAssetWriterInput];
      return 1;
    }

    v16 = @"Could not add depth writerInput to the writer";
  }

  else
  {
    v16 = @"Could not create depth adaptor";
  }

  SetError(error, @"com.apple.Clips.JFXVideoWriter", 5, v16);
  return 0;
}

- (BOOL)JFX_setupVideoOutput:(CGAffineTransform *)output error:(id *)error
{
  videoOutputSettings = [(JFXVideoWriter *)self videoOutputSettings];

  if (!videoOutputSettings)
  {
    return 1;
  }

  videoAssetWriter = self->_videoAssetWriter;
  videoOutputSettings2 = [(JFXVideoWriter *)self videoOutputSettings];
  v10 = *MEMORY[0x277CE5EA8];
  LOBYTE(videoAssetWriter) = [(AVAssetWriter *)videoAssetWriter canApplyOutputSettings:videoOutputSettings2 forMediaType:*MEMORY[0x277CE5EA8]];

  if (videoAssetWriter)
  {
    v11 = MEMORY[0x277CE6468];
    videoOutputSettings3 = [(JFXVideoWriter *)self videoOutputSettings];
    v13 = [v11 assetWriterInputWithMediaType:v10 outputSettings:videoOutputSettings3];
    videoAssetWriterInput = self->_videoAssetWriterInput;
    self->_videoAssetWriterInput = v13;

    [(AVAssetWriterInput *)self->_videoAssetWriterInput setExpectsMediaDataInRealTime:1];
    v15 = *&output->c;
    v18[0] = *&output->a;
    v18[1] = v15;
    v18[2] = *&output->tx;
    [(AVAssetWriterInput *)self->_videoAssetWriterInput setTransform:v18];
    if ([(AVAssetWriter *)self->_videoAssetWriter canAddInput:self->_videoAssetWriterInput])
    {
      [(AVAssetWriter *)self->_videoAssetWriter addInput:self->_videoAssetWriterInput];
      return 1;
    }

    v17 = @"Could not add video writerInput to the writer";
  }

  else
  {
    v17 = @"Cannot apply videoOutputSettings to writer";
  }

  SetError(error, @"com.apple.Clips.JFXVideoWriter", 5, v17);
  return 0;
}

- (BOOL)JFX_setupAutoExposureMetadataOutput:(id *)output
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (s_enableAutoExposureFilter == 1)
  {
    v28[0] = *MEMORY[0x277CC0618];
    v5 = BrightnessIdentifier();
    v28[1] = *MEMORY[0x277CC0608];
    v29[0] = v5;
    v29[1] = *MEMORY[0x277CC0588];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v30[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];

    formatDescriptionOut = 0;
    v8 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, v7, &formatDescriptionOut);
    if (v8 > -12711)
    {
      if (v8 == -12710)
      {
        v25 = 0;
        v9 = *MEMORY[0x277CE5DC0];
        v10 = @"AVF would return AVErrorClientProgrammingError = -11999 with exception dict, but this should never happen";
        v11 = &v25;
        v12 = &v25;
        goto LABEL_12;
      }

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8 == -12718)
      {
        v24 = 0;
        v9 = *MEMORY[0x277CE5DC0];
        v10 = @"AVF would return AVErrorClientProgrammingError = -11999 with exception dict, but this should never happen";
        v11 = &v24;
        v12 = &v24;
        goto LABEL_12;
      }

      if (v8 == -12711)
      {
        v26 = 0;
        v9 = *MEMORY[0x277CE5DC0];
        v10 = &stru_28553D028;
        v11 = &v26;
        v12 = &v26;
        v13 = -11801;
        goto LABEL_13;
      }
    }

    v23 = 0;
    v9 = *MEMORY[0x277CE5DC0];
    v10 = &stru_28553D028;
    v11 = &v23;
    v12 = &v23;
LABEL_12:
    v13 = -11800;
LABEL_13:
    SetError(v12, v9, v13, v10);
    v15 = *v11;
    if (v15)
    {
      v16 = v15;
      if (output)
      {
        v17 = v15;
        v14 = 0;
        *output = v16;
LABEL_20:

        return v14;
      }

      goto LABEL_19;
    }

LABEL_16:
    v18 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:formatDescriptionOut];
    exposureMetadataAssetWriterInput = self->_exposureMetadataAssetWriterInput;
    self->_exposureMetadataAssetWriterInput = v18;

    [(AVAssetWriterInput *)self->_exposureMetadataAssetWriterInput setMediaTimeScale:600];
    [(AVAssetWriterInput *)self->_exposureMetadataAssetWriterInput setExpectsMediaDataInRealTime:1];
    v20 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:self->_exposureMetadataAssetWriterInput];
    exposureMetadataAdaptor = self->_exposureMetadataAdaptor;
    self->_exposureMetadataAdaptor = v20;

    if ([(AVAssetWriter *)self->_metadataAssetWriter canAddInput:self->_exposureMetadataAssetWriterInput])
    {
      [(AVAssetWriter *)self->_metadataAssetWriter addInput:self->_exposureMetadataAssetWriterInput];
      v16 = 0;
      v14 = 1;
      goto LABEL_20;
    }

    SetError(output, @"com.apple.Clips.JFXVideoWriter", 5, @"Could not add exposure metadata input to writer");
    v16 = 0;
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  return 1;
}

- (BOOL)JFX_setupFaceMetadataOutput:(id *)output
{
  v20[1] = *MEMORY[0x277D85DE8];
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:*MEMORY[0x277CE5F68]];
  [metadataItem setDataType:@"com.apple.quicktime.detected-face"];
  v6 = objc_alloc(MEMORY[0x277CE5B88]);
  [metadataItem setValue:v6];

  v7 = objc_alloc(MEMORY[0x277CE6648]);
  v20[0] = metadataItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  CMTimeMake(&duration, 20, 600);
  v17 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v19, &v17, &duration);
  v9 = [v7 initWithItems:v8 timeRange:&v19];

  copyFormatDescription = [v9 copyFormatDescription];
  v11 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:copyFormatDescription];
  faceMetadataAssetWriterInput = self->_faceMetadataAssetWriterInput;
  self->_faceMetadataAssetWriterInput = v11;

  [(AVAssetWriterInput *)self->_faceMetadataAssetWriterInput setMediaTimeScale:600];
  [(AVAssetWriterInput *)self->_faceMetadataAssetWriterInput setExpectsMediaDataInRealTime:1];
  v13 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:self->_faceMetadataAssetWriterInput];
  faceMetadataAdaptor = self->_faceMetadataAdaptor;
  self->_faceMetadataAdaptor = v13;

  v15 = [(AVAssetWriter *)self->_metadataAssetWriter canAddInput:self->_faceMetadataAssetWriterInput];
  if (v15)
  {
    [(AVAssetWriter *)self->_metadataAssetWriter addInput:self->_faceMetadataAssetWriterInput];
    if (!copyFormatDescription)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  SetError(output, @"com.apple.Clips.JFXVideoWriter", 5, @"Could not add face metadata input to writer");
  if (copyFormatDescription)
  {
LABEL_5:
    CFRelease(copyFormatDescription);
  }

LABEL_6:

  return v15;
}

- (BOOL)JFX_setupAudioOutput:(id *)output
{
  audioOutputSettings = [(JFXVideoWriter *)self audioOutputSettings];

  if (!audioOutputSettings)
  {
    return 1;
  }

  videoAssetWriter = self->_videoAssetWriter;
  audioOutputSettings2 = [(JFXVideoWriter *)self audioOutputSettings];
  v8 = *MEMORY[0x277CE5E48];
  LOBYTE(videoAssetWriter) = [(AVAssetWriter *)videoAssetWriter canApplyOutputSettings:audioOutputSettings2 forMediaType:*MEMORY[0x277CE5E48]];

  if (videoAssetWriter)
  {
    audioFormatHint = self->_audioFormatHint;
    v10 = MEMORY[0x277CE6468];
    audioOutputSettings3 = [(JFXVideoWriter *)self audioOutputSettings];
    if (audioFormatHint)
    {
      [v10 assetWriterInputWithMediaType:v8 outputSettings:audioOutputSettings3 sourceFormatHint:self->_audioFormatHint];
    }

    else
    {
      [v10 assetWriterInputWithMediaType:v8 outputSettings:audioOutputSettings3];
    }
    v12 = ;
    audioAssetWriterInput = self->_audioAssetWriterInput;
    self->_audioAssetWriterInput = v12;

    [(AVAssetWriterInput *)self->_audioAssetWriterInput setExpectsMediaDataInRealTime:1];
    if ([(AVAssetWriter *)self->_videoAssetWriter canAddInput:self->_audioAssetWriterInput])
    {
      [(AVAssetWriter *)self->_videoAssetWriter addInput:self->_audioAssetWriterInput];
      return 1;
    }

    v13 = @"Count not add audio writer input to writer";
  }

  else
  {
    v13 = @"Cannot apply audioOutputSettings to writer";
  }

  SetError(output, @"com.apple.Clips.JFXVideoWriter", 5, v13);
  return 0;
}

- (BOOL)JFX_setupJFXARMetadataTrack:(id *)track
{
  v22[1] = *MEMORY[0x277D85DE8];
  mETA_JFXARMetadataIdentifier = [objc_opt_class() META_JFXARMetadataIdentifier];
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:mETA_JFXARMetadataIdentifier];
  [metadataItem setDataType:*MEMORY[0x277CC05B0]];
  data = [MEMORY[0x277CBEA90] data];
  [metadataItem setValue:data];

  memset(&v21, 0, sizeof(v21));
  *&v19.start.value = *MEMORY[0x277CC08F0];
  v19.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  duration = **&MEMORY[0x277CC0898];
  CMTimeRangeMake(&v21, &v19.start, &duration);
  v8 = objc_alloc(MEMORY[0x277CE6648]);
  v22[0] = metadataItem;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = v21;
  v10 = [v8 initWithItems:v9 timeRange:&v19];

  copyFormatDescription = [v10 copyFormatDescription];
  if (copyFormatDescription)
  {
    v12 = copyFormatDescription;
    v13 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E70] outputSettings:0 sourceFormatHint:copyFormatDescription];
    JFXARMetadataAssetWriterInput = self->_JFXARMetadataAssetWriterInput;
    self->_JFXARMetadataAssetWriterInput = v13;

    [(AVAssetWriterInput *)self->_JFXARMetadataAssetWriterInput setExpectsMediaDataInRealTime:1];
    v15 = [MEMORY[0x277CE6470] assetWriterInputMetadataAdaptorWithAssetWriterInput:self->_JFXARMetadataAssetWriterInput];
    JFXARMetadataMetadataAdaptor = self->_JFXARMetadataMetadataAdaptor;
    self->_JFXARMetadataMetadataAdaptor = v15;

    v17 = [(AVAssetWriter *)self->_metadataAssetWriter canAddInput:self->_JFXARMetadataAssetWriterInput];
    if (v17)
    {
      [(AVAssetWriter *)self->_metadataAssetWriter addInput:self->_JFXARMetadataAssetWriterInput];
    }

    else
    {
      SetError(track, @"com.apple.Clips.JFXVideoWriter", 5, @"Could not add face metadata input to writer");
    }

    CFRelease(v12);
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)JFX_startSessionAtSourceTime_noLock:(id *)lock
{
  if (!self->_wroteSessionStartTime)
  {
    audioOutputSettings = [(JFXVideoWriter *)self audioOutputSettings];
    if (audioOutputSettings && (v6 = audioOutputSettings, v7 = [(WriterReorderQ *)self->_reorderQ count], v6, !v7))
    {
      v12 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_startSessionAtSourceTime_noLock:];
      }
    }

    else
    {
      videoAssetWriter = self->_videoAssetWriter;
      v13 = *&lock->var0;
      var3 = lock->var3;
      [(AVAssetWriter *)videoAssetWriter startSessionAtSourceTime:&v13];
      metadataAssetWriter = self->_metadataAssetWriter;
      v13 = *&lock->var0;
      var3 = lock->var3;
      [(AVAssetWriter *)metadataAssetWriter startSessionAtSourceTime:&v13];
      self->_wroteSessionStartTime = 1;
      v10 = *&lock->var0;
      *&self->_sessionStartTime.flags = lock->var3;
      *(&self->_wroteFirstAudioSample + 3) = v10;
      v11 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_startSessionAtSourceTime_noLock:lock];
      }

      [(JFXVideoWriter *)self JFX_drainQueuedAudioBufferBeforeSessionStart_noLock];
    }
  }
}

- (void)JFX_writeBuffer:(opaqueCMSampleBuffer *)buffer sampleType:(int)type arMetadata:(id)metadata
{
  v5 = *&type;
  v48 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v9 = atomic_load(&self->_sessionMetadataEndTime.epoch + 4);
  if ((v9 & 1) == 0)
  {
    memset(&v44, 0, sizeof(v44));
    CMSampleBufferGetPresentationTimeStamp(&v44, buffer);
    if ((v44.flags & 1) == 0)
    {
      v11 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [WriterReorderQ getReorderedFrameSet:];
      }

      goto LABEL_9;
    }

    kdebug_trace();
    [*&self->_preparingWriter lock];
    v12 = atomic_load(&self->_sessionMetadataEndTime.epoch + 5);
    if ((v12 & 1) != 0 || [(AVAssetWriter *)self->_videoAssetWriter status]!= AVAssetWriterStatusWriting || [(AVAssetWriter *)self->_metadataAssetWriter status]!= AVAssetWriterStatusWriting)
    {
      v16 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v25 = [s_streamNames objectAtIndexedSubscript:v5];
        v26 = v12 & 1;
        v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AVAssetWriter status](self->_videoAssetWriter, "status")}];
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AVAssetWriter status](self->_metadataAssetWriter, "status")}];
        *time1 = v44;
        v29 = JFXNSStringForCMTime(time1);
        *time1 = 138413314;
        *&time1[4] = v25;
        *&time1[12] = 1024;
        *&time1[14] = v26;
        *&time1[18] = 2112;
        *&time1[20] = v27;
        *&time1[28] = 2112;
        *&time1[30] = v28;
        v46 = 2112;
        v47 = v29;
        _os_log_debug_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEBUG, "No Write %@. finishing (%d), video status: %@, metadata status: %@ (%@)", time1, 0x30u);
      }

      error = [(AVAssetWriter *)self->_videoAssetWriter error];

      if (error)
      {
        v18 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeBuffer:? sampleType:? arMetadata:?];
        }
      }

      error2 = [(AVAssetWriter *)self->_metadataAssetWriter error];

      if (error2)
      {
        v20 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeBuffer:? sampleType:? arMetadata:?];
        }
      }

      goto LABEL_33;
    }

    v13 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v35 = [s_streamNames objectAtIndexedSubscript:v5];
      *time1 = v44;
      v36 = JFXNSStringForCMTime(time1);
      *time1 = 138412546;
      *&time1[4] = v35;
      *&time1[12] = 2112;
      *&time1[14] = v36;
      _os_log_debug_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEBUG, "Write %@ %@", time1, 0x16u);
    }

    if (self->_wroteSessionStartTime || v5 > 3 || v5 == 1)
    {
      v14 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v37 = [s_streamNames objectAtIndexedSubscript:v5];
        *time1 = v44;
        v42 = JFXNSStringForCMTime(time1);
        *time1 = *(&self->_wroteFirstAudioSample + 3);
        *&time1[16] = *&self->_sessionStartTime.flags;
        v38 = JFXNSStringForCMTime(time1);
        *time1 = 138412802;
        *&time1[4] = v37;
        *&time1[12] = 2112;
        *&time1[14] = v42;
        *&time1[22] = 2112;
        *&time1[24] = v38;
        v39 = v38;
        _os_log_debug_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEBUG, "Skipped write for %@ at time (%@) startTime (%@)", time1, 0x20u);
      }

      if (v5 == 1)
      {
        *time1 = *MEMORY[0x277CC08F0];
        *&time1[16] = *(MEMORY[0x277CC08F0] + 16);
        time2 = *(&self->_wroteFirstAudioSample + 3);
        if (!CMTimeCompare(time1, &time2))
        {
          v15 = JFXLog_DebugWriter();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoWriter JFX_writeBuffer:sampleType:arMetadata:];
          }

          [(JFXVideoWriter *)self JFX_queueAudioBufferBeforeSessionStart:buffer];
        }
      }
    }

    else
    {
      v21 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeBuffer:? sampleType:? arMetadata:?];
      }

      *time1 = v44;
      [(JFXVideoWriter *)self JFX_startSessionAtSourceTime_noLock:time1];
      if (self->_wroteSessionStartTime)
      {
        delegate = [(JFXVideoWriter *)self delegate];

        if (delegate)
        {
          delegate2 = [(JFXVideoWriter *)self delegate];
          [delegate2 videoWriterWroteFirstFrame:self];
        }
      }
    }

    if (!self->_wroteSessionStartTime || (*time1 = v44, time2 = *(&self->_wroteFirstAudioSample + 3), CMTimeCompare(time1, &time2) < 0))
    {
LABEL_33:
      [*&self->_preparingWriter unlock];
      kdebug_trace();
      goto LABEL_34;
    }

    if (v5)
    {
      if (v5 == 2)
      {
        v30 = self->_depthAssetWriterInput;
        if (![(JFXVideoWriter *)self JFX_writeSampleBuffer:buffer assetWriterInput:v30 sampleType:2 depthAdaptor:self->_depthAdaptor])
        {
LABEL_65:

          goto LABEL_33;
        }

LABEL_64:
        *(&self->_sessionVideoEndTime.epoch + 4) = v44;
        goto LABEL_65;
      }

      v24 = 56;
      if (v5 != 3)
      {
        v24 = 24;
      }
    }

    else
    {
      v24 = 16;
    }

    v30 = *(&self->super.isa + v24);
    v31 = [(JFXVideoWriter *)self JFX_writeSampleBuffer:buffer assetWriterInput:v30 sampleType:v5 depthAdaptor:0];
    v32 = v31;
    if (!v5)
    {
      [(JFXVideoWriter *)self JFX_writeAutoExposureMetadata:buffer];
      if (v32)
      {
        v34 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *time1 = v44;
          Seconds = CMTimeGetSeconds(time1);
          *time1 = *(&self->_sessionStartTime.epoch + 4);
          *&time1[16] = *&self->_sessionVideoEndTime.flags;
          v41 = CMTimeGetSeconds(time1);
          *time1 = 134217984;
          *&time1[4] = Seconds - v41;
          _os_log_debug_impl(&dword_242A3B000, v34, OS_LOG_TYPE_DEBUG, "Video time difference: %f", time1, 0xCu);
        }

        *(&self->_sessionStartTime.epoch + 4) = v44;
      }

      if (metadataCopy)
      {
        *time1 = v44;
        [(JFXVideoWriter *)self JFX_writeJFXARMetadata:metadataCopy time:time1];
      }

      goto LABEL_65;
    }

    if ((v5 & 0xFFFFFFFE) != 2 || !v31)
    {
      if (v5 == 1 && !self->_wroteFirstAudioSample)
      {
        self->_wroteFirstAudioSample = 1;
        v33 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeBuffer:? sampleType:? arMetadata:?];
        }
      }

      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v10 = JFXLog_DebugWriter();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoWriter JFX_writeBuffer:sampleType:arMetadata:];
  }

  v11 = JFXLog_DebugWriter();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoWriter JFX_writeBuffer:sampleType:arMetadata:];
  }

LABEL_9:

LABEL_34:
}

- (void)JFX_writeDepthBufferForAVDepthData:(id)data withTimingInfo:(id *)info
{
  dataCopy = data;
  v7 = dataCopy;
  if ((info->var1.var2 & 1) == 0)
  {
    v8 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_writeDepthBufferForAVDepthData:withTimingInfo:];
    }

    goto LABEL_52;
  }

  if (dataCopy)
  {
    depthCodecType = [(JFXVideoWriter *)self depthCodecType];
    v10 = JFXVideoWriterIntervalSignpostCategory();
    signPostID = [(JFXVideoWriter *)self signPostID];
    v12 = signPostID - 1;
    if (depthCodecType == 1111970369)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(formatDescription[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signPostID, "encode_uncompressed_depth", &unk_242B66C87, formatDescription, 2u);
      }

      v8 = v7;
      if ([v8 depthDataType]!= 1717855600)
      {
        v13 = [v8 depthDataByConvertingToDepthDataType:1717855600];

        v8 = v13;
      }

      depthDataMap = [v8 depthDataMap];
      if (depthDataMap)
      {
        v15 = [(JFXVideoWriter *)self JFX_copyDepthBufferAsBGRA:depthDataMap];
        if (v15)
        {
          v16 = v15;
          formatDescription[0] = 0;
          v17 = *MEMORY[0x277CBECE8];
          CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v15, formatDescription);
          if (formatDescription[0])
          {
            sampleBufferOut = 0;
            CMSampleBufferCreateReadyWithImageBuffer(v17, v16, formatDescription[0], info, &sampleBufferOut);
            if (sampleBufferOut)
            {
              v18 = JFXVideoWriterIntervalSignpostCategory();
              signPostID2 = [(JFXVideoWriter *)self signPostID];
              if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v20 = signPostID2;
                if (os_signpost_enabled(v18))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_242A3B000, v18, OS_SIGNPOST_INTERVAL_END, v20, "encode_uncompressed_depth", &unk_242B66C87, buf, 2u);
                }
              }

              v21 = JFXVideoWriterIntervalSignpostCategory();
              signPostID3 = [(JFXVideoWriter *)self signPostID];
              if (signPostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v23 = signPostID3;
                if (os_signpost_enabled(v21))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_242A3B000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "write_uncompressed_depth", &unk_242B66C87, buf, 2u);
                }
              }

              [(JFXVideoWriter *)self JFX_writeBuffer:sampleBufferOut sampleType:2];
              v24 = JFXVideoWriterIntervalSignpostCategory();
              signPostID4 = [(JFXVideoWriter *)self signPostID];
              if (signPostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v26 = signPostID4;
                if (os_signpost_enabled(v24))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_242A3B000, v24, OS_SIGNPOST_INTERVAL_END, v26, "write_uncompressed_depth", &unk_242B66C87, buf, 2u);
                }
              }

              CFRelease(sampleBufferOut);
              CVPixelBufferRelease(v16);
              CFRelease(formatDescription[0]);
              goto LABEL_52;
            }

            CVPixelBufferRelease(v16);
            CFRelease(formatDescription[0]);
          }
        }
      }

      v38 = JFXVideoWriterIntervalSignpostCategory();
      signPostID5 = [(JFXVideoWriter *)self signPostID];
      if (signPostID5 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v40 = signPostID5, !os_signpost_enabled(v38)))
      {
LABEL_51:

        goto LABEL_52;
      }

      LOWORD(formatDescription[0]) = 0;
      v41 = "encode_uncompressed_depth";
    }

    else
    {
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(formatDescription[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, signPostID, "encode_compressed_depth", &unk_242B66C87, formatDescription, 2u);
      }

      depthCompressor = [(JFXVideoWriter *)self depthCompressor];
      v28 = *&info->var2.var0;
      v47 = *&info->var1.var1;
      v48 = v28;
      var3 = info->var2.var3;
      v50 = 0;
      v29 = *&info->var0.var3;
      *formatDescription = *&info->var0.var0;
      v46 = v29;
      v8 = [depthCompressor compressAVDepthData:v7 timingInfo:formatDescription error:&v50];
      v30 = v50;

      if (v30 || !v8)
      {
        v42 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeDepthBufferForAVDepthData:withTimingInfo:];
        }

        v38 = JFXVideoWriterIntervalSignpostCategory();
        signPostID6 = [(JFXVideoWriter *)self signPostID];
        if (signPostID6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_51;
        }

        v40 = signPostID6;
        if (!os_signpost_enabled(v38))
        {
          goto LABEL_51;
        }

        LOWORD(formatDescription[0]) = 0;
        v41 = "encode_compressed_depth";
      }

      else
      {
        sampleBufferRef = [v8 sampleBufferRef];
        v32 = JFXVideoWriterIntervalSignpostCategory();
        signPostID7 = [(JFXVideoWriter *)self signPostID];
        if (signPostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = signPostID7;
          if (os_signpost_enabled(v32))
          {
            LOWORD(formatDescription[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_242A3B000, v32, OS_SIGNPOST_INTERVAL_END, v34, "encode_compressed_depth", &unk_242B66C87, formatDescription, 2u);
          }
        }

        v35 = JFXVideoWriterIntervalSignpostCategory();
        signPostID8 = [(JFXVideoWriter *)self signPostID];
        if (signPostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v37 = signPostID8;
          if (os_signpost_enabled(v35))
          {
            LOWORD(formatDescription[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_242A3B000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v37, "write_compressed_depth", &unk_242B66C87, formatDescription, 2u);
          }
        }

        [(JFXVideoWriter *)self JFX_writeBuffer:sampleBufferRef sampleType:3];
        v38 = JFXVideoWriterIntervalSignpostCategory();
        signPostID9 = [(JFXVideoWriter *)self signPostID];
        if (signPostID9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_51;
        }

        v40 = signPostID9;
        if (!os_signpost_enabled(v38))
        {
          goto LABEL_51;
        }

        LOWORD(formatDescription[0]) = 0;
        v41 = "write_compressed_depth";
      }
    }

    _os_signpost_emit_with_name_impl(&dword_242A3B000, v38, OS_SIGNPOST_INTERVAL_END, v40, v41, &unk_242B66C87, formatDescription, 2u);
    goto LABEL_51;
  }

  v8 = JFXLog_DebugWriter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [JFXVideoWriter JFX_writeDepthBufferForAVDepthData:withTimingInfo:];
  }

LABEL_52:
}

- (BOOL)JFX_writeSampleBuffer:(opaqueCMSampleBuffer *)buffer assetWriterInput:(id)input sampleType:(int)type depthAdaptor:(id)adaptor
{
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  adaptorCopy = adaptor;
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, buffer);
  if (![inputCopy isReadyForMoreMediaData])
  {
    v13 = JFXLog_DebugWriter();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    v14 = [s_streamNames objectAtIndexedSubscript:type];
    buf = v18;
    v15 = JFXNSStringForCMTime(&buf);
    LODWORD(buf.value) = 138412546;
    *(&buf.value + 4) = v14;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v15;
    v16 = "%@ input not ready %@";
LABEL_12:
    _os_log_debug_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEBUG, v16, &buf, 0x16u);

    goto LABEL_9;
  }

  if (type != 2)
  {
    if ([inputCopy appendSampleBuffer:buffer])
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  buf = v18;
  if (([adaptorCopy appendPixelBuffer:ImageBuffer withPresentationTime:&buf] & 1) == 0)
  {
LABEL_8:
    v13 = JFXLog_DebugWriter();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v14 = [s_streamNames objectAtIndexedSubscript:type];
    buf = v18;
    v15 = JFXNSStringForCMTime(&buf);
    LODWORD(buf.value) = 138412546;
    *(&buf.value + 4) = v14;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v15;
    v16 = "%@ append failed %@";
    goto LABEL_12;
  }

LABEL_4:
  v12 = 1;
LABEL_10:

  return v12;
}

- (void)JFX_queueAudioBufferBeforeSessionStart:(opaqueCMSampleBuffer *)start
{
  v4 = [objc_alloc(MEMORY[0x277D415D8]) initWithSampleBuffer:start];
  if ([(WriterReorderQ *)self->_reorderQ count]>= 6)
  {
    v5 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_queueAudioBufferBeforeSessionStart:v5];
    }

    [(WriterReorderQ *)self->_reorderQ removeObjectAtIndex:0];
  }

  [(WriterReorderQ *)self->_reorderQ addObject:v4];
}

- (void)JFX_drainQueuedAudioBufferBeforeSessionStart_noLock
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_reorderQ;
  v4 = [(WriterReorderQ *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        memset(&v15, 0, sizeof(v15));
        if (v8)
        {
          [v8 presentationTimeStamp];
        }

        time1 = v15;
        time2 = *(&self->_wroteFirstAudioSample + 3);
        v9 = CMTimeCompare(&time1, &time2);
        v10 = JFXLog_DebugWriter();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
        if (v9 < 0)
        {
          if (v11)
          {
            time1 = v15;
            v13 = JFXNSStringForCMTime(&time1);
            LODWORD(time1.value) = 138412290;
            *(&time1.value + 4) = v13;
            _os_log_debug_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEBUG, "skipping queued audio sample before session start time: %@", &time1, 0xCu);
          }
        }

        else
        {
          if (v11)
          {
            time1 = v15;
            v12 = JFXNSStringForCMTime(&time1);
            LODWORD(time1.value) = 138412290;
            *(&time1.value + 4) = v12;
            _os_log_debug_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEBUG, "Draining queued audio buffer: %@", &time1, 0xCu);
          }

          -[JFXVideoWriter JFX_writeSampleBuffer:assetWriterInput:sampleType:depthAdaptor:](self, "JFX_writeSampleBuffer:assetWriterInput:sampleType:depthAdaptor:", [v8 sampleBufferRef], self->_audioAssetWriterInput, 1, 0);
        }
      }

      v5 = [(WriterReorderQ *)v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }
}

- (id)JFX_fileLevelMetadata
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = +[JFXVideoCameraController sharedInstance];
  cameraPosition = [v3 cameraPosition];

  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  jFX_funcamCameraPositionMetadataIdentifier = [objc_opt_class() JFX_funcamCameraPositionMetadataIdentifier];
  [metadataItem setIdentifier:jFX_funcamCameraPositionMetadataIdentifier];

  v7 = *MEMORY[0x277CC05E0];
  [metadataItem setDataType:*MEMORY[0x277CC05E0]];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(cameraPosition)];
  [metadataItem setValue:v8];

  v9 = bswap64(+[JFXOrientationMonitor deviceInterfaceOrientation]);
  metadataItem2 = [MEMORY[0x277CE6558] metadataItem];
  jFX_funcamCaptureInterfaceOrientationMetadataIdentifier = [objc_opt_class() JFX_funcamCaptureInterfaceOrientationMetadataIdentifier];
  [metadataItem2 setIdentifier:jFX_funcamCaptureInterfaceOrientationMetadataIdentifier];

  [metadataItem2 setDataType:v7];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [metadataItem2 setValue:v12];

  v23[0] = metadataItem;
  v23[1] = metadataItem2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v14 = [v13 mutableCopy];

  animojiMetadata = [(JFXVideoWriter *)self animojiMetadata];
  v16 = [animojiMetadata length];

  if (v16)
  {
    metadataItem3 = [MEMORY[0x277CE6558] metadataItem];
    jFX_animojiMetadataIdentifier = [objc_opt_class() JFX_animojiMetadataIdentifier];
    [metadataItem3 setIdentifier:jFX_animojiMetadataIdentifier];

    [metadataItem3 setDataType:*MEMORY[0x277CC05B0]];
    animojiMetadata2 = [(JFXVideoWriter *)self animojiMetadata];
    [metadataItem3 setValue:animojiMetadata2];

    [v14 addObject:metadataItem3];
  }

  if ([(JFXVideoWriter *)self storeDepthDataAsVideoTrack])
  {
    v20 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v20 setKeySpace:*MEMORY[0x277CE5F98]];
    [v20 setKey:*MEMORY[0x277CE5F20]];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"RGBDV%04d", 114];
    [v20 setValue:v21];

    [v14 addObject:v20];
  }

  return v14;
}

- (void)JFX_writeAutoExposureMetadata:(opaqueCMSampleBuffer *)metadata
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (s_enableAutoExposureFilter == 1)
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, metadata);
    if (![(AVAssetWriterInput *)self->_exposureMetadataAssetWriterInput isReadyForMoreMediaData])
    {
      v6 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeAutoExposureMetadata:?];
      }

      goto LABEL_17;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(metadata);
    v6 = exifMetadataForCVPixelBuffer(ImageBuffer);
    v7 = exifBrightnessFromEXIFMetadata(v6);
    if ((LODWORD(v7) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      metadataItem = [MEMORY[0x277CE6558] metadataItem];
      v12 = BrightnessIdentifier();
      [metadataItem setIdentifier:v12];

      [metadataItem setDataType:*MEMORY[0x277CC0588]];
      *&v13 = v7;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [metadataItem setValue:v14];

      v15 = objc_alloc(MEMORY[0x277CE6648]);
      v22[0] = metadataItem;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      start = v21;
      v18 = **&MEMORY[0x277CC0898];
      CMTimeRangeMake(&v20, &start, &v18);
      v11 = [v15 initWithItems:v16 timeRange:&v20];

      if (![(AVAssetWriterInputMetadataAdaptor *)self->_exposureMetadataAdaptor appendTimedMetadataGroup:v11])
      {
        v17 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeAutoExposureMetadata:];
        }
      }
    }

    else
    {
      v8 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeAutoExposureMetadata:];
      }

      v9 = objc_alloc(MEMORY[0x277CE6648]);
      start = v21;
      v18 = **&MEMORY[0x277CC0898];
      CMTimeRangeMake(&v20, &start, &v18);
      metadataItem = [v9 initWithItems:MEMORY[0x277CBEBF8] timeRange:&v20];
      if ([(AVAssetWriterInputMetadataAdaptor *)self->_exposureMetadataAdaptor appendTimedMetadataGroup:metadataItem])
      {
        goto LABEL_16;
      }

      v11 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeAutoExposureMetadata:];
      }
    }

LABEL_16:
LABEL_17:
  }
}

- (void)JFX_writeJFXARMetadata:(id)metadata time:(id *)time
{
  v19[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (metadataCopy && [(AVAssetWriterInput *)self->_JFXARMetadataAssetWriterInput isReadyForMoreMediaData])
  {
    mETA_JFXARMetadataIdentifier = [objc_opt_class() META_JFXARMetadataIdentifier];
    v18 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:metadataCopy requiringSecureCoding:1 error:&v18];
    v9 = v18;
    if (!v9)
    {
      metadataItem = [MEMORY[0x277CE6558] metadataItem];
      [metadataItem setIdentifier:mETA_JFXARMetadataIdentifier];
      [metadataItem setDataType:*MEMORY[0x277CC05B0]];
      [metadataItem setValue:v8];
      memset(&v17, 0, sizeof(v17));
      *&v15.start.value = *&time->var0;
      v15.start.epoch = time->var3;
      duration = **&MEMORY[0x277CC0898];
      CMTimeRangeMake(&v17, &v15.start, &duration);
      v11 = objc_alloc(MEMORY[0x277CE6648]);
      v19[0] = metadataItem;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v15 = v17;
      v13 = [v11 initWithItems:v12 timeRange:&v15];

      if ([(AVAssetWriterInputMetadataAdaptor *)self->_JFXARMetadataMetadataAdaptor appendTimedMetadataGroup:v13])
      {
        v14 = *&time->var0;
        *&self->_sessionMetadataEndTime.flags = time->var3;
        *(&self->_sessionVideoEndTime.epoch + 4) = v14;
      }
    }
  }
}

- (void)JFX_writeFaceMetadata:(id)metadata withTimingInfo:(id *)info
{
  v25 = *MEMORY[0x277D85DE8];
  if (metadata)
  {
    v6 = [metadata objectForKeyedSubscript:*MEMORY[0x277D41A60]];
    if (v6)
    {
      array = [MEMORY[0x277CBEB18] array];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = v6;
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            faceObject = [v12 faceObject];

            if (faceObject)
            {
              faceObject2 = [v12 faceObject];
              [array addObject:faceObject2];
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      v18 = *&info->var1.var0;
      var3 = info->var1.var3;
      v15 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeFaceMetadata:withTimingInfo:];
      }

      v16 = v18;
      v17 = var3;
      [(JFXVideoWriter *)self JFX_writeFaceDetectMetadata:array pts:&v16];
    }
  }

  else
  {
    v6 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_writeFaceMetadata:withTimingInfo:];
    }
  }
}

- (void)JFX_writeFaceDetectMetadata:(id)metadata pts:(id *)pts
{
  v34 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (!self->_wroteSessionStartTime || (*&time1.start.value = *&pts->var0, time1.start.epoch = pts->var3, time2 = *(&self->_wroteFirstAudioSample + 3), CMTimeCompare(&time1.start, &time2) < 0))
  {
    v20 = JFXLog_DebugWriter();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoWriter JFX_writeFaceDetectMetadata:pts pts:?];
    }
  }

  else
  {
    time2 = *pts;
    if ([(AVAssetWriterInput *)self->_faceMetadataAssetWriterInput isReadyForMoreMediaData])
    {
      if (metadataCopy && [metadataCopy count])
      {
        selfCopy = self;
        v7 = objc_opt_new();
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = metadataCopy;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          v12 = *MEMORY[0x277CE5F68];
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = MEMORY[0x277CE6558];
              v15 = *(*(&v28 + 1) + 8 * i);
              metadataItem = [v14 metadataItem];
              [metadataItem setIdentifier:v12];
              [metadataItem setDataType:@"com.apple.quicktime.detected-face"];
              [metadataItem setValue:v15];

              [v7 addObject:metadataItem];
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v10);
        }

        v17 = objc_alloc(MEMORY[0x277CE6648]);
        start = time2;
        duration = **&MEMORY[0x277CC0898];
        CMTimeRangeMake(&time1, &start, &duration);
        v18 = [v17 initWithItems:v7 timeRange:&time1];
        if (![(AVAssetWriterInputMetadataAdaptor *)selfCopy->_faceMetadataAdaptor appendTimedMetadataGroup:v18])
        {
          v19 = JFXLog_DebugWriter();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoWriter JFX_writeFaceDetectMetadata:pts:];
          }
        }
      }

      else
      {
        v21 = JFXLog_DebugWriter();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [JFXVideoWriter JFX_writeFaceDetectMetadata:pts:];
        }

        v22 = objc_alloc(MEMORY[0x277CE6648]);
        start = time2;
        duration = **&MEMORY[0x277CC0898];
        CMTimeRangeMake(&time1, &start, &duration);
        v7 = [v22 initWithItems:MEMORY[0x277CBEBF8] timeRange:&time1];
        if (![(AVAssetWriterInputMetadataAdaptor *)self->_faceMetadataAdaptor appendTimedMetadataGroup:v7])
        {
          v23 = JFXLog_DebugWriter();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [JFXVideoWriter JFX_writeFaceDetectMetadata:pts:];
          }
        }
      }
    }

    else
    {
      v7 = JFXLog_DebugWriter();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoWriter JFX_writeFaceDetectMetadata:? pts:?];
      }
    }
  }
}

+ (void)META_metadataForVideo:(id)video completion:(id)completion
{
  v49[2] = *MEMORY[0x277D85DE8];
  videoCopy = video;
  completionCopy = completion;
  v28 = videoCopy;
  v8 = [MEMORY[0x277CE63D8] assetWithURL:videoCopy];
  metadata = [v8 metadata];
  if (v8 && [metadata count])
  {
    v9 = dispatch_group_create();
    jFX_funcamCameraPositionMetadataIdentifier = [self JFX_funcamCameraPositionMetadataIdentifier];
    jFX_funcamCaptureInterfaceOrientationMetadataIdentifier = [self JFX_funcamCaptureInterfaceOrientationMetadataIdentifier];
    v48[0] = jFX_funcamCameraPositionMetadataIdentifier;
    v48[1] = jFX_funcamCaptureInterfaceOrientationMetadataIdentifier;
    v49[0] = &unk_28556D3F8;
    v49[1] = &unk_28556D3F8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v13 = [v12 mutableCopy];

    allKeys = [v13 allKeys];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_119;
    v42[3] = &unk_278D7C010;
    v15 = metadata;
    v43 = v15;
    v16 = v9;
    v44 = v16;
    v17 = v13;
    v45 = v17;
    [allKeys enumerateObjectsUsingBlock:v42];

    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__18;
    v40[4] = __Block_byref_object_dispose__18;
    v41 = 0;
    jFX_animojiMetadataIdentifier = [self JFX_animojiMetadataIdentifier];
    v19 = [MEMORY[0x277CE6520] metadataItemsFromArray:v15 filteredByIdentifier:jFX_animojiMetadataIdentifier];
    if ([v19 count])
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      dispatch_group_enter(v16);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_131;
      v36[3] = &unk_278D7A230;
      v39 = v40;
      v21 = v20;
      v37 = v21;
      v38 = v16;
      [v21 loadValuesAsynchronouslyForKeys:&unk_28556D950 completionHandler:v36];
    }

    v22 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_2_132;
    block[3] = &unk_278D7C038;
    v31 = v17;
    v32 = jFX_funcamCameraPositionMetadataIdentifier;
    v33 = jFX_funcamCaptureInterfaceOrientationMetadataIdentifier;
    v34 = completionCopy;
    v35 = v40;
    v27 = completionCopy;
    v23 = jFX_funcamCaptureInterfaceOrientationMetadataIdentifier;
    v24 = jFX_funcamCameraPositionMetadataIdentifier;
    v25 = v17;
    dispatch_group_notify(v16, v22, block);

    _Block_object_dispose(v40, 8);
  }

  else
  {
    v26 = dispatch_get_global_queue(21, 0);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke;
    v46[3] = &unk_278D7A168;
    v47 = completionCopy;
    v16 = completionCopy;
    dispatch_async(v26, v46);

    v25 = v47;
  }
}

void __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CE6520] metadataItemsFromArray:*(a1 + 32) filteredByIdentifier:v3];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    dispatch_group_enter(*(a1 + 40));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_2;
    v7[3] = &unk_278D7BFE8;
    v8 = v5;
    v9 = *(a1 + 48);
    v10 = v3;
    v11 = *(a1 + 40);
    v6 = v5;
    [v6 loadValuesAsynchronouslyForKeys:&unk_28556D938 completionHandler:v7];
  }
}

void __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) numberValue];
  v2 = [v4 unsignedLongLongValue];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:bswap64(v2)];
  [*(a1 + 40) setObject:v3 forKeyedSubscript:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 56));
}

void __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_131(uint64_t a1)
{
  v2 = [*(a1 + 32) dataValue];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

uint64_t __51__JFXVideoWriter_META_metadataForVideo_completion___block_invoke_2_132(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 longLongValue];

  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 48)];
  [v3 longLongValue];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

+ (id)META_JFXARMetadataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  bundleIdentifier = [jfxBundle bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, @"JFXARMetadata"];

  v6 = [MEMORY[0x277CE6520] identifierForKey:v5 keySpace:*MEMORY[0x277CE5FA8]];

  return v6;
}

+ (id)META_metadataAssetTrackFromAsset:(id)asset metadataIdentifier:(id)identifier
{
  assetCopy = asset;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__18;
  v30 = __Block_byref_object_dispose__18;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__18;
  v24 = __Block_byref_object_dispose__18;
  v25 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = *MEMORY[0x277CE5E70];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke;
  v17[3] = &unk_278D7AA80;
  v19 = &v20;
  v9 = v7;
  v18 = v9;
  [assetCopy loadTracksWithMediaType:v8 completionHandler:v17];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v21[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke_2;
  v14[3] = &unk_278D7C088;
  v11 = identifierCopy;
  v15 = v11;
  v16 = &v26;
  [v10 enumerateObjectsUsingBlock:v14];
  v12 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 formatDescriptions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke_3;
  v11[3] = &unk_278D7C060;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v14 = v9;
  v10 = v6;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v11];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __70__JFXVideoWriter_META_metadataAssetTrackFromAsset_metadataIdentifier___block_invoke_3(uint64_t a1, CMMetadataFormatDescriptionRef desc, uint64_t a3, _BYTE *a4)
{
  v6 = CMMetadataFormatDescriptionGetIdentifiers(desc);
  if ([v6 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    *a4 = 1;
  }
}

+ (id)META_ARMetadataTrackForAsset:(id)asset
{
  assetCopy = asset;
  mETA_JFXARMetadataIdentifier = [self META_JFXARMetadataIdentifier];
  v6 = [self META_metadataAssetTrackFromAsset:assetCopy metadataIdentifier:mETA_JFXARMetadataIdentifier];

  return v6;
}

+ (id)JFX_funcamCameraPositionMetadataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  bundleIdentifier = [jfxBundle bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, @"cameraPosition"];

  v6 = [MEMORY[0x277CE6520] identifierForKey:v5 keySpace:*MEMORY[0x277CE5FA8]];

  return v6;
}

+ (id)JFX_funcamCaptureInterfaceOrientationMetadataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  bundleIdentifier = [jfxBundle bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, @"captureInterfaceOrientation"];

  v6 = [MEMORY[0x277CE6520] identifierForKey:v5 keySpace:*MEMORY[0x277CE5FA8]];

  return v6;
}

+ (id)JFX_faceAnchorMetadataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  bundleIdentifier = [jfxBundle bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, @"faceanchor"];

  v6 = [MEMORY[0x277CE6520] identifierForKey:v5 keySpace:*MEMORY[0x277CE5FA8]];

  return v6;
}

+ (id)JFX_animojiMetadataIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  bundleIdentifier = [jfxBundle bundleIdentifier];
  v5 = [v2 stringWithFormat:@"%@.%@", bundleIdentifier, @"animojiMetadata"];

  v6 = [MEMORY[0x277CE6520] identifierForKey:v5 keySpace:*MEMORY[0x277CE5FA8]];

  return v6;
}

- (BOOL)JFX_writerCanBegin:(id *)begin
{
  folderURL = [(JFXVideoWriter *)self folderURL];

  if (!folderURL)
  {
    v7 = @"nil url";
    beginCopy2 = begin;
    v9 = 1;
    goto LABEL_5;
  }

  videoOutputSettings = [(JFXVideoWriter *)self videoOutputSettings];
  if (!videoOutputSettings)
  {
    audioOutputSettings = [(JFXVideoWriter *)self audioOutputSettings];

    if (audioOutputSettings)
    {
      return 1;
    }

    v7 = @"No video or audio output settings provided";
    beginCopy2 = begin;
    v9 = 3;
LABEL_5:
    SetError(beginCopy2, @"com.apple.Clips.JFXVideoWriter", v9, v7);
    return 0;
  }

  return 1;
}

- (void)JFX_removeFileAtURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    [defaultManager removeItemAtURL:lCopy error:0];
  }
}

- (__CVBuffer)JFX_copyDepthBufferAsBGRA:(__CVBuffer *)a
{
  pixelBufferOut = 0;
  if (a)
  {
    depthAdaptor = self->_depthAdaptor;
    if (depthAdaptor)
    {
      CVPixelBufferPoolCreatePixelBuffer(0, [(AVAssetWriterInputPixelBufferAdaptor *)depthAdaptor pixelBufferPool], &pixelBufferOut);
      if (pixelBufferOut)
      {
        if (CVPixelBufferGetPixelFormatType(pixelBufferOut) == 1111970369)
        {
          Width = CVPixelBufferGetWidth(a);
          Height = CVPixelBufferGetHeight(a);
          BytesPerRow = CVPixelBufferGetBytesPerRow(a);
          v8 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          CVPixelBufferLockBaseAddress(a, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(a);
          v10 = CVPixelBufferGetBaseAddress(pixelBufferOut);
          if (Height)
          {
            v11 = v10;
            v12 = 4 * Width;
            do
            {
              memcpy(v11, BaseAddress, v12);
              BaseAddress += BytesPerRow;
              v11 += v8;
              --Height;
            }

            while (Height);
          }

          CVPixelBufferUnlockBaseAddress(a, 1uLL);
          CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
        }
      }
    }
  }

  return pixelBufferOut;
}

- (JFXVideoWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animojiMetadata);

  return WeakRetained;
}

- (void)JFX_startSessionAtSourceTime_noLock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Session start time:      %@", v5, v6, v7, v8, v9);
}

- (void)JFX_writeBuffer:(uint64_t)a1 sampleType:arMetadata:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "start session at %@", v5, v6, v7, v8, v9);
}

- (void)JFX_writeBuffer:(uint64_t)a1 sampleType:arMetadata:.cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  v2 = JFXNSStringForCMTime(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v3, v4, "Audio Sample Start time: %@", v5, v6, v7, v8, v9);
}

- (void)JFX_writeBuffer:(id *)a1 sampleType:arMetadata:.cold.4(id *a1)
{
  v1 = [*a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "video error: %@", v4, v5, v6, v7, v8);
}

- (void)JFX_writeBuffer:(id *)a1 sampleType:arMetadata:.cold.5(id *a1)
{
  v1 = [*a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "metadata error: %@", v4, v5, v6, v7, v8);
}

- (void)JFX_queueAudioBufferBeforeSessionStart:(os_log_t)log .cold.1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 5;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "Queued audio samples exceeded max size (%d). Dropping sample.", v1, 8u);
}

- (void)JFX_writeAutoExposureMetadata:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  CMTimeGetSeconds(v1);
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "Error: dropping autoexposure metadata at time %f because writer not ready", v4, v5, v6, v7, 0);
}

- (void)JFX_writeFaceMetadata:withTimingInfo:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_242A3B000, v0, OS_LOG_TYPE_DEBUG, "Writing face metadata for %@", v1, 0xCu);
}

- (void)JFX_writeFaceDetectMetadata:(uint64_t)a1 pts:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  CMTimeGetSeconds(v1);
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "Droppping face detection metadata at pts=%f", v4, v5, v6, v7, 0);
}

- (void)JFX_writeFaceDetectMetadata:(uint64_t)a1 pts:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10(a1);
  CMTimeGetSeconds(v1);
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "Error: dropping face detection metadata at time %f because writer not ready", v4, v5, v6, v7, 0);
}

@end