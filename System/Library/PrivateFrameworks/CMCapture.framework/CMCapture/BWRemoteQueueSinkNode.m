@interface BWRemoteQueueSinkNode
+ (void)initialize;
- (BOOL)videoHDRImageStatisticsEnabled;
- (BWRemoteQueueSinkNode)initWithMediaType:(unsigned int)a3 clientAuditToken:(id *)a4 sinkID:(id)a5 cameraInfoByPortType:(id)a6;
- (NSArray)movieLevelMetadata;
- (uint64_t)_finishRenderingSampleBufferUsingTheLocalQueue:(uint64_t)result;
- (uint64_t)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:(int)a3 isDroppedSample:;
- (uint64_t)_sendAndClearCoreAnalyticsData;
- (void)_handlePeerTerminated;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)registerSurfacesFromSourcePool:(id)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setClientVideoRetainedBufferCount:(int)a3;
- (void)setRequestedBufferAttachmentsTrie:(id)a3;
- (void)setSceneStabilityMetadataEnabled:(BOOL)a3;
- (void)setVideoHDRImageStatisticsEnabled:(BOOL)a3;
- (void)updateClientAuditToken:(id *)a3;
@end

@implementation BWRemoteQueueSinkNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWRemoteQueueSinkNode)initWithMediaType:(unsigned int)a3 clientAuditToken:(id *)a4 sinkID:(id)a5 cameraInfoByPortType:(id)a6
{
  v8 = *&a3;
  v26.receiver = self;
  v26.super_class = BWRemoteQueueSinkNode;
  v9 = [(BWSinkNode *)&v26 initWithSinkID:a5];
  if (!v9)
  {
    return v9;
  }

  v10 = [[BWNodeInput alloc] initWithMediaType:v8 node:v9];
  v11 = MEMORY[0x1E6960C70];
  if (v8 == 1885564004)
  {
    v14 = objc_alloc_init(BWPointCloudFormatRequirements);
    [(BWPointCloudFormatRequirements *)v14 setSupportedDataFormats:&unk_1F224A158];
    [(BWPointCloudFormatRequirements *)v14 setMemoryPoolUseAllowed:0];
    [(BWNodeInput *)v10 setFormatRequirements:v14];

    v9[209] = 1;
    v9[284] = 1;
    *(v9 + 70) = 1;
    [*(v9 + 1) setRetainedBufferCount:1];
    *(v9 + 20) = *v11;
    *(v9 + 42) = *(v11 + 2);
    goto LABEL_9;
  }

  if (v8 == 1936684398)
  {
    v9[210] = 1;
    goto LABEL_7;
  }

  if (v8 != 1986618469)
  {
LABEL_7:
    v9[284] = 0;
    goto LABEL_9;
  }

  v12 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess]];
  [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:&unk_1F224A140];
  [(BWVideoFormatRequirements *)v12 setMemoryPoolUseAllowed:0];
  [(BWNodeInput *)v10 setFormatRequirements:v12];

  v9[208] = 1;
  v9[284] = 1;
  *(v9 + 70) = 1;
  [*(v9 + 1) setRetainedBufferCount:1];
  *(v9 + 20) = *v11;
  *(v9 + 42) = *(v11 + 2);
  v9[306] = 1;
  v13 = *&a4->var0[4];
  v24 = *a4->var0;
  v25 = v13;
  v9[305] = FigCaptureClientIsContinuityCapture(&v24) != 0;
LABEL_9:
  v9[408] = 0;
  v15 = *&a4->var0[4];
  v24 = *a4->var0;
  v25 = v15;
  *(v9 + 86) = FigCaptureGetPIDFromAuditToken(&v24);
  v16 = *&a4->var0[4];
  *(v9 + 348) = *a4->var0;
  *(v9 + 364) = v16;
  v17 = *&a4->var0[4];
  v24 = *a4->var0;
  v25 = v17;
  IsRunningInMediaserverd = FigCaptureClientIsRunningInMediaserverd(&v24);
  v19 = 1;
  if (!IsRunningInMediaserverd)
  {
    v20 = *&a4->var0[4];
    v24 = *a4->var0;
    v25 = v20;
    v19 = FigCaptureClientIsRunningInCameracaptured(&v24) != 0;
  }

  v9[380] = v19;
  *(v9 + 28) = FigSimpleMutexCreate();
  v9[248] = 0;
  v9[288] = 0;
  *(v9 + 57) = objc_alloc_init(BWVideoDataOutputAnalyticsPayload);
  v21 = *v11;
  *(v9 + 29) = *v11;
  v22 = *(v11 + 2);
  *(v9 + 60) = v22;
  *(v9 + 20) = v21;
  *(v9 + 42) = v22;
  [v9 addInput:v10];

  v9[285] = 0;
  v9[381] = 1;
  v9[488] = 0;
  v9[489] = 0;
  *(v9 + 62) = objc_alloc_init(BWMovieLevelMetadataForProResRaw);
  *(v9 + 63) = [a6 copy];
  *(v9 + 64) = FigSimpleMutexCreate();
  [v9 setSupportsLiveReconfiguration:1];
  [v9 setSupportsPrepareWhileRunning:1];
  return v9;
}

- (void)dealloc
{
  remoteQueueSender = self->_remoteQueueSender;
  if (remoteQueueSender)
  {
    CFRelease(remoteQueueSender);
  }

  sharedMemoryPool = self->_sharedMemoryPool;
  if (sharedMemoryPool)
  {
    CFRelease(sharedMemoryPool);
  }

  sharedMemoryPoolCFAllocator = self->_sharedMemoryPoolCFAllocator;
  if (sharedMemoryPoolCFAllocator)
  {
    CFRelease(sharedMemoryPoolCFAllocator);
  }

  localQueue = self->_localQueue;
  if (localQueue)
  {
    CFRelease(localQueue);
  }

  makerNoteKeySpec = self->_makerNoteKeySpec;
  if (makerNoteKeySpec)
  {
    CFRelease(makerNoteKeySpec);
  }

  cachedFormatDescription = self->_cachedFormatDescription;
  if (cachedFormatDescription)
  {
    CFRelease(cachedFormatDescription);
  }

  FigSimpleMutexDestroy();

  [(BWRemoteQueueSinkNode *)self _sendAndClearCoreAnalyticsData];
  FigSimpleMutexDestroy();
  v9.receiver = self;
  v9.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v9 dealloc];
}

- (void)registerSurfacesFromSourcePool:(id)a3
{
  if (!self->_clientIsCaptureServerDaemon)
  {
    v5[5] = v3;
    v5[6] = v4;
    [(BWRemoteQueueSinkNode *)self registerSurfacesFromSourcePool:v5, a3];
  }
}

- (void)updateClientAuditToken:(id *)a3
{
  v5 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v5;
  self->_receiverPID = FigCaptureGetPIDFromAuditToken(&v11);
  v6 = *&a3->var0[4];
  *self->_receiverAuditToken.val = *a3->var0;
  *&self->_receiverAuditToken.val[4] = v6;
  v7 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v7;
  if (FigCaptureClientIsRunningInMediaserverd(&v11))
  {
    v8 = 1;
  }

  else
  {
    v9 = *&a3->var0[4];
    v11 = *a3->var0;
    v12 = v9;
    v8 = FigCaptureClientIsRunningInCameracaptured(&v11) != 0;
  }

  self->_clientIsCaptureServerDaemon = v8;
  v10 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v10;
  self->_attachDetectedObjectsInfo = FigCaptureClientIsContinuityCapture(&v11) != 0;
}

- (void)setClientVideoRetainedBufferCount:(int)a3
{
  if (self->_clientVideoRetainedBufferCount != a3)
  {
    self->_clientVideoRetainedBufferCount = a3;
    [(BWNodeInput *)self->super.super._input setRetainedBufferCount:?];
  }
}

- (void)setSceneStabilityMetadataEnabled:(BOOL)a3
{
  stabilityMonitor = self->_stabilityMonitor;
  if (a3)
  {
    if (stabilityMonitor)
    {
      return;
    }

    v5 = objc_alloc_init(BWSceneStabilityMonitor);
  }

  else
  {
    if (!stabilityMonitor)
    {
      return;
    }

    v5 = 0;
  }

  self->_stabilityMonitor = v5;
}

- (void)setRequestedBufferAttachmentsTrie:(id)a3
{
  requestedBufferAttachmentsTrie = self->_requestedBufferAttachmentsTrie;
  self->_requestedBufferAttachmentsTrie = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (requestedBufferAttachmentsTrie)
  {

    CFRelease(requestedBufferAttachmentsTrie);
  }
}

- (void)setVideoHDRImageStatisticsEnabled:(BOOL)a3
{
  FigSimpleMutexLock();
  self->_videoHDRImageStatisticsEnabled = a3;

  FigSimpleMutexUnlock();
}

- (BOOL)videoHDRImageStatisticsEnabled
{
  FigSimpleMutexLock();
  videoHDRImageStatisticsEnabled = self->_videoHDRImageStatisticsEnabled;
  FigSimpleMutexUnlock();
  return videoHDRImageStatisticsEnabled;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v8.receiver = self;
  v8.super_class = BWRemoteQueueSinkNode;
  [(BWNode *)&v8 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_mediaTypeIsAudio && !self->_frameCounter)
  {
    self->_frameCounter = -[FigCaptureFrameCounter initWithTitle:]([FigCaptureFrameCounter alloc], "initWithTitle:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", -[BWNode name](self, "name"), -[BWSinkNode sinkID](self, "sinkID")]);
  }

  if (self->_mediaTypeIsVideo)
  {
    self->_proresRawVideo = FigCapturePixelFormatIsPackedBayerRaw([(BWVideoFormat *)[(BWNodeInputMediaProperties *)[(BWNodeInput *)self->super.super._input primaryMediaProperties] resolvedVideoFormat] pixelFormat]);
  }

  if (self->_clientIsCaptureServerDaemon)
  {
    self->_numberOfMediaBuffersLocallyEnqueued = 0;
    self->_numberOfMediaBuffersLocallyDequeued = 0;
    if (!self->_localQueue)
    {
      if (FigLocalQueueCreate(*MEMORY[0x1E695E480], 14, &self->_localQueue))
      {
        [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
      }

      else
      {
        [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self localQueueBecameReady:self->_localQueue];
      }
    }
  }

  else
  {
    v3 = *&self->_receiverAuditToken.val[4];
    v7[0] = *self->_receiverAuditToken.val;
    v7[1] = v3;
    if (!FigCaptureAuditTokenIsValid(v7))
    {
      [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self dumpStateForReason:@"rqsn_invalidClientToken"];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"RemoteQueueSinkNode needs to have a valid client token before prepareForCurrentConfigurationToBecomeLive can be called" userInfo:0]);
    }

    if (!self->_remoteQueueSender)
    {
      if (self->_discardsLateSampleBuffers)
      {
        v4 = 1;
      }

      else
      {
        v4 = 100;
      }

      LODWORD(v7[0]) = 100;
      *(v7 + 4) = v4;
      if (self->_proresRawVideo)
      {
        v5 = 0x100000;
      }

      else
      {
        v5 = 0x80000;
      }

      v6 = *MEMORY[0x1E695E480];
      if (FigSharedMemPoolCreate(*MEMORY[0x1E695E480], v5, 0, 0, &self->_sharedMemoryPool))
      {
        [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
      }

      else
      {
        self->_sharedMemoryPoolCFAllocator = FigSharedMemPoolAllocatorCreate(v6, self->_sharedMemoryPool);
        if (FigRemoteQueueSenderCreate(v6, self->_receiverPID, self->_sharedMemoryPool, v7, 3uLL, 14, &self->_remoteQueueSender))
        {
          [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
        }

        else
        {
          [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self queueBecameReady:self->_remoteQueueSender];
        }
      }
    }
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (self->_remoteQueueSender)
  {
    v9 = 1;
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = self->_localQueue != 0;
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (self->_remoteQueueSender)
        {
          v13 = 5;
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v19 = 0;
          v17 = a3;
          v18 = [a4 formatDescription];
          if (FigRemoteOperationSenderEnqueueOperation(self->_remoteQueueSender, &v13) == -16665)
          {
            [(BWRemoteQueueSinkNode *)self _handlePeerTerminated];
          }
        }

        else if (self->_localQueue)
        {
          v10 = [a4 formatDescription];
          localQueue = self->_localQueue;
          v13 = 5;
          v14 = a3;
          v15 = v10;
          FigLocalQueueEnqueue(localQueue, &v13, 0);
        }
      }
    }
  }

LABEL_13:
  if (!self->_mediaTypeIsAudio)
  {
    [(FigCaptureFrameCounter *)self->_frameCounter start];
  }

  v12.receiver = self;
  v12.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v12 configurationWithID:a3 updatedFormat:a4 didBecomeLiveForInput:a5];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  mediaTypeIsAudio = self->_mediaTypeIsAudio;
  if (a3)
  {
    if ((mediaTypeIsAudio & 1) == 0)
    {
      [(FigCaptureFrameCounter *)self->_frameCounter stop];
    }
  }

  else
  {
    [BWRemoteQueueSinkNode didReachEndOfDataForConfigurationID:self input:?];
  }

  v8.receiver = self;
  v8.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v8 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = CMGetAttachment(a3, *MEMORY[0x1E6960498], 0);
  memset(&v81, 0, sizeof(v81));
  CMSampleBufferGetPresentationTimeStamp(&v81, a3);
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  key = *off_1E798A3C8;
  v8 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v9 = v8;
  if (!self->_mediaTypeIsVideo || v6 != 0 || v8 == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:*off_1E798B540];
    BWActiveDeviceTypeFromPortType(v12);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    time[0] = v81;
    CMTimeGetSeconds(time);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    IOSurfaceGetID(IOSurface);
    kdebug_trace();
  }

  if (self->_remoteQueueSender || self->_localQueue)
  {
    if (!self->_mediaTypeIsAudio && !v6)
    {
      frameCounter = self->_frameCounter;
      time[0] = v81;
      [(FigCaptureFrameCounter *)frameCounter incrementWithPTS:time];
    }

    if (self->_mediaTypeIsVideo && v6 == 0)
    {
      totalNumberOfFrames = self->_totalNumberOfFrames;
      self->_totalNumberOfFrames = totalNumberOfFrames + 1;
      if (v12)
      {
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setDeviceMask:[(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload deviceMask]| BWActiveDeviceTypeFromPortType(v12)];
      }

      v17 = CMGetAttachment(a3, key, 0);
      if (v17)
      {
        time[0].value = 0;
        v18 = *off_1E798B538;
        if (CFDictionaryGetValueIfPresent(v17, *off_1E798B538, time))
        {
          v19 = *off_1E798A318;
          v20 = CMGetAttachment(a3, *off_1E798A318, 0);
          if (v20)
          {
            v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v20];
          }

          else
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v22 = v21;
          [v22 setObject:time[0].value forKeyedSubscript:v18];
          CMSetAttachment(a3, v19, v22, 1u);
        }
      }

      if (!totalNumberOfFrames)
      {
        if (dword_1ED844230)
        {
          LODWORD(v73.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        self->_firstPTS = v81;
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setClientApplicationID:self->_clientApplicationID, *v68, v69];
        FormatDescription = CMSampleBufferGetFormatDescription(a3);
        Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
        MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
        if (v12)
        {
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setDevicePosition:BWCaptureDevicePositionFromPortType(v12)];
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setHeight:HIDWORD(Dimensions)];
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setWidth:Dimensions];
        v27 = CMSampleBufferGetImageBuffer(a3);
        if (v27)
        {
          v28 = v27;
          v29 = [CMGetAttachment(v27 @"MirroredHorizontal"];
          v30 = v29 ^ [CMGetAttachment(v28 @"MirroredVertical"];
        }

        else
        {
          v30 = 0;
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setVideoMirrored:v30];
        v31 = CMSampleBufferGetImageBuffer(a3);
        if (v31 && (v32 = CVBufferCopyAttachments(v31, kCVAttachmentMode_ShouldPropagate)) != 0)
        {
          v33 = v32;
          IsHDR = BWColorSpacePropertiesIsHDR([BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v32]);
          CFRelease(v33);
        }

        else
        {
          IsHDR = 0;
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setHdrVideo:IsHDR];
        if (ImageBuffer)
        {
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setColorSpace:BWPixelBufferColorSpace(ImageBuffer)];
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setPixelFormat:MediaSubType];
        }

        self->_proresVideo = FigCapturePixelFormatIsUsedForProRes(MediaSubType);
      }

      if (self->_proresRawVideo)
      {
        FigSimpleMutexLock();
        FigGetUpTimeNanoseconds();
        [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw reset];
        [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:a3 withCameraInfo:[(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v12]];
        FigGetUpTimeNanoseconds();
        if (ImageBuffer)
        {
          IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw(PixelFormatType);
          if ([(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v12])
          {
            if (IsPackedBayerRaw)
            {
              v36 = CMGetAttachment(a3, *off_1E798D448, 0);
              BWUpdateFrameLevelMetadataForProResRaw(a3, v9, [(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v12], v36);
            }
          }
        }

        FigSimpleMutexUnlock();
      }

      if (self->_removeCameraIntrinsicMatrixAttachment)
      {
        CMRemoveAttachment(a3, *MEMORY[0x1E6960470]);
      }

      if (self->_attachPanoramaMetadata)
      {
        ClientSpecifiedMetadataForPanorama = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForPanorama(a3, self->_panoramaRequiresLTMLocking);
        if (ClientSpecifiedMetadataForPanorama)
        {
          v38 = ClientSpecifiedMetadataForPanorama;
          v39 = *off_1E798A318;
          v40 = CMGetAttachment(a3, *off_1E798A318, 0);
          if (v40)
          {
            v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v40];
          }

          else
          {
            v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v42 = v41;
          [v42 addEntriesFromDictionary:v38];
          CMSetAttachment(a3, v39, v42, 1u);
          CFRelease(v38);
        }
      }

      if (ImageBuffer)
      {
        if (self->_stabilityMonitor)
        {
          v43 = CMGetAttachment(a3, key, 0);
          [v43 objectForKeyedSubscript:*off_1E798B070];
          stabilityMonitor = self->_stabilityMonitor;
          CMSampleBufferGetPresentationTimeStamp(time, a3);
          [(BWSceneStabilityMonitor *)stabilityMonitor calculateStabilityWithPixelBuffer:ImageBuffer pts:time metadataDictionary:v43 forceSceneMotion:0];
          v45 = [MEMORY[0x1E695DF90] dictionary];
          [v45 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[BWSceneStabilityMonitor isStable](self->_stabilityMonitor, "isStable")), *off_1E798A4A8}];
          v46 = MEMORY[0x1E696AD98];
          [(BWSceneStabilityMonitor *)self->_stabilityMonitor stabilityMetric];
          [v45 setObject:objc_msgSend(v46 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A4A0}];
        }

        else
        {
          v45 = 0;
        }

        if (self->_requestedBufferAttachmentsTrie)
        {
          v47 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a3, 1u);
          if (v47)
          {
            v48 = v47;
            if (!v45)
            {
              v45 = [MEMORY[0x1E695DF90] dictionary];
            }

            [(FigCaptureTrie *)self->_requestedBufferAttachmentsTrie extractFrom:v48 writeInto:v45 assumeMutable:0 overwrite:0];
          }
        }

        if ([(BWRemoteQueueSinkNode *)self videoHDRImageStatisticsEnabled])
        {
          v49 = BWGetHDRImageStatisticsDictFromSampleBuffer(a3);
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v50 = [v49 countByEnumeratingWithState:&v76 objects:v75 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v77;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v77 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                CVBufferSetAttachment(ImageBuffer, *(*(&v76 + 1) + 8 * i), [v49 objectForKeyedSubscript:*(*(&v76 + 1) + 8 * i)], kCVAttachmentMode_ShouldPropagate);
              }

              v51 = [v49 countByEnumeratingWithState:&v76 objects:v75 count:16];
            }

            while (v51);
          }
        }

        if (self->_frameSenderSupportEnabled)
        {
          frameSender = self->_frameSender;
          if (!frameSender)
          {
            v55 = getpid();
            receiverPID = self->_receiverPID;
            v57 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_receiverAuditToken length:32];
            if (self->_receiverPID == v55)
            {
              v55 = 0;
              v58 = 0;
            }

            else
            {
              memset(time, 0, 32);
              v58 = [MEMORY[0x1E695DEF0] dataWithBytes:time length:{32, FigCaptureGetCurrentProcessAuditToken(time)}];
            }

            frameSender = [[CMCaptureFrameSenderService alloc] initWithEndpointType:@"VideoDataOutput" endpointPID:receiverPID endpointProxyPID:v55 endpointAuditToken:v57 endpointProxyAuditToken:v58 endpointCameraUniqueID:@"unknown"];
            self->_frameSender = frameSender;
          }

          [(CMCaptureFrameSenderService *)frameSender sendFrame:a3];
        }

        memset(&v74, 0, sizeof(v74));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v74, HostTimeClock);
        if (*MEMORY[0x1E695FF58] == 1)
        {
          time[0] = v81;
          CMTimeGetSeconds(time);
          time[0] = v74;
          type = v81;
          CMTimeSubtract(&v73, time, &type);
          time[0] = v73;
          CMTimeGetSeconds(time);
          kdebug_trace();
        }
      }

      else
      {
        v45 = 0;
      }

      sharedMemoryPoolCFAllocator = self->_sharedMemoryPoolCFAllocator;
      cameraSupportsFlash = self->_cameraSupportsFlash;
      attachDetectedObjectsInfo = self->_attachDetectedObjectsInfo;
      disableFlatDictionaryVDOMetadata = self->_disableFlatDictionaryVDOMetadata;
      [(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation];
      if (CMGetAttachment(a3, key, 0))
      {
        MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(a3, 1785096550, 0, 0, cameraSupportsFlash, 0, 0, 0, 0, attachDetectedObjectsInfo, disableFlatDictionaryVDOMetadata, 0, 1u, 1, 1, v45, 0, 0, 0, 0, 0);
        if (disableFlatDictionaryVDOMetadata)
        {
          MakerNoteFlatDictionary = 0;
        }

        else
        {
          MakerNoteFlatDictionary = FigCaptureMetadataUtilitiesCreateMakerNoteFlatDictionary(a3, *MEMORY[0x1E695E480], sharedMemoryPoolCFAllocator, &self->_makerNoteKeySpec);
        }

        CMRemoveAllAttachments(a3);
        CMSetAttachments(a3, MetadataAttachments, 1u);
        if (MetadataAttachments)
        {
          CFRelease(MetadataAttachments);
        }

        if ((disableFlatDictionaryVDOMetadata & 1) == 0 && MakerNoteFlatDictionary && self->_makerNoteKeySpec)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(Mutable, *off_1E798D2F8, self->_makerNoteKeySpec);
          CFDictionaryAddValue(Mutable, *off_1E798D2F0, MakerNoteFlatDictionary);
          CMSetAttachment(a3, *MEMORY[0x1E696DE30], Mutable, 1u);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          CFRelease(MakerNoteFlatDictionary);
        }
      }
    }

    if (!v6)
    {
      if (!self->_didNotifyFirstFrame)
      {
        [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNodeDidDeliverFirstVideoFrame:self];
        self->_didNotifyFirstFrame = 1;
      }

      if (!self->_cachedFormatDescription)
      {
        v67 = CMSampleBufferGetFormatDescription(a3);
        if (v67)
        {
          v67 = CFRetain(v67);
        }

        self->_cachedFormatDescription = v67;
      }
    }

    BWSampleBufferRemoveAllAttachedMedia(a3);
    BWNodeSanitizeMetadataIfNecessary(a3);
    if (self->_remoteQueueSender)
    {
      if ([(BWRemoteQueueSinkNode *)self _finishRenderingSampleBufferUsingTheRemoteCaptureStack:a3 isDroppedSample:v6 != 0])
      {
        return;
      }

      goto LABEL_109;
    }

    if (!self->_localQueue || ![(BWRemoteQueueSinkNode *)self _finishRenderingSampleBufferUsingTheLocalQueue:a3])
    {
LABEL_109:
      self->_lastPTS = v81;
    }
  }
}

- (uint64_t)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:(int)a3 isDroppedSample:
{
  if (!a1)
  {
    return 0;
  }

  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (ImageBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw(PixelFormatType);
  }

  else
  {
    IsPackedBayerRaw = 0;
  }

  v25[0] = 6;
  v25[1] = a3 ^ 1;
  *&v27 = sbuf;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v9 addObject:*off_1E798A3C8];
  [v9 addObject:@"ReactionEffectComplexity"];
  if (IsPackedBayerRaw)
  {
    [v9 addObject:*MEMORY[0x1E6966198]];
    [v9 addObject:*MEMORY[0x1E69661E0]];
    [v9 addObject:*MEMORY[0x1E69661D8]];
    [v9 addObject:*MEMORY[0x1E69661C8]];
    [v9 addObject:*MEMORY[0x1E69661D0]];
    [v9 addObject:*MEMORY[0x1E69661A8]];
    [v9 addObject:*MEMORY[0x1E69661B8]];
    [v9 addObject:*MEMORY[0x1E69661A0]];
    [v9 addObject:*MEMORY[0x1E69661F8]];
    [v9 addObject:*MEMORY[0x1E69661B0]];
  }

  v28 = v9;
  v10 = FigRemoteOperationSenderEnqueueOperation(*(a1 + 216), v25);
  if (v10 != -16669)
  {
    v11 = v10;
    if (v10 == -16665)
    {
      [(BWRemoteQueueSinkNode *)a1 _handlePeerTerminated];
      return 4294950631;
    }

    return v11;
  }

  if (a3)
  {
    return 4294950627;
  }

  if (*(a1 + 284) != 1)
  {
    [BWRemoteQueueSinkNode _finishRenderingSampleBufferUsingTheRemoteCaptureStack:isDroppedSample:];
    return 4294950627;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = *(a1 + 216);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheRemoteCaptureStack_isDroppedSample___block_invoke;
  v20[3] = &unk_1E799DBB0;
  v20[4] = &v21;
  FigRemoteOperationSenderResetWithApplier(v12, v20);
  if (*(v22 + 24) == 1)
  {
    cf = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v15 = *(a1 + 320);
    BWSampleBufferCreateForDroppedFrame(&v15, FormatDescription, @"LateFrame", &cf);
    LODWORD(v15.value) = 3;
    memset(&v15.value + 4, 0, 20);
    v17 = 0;
    v18 = 0;
    v16 = cf;
    FigRemoteOperationSenderEnqueueOperation(*(a1 + 216), &v15);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v11 = FigRemoteOperationSenderEnqueueOperation(*(a1 + 216), v25);
  if (v11)
  {
    FigDebugAssert3();
  }

  _Block_object_dispose(&v21, 8);
  return v11;
}

uint64_t __96__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheRemoteCaptureStack_isDroppedSample___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Type = FigRemoteOperationGetType(a4);
  if (Type == 6)
  {
    goto LABEL_4;
  }

  if (Type != 5)
  {
    if (Type != 3)
    {
      return 0;
    }

LABEL_4:
    result = 1;
    if (*(a4 + 16) != 1)
    {
      return result;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return 1;
}

void __72__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheLocalQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1 + 32) + 268);
  FigMemoryBarrier();
  if (*(*(a1 + 32) + 268) == *(*(a1 + 32) + 264))
  {
    v6 = *(a3 + 16);
    *&v9.value = *a2;
    LODWORD(v9.epoch) = *(a2 + 16);
    v6(a3, &v9);
  }

  else
  {
    cf = 0;
    CMSampleBufferGetPresentationTimeStamp(&v9, *(a2 + 4));
    FormatDescription = CMSampleBufferGetFormatDescription(*(a2 + 4));
    BWSampleBufferCreateForDroppedFrame(&v9, FormatDescription, @"LateFrame", &cf);
    v8 = *(a3 + 16);
    LODWORD(v9.value) = 3;
    *(&v9.value + 4) = cf;
    v8(a3, &v9);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  mediaTypeIsVideo = self->_mediaTypeIsVideo;
  if (!mediaTypeIsVideo && !self->_mediaTypeIsPointCloud)
  {
    return;
  }

  cf = 0;
  cachedFormatDescription = self->_cachedFormatDescription;
  if (!cachedFormatDescription)
  {
    formatDescriptionOut = 0;
    if (!mediaTypeIsVideo)
    {
LABEL_6:
      if (self->_mediaTypeIsPointCloud)
      {
        CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x70636C64u, 0, 0, &formatDescriptionOut);
      }

LABEL_11:
      if (!formatDescriptionOut)
      {
        return;
      }

      v9 = self->_mediaTypeIsVideo;
      goto LABEL_13;
    }

LABEL_9:
    v10 = [a4 liveFormat];
    if (v10)
    {
      CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [v10 pixelFormat], objc_msgSend(v10, "width"), objc_msgSend(v10, "height"), 0, &formatDescriptionOut);
    }

    goto LABEL_11;
  }

  formatDescriptionOut = CFRetain(cachedFormatDescription);
  v9 = self->_mediaTypeIsVideo;
  if (!formatDescriptionOut)
  {
    if (!self->_mediaTypeIsVideo)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_13:
  if (v9)
  {
    if ([a3 reason] == 0x1F219BEF0)
    {
      v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfISPFramesDropped;
    }

    else
    {
      v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfISPFramesDropped;
      if ([a3 reason] != @"VideoDeviceDiscontinuity" && objc_msgSend(a3, "reason") != @"HighFrameRateAutoFocusDiscontinuity")
      {
        v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfFramesDropped;
      }
    }

    ++*(&self->super.super.super.isa + *v11);
  }

  if (a3)
  {
    [a3 pts];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  BWSampleBufferCreateForDroppedFrame(&v12, formatDescriptionOut, [a3 reason], &cf);
  [(BWRemoteQueueSinkNode *)self renderSampleBuffer:cf forInput:a4];
  if (cf)
  {
    CFRelease(cf);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }
}

- (NSArray)movieLevelMetadata
{
  v3 = [MEMORY[0x1E695DEC8] array];
  if (self->_proresRawVideo)
  {
    FigSimpleMutexLock();
    v3 = [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:v3];
    FigSimpleMutexUnlock();
  }

  return v3;
}

- (uint64_t)_sendAndClearCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    time1 = *(result + 464);
    time2 = *(result + 320);
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0 || *(v1 + 432))
    {
      time2 = *(v1 + 320);
      v5 = *(v1 + 464);
      CMTimeSubtract(&time1, &time2, &v5);
      CMTimeGetSeconds(&time1);
      [OUTLINED_FUNCTION_0_119() setDuration:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfFrames:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfFramesDropped:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfISPFramesDropped:?];
      [OUTLINED_FUNCTION_0_119() setNominalFramerate:?];
      [OUTLINED_FUNCTION_0_119() setProresVideo:0];
      result = [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", *(v1 + 456)];
      if ((*(v1 + 488) & 1) != 0 || *(v1 + 489) == 1)
      {
        [OUTLINED_FUNCTION_0_119() setProresVideo:1];
        result = [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", *(v1 + 456)];
      }

      v2 = MEMORY[0x1E6960C70];
      v3 = *MEMORY[0x1E6960C70];
      *(v1 + 464) = *MEMORY[0x1E6960C70];
      v4 = *(v2 + 16);
      *(v1 + 480) = v4;
      *(v1 + 320) = v3;
      *(v1 + 336) = v4;
    }
  }

  return result;
}

- (void)_handlePeerTerminated
{
  if (a1)
  {
    *(a1 + 248) = 1;
    FigSimpleMutexLock();
    v2 = *(a1 + 216);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 216) = 0;
    }

    FigSimpleMutexUnlock();
    v3 = *(a1 + 232);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 232) = 0;
    }
  }
}

- (uint64_t)_finishRenderingSampleBufferUsingTheLocalQueue:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 284) == 1 && (CMSampleBufferGetImageBuffer(sbuf) || CMSampleBufferGetDataBuffer(sbuf)))
    {
      ++*(v3 + 264);
      FigMemoryBarrier();
      v4 = *(v3 + 256);
      v8 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __72__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheLocalQueue___block_invoke;
      v9[3] = &unk_1E799DBD8;
      v9[4] = v3;
      v6 = 3;
      v7 = sbuf;
      v5 = v9;
    }

    else
    {
      v4 = *(v3 + 256);
      v6 = 3;
      v7 = sbuf;
      v8 = 0;
      v5 = 0;
    }

    return FigLocalQueueEnqueue(v4, &v6, v5);
  }

  return result;
}

- (uint64_t)registerSurfacesFromSourcePool:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 216))
  {
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __56__BWRemoteQueueSinkNode_registerSurfacesFromSourcePool___block_invoke;
    a2[3] = &unk_1E799C940;
    a2[4] = a1;
    [a3 enumerateSurfacesUsingBlock:a2];
  }

  return FigSimpleMutexUnlock();
}

- (uint64_t)didReachEndOfDataForConfigurationID:(char)a1 input:(uint64_t)a2 .cold.1(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    [*(a2 + 448) stop];

    *(a2 + 448) = 0;
  }

  *(a2 + 400) = 0;
  [(BWRemoteQueueSinkNode *)a2 _sendAndClearCoreAnalyticsData];
  v3 = *(a2 + 312);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 312) = 0;
  }

  result = FigRemoteQueueSenderReleaseIOSurfaces(*(a2 + 216), 0);
  *(a2 + 520) = 0;
  return result;
}

- (uint64_t)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:isDroppedSample:.cold.1()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

@end