@interface BWStillImageCoordinatorNode
+ ($07919FF52A1CF34B835B8E07CC3CE49A)worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:(SEL)a3 stillImageCaptureSettings:(id)a4 captureDevice:(id)a5;
+ (void)initialize;
- (BOOL)_speedOverQualityCaptureEnabled;
- (BOOL)_waitUntilShotBufferHasEnoughFreeBuffersWithTimeout:(float)a3 freeBufferCountOut:;
- (BOOL)shouldGraphLiveReconfigurationWait;
- (BWStillImageSettings)_currentStillImageSettings;
- (BWStillImageSettings)_resolvePhotoManifest;
- (id)_initWithNodeConfiguration:(id)a3 captureDevice:(id)a4 inputPortTypes:(id)a5 sensorRawInputPortTypes:(id)a6 highResStillImageDimensions:(id)a7 allStateTransitionsHandler:(id)a8;
- (int)_enqueueRequestWithSettings:(id)a3 serviceRequestsIfNecessary:(BOOL)a4;
- (int)beginStillImageMomentCaptureWithSettings:(id)a3;
- (int)cancelStillImageMomentCaptureWithSettingsID:(int64_t)a3;
- (int)captureStillImageNowWithSettings:(id)a3;
- (int)commitStillImageMomentCaptureWithSettings:(id)a3;
- (int)initiateStillImageCaptureNowWithSettings:(id)a3;
- (int)prepareStillImageCaptureNowWithSettings:(id)a3;
- (uint64_t)_beginInitiatingCapture;
- (uint64_t)_beginResolvingCapture;
- (uint64_t)_cancelMomentCaptureIfNeeded;
- (uint64_t)_capturedAllFrames;
- (uint64_t)_configureCurrentCaptureRequestStateForFigCaptureStillImageSettings;
- (uint64_t)_didResolveReferenceFrameBracketedCaptureSequenceNumber:(uint64_t)result;
- (uint64_t)_didSelectNewReferenceFrameWithPTS:(uint64_t)a3 transform:(uint64_t)a4 forSettings:;
- (uint64_t)_ensureDeviceOrientationMonitor;
- (uint64_t)_expectedFrameCountForNextRequest;
- (uint64_t)_fireDelegateCallbackWithInfo:(uint64_t)result;
- (uint64_t)_maxShotBufferCapacityForCurrentRequestWithBufferCount:(int)a3 ultraHighResBufferCount:;
- (uint64_t)_receivedFrameOrErrorCountForCurrentRequest;
- (uint64_t)_setupProcessing;
- (uint64_t)_setupStateMachineWithAllStateTransitionsHandler:(uint64_t)result;
- (uint64_t)_ultraHighResBufferCountForCurrentSettings;
- (uint64_t)_unpackNextRequest;
- (void)_attemptToCompleteRequest;
- (void)_beginCapture;
- (void)_beginMomentCapture;
- (void)_beginPreparingCapture;
- (void)_beginUncommittedMomentCapture;
- (void)_cancelMomentCapture;
- (void)_commitMomentCapture;
- (void)_completeRequestWithStatus:(uint64_t)a1;
- (void)_configureCurrentCaptureRequestStateForFigCaptureStillImageSettings;
- (void)_didCaptureStillImage;
- (void)_didResolveStillImagePTS:(void *)a3 isPreBracketedEV0:;
- (void)_fireDelegateCallbackWithFlag:(uint64_t)a1;
- (void)_flushStillImageRequestWithError:(uint64_t)a1;
- (void)_readyToRespondToRequest;
- (void)_serviceNextRequest;
- (void)_stoppedUsingBufferWithSensorRawHighResolutionFlavor:(int)a3;
- (void)_unpackNextRequest;
- (void)_updateResponsiveShutterEnabled;
- (void)_waitToMakePaceWithReferenceTime:(uint64_t)a1;
- (void)captureStream:(id)a3 didCapturePreBracketedEV0ImageWithPTS:(id *)a4;
- (void)captureStream:(id)a3 didCaptureReferenceFrameWithPTS:(id *)a4 referenceFrameBracketedCaptureSequenceNumber:(id)a5;
- (void)captureStream:(id)a3 stillImageCaptureError:(int)a4;
- (void)captureStreamDidCompleteStillImageCapture:(id)a3;
- (void)captureStreamWillBeginStillImageCapture:(id)a3;
- (void)captureStreamWillWaitForTimeMachineToFill:(id)a3;
- (void)clientReceivedPayloadForSettings:(id)a3 status:(int)a4 clientIsMidStillImageGraph:(BOOL)a5;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)node:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 forSettings:(id)a6;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setCompressedShotBuffer:(id)a3;
- (void)willStopGraph:(BOOL)a3;
@end

@implementation BWStillImageCoordinatorNode

- (void)_updateResponsiveShutterEnabled
{
  if (a1)
  {
    OUTLINED_FUNCTION_88_2();
    if (!v2 || *(a1 + 208) != 2)
    {
      *(a1 + 476) = 0;
      *(a1 + 508) = 0;
      [objc_opt_class() setMaxShotBufferCapacity:0];
      *(a1 + 536) = 0;
      v5 = 448;
      v6 = 1;
LABEL_15:
      *(a1 + v5) = v6;
      return;
    }

    if (llroundf((([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] >> 20) + 537.0) * 0.00097656) <= 5)
    {
      v3 = 11;
    }

    else
    {
      v3 = 18;
    }

    if ([*(a1 + 144) softISPEnabled])
    {
      if ([*(a1 + 144) sensorRawStillImageOutputsEnabled])
      {
        if ([*(a1 + 144) depthDataDeliveryEnabled])
        {
          v3 = 27;
        }

        else
        {
          v3 = 20;
        }

        v4 = 4;
      }

      else
      {
        v3 = 11;
        v4 = 1;
      }

      *(a1 + 448) = v4;
    }

    *(a1 + 476) = 1;
    OUTLINED_FUNCTION_33();
    if (v2)
    {
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      *(a1 + 492) = 0;
      v7 = *(a1 + 448);
      objc_opt_class();
      objc_opt_self();
      sUltraHighResFrameCountExpansionFactor = v7;
      [objc_opt_class() setCurrentAllocatedShotBufferCapacity:0];
      [objc_opt_class() setMaxShotBufferCapacity:v3];
      *(a1 + 484) = v3;
      [objc_opt_class() setNumberOfZoomBasedBufferIncludedInShotBuffer:0];
      [objc_opt_class() setNumberOfUltraHighResBufferIncludedInShotBuffer:0];
    }

    else
    {
      [objc_opt_class() setMaxShotBufferCapacity:0];
      *(a1 + 448) = 1;
      v8 = *(a1 + 448);
      objc_opt_class();
      objc_opt_self();
      sUltraHighResFrameCountExpansionFactor = v8;
    }

    *(a1 + 508) = 1;
    OUTLINED_FUNCTION_33();
    if (v2)
    {
      *(a1 + 512) = 1082130432;
    }

    *(a1 + 536) = *(a1 + 454);
    if (*(a1 + 536) == 1)
    {
      *(a1 + 540) = 2;
      if (*(a1 + 536))
      {
        *(a1 + 544) = 1040187392;
        v5 = 548;
        v6 = 1051931443;
        goto LABEL_15;
      }
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ ($07919FF52A1CF34B835B8E07CC3CE49A)worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:(SEL)a3 stillImageCaptureSettings:(id)a4 captureDevice:(id)a5
{
  if (a4)
  {
    v10 = [a4 HDRMode] != 0;
    v11 = [a4 digitalFlashMode] != 0;
    v12 = [a4 qualityPrioritization];
  }

  else
  {
    v12 = 2;
    v11 = 1;
    v10 = 1;
  }

  v13 = [a6 maxStillImageCaptureBufferCountForHDRMode:v10 digitalFlashMode:v11 qualityPrioritization:v12 clientBracketCount:objc_msgSend(a4 bravoConstituentImageDeliveryDeviceTypes:{"bracketedImageCount"), objc_msgSend(a4, "bravoConstituentImageDeliveryDeviceTypes")}];
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0;
  v42 = a5;
  if (!a5)
  {
    if ([a6 softISPEnabled])
    {
      v17 = 0;
      retstr->var0 = v13;
      retstr->var1 = v13;
      v19 = v13;
      v16 = v13;
      v18 = v13;
      retstr->var3 = v13;
LABEL_28:
      v30 = a2;
      goto LABEL_34;
    }

LABEL_29:
    v19 = 0;
    v30 = a2;
    goto LABEL_31;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [a5 captureStreamSettings];
  v14 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (!v14)
  {
    if ([a6 softISPEnabled])
    {
      [a6 sensorRawStillImageOutputsEnabled];
      v19 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v15 = v14;
  v40 = v13;
  v45 = a6;
  v41 = retstr;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *v48;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v48 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v47 + 1) + 8 * i);
      v23 = [v22 expectedFrameCaptureCounts];
      v25 = v24;
      v26 = HIDWORD(v23);
      v19 += v23;
      v27 = [v45 isPortTypeUsingZoomBasedSourceSensorRaws:{objc_msgSend(v22, "portType")}];
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      v17 += v28;
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26;
      }

      v18 += v29;
      v16 += v25;
    }

    v15 = [obj countByEnumeratingWithState:&v47 objects:v46 count:16];
  }

  while (v15);
  retstr = v41;
  v41->var0 = v19;
  v41->var1 = v18;
  v41->var2 = v17;
  v41->var3 = v16;
  a6 = v45;
  v30 = a2;
  if ([v45 softISPEnabled])
  {
    if (([v45 sensorRawStillImageOutputsEnabled] & 1) != 0 && v19)
    {
      if (v19 <= 2)
      {
        v19 = 2;
      }

      v41->var0 = v19;
    }

    goto LABEL_34;
  }

  v13 = v40;
LABEL_31:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v13 > v19)
  {
    v19 = v13;
  }

  retstr->var0 = v19;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
LABEL_34:
  if ([v30 maxShotBufferCapacity] >= 1)
  {
    v31 = [v30 currentAllocatedShotBufferCapacity];
    v32 = a6;
    if (v31 >= [v30 maxShotBufferCapacity])
    {
      v33 = [v30 maxShotBufferCapacity];
    }

    else
    {
      v33 = [v30 currentAllocatedShotBufferCapacity];
    }

    v34 = v33;
    v35 = [v30 numberOfZoomBasedBufferIncludedInShotBuffer];
    v36 = [v30 numberOfUltraHighResBufferIncludedInShotBuffer];
    objc_opt_self();
    v37 = sUltraHighResFrameCountExpansionFactor * v36;
    if ([v32 softISPEnabled])
    {
      if (v42)
      {
        if ([v32 sensorRawStillImageOutputsEnabled])
        {
          if (v18 > 0 || v17 > 0 || v16 >= 1)
          {
            v18 = v34 - v35 - v37;
            retstr->var1 = v18;
            retstr->var2 = v35;
            retstr->var3 = v36;
          }

          if (v19 >= 1)
          {
            if (v34 - v37 <= 2)
            {
              v19 = 2;
            }

            else
            {
              v19 = v34 - v37;
            }

            retstr->var0 = v19;
          }
        }
      }

      else
      {
        v18 = v34 - v37;
        retstr->var0 = v34 - v37;
        retstr->var1 = v34 - v37;
        *&retstr->var2 = 0;
        v19 = v34 - v37;
      }
    }

    else
    {
      v18 = 0;
      if (v34 - v37 <= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = v34 - v37;
      }

      retstr->var0 = v19;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
    }

    a6 = v32;
  }

  result = [a6 pearlInfraredCaptureStream];
  if (result)
  {
    if (v19 <= v18)
    {
      v39 = v18;
    }

    else
    {
      v39 = v19;
    }

    retstr->var4 = v39;
  }

  return result;
}

- (id)_initWithNodeConfiguration:(id)a3 captureDevice:(id)a4 inputPortTypes:(id)a5 sensorRawInputPortTypes:(id)a6 highResStillImageDimensions:(id)a7 allStateTransitionsHandler:(id)a8
{
  v66.receiver = self;
  v66.super_class = BWStillImageCoordinatorNode;
  v14 = [(BWNode *)&v66 init];
  v15 = v14;
  if (v14)
  {
    v43 = a8;
    obj = a6;
    [(BWNode *)v14 setSupportsLiveReconfiguration:1];
    *(v15 + 136) = a3;
    v17 = a4;
    *(v15 + 144) = v17;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v18 = [v17 captureStreams];
    v19 = [v18 countByEnumeratingWithState:&v62 objects:v61 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v63;
      do
      {
        v22 = 0;
        do
        {
          if (*v63 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v62 + 1) + 8 * v22++) setStillImageCaptureDelegate:v15];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v62 objects:v61 count:16];
      }

      while (v20);
    }

    [v15 setSupportsConcurrentLiveInputCallbacks:0];
    *(v15 + 184) = a7;
    v48 = [MEMORY[0x1E695DF90] dictionary];
    v49 = [MEMORY[0x1E695DF90] dictionary];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [a5 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v23)
    {
      v25 = v23;
      LODWORD(v24) = 0;
      v26 = *v58;
      do
      {
        v27 = 0;
        v24 = v24;
        do
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(a5);
          }

          v28 = *(*(&v57 + 1) + 8 * v27);
          v29 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v15 index:v24];
          v30 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v29 setFormatRequirements:v30];

          [(BWNodeInput *)v29 setPassthroughMode:1];
          [(BWNodeInput *)v29 setRetainedBufferCount:0];
          [v15 addInput:v29];
          [v48 setObject:v29 forKeyedSubscript:v28];
          [(BWNodeInput *)v29 setName:BWPortTypeToDisplayString(v28, v31)];
          ++v24;
          v32 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v15];
          v33 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v32 setFormatRequirements:v33];

          [(BWNodeOutput *)v32 setPassthroughMode:1];
          [(BWNodeOutput *)v32 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v29 index]];
          [v49 setObject:v32 forKeyedSubscript:v28];
          [(BWNodeOutput *)v32 setName:BWPortTypeToDisplayString(v28, v34)];
          [v15 addOutput:v32];

          ++v27;
        }

        while (v25 != v27);
        v25 = [a5 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v25);
    }

    else
    {
      LODWORD(v24) = 0;
    }

    v46 = [MEMORY[0x1E695DF90] dictionary];
    v47 = [MEMORY[0x1E695DF90] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v50 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
    if (v50)
    {
      v45 = *v53;
      do
      {
        v35 = 0;
        v24 = v24;
        do
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v52 + 1) + 8 * v35);
          v37 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v15 index:v24];
          v38 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v37 setFormatRequirements:v38];

          [(BWNodeInput *)v37 setPassthroughMode:1];
          [(BWNodeInput *)v37 setRetainedBufferCount:0];
          [v15 addInput:v37];
          [v46 setObject:v37 forKeyedSubscript:v36];
          -[BWNodeInput setName:](v37, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v36, v39), @"SensorRaw"]);
          ++v24;
          v40 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v15];
          v41 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v40 setFormatRequirements:v41];

          [(BWNodeOutput *)v40 setPassthroughMode:1];
          [(BWNodeOutput *)v40 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v37 index]];
          [v47 setObject:v40 forKeyedSubscript:v36];
          -[BWNodeInput setName:](v37, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v36, v42), @"SensorRaw"]);
          [v15 addOutput:v40];

          ++v35;
        }

        while (v50 != v35);
        v50 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v50);
    }

    *(v15 + 224) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v15 + 232) = 0;
    *(v15 + 152) = [v48 copy];
    *(v15 + 160) = [v49 copy];
    *(v15 + 168) = [v46 copy];
    *(v15 + 176) = [v47 copy];
    *(v15 + 248) = FigDispatchQueueCreateWithPriority();
    *(v15 + 256) = dispatch_group_create();
    *(v15 + 272) = dispatch_group_create();
    *(v15 + 288) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v15 + 296) = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(BWStillImageCoordinatorNode *)v15 _setupStateMachineWithAllStateTransitionsHandler:v43];
    *(v15 + 216) = 2;
    *(v15 + 432) = 0;
  }

  return v15;
}

- (void)dealloc
{
  if ([(NSMutableArray *)self->_requestQueue count])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = [(NSMutableArray *)self->_requestQueue count];
    requestQueue = self->_requestQueue;
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = requestQueue;
    v7 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCoordinatorNode.m", 552, @"LastShownDate:BWStillImageCoordinatorNode.m:552", @"LastShownBuild:BWStillImageCoordinatorNode.m:552", 0);
    free(v7);
  }

  shotBufferWaitGroup = self->_shotBufferWaitGroup;
  if (shotBufferWaitGroup)
  {
    dispatch_group_leave(shotBufferWaitGroup);
  }

  v9.receiver = self;
  v9.super_class = BWStillImageCoordinatorNode;
  [(BWNode *)&v9 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs", a3), "objectAtIndexedSubscript:", [a4 index]);
  v6 = [a4 format];

  [v5 setFormat:v6];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (dword_1ED844530)
  {
    v20 = 0;
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_stillImageCapturePipeliningMode == 2 && !self->_responsiveShutterEnabledViaAPI)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(BWNode *)self inputs];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v9 resolvedAttachedMediaKeys])
          {
            v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Attached media isn't supported when the pipeline mode is %@, resolvedAttachedMediaKeys %@ for input %@", BWPhotoEncoderStringFromEncodingScheme(self->_stillImageCapturePipeliningMode), objc_msgSend(v9, "resolvedAttachedMediaKeys"), v9), 0}];
            objc_exception_throw(v10);
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v13.receiver = self;
  v13.super_class = BWStillImageCoordinatorNode;
  [(BWNode *)&v13 prepareForCurrentConfigurationToBecomeLive:v11];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (dword_1ED844530)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5, v10, v11])
  {
    stillImageDispatchGroup = self->_stillImageDispatchGroup;
    stillImageDispatchQueue = self->_stillImageDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__BWStillImageCoordinatorNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
    block[3] = &unk_1E7990178;
    block[4] = self;
    block[5] = a3;
    dispatch_group_notify(stillImageDispatchGroup, stillImageDispatchQueue, block);
  }
}

void __87__BWStillImageCoordinatorNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke(uint64_t a1)
{
  if (dword_1ED844530)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 32) outputs];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * i) makeConfiguredFormatLive];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 128) = 1;
  *(*(a1 + 32) + 129) = 0;
  os_unfair_lock_lock((*(a1 + 32) + 232));
  v8 = [*(*(a1 + 32) + 224) count];
  os_unfair_lock_unlock((*(a1 + 32) + 232));
  if (v8 >= 1)
  {
    if (dword_1ED844530)
    {
      v28 = 0;
      v27 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v28;
      if (os_log_type_enabled(v9, v27))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v23 = 136315394;
        v24 = "[BWStillImageCoordinatorNode configurationWithID:updatedFormat:didBecomeLiveForInput:]_block_invoke";
        v25 = 1026;
        v26 = v8;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    do
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        dispatch_group_enter(*(v12 + 256));
      }

      --v8;
    }

    while (v8);
    v13 = *(a1 + 32);
    v14 = *(v13 + 248);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__BWStillImageCoordinatorNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke_62;
    block[3] = &unk_1E798F870;
    block[4] = v13;
    dispatch_async(v14, block);
  }
}

uint64_t __87__BWStillImageCoordinatorNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke_62(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) currentState];
  v3 = *(*(a1 + 32) + 280);
  if (v2 == 1)
  {
    v4 = 4;
  }

  else
  {
    result = [v3 currentState];
    if (result != 2)
    {
      return result;
    }

    v3 = *(*(a1 + 32) + 280);
    v4 = 8;
  }

  return [v3 transitionToState:v4];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (dword_1ED844530)
  {
    v22 = 0;
    v21 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:0, a4, v13, v14])
  {
    stillImageDispatchQueue = self->_stillImageDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__BWStillImageCoordinatorNode_didReachEndOfDataForConfigurationID_input___block_invoke;
    block[3] = &unk_1E79973A0;
    v18 = a3 != 0;
    block[4] = a3;
    block[5] = self;
    dispatch_async(stillImageDispatchQueue, block);
    if (dword_1ED844530)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v22;
      if (os_log_type_enabled(v8, v21))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v19 = 136315138;
        v20 = "[BWStillImageCoordinatorNode didReachEndOfDataForConfigurationID:input:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    stillImageDispatchGroup = self->_stillImageDispatchGroup;
    v12 = self->_stillImageDispatchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__BWStillImageCoordinatorNode_didReachEndOfDataForConfigurationID_input___block_invoke_64;
    v15[3] = &unk_1E79973A0;
    v16 = a3 != 0;
    v15[4] = a3;
    v15[5] = self;
    dispatch_group_notify(stillImageDispatchGroup, v12, v15);
  }
}

uint64_t __73__BWStillImageCoordinatorNode_didReachEndOfDataForConfigurationID_input___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    if (dword_1ED844530)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v3 = *(result + 40);
    if (*(v3 + 312))
    {
      result = [*(v3 + 280) currentState];
      if (result != 1024)
      {
        v4 = *(*(v1 + 40) + 280);

        return [v4 transitionToState:1024];
      }
    }
  }

  return result;
}

uint64_t __73__BWStillImageCoordinatorNode_didReachEndOfDataForConfigurationID_input___block_invoke_64(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (!dword_1ED844530)
    {
      goto LABEL_14;
    }

    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if (dword_1ED844530)
    {
      v28 = 0;
      v27 = OS_LOG_TYPE_DEFAULT;
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(*(a1 + 40) + 144) = 0;
    [*(*(a1 + 40) + 560) stop];

    *(*(a1 + 40) + 560) = 0;
    *(*(a1 + 40) + 456) = 0;
  }

  if (dword_1ED844530)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v28;
    if (os_log_type_enabled(v4, v27))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v7 = [objc_msgSend(*(a1 + 40) "outputs")];
      v8 = *(a1 + 32);
      v21 = 136315650;
      v22 = "[BWStillImageCoordinatorNode didReachEndOfDataForConfigurationID:input:]_block_invoke";
      v23 = 1026;
      v24 = v7;
      v25 = 2114;
      v26 = v8;
      LODWORD(v15) = 28;
      v14 = &v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_14:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [*(a1 + 40) outputs];
  result = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v13++) markEndOfLiveOutputForConfigurationID:*(a1 + 32)];
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

- (int)initiateStillImageCaptureNowWithSettings:(id)a3
{
  if (a3 && ([a3 stillImageUserInitiatedRequestPTS], (v6 & 1) != 0))
  {
    if ([a3 stillImageUserInitiatedRequestTime])
    {
      return [(BWStillImageCoordinatorNode *)self _enqueueRequestWithSettings:a3 serviceRequestsIfNecessary:1];
    }

    [BWStillImageCoordinatorNode initiateStillImageCaptureNowWithSettings:];
  }

  else
  {
    [BWStillImageCoordinatorNode initiateStillImageCaptureNowWithSettings:];
  }

  return -12780;
}

- (int)captureStillImageNowWithSettings:(id)a3
{
  if (dword_1ED844530)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [(BWStillImageCoordinatorNode *)self _enqueueRequestWithSettings:a3 serviceRequestsIfNecessary:1, v7, v8];
}

- (int)prepareStillImageCaptureNowWithSettings:(id)a3
{
  if (dword_1ED844530)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [(BWStillImageCoordinatorNode *)self _enqueueRequestWithSettings:a3 serviceRequestsIfNecessary:1, v7, v8];
}

- (int)beginStillImageMomentCaptureWithSettings:(id)a3
{
  if (dword_1ED844530)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a3 isBeginMomentCaptureSettings])
  {
    return [(BWStillImageCoordinatorNode *)self _enqueueRequestWithSettings:a3 serviceRequestsIfNecessary:1];
  }

  [BWStillImageCoordinatorNode beginStillImageMomentCaptureWithSettings:];
  return -12780;
}

- (int)cancelStillImageMomentCaptureWithSettingsID:(int64_t)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (dword_1ED844530)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWFigVideoCaptureDevice *)self->_captureDevice zeroShutterLagCancelWaitingForTimeMachinesForSettingsID:a3, v9, v10];
  os_unfair_lock_lock(&self->_requestQueueLock);
  self->_momentCaptureLastCancelledSettingsID = a3;
  os_unfair_lock_unlock(&self->_requestQueueLock);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"canceling moment capture for captureID:%lld", a3];
  dispatch_group_enter(self->_stillImageDispatchGroup);
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__BWStillImageCoordinatorNode_cancelStillImageMomentCaptureWithSettingsID___block_invoke;
  block[3] = &unk_1E79973C8;
  block[4] = self;
  block[5] = &v14;
  block[6] = a3;
  dispatch_sync(stillImageDispatchQueue, block);
  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __75__BWStillImageCoordinatorNode_cancelStillImageMomentCaptureWithSettingsID___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 280) currentState] == 0x2000)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0x10000;
  }

  v3 = *(*(a1 + 32) + 280);

  return [v3 transitionToState:v2];
}

- (int)commitStillImageMomentCaptureWithSettings:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (dword_1ED844530)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&self->_requestQueueLock);
  v6 = [a3 settingsID];
  self->_momentCaptureLastComittedSettingsID = v6;
  if (self->_momentCaptureUnfiredWillBeginCaptureBeforeResolvingSettingsCallbackSettingsID == v6)
  {
    self->_momentCaptureUnfiredWillBeginCaptureBeforeResolvingSettingsCallbackSettingsID = 0;
    os_unfair_lock_unlock(&self->_requestQueueLock);
    if (v6 >= 1)
    {
      [objc_loadWeak(&self->_stillImageCaptureStatusDelegate) stillImageCoordinator:self willBeginCaptureBeforeResolvingSettingsForID:v6];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_requestQueueLock);
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"commit moment capture for captureID:%lld", objc_msgSend(a3, "settingsID", v10, v11)];
  dispatch_group_enter(self->_stillImageDispatchGroup);
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke;
  block[3] = &unk_1E79906C0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v15;
  dispatch_sync(stillImageDispatchQueue, block);
  v8 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 280) currentState] == 0x2000)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0x10000;
  }

  v3 = *(*(a1 + 32) + 280);

  return [v3 transitionToState:v2];
}

uint64_t __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 280) currentState] == 4096)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0x4000;
  }

  v3 = *(*(a1 + 32) + 280);

  return [v3 transitionToState:v2];
}

void __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 280) currentState] == 0x4000)
  {
    v2 = *(a1 + 32);

    [(BWStillImageCoordinatorNode *)v2 _attemptToCompleteRequest];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v7 = CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
  if (!v7)
  {
    LODWORD(v28) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v38 = 0;
    v9 = _os_log_send_and_compose_impl();
    v21 = 0;
    FigCapturePleaseFileRadar(7, v9, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCoordinatorNode.m", 1099, @"LastShownDate:BWStillImageCoordinatorNode.m:1099", @"LastShownBuild:BWStillImageCoordinatorNode.m:1099", 0);
    free(v9);
  }

  v10 = [(BWFigVideoCaptureDevice *)self->_captureDevice sensorRawHighResolutionFlavorForDimensions:BWPixelBufferDimensionsFromSampleBuffer(a3)];
  if (dword_1ED844530)
  {
    LODWORD(v28) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_stillImageCapturePipeliningMode == 2)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    if (ImageBuffer)
    {
      v13 = ImageBuffer;
      os_unfair_lock_lock(&self->_bufferTrackingLock);
      if (v10 == 2)
      {
        self->_inUseBufferCount += self->_ultraHighResFrameCountExpansionFactor;
        v14 = &OBJC_IVAR___BWStillImageCoordinatorNode__inUseUltraHighResBufferCount;
      }

      else
      {
        ++self->_inUseBufferCount;
        if (v10 != 1)
        {
LABEL_12:
          if (*MEMORY[0x1E695FF58] == 1)
          {
            [objc_opt_class() maxShotBufferCapacity];
            kdebug_trace();
          }

          os_unfair_lock_unlock(&self->_bufferTrackingLock);
          v15 = [FigWeakReference weakReferenceToObject:self];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke;
          v32[3] = &unk_1E7991CF0;
          v32[4] = v15;
          v33 = v10;
          [BWIOSurfaceTracking trackPixelBuffer:v13 surfaceUseCountIsZeroHandler:v32];
          goto LABEL_15;
        }

        v14 = &OBJC_IVAR___BWStillImageCoordinatorNode__inUseZoomBasedBufferCount;
      }

      ++*(&self->super.super.isa + *v14);
      goto LABEL_12;
    }
  }

LABEL_15:
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  LOBYTE(v37) = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  dispatch_group_enter(self->_stillImageDispatchGroup);
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke_2;
  block[3] = &unk_1E7997418;
  v27 = v10;
  block[4] = self;
  block[5] = v7;
  block[8] = &v34;
  block[9] = a3;
  block[6] = a4;
  block[7] = &v28;
  dispatch_sync(stillImageDispatchQueue, block);
  if (*(v35 + 24) == 1)
  {
    if (dword_1ED844530)
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self outputs];
    if (*(v29 + 24) == 1)
    {
      stillImageDispatchGroup = self->_stillImageDispatchGroup;
      v19 = self->_stillImageDispatchQueue;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke_98;
      v22[3] = &unk_1E798F870;
      v22[4] = self;
      dispatch_group_async(stillImageDispatchGroup, v19, v22);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t (*a14)(), void *a15, uint64_t a16, int a17, int a18, int a19, int a20, __int16 a21, __int16 a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int16 a40, char a41, char a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v56 = [*(a1 + 32) referencedObject];
  v63 = *(a1 + 40);

  [(BWStillImageCoordinatorNode *)v56 _stoppedUsingBufferWithSensorRawHighResolutionFlavor:v63, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  if (self->_currentRequestedStillImageCaptureSettings)
  {
    portTypeToInput = self->_portTypeToInput;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__BWStillImageCoordinatorNode_handleNodeError_forInput___block_invoke;
    v15[3] = &unk_1E7997440;
    v15[4] = a4;
    v15[5] = &v16;
    [(NSDictionary *)portTypeToInput enumerateKeysAndObjectsUsingBlock:v15];
    v8 = [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings captureStreamSettingsForPortType:v17[5]];
    v9 = [v8 expectedFrameCaptureCount];
    stillImageDispatchQueue = self->_stillImageDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__BWStillImageCoordinatorNode_handleNodeError_forInput___block_invoke_2;
    block[3] = &unk_1E7997468;
    block[6] = &v16;
    block[7] = v22;
    v14 = v9;
    block[4] = self;
    block[5] = v8;
    dispatch_sync(stillImageDispatchQueue, block);
    if ([v17[5] isEqualToString:*off_1E798A0E8])
    {
      v11 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);
      v12 = +[BWNodeError newError:sourceNode:stillImageSettings:metadata:](BWNodeError, "newError:sourceNode:stillImageSettings:metadata:", [a3 errorCode], self, -[BWStillImageCoordinatorNode _currentStillImageSettings](self), objc_msgSend(a3, "metadata"));
      [v11 emitNodeError:v12];
    }
  }

  else
  {
    FigDebugAssert3();
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
}

uint64_t __56__BWStillImageCoordinatorNode_handleNodeError_forInput___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) index];
  result = [a3 index];
  if (v8 == result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t __56__BWStillImageCoordinatorNode_handleNodeError_forInput___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [objc_msgSend(*(*(a1 + 32) + 288) objectForKeyedSubscript:{*(*(*(a1 + 48) + 8) + 40)), "intValue"}] + 1;
  result = [*(*(a1 + 32) + 288) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", *(*(*(a1 + 56) + 8) + 24)), *(*(*(a1 + 48) + 8) + 40)}];
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 64))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "expectedUltraHighResFrameCaptureCount")}];
    v4 = *(*(a1 + 32) + 296);
    v5 = *(*(*(a1 + 48) + 8) + 40);

    return [v4 setObject:v3 forKeyedSubscript:v5];
  }

  return result;
}

- (void)clientReceivedPayloadForSettings:(id)a3 status:(int)a4 clientIsMidStillImageGraph:(BOOL)a5
{
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__BWStillImageCoordinatorNode_clientReceivedPayloadForSettings_status_clientIsMidStillImageGraph___block_invoke;
  block[3] = &unk_1E7991B48;
  v8 = a5;
  block[4] = self;
  block[5] = a3;
  v7 = a4;
  dispatch_async(stillImageDispatchQueue, block);
}

- (void)willStopGraph:(BOOL)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__BWStillImageCoordinatorNode_willStopGraph___block_invoke;
  block[3] = &unk_1E7997490;
  block[4] = self;
  block[5] = &v13;
  v11 = a3;
  block[6] = v12;
  block[7] = &v17;
  dispatch_sync(stillImageDispatchQueue, block);
  v5 = v18[6];
  if (v5 > 0.0)
  {
    stillImageGraphStopDispatchGroup = self->_stillImageGraphStopDispatchGroup;
    v7 = dispatch_time(0, (v5 * 1000000000.0));
    if (dispatch_group_wait(stillImageGraphStopDispatchGroup, v7))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      BWPhotoEncoderStringFromEncodingScheme(*(v14 + 6));
      v9 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(7, v9, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCoordinatorNode.m", 1456, @"LastShownDate:BWStillImageCoordinatorNode.m:1456", @"LastShownBuild:BWStillImageCoordinatorNode.m:1456", 0);
      free(v9);
    }
  }

  [(BWStillImageCoordinatorNode *)v12 willStopGraph:&v17];
}

uint64_t __45__BWStillImageCoordinatorNode_willStopGraph___block_invoke(uint64_t a1)
{
  if (dword_1ED844530)
  {
    v48 = 0;
    v47 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(a1 + 32) + 128) = 0;
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 320) captureType];
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 320) settingsID];
  result = [*(*(a1 + 32) + 280) currentState];
  if (result != 1)
  {
    v4 = result;
    if (*(a1 + 64))
    {
      goto LABEL_26;
    }

    v5 = 0;
    if (result >= 0x4000)
    {
      if (result == 0x4000 || result == 0x8000)
      {
        goto LABEL_12;
      }
    }

    else if (result == 512 || result == 0x2000)
    {
      goto LABEL_12;
    }

    v5 = 1;
LABEL_12:
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6 != 2)
    {
      v7 = 0;
      if (v6 == 11)
      {
        result = [*(*(a1 + 32) + 320) captureFlags];
        v7 = (result & 0x2000) == 0;
      }

      if (((v5 | v7) & 1) == 0)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v8 = [*(*(a1 + 32) + 320) captureStreamSettings];
        result = [v8 countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (result)
        {
          v9 = result;
          v10 = 0;
          v11 = *v44;
          do
          {
            v12 = 0;
            do
            {
              if (*v44 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v43 + 1) + 8 * v12);
              v14 = [objc_msgSend(*(*(a1 + 32) + 288) objectForKeyedSubscript:{objc_msgSend(v13, "portType")), "intValue"}];
              v15 = [v13 expectedFrameCaptureCount] - v14;
              if (v15 > v10)
              {
                v10 = v15;
              }

              ++v12;
            }

            while (v9 != v12);
            result = [v8 countByEnumeratingWithState:&v43 objects:v42 count:16];
            v9 = result;
          }

          while (result);
          goto LABEL_27;
        }
      }
    }

LABEL_26:
    v10 = 0;
LABEL_27:
    *(*(*(a1 + 56) + 8) + 24) = v10;
    if (*(*(*(a1 + 56) + 8) + 24) <= 0.0)
    {
      if (dword_1ED844530)
      {
        v48 = 0;
        v47 = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = v48;
        if (os_log_type_enabled(v22, v47))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v25 = [*(*(a1 + 32) + 280) labelForState:v4];
          if (*(a1 + 64))
          {
            v26 = "";
          }

          else
          {
            v26 = " not";
          }

          v27 = BWPhotoEncoderStringFromEncodingScheme(*(*(*(a1 + 40) + 8) + 24));
          v32 = 136316162;
          v33 = "[BWStillImageCoordinatorNode willStopGraph:]_block_invoke";
          v34 = 2114;
          v35 = v25;
          v36 = 1024;
          v37 = v4;
          v38 = 2080;
          v39 = *&v26;
          v40 = 2114;
          v41[0] = v27;
          LODWORD(v31) = 48;
          v29 = &v32;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [*(*(a1 + 32) + 280) transitionToState:{1024, v29, v31}];
    }

    else if (dword_1ED844530)
    {
      v48 = 0;
      v47 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v48;
      if (os_log_type_enabled(v16, v47))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = [*(*(a1 + 32) + 280) labelForState:v4];
        v20 = *(*(*(a1 + 56) + 8) + 24);
        v21 = BWPhotoEncoderStringFromEncodingScheme(*(*(*(a1 + 40) + 8) + 24));
        v32 = 136316418;
        v33 = "[BWStillImageCoordinatorNode willStopGraph:]_block_invoke";
        v34 = 2114;
        v35 = v19;
        v36 = 1024;
        v37 = v4;
        v38 = 2048;
        v39 = v20;
        v40 = 1024;
        LODWORD(v41[0]) = v10;
        WORD2(v41[0]) = 2114;
        *(v41 + 6) = v21;
        _os_log_send_and_compose_impl();
      }

      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (BOOL)shouldGraphLiveReconfigurationWait
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__BWStillImageCoordinatorNode_shouldGraphLiveReconfigurationWait__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stillImageDispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __65__BWStillImageCoordinatorNode_shouldGraphLiveReconfigurationWait__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  *(*&v2[1][2]._os_unfair_lock_opaque + 24) = [*(*(a1 + 32) + 280) currentState] != 1;
  v3 = *v2;
  if (LOBYTE((*v2)[32]._os_unfair_lock_opaque) == 1)
  {
    if (dword_1ED844530)
    {
      v30 = 0;
      v29 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *v2;
    }

    LOBYTE(v3[32]._os_unfair_lock_opaque) = 0;
    BYTE1((*v2)[32]._os_unfair_lock_opaque) = 1;
    os_unfair_lock_lock(*v2 + 58);
    v6 = [*&(*v2)[56]._os_unfair_lock_opaque count];
    os_unfair_lock_unlock(*v2 + 58);
    if (v6)
    {
      __65__BWStillImageCoordinatorNode_shouldGraphLiveReconfigurationWait__block_invoke_cold_1(v2, v6);
    }
  }

  else
  {
    v30 = 0;
    v29 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED844530)
  {
    v30 = 0;
    v29 = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v30;
    if (os_log_type_enabled(v7, v29))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = [*(*(a1 + 32) + 280) labelForState:{objc_msgSend(*(*(a1 + 32) + 280), "currentState")}];
      v11 = [*(*(a1 + 32) + 280) currentState];
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v12 = "wait";
      }

      else
      {
        v12 = "not wait";
      }

      v13 = BWPhotoEncoderStringFromEncodingScheme([*(*(a1 + 32) + 320) captureType]);
      v14 = [*(*(a1 + 32) + 320) settingsID];
      v17 = 136316418;
      v18 = "[BWStillImageCoordinatorNode shouldGraphLiveReconfigurationWait]_block_invoke";
      v19 = 2114;
      v20 = v10;
      v21 = 1026;
      v22 = v11;
      v23 = 2082;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2050;
      v28 = v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)setCompressedShotBuffer:(id)a3
{
  compressedShotBuffer = self->_compressedShotBuffer;
  if (compressedShotBuffer != a3)
  {

    self->_compressedShotBuffer = a3;
    if (a3)
    {
      self->_extraUncompressedShotBufferCapacityForThermalSystemPressureLevelSerious = 1;
      self->_extraUncompressedShotBufferCapacityForThermalSystemPressureLevelCritical = 4;
    }
  }
}

- (void)captureStreamWillBeginStillImageCapture:(id)a3
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__BWStillImageCoordinatorNode_captureStreamWillBeginStillImageCapture___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, block);
}

- (void)captureStream:(id)a3 didCaptureReferenceFrameWithPTS:(id *)a4 referenceFrameBracketedCaptureSequenceNumber:(id)a5
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __122__BWStillImageCoordinatorNode_captureStream_didCaptureReferenceFrameWithPTS_referenceFrameBracketedCaptureSequenceNumber___block_invoke;
  block[3] = &unk_1E7997200;
  v8 = *a4;
  block[4] = self;
  block[5] = a5;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, block);
}

- (uint64_t)_didResolveReferenceFrameBracketedCaptureSequenceNumber:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = [*(result + 320) expectReferenceFrameBracketedCaptureSequenceNumber];
      if (result)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v4 = [v3 outputs];
        result = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
        if (result)
        {
          v5 = result;
          v6 = *v10;
          do
          {
            v7 = 0;
            do
            {
              if (*v10 != v6)
              {
                objc_enumerationMutation(v4);
              }

              [*(*(&v9 + 1) + 8 * v7++) emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:{objc_msgSend(a2, "intValue")}];
            }

            while (v5 != v7);
            result = [v4 countByEnumeratingWithState:&v9 objects:v8 count:16];
            v5 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

- (void)captureStream:(id)a3 didCapturePreBracketedEV0ImageWithPTS:(id *)a4
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__BWStillImageCoordinatorNode_captureStream_didCapturePreBracketedEV0ImageWithPTS___block_invoke;
  v6[3] = &unk_1E7990150;
  v6[4] = self;
  v7 = *a4;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, v6);
}

- (void)captureStreamDidCompleteStillImageCapture:(id)a3
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__BWStillImageCoordinatorNode_captureStreamDidCompleteStillImageCapture___block_invoke;
  v5[3] = &unk_1E798F898;
  v5[4] = self;
  v5[5] = a3;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, v5);
}

- (void)captureStream:(id)a3 stillImageCaptureError:(int)a4
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__BWStillImageCoordinatorNode_captureStream_stillImageCaptureError___block_invoke;
  v6[3] = &unk_1E7991CF0;
  v6[4] = self;
  v7 = a4;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, v6);
}

- (void)node:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 forSettings:(id)a6
{
  stillImageDispatchGroup = self->_stillImageDispatchGroup;
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__BWStillImageCoordinatorNode_node_didSelectNewReferenceFrameWithPTS_transform_forSettings___block_invoke;
  v8[3] = &unk_1E79974B8;
  v9 = *a4;
  v8[4] = self;
  v8[5] = a5;
  v8[6] = a6;
  dispatch_group_async(stillImageDispatchGroup, stillImageDispatchQueue, v8);
}

uint64_t __92__BWStillImageCoordinatorNode_node_didSelectNewReferenceFrameWithPTS_transform_forSettings___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  return [(BWStillImageCoordinatorNode *)v2 _didSelectNewReferenceFrameWithPTS:v1 transform:v3 forSettings:?];
}

- (int)_enqueueRequestWithSettings:(id)a3 serviceRequestsIfNecessary:(BOOL)a4
{
  if (!a3)
  {
    [BWStillImageCoordinatorNode _enqueueRequestWithSettings:serviceRequestsIfNecessary:];
    return -12780;
  }

  v7 = [a3 isUserInitiatedRequestSettings];
  v8 = [a3 isClientInitiatedPrepareSettings];
  os_unfair_lock_lock(&self->_requestQueueLock);
  if (!v8)
  {
    if (v7)
    {
LABEL_9:
      [(NSMutableArray *)self->_requestQueue addObject:a3];
      goto LABEL_10;
    }

    if (self->_captureRequestCount <= 9)
    {
      [(NSMutableArray *)self->_requestQueue addObject:a3];
      ++self->_captureRequestCount;
      goto LABEL_10;
    }

LABEL_12:
    [BWStillImageCoordinatorNode _enqueueRequestWithSettings:? serviceRequestsIfNecessary:?];
    return -12773;
  }

  if (self->_prepareRequestCount > 9)
  {
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  [(NSMutableArray *)self->_requestQueue addObject:a3];
  ++self->_prepareRequestCount;
LABEL_10:
  os_unfair_lock_unlock(&self->_requestQueueLock);
  stillImageDispatchQueue = self->_stillImageDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__BWStillImageCoordinatorNode__enqueueRequestWithSettings_serviceRequestsIfNecessary___block_invoke;
  block[3] = &unk_1E79973A0;
  block[4] = self;
  block[5] = a3;
  v12 = a4;
  dispatch_async(stillImageDispatchQueue, block);
  return 0;
}

void __86__BWStillImageCoordinatorNode__enqueueRequestWithSettings_serviceRequestsIfNecessary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"enqueue request for captureID:%lld", objc_msgSend(*(a1 + 40), "settingsID")];
    dispatch_group_enter(*(v2 + 256));
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 128) == 1)
    {
      v4 = [*(v3 + 280) currentState];
      v5 = *(*(a1 + 32) + 280);
      if (v4 == 1)
      {
        v6 = 4;
      }

      else
      {
        if ([v5 currentState] != 2)
        {
          return;
        }

        v5 = *(*(a1 + 32) + 280);
        v6 = 8;
      }

      [v5 transitionToState:v6];
    }

    else if (dword_1ED844530)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)_unpackNextRequest
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWStillImageCoordinatorNode _unpackNextRequest];
  }

  os_unfair_lock_lock(&self->_requestQueueLock);
  [(NSMutableArray *)self->_requestQueue count];
  v3 = 240;
  currentRequestedStillImageCaptureSettings = [(NSMutableArray *)self->_requestQueue firstObject];
  self->_currentRequestedStillImageCaptureSettings = currentRequestedStillImageCaptureSettings;
  if (currentRequestedStillImageCaptureSettings)
  {
    [(NSMutableArray *)self->_requestQueue removeObjectAtIndex:0];
    currentRequestedStillImageCaptureSettings = self->_currentRequestedStillImageCaptureSettings;
  }

  if ([(FigCaptureStillImageSettings *)currentRequestedStillImageCaptureSettings isClientInitiatedPrepareSettings]|| (v3 = 236, ![(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings isUserInitiatedRequestSettings]))
  {
    v5 = *(&self->super.super.isa + v3);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      v7 = 0;
    }

    *(&self->super.super.isa + v3) = v7;
  }

  os_unfair_lock_unlock(&self->_requestQueueLock);
}

uint64_t __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke_2;
  v6[3] = &unk_1E7991270;
  v6[4] = v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [v2 initiateCaptureStillImageNowWithPTS:&v4 completionHandler:v6];
}

void __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke_3;
  v4[3] = &unk_1E7991CF0;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void __53__BWStillImageCoordinatorNode__beginResolvingCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 248);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BWStillImageCoordinatorNode__beginResolvingCapture__block_invoke_2;
  block[3] = &unk_1E798F870;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __53__BWStillImageCoordinatorNode__beginResolvingCapture__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 280) currentState];
  if (result == 128)
  {
    [*(a1 + 32) _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings];
    if ([*(*(a1 + 32) + 312) isBeginMomentCaptureSettings])
    {
      v3 = 2048;
    }

    else
    {
      v3 = 512;
    }

    v4 = *(*(a1 + 32) + 280);

    return [v4 transitionToState:v3];
  }

  return result;
}

- (void)_configureCurrentCaptureRequestStateForFigCaptureStillImageSettings
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWStillImageCoordinatorNode _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings];
  }

  if ([(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings isClientInitiatedPrepareSettings]|| [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings isUserInitiatedRequestSettings])
  {
    v3 = &OBJC_IVAR___BWStillImageCoordinatorNode__clientExpectedImagesOrErrorsForRequest;
    goto LABEL_6;
  }

  self->_currentResolvedStillImageCaptureSettings = [(BWFigVideoCaptureDevice *)self->_captureDevice stillImageCaptureSettingsWithSettings:self->_currentRequestedStillImageCaptureSettings speedOverQualityCaptureEnabled:[(BWStillImageCoordinatorNode *)self _speedOverQualityCaptureEnabled]];
  self->_currentResolvedStillImageProcessingSettings = [(BWStillImageCoordinatorNode *)self _resolveProcessingSettings];
  [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings setStillImageRequestTime:[(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings stillImageRequestTime]];
  [-[BWStillImageCaptureSettings metadata](self->_currentResolvedStillImageCaptureSettings "metadata")];
  if (dword_1ED844530)
  {
    v141 = 0;
    v140 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v5 = [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings captureStreamSettings:v93];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v124 objects:v123 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v125;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v125 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v124 + 1) + 8 * i);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_receivedImagesOrErrorsForRequestByPortType, "setObject:forKeyedSubscript:", &unk_1F2244338, [v10 portType]);
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_receivedUltraHighResImagesOrErrorsForRequestByPortType, "setObject:forKeyedSubscript:", &unk_1F2244338, [v10 portType]);
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v124 objects:v123 count:16];
    }

    while (v7);
  }

  self->_clientExpectedImagesOrErrorsForRequest = [(NSArray *)[(BWPhotoManifest *)[(BWStillImageProcessingSettings *)self->_currentResolvedStillImageProcessingSettings photoManifest] photoDescriptors] count];
  if (self->_stillImageCapturePipeliningMode == 1 && [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings burstQualityCaptureEnabled])
  {
    ++self->_numberOfBurstCapturesInFlight;
  }

  v11 = [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings deliverDeferredPhotoProxyImage];
  v116 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings aspectRatio];
  if ([(BWFigVideoCaptureDevice *)self->_captureDevice aspectRatio]!= v116)
  {
    if (dword_1ED844530)
    {
      v141 = 0;
      v140 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v141;
      if (os_log_type_enabled(v12, v140))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = BWAspectRatioToShortString([(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings aspectRatio]);
        v16 = BWAspectRatioToShortString([(BWFigVideoCaptureDevice *)self->_captureDevice aspectRatio]);
        v17 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID];
        v128 = 136315906;
        v129 = "[BWStillImageCoordinatorNode _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings]";
        v130 = 2114;
        v131 = v15;
        v132 = 2114;
        *v133 = v16;
        *&v133[8] = 2050;
        v134 = v17;
        LODWORD(v96) = 42;
        v94 = &v128;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setOutputWidth:[(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings originalOutputDimensions:v94]];
    [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setOutputHeight:[(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings originalOutputDimensions]>> 32];
    [objc_loadWeak(&self->_stillImageCaptureStatusDelegate) stillImageCoordinator:self updateSettingsAfterLiveReconfiguration:self->_currentRequestedStillImageCaptureSettings];
  }

  v18 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings outputDimensions];
  v19 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings thumbnailDimensions];
  v20 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings rawThumbnailDimensions];
  v21 = v11;
  v97 = HIDWORD(*&v18);
  v98 = v18;
  if (v11)
  {
    var1 = v18.var1;
  }

  else
  {
    var1 = 0;
  }

  if (v11)
  {
    var0 = v18.var0;
  }

  else
  {
    var0 = 0;
  }

  if (v11)
  {
    v24 = v19.var1;
  }

  else
  {
    v24 = 0;
  }

  v104 = HIDWORD(*&v19);
  v105 = v24;
  v101 = v19;
  v102 = HIDWORD(*&v20);
  if (v11)
  {
    v25 = v19.var0;
  }

  else
  {
    v25 = 0;
  }

  v107 = v25;
  if (v11)
  {
    v26 = v20.var1;
  }

  else
  {
    v26 = 0;
  }

  v109 = v26;
  v27 = v20;
  if (v11)
  {
    v28 = v20.var0;
  }

  else
  {
    v28 = 0;
  }

  v111 = v28;
  v118 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings resolutionFlavor];
  if (!v118)
  {
    v118 = 0;
    v100 = 0;
    goto LABEL_151;
  }

  if (![(NSArray *)self->_highResStillImageDimensions count]|| (v29 = [FigCaptureSourceFormatDimensions identifyDimensionsFromFlavor:v118 availableHighResStillImageDimensions:self->_highResStillImageDimensions]) == 0)
  {
    v100 = 0;
    goto LABEL_151;
  }

  v30 = v29;
  v31 = [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings captureFlags];
  v33 = (v31 & 0x100000000) == 0 && v118 == 2;
  v35 = (v31 & 0x100600000000) == 0 && v118 == 1;
  v100 = __PAIR64__(v33, v35);
  if (v33 || v35)
  {
    v41 = [FigCaptureSourceFormatDimensions identifyDimensionsFromFlavor:0 availableHighResStillImageDimensions:self->_highResStillImageDimensions];
    if (v41)
    {
      v30 = v41;
      v39 = [v41 dimensions];
      v40 = v116;
      if (v116)
      {
        v42 = BWAspectRatioValueFromAspectRatio(v116);
        v39 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v39, v42);
      }

      v37 = v27;
      v118 = 0;
      v38 = HIDWORD(v39);
      var1 = HIDWORD(v39);
      v36 = v39;
      goto LABEL_68;
    }

    v118 = 0;
LABEL_151:
    v117 = var1;
    v36 = var0;
    v115 = var0;
    v43 = v27;
    v38 = v97;
    v39 = v98;
    goto LABEL_76;
  }

  v36 = var0;
  v37 = v27;
  v38 = v97;
  v39 = v98;
  v40 = v116;
LABEL_68:
  if (v21)
  {
    v43 = v37;
    v44 = [v30 deferredPhotoProxyDimensions];
    if (v44 < 1 || SHIDWORD(v44) < 1)
    {
      v117 = var1;
      v115 = v36;
      v38 = var1;
      v39 = v36;
    }

    else
    {
      v45 = [v30 deferredPhotoProxyDimensions];
      v39 = v45;
      if (v40)
      {
        v46 = BWAspectRatioValueFromAspectRatio(v40);
        v47 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v39, v46);
        v38 = HIDWORD(v47);
        v39 = v47;
        v115 = v47;
        v117 = HIDWORD(v47);
      }

      else
      {
        v38 = HIDWORD(v45);
        v117 = HIDWORD(v45);
        v115 = v45;
      }
    }
  }

  else
  {
    v43 = v37;
    v117 = var1;
    v115 = v36;
  }

LABEL_76:
  if ([(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings deviceOrientationCorrectionEnabled]&& !self->_cinematicFramingWarpingRequired && ([(BWStillImageCoordinatorNode *)self _ensureDeviceOrientationMonitor], v76 = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor mostRecentPortraitLandscapeOrientation], v76))
  {
    v77 = v76;
    v99 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings outputMirroring];
    v78 = [-[NSArray firstObject](-[BWStillImageCaptureSettings captureStreamSettings](self->_currentResolvedStillImageCaptureSettings "captureStreamSettings")];
    if ([v78 isEqual:*off_1E798A0E0])
    {
      v120 = 1;
    }

    else
    {
      v120 = [v78 isEqual:*off_1E798A0F8];
    }

    v79 = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor rotationDegreesFromOrientation:v77 isFrontCamera:v120 isExternalCamera:[(BWFigVideoCaptureDevice *)self->_captureDevice isExternalVariant] isMirrored:v99 clientExpectsCameraMountedInLandscapeOrientation:[(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation]];
    v80 = v79;
    LODWORD(v48) = v101.var0;
    if (dword_1ED844530)
    {
      v121 = v79;
      v141 = 0;
      v140 = OS_LOG_TYPE_DEFAULT;
      v81 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v82 = v141;
      v83 = os_log_type_enabled(v81, v140);
      v84 = v82 & 0xFFFFFFFE;
      if (v83)
      {
        v84 = v82;
      }

      if (v84)
      {
        v85 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID];
        v86 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings outputRotationDegrees];
        v128 = 136315906;
        v129 = "[BWStillImageCoordinatorNode _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings]";
        v130 = 2048;
        v131 = v85;
        v132 = 1024;
        *v133 = v86;
        *&v133[4] = 1024;
        *&v133[6] = v121;
        LODWORD(v96) = 34;
        v94 = &v128;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v80 = v121;
    }

    [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setOutputRotationDegrees:v80, v94, v96];
    if (v80 == 270 || v80 == 90)
    {
      v39 = __ROR8__(v39 | (v38 << 32), 32);
      v38 = HIDWORD(v39);
      v48 = __ROR8__(v101, 32);
      v53 = HIDWORD(v48);
      v55 = __ROR8__(v43, 32);
      v54 = HIDWORD(v55);
      v115 = __ROR8__(v115 | (v117 << 32), 32);
      v117 = HIDWORD(v115);
      v36 = __ROR8__(v36 | (var1 << 32), 32);
      var1 = HIDWORD(v36);
      v51 = __ROR8__(v107 | (v105 << 32), 32);
      v52 = HIDWORD(v51);
      v87 = __ROR8__(v111 | (v109 << 32), 32);
      v49 = HIDWORD(v87);
      v50 = v87;
      if (dword_1ED844530)
      {
        v122 = v55;
        v103 = HIDWORD(v55);
        v106 = HIDWORD(v51);
        v108 = v51;
        v110 = v49;
        v113 = v50;
        v141 = 0;
        v140 = OS_LOG_TYPE_DEFAULT;
        v88 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v89 = v141;
        v90 = os_log_type_enabled(v88, v140);
        v91 = v89 & 0xFFFFFFFE;
        if (v90)
        {
          v91 = v89;
        }

        if (v91)
        {
          v92 = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID];
          v128 = 136316930;
          v129 = "[BWStillImageCoordinatorNode _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings]";
          v130 = 2048;
          v131 = v92;
          v132 = 1024;
          *v133 = v39;
          *&v133[4] = 1024;
          *&v133[6] = HIDWORD(v39);
          LOWORD(v134) = 1024;
          *(&v134 + 2) = v115;
          HIWORD(v134) = 1024;
          v135 = HIDWORD(v115);
          v136 = 1024;
          v137 = v36;
          v138 = 1024;
          v139 = HIDWORD(v36);
          LODWORD(v96) = 58;
          v94 = &v128;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LODWORD(v49) = v110;
        v50 = v113;
        LODWORD(v52) = v106;
        LODWORD(v51) = v108;
        LODWORD(v54) = v103;
        LODWORD(v53) = HIDWORD(v48);
        LODWORD(v55) = v122;
      }

      goto LABEL_80;
    }
  }

  else
  {
    LODWORD(v48) = v101.var0;
  }

  LODWORD(v49) = v109;
  v50 = v111;
  LODWORD(v52) = v105;
  LODWORD(v51) = v107;
  LODWORD(v54) = v102;
  LODWORD(v53) = v104;
  LODWORD(v55) = v43.var0;
LABEL_80:
  v57 = v48 > v39 || v53 > v38;
  if (v57)
  {
    v58 = v38;
  }

  else
  {
    v58 = v53;
  }

  if (v57)
  {
    v59 = v39;
  }

  else
  {
    v59 = v48;
  }

  v61 = v55 > v39 || v54 > v38;
  v62 = v38;
  if (v61)
  {
    v63 = v38;
  }

  else
  {
    v63 = v54;
  }

  if (v61)
  {
    v64 = v39;
  }

  else
  {
    v64 = v55;
  }

  v66 = v51 > v36 || v52 > var1;
  v67 = !v66;
  if (v66)
  {
    v68 = var1;
  }

  else
  {
    v68 = v52;
  }

  v112 = v68;
  v69 = v39;
  if (v67)
  {
    v70 = v51;
  }

  else
  {
    v70 = v36;
  }

  v72 = v50 > v36 || v49 > var1;
  v73 = !v72;
  if (v72)
  {
    v74 = var1;
  }

  else
  {
    v74 = v49;
  }

  v119 = v74;
  if (v73)
  {
    v75 = v50;
  }

  else
  {
    v75 = v36;
  }

  v114 = v75;
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setOutputWidth:v69, v94, v96];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setOutputHeight:v62];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setThumbnailWidth:v59];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setThumbnailHeight:v58];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setRawThumbnailWidth:v64];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setRawThumbnailHeight:v63];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setResolutionFlavor:v118];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoProxyWidth:v115];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoProxyHeight:v117];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoFinalWidth:v36];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoFinalHeight:var1];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoFinalThumbnailDimensions:v70 | (v112 << 32)];
  [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setDeferredPhotoFinalRawThumbnailDimensions:v114 | (v119 << 32)];
  if ((HIDWORD(v100) | v100))
  {
    BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(self->_currentRequestedStillImageCaptureSettings, 0.0);
    [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings setBypassUpscaling:0];
  }

  v3 = &OBJC_IVAR___BWStillImageCoordinatorNode__firedDelegateCallbackFlags;
LABEL_6:
  *(&self->super.super.isa + *v3) = 0;
}

void __56__BWStillImageCoordinatorNode__attemptToCompleteRequest__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 248);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__BWStillImageCoordinatorNode__attemptToCompleteRequest__block_invoke_2;
  block[3] = &unk_1E798F870;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __58__BWStillImageCoordinatorNode__completeRequestWithStatus___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 232));
  v2 = [*(*(a1 + 32) + 224) count];
  os_unfair_lock_unlock((*(a1 + 32) + 232));
  if (dword_1ED844530)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a1 + 32);
  if (v2 && (*(v4 + 129) != 1 || *(a1 + 48) == -16800))
  {
    if (*(a1 + 52))
    {
      v5 = 8;
    }

    else
    {
      v5 = 4;
    }
  }

  else if (*(a1 + 52))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return [*(v4 + 280) transitionToState:{v5, v7, v8}];
}

- (uint64_t)_setupStateMachineWithAllStateTransitionsHandler:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [[FigStateMachine alloc] initWithLabel:@"BWStillImageCoordinator state machine" stateCount:17 initialState:1 owner:result];
    [(FigStateMachine *)v4 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v4 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v4 setLabel:@"InitiatedIdle" forState:2];
    [(FigStateMachine *)v4 setLabel:@"Ready" forState:4];
    [(FigStateMachine *)v4 setLabel:@"InitiatedReady" forState:8];
    [(FigStateMachine *)v4 setLabel:@"Preparing" forState:16];
    [(FigStateMachine *)v4 setLabel:@"InitiatedPreparing" forState:32];
    [(FigStateMachine *)v4 setLabel:@"Initiating" forState:64];
    [(FigStateMachine *)v4 setLabel:@"Resolving" forState:128];
    [(FigStateMachine *)v4 setLabel:@"InitiatedResolving" forState:256];
    [(FigStateMachine *)v4 setLabel:@"Capturing" forState:512];
    [(FigStateMachine *)v4 setLabel:@"Flushing" forState:1024];
    [(FigStateMachine *)v4 setLabel:@"BeginningMoment" forState:2048];
    [(FigStateMachine *)v4 setLabel:@"PostponingMoment" forState:4096];
    [(FigStateMachine *)v4 setLabel:@"CapturingUncommitedMoment" forState:0x2000];
    [(FigStateMachine *)v4 setLabel:@"CapturingCommittedMoment" forState:0x4000];
    [(FigStateMachine *)v4 setLabel:@"CancellingMomentWaitingForBuffers" forState:0x8000];
    [(FigStateMachine *)v4 setLabel:@"CancellingMoment" forState:0x10000];
    if (a2)
    {
      [(FigStateMachine *)v4 whenTransitioningToStates:0xFFFFFFFFLL callHandler:a2];
    }

    [(FigStateMachine *)v4 whenTransitioningToStates:3 callHandler:&__block_literal_global_60];
    [(FigStateMachine *)v4 whenTransitioningToStates:12 callHandler:&__block_literal_global_193];
    [(FigStateMachine *)v4 whenTransitioningToStates:48 callHandler:&__block_literal_global_195];
    [(FigStateMachine *)v4 whenTransitioningToState:64 callHandler:&__block_literal_global_197];
    [(FigStateMachine *)v4 whenTransitioningToStates:384 callHandler:&__block_literal_global_199];
    [(FigStateMachine *)v4 whenTransitioningToState:512 callHandler:&__block_literal_global_201];
    [(FigStateMachine *)v4 whenTransitioningToState:1024 callHandler:&__block_literal_global_203];
    [(FigStateMachine *)v4 whenTransitioningToState:2048 callHandler:&__block_literal_global_205];
    [(FigStateMachine *)v4 whenTransitioningToState:4096 callHandler:&__block_literal_global_207];
    [(FigStateMachine *)v4 whenTransitioningToState:0x2000 callHandler:&__block_literal_global_209];
    [(FigStateMachine *)v4 whenTransitioningToState:0x4000 callHandler:&__block_literal_global_211];
    [(FigStateMachine *)v4 whenTransitioningToState:0x8000 callHandler:&__block_literal_global_213];
    result = [(FigStateMachine *)v4 whenTransitioningToState:0x10000 callHandler:&__block_literal_global_215];
    *(v3 + 280) = v4;
  }

  return result;
}

void __75__BWStillImageCoordinatorNode_cancelStillImageMomentCaptureWithSettingsID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, os_log_type_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t (*a36)(uint64_t a1), void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_91();
  a49 = v50;
  a50 = v51;
  v53 = v52;
  if ([*(v52[4] + 312) isBeginMomentCaptureSettings] && objc_msgSend(OUTLINED_FUNCTION_82_3(), "settingsID") == v53[6])
  {
    v54 = OUTLINED_FUNCTION_55_7();
    v56 = *(v55 + 248);
    a34 = MEMORY[0x1E69E9820];
    a35 = 3221225472;
    a36 = __75__BWStillImageCoordinatorNode_cancelStillImageMomentCaptureWithSettingsID___block_invoke_2;
    a37 = &unk_1E798F870;
    a38 = v55;
    dispatch_group_async(v54, v56, &a34);
  }

  else
  {
    os_unfair_lock_lock((v53[4] + 232));
    if ([OUTLINED_FUNCTION_19_15() count])
    {
      v57 = 0;
      while ([objc_msgSend(OUTLINED_FUNCTION_19_15() objectAtIndexedSubscript:{v57), "settingsID"}] != v53[6])
      {
        if ([OUTLINED_FUNCTION_19_15() count] <= ++v57)
        {
          goto LABEL_8;
        }
      }

      [OUTLINED_FUNCTION_19_15() removeObjectAtIndex:v57];
      --*(v53[4] + 236);
      *(v53[4] + 236) &= ~(*(v53[4] + 236) >> 31);
      if (dword_1ED844530)
      {
        a33 = 0;
        a32 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v60 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, a32);
        if (OUTLINED_FUNCTION_6(v60))
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      os_unfair_lock_unlock((v53[4] + 232));
      v58 = 1;
    }

    else
    {
LABEL_8:
      os_unfair_lock_unlock((v53[4] + 232));
      v58 = 0;
      OUTLINED_FUNCTION_53_7(v53[5]);
    }

    Weak = objc_loadWeak((v53[4] + 192));
    v62 = v53[4];
    v63 = v53[6];
    a15 = *MEMORY[0x1E6960C70];
    a16 = *(MEMORY[0x1E6960C70] + 16);
    [Weak stillImageCoordinator:v62 didCancelMomentCaptureForSettingsID:v63 streamingDisruptionEndPTS:&a15];
    if (v58)
    {
      v64 = v53[4];
      if (*(v64 + 128) == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"found and canceled moment capture for captureID:%lld"];
        dispatch_group_leave(*(v64 + 256));
      }
    }
  }

  v65 = v53[4];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"canceling moment capture for captureID:%lld"];
  if (v65)
  {
    dispatch_group_leave(*(v65 + 256));
  }

  OUTLINED_FUNCTION_90_3();
}

void __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 312) isBeginMomentCaptureSettings] || (v2 = objc_msgSend(OUTLINED_FUNCTION_19_15(), "settingsID"), v2 != objc_msgSend(*(a1 + 40), "settingsID")))
  {
    os_unfair_lock_lock((*(a1 + 32) + 232));
    if ([*(*(a1 + 32) + 224) count])
    {
      v4 = 0;
      while (1)
      {
        v5 = [*(*(a1 + 32) + 224) objectAtIndexedSubscript:v4];
        v6 = [v5 settingsID];
        if (v6 == [*(a1 + 40) settingsID])
        {
          break;
        }

        if ([*(*(a1 + 32) + 224) count] <= ++v4)
        {
          goto LABEL_9;
        }
      }

      [v5 stillImageUserInitiatedRequestTime];
      [OUTLINED_FUNCTION_24() setStillImageUserInitiatedRequestTime:?];
      if (v5)
      {
        [v5 stillImageUserInitiatedRequestPTS];
      }

      else
      {
        v28 = 0uLL;
        v29 = 0;
      }

      v25 = *(a1 + 40);
      v33 = v28;
      v34 = v29;
      [v25 setStillImageUserInitiatedRequestPTS:&v33];
      [*(*(a1 + 32) + 224) replaceObjectAtIndex:v4 withObject:*(a1 + 40)];
      os_unfair_lock_unlock((*(a1 + 32) + 232));
    }

    else
    {
LABEL_9:
      os_unfair_lock_unlock((*(a1 + 32) + 232));
      OUTLINED_FUNCTION_53_7(*(a1 + 48));
    }

    goto LABEL_45;
  }

  [OUTLINED_FUNCTION_19_15() stillImageUserInitiatedRequestTime];
  [OUTLINED_FUNCTION_24() setStillImageUserInitiatedRequestTime:?];
  v3 = OUTLINED_FUNCTION_19_15();
  if (v3)
  {
    [v3 stillImageUserInitiatedRequestPTS];
  }

  else
  {
    v35 = 0uLL;
    v36 = 0;
  }

  v7 = *(a1 + 40);
  v33 = v35;
  v34 = v36;
  [v7 setStillImageUserInitiatedRequestPTS:&v33];
  [OUTLINED_FUNCTION_19_15() stillImageCaptureAbsoluteStartTime];
  [*(a1 + 40) setStillImageCaptureAbsoluteStartTime:?];
  [OUTLINED_FUNCTION_19_15() stillImageCaptureStartTime];
  [OUTLINED_FUNCTION_24() setStillImageCaptureStartTime:?];
  if ([OUTLINED_FUNCTION_19_15() stillImageRequestTime] >= 1)
  {
    [OUTLINED_FUNCTION_19_15() stillImageRequestTime];
    [OUTLINED_FUNCTION_24() setStillImageRequestTime:?];
  }

  [OUTLINED_FUNCTION_19_15() resolutionFlavor];
  [OUTLINED_FUNCTION_24() setResolutionFlavor:?];
  [OUTLINED_FUNCTION_19_15() bypassUpscaling];
  [OUTLINED_FUNCTION_24() setBypassUpscaling:?];
  [*(a1 + 40) outputWidth];
  v8 = [OUTLINED_FUNCTION_45_10() outputHeight] * v2;
  v9 = [OUTLINED_FUNCTION_19_15() outputWidth];
  v10 = [OUTLINED_FUNCTION_19_15() outputHeight];
  v11 = *(a1 + 32);
  if (v8 >= v10 * v9)
  {
    [*(v11 + 312) outputWidth];
    [OUTLINED_FUNCTION_24() setOutputWidth:?];
    [OUTLINED_FUNCTION_19_15() outputHeight];
    [OUTLINED_FUNCTION_24() setOutputHeight:?];
    [OUTLINED_FUNCTION_19_15() deferredPhotoProxyWidth];
    [OUTLINED_FUNCTION_24() setDeferredPhotoProxyWidth:?];
    [OUTLINED_FUNCTION_19_15() deferredPhotoProxyHeight];
    [OUTLINED_FUNCTION_24() setDeferredPhotoProxyHeight:?];
    [OUTLINED_FUNCTION_19_15() deferredPhotoFinalWidth];
    [OUTLINED_FUNCTION_24() setDeferredPhotoFinalWidth:?];
    [OUTLINED_FUNCTION_19_15() deferredPhotoFinalHeight];
  }

  else
  {
    v12 = *(v11 + 320);
    if (!v12 || ![v12 deliverDeferredPhotoProxyImage])
    {
      goto LABEL_21;
    }

    [*(a1 + 40) outputWidth];
    [OUTLINED_FUNCTION_24() setDeferredPhotoProxyWidth:?];
    [*(a1 + 40) outputHeight];
    [OUTLINED_FUNCTION_24() setDeferredPhotoProxyHeight:?];
    [*(a1 + 40) outputWidth];
    [OUTLINED_FUNCTION_24() setDeferredPhotoFinalWidth:?];
    [*(a1 + 40) outputHeight];
  }

  [OUTLINED_FUNCTION_24() setDeferredPhotoFinalHeight:?];
LABEL_21:
  [*(a1 + 40) thumbnailDimensions];
  [OUTLINED_FUNCTION_24() setDeferredPhotoFinalThumbnailDimensions:?];
  [*(a1 + 40) rawThumbnailDimensions];
  [OUTLINED_FUNCTION_24() setDeferredPhotoFinalRawThumbnailDimensions:?];
  [*(a1 + 40) thumbnailWidth];
  if (v9 > [OUTLINED_FUNCTION_45_10() outputWidth] || (objc_msgSend(*(a1 + 40), "thumbnailHeight"), v9 > objc_msgSend(OUTLINED_FUNCTION_45_10(), "outputHeight")))
  {
    [*(a1 + 40) outputWidth];
    [OUTLINED_FUNCTION_24() setThumbnailWidth:?];
    [*(a1 + 40) outputHeight];
    [OUTLINED_FUNCTION_24() setThumbnailHeight:?];
  }

  [*(a1 + 40) rawThumbnailWidth];
  if (v9 > [OUTLINED_FUNCTION_45_10() outputWidth] || (objc_msgSend(*(a1 + 40), "rawThumbnailHeight"), v9 > objc_msgSend(OUTLINED_FUNCTION_45_10(), "outputHeight")))
  {
    [*(a1 + 40) outputWidth];
    [OUTLINED_FUNCTION_24() setRawThumbnailWidth:?];
    [*(a1 + 40) outputHeight];
    [OUTLINED_FUNCTION_24() setRawThumbnailHeight:?];
  }

  v13 = [*(a1 + 40) deferredPhotoFinalThumbnailDimensions];
  if (v13 > [*(a1 + 40) deferredPhotoFinalDimensions] || (v14 = objc_msgSend(*(a1 + 40), "deferredPhotoFinalThumbnailDimensions") >> 32, v14 > (objc_msgSend(*(a1 + 40), "deferredPhotoFinalDimensions") >> 32)))
  {
    [*(a1 + 40) deferredPhotoFinalDimensions];
    [OUTLINED_FUNCTION_24() setDeferredPhotoFinalThumbnailDimensions:?];
  }

  v15 = [*(a1 + 40) deferredPhotoFinalRawThumbnailDimensions];
  if (v15 > [*(a1 + 40) deferredPhotoFinalDimensions] || (v16 = objc_msgSend(*(a1 + 40), "deferredPhotoFinalRawThumbnailDimensions") >> 32, v16 > (objc_msgSend(*(a1 + 40), "deferredPhotoFinalDimensions") >> 32)))
  {
    [*(a1 + 40) deferredPhotoFinalDimensions];
    [OUTLINED_FUNCTION_24() setDeferredPhotoFinalRawThumbnailDimensions:?];
  }

  if (*(*(a1 + 32) + 320) && [*(a1 + 40) depthDataDeliveryEnabled] && (objc_msgSend(OUTLINED_FUNCTION_82_3(), "captureFlags") & 0x800) == 0)
  {
    [*(a1 + 40) setDepthDataDeliveryEnabled:0];
  }

  *(*(a1 + 32) + 312) = *(a1 + 40);
  v17 = *(a1 + 32);
  if (*(v17 + 320))
  {

    *(*(a1 + 32) + 328) = 0;
    *(*(a1 + 32) + 328) = [(BWStillImageCoordinatorNode *)*(a1 + 32) _resolveProcessingSettings];
    if (![objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_82_3() "photoManifest")])
    {
      OUTLINED_FUNCTION_53_7(*(a1 + 48));
      v22 = OUTLINED_FUNCTION_55_7();
      v23 = *(v27 + 248);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_2;
      v32[3] = &unk_1E798F870;
      v32[4] = v27;
      v24 = v32;
      goto LABEL_42;
    }

    *(*(a1 + 32) + 304) = [OUTLINED_FUNCTION_82_3() expectedClientImageCount];
    v17 = *(a1 + 32);
  }

  if ([*(v17 + 280) currentState] != 128)
  {
    v18 = OUTLINED_FUNCTION_55_7();
    v20 = *(v19 + 248);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_3;
    block[3] = &unk_1E798F870;
    block[4] = v19;
    dispatch_group_async(v18, v20, block);
  }

  v21 = *(a1 + 32);
  if (*(v21 + 476) == 1)
  {
    v22 = *(v21 + 256);
    v23 = *(v21 + 248);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__BWStillImageCoordinatorNode_commitStillImageMomentCaptureWithSettings___block_invoke_4;
    v30[3] = &unk_1E798F870;
    v30[4] = v21;
    v24 = v30;
LABEL_42:
    dispatch_group_async(v22, v23, v24);
  }

LABEL_45:
  v26 = *(a1 + 32);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"commit moment capture for captureID:%lld", objc_msgSend(*(a1 + 40), "settingsID")];
  if (v26)
  {
    dispatch_group_leave(*(v26 + 256));
  }
}

- (void)_attemptToCompleteRequest
{
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (!*(a1 + 320) || ([OUTLINED_FUNCTION_76_2() isBeginMomentCaptureSettings] & 1) != 0 || (*(a1 + 352) & 1) != 0)
  {
    goto LABEL_12;
  }

  v2 = *(a1 + 320);
  v3 = [OUTLINED_FUNCTION_76_2() isOutputFormatCompressed];
  v4 = [v2 captureType];
  v5 = !v3 || v4 == 11;
  if (v5)
  {
    goto LABEL_12;
  }

  [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForCurrentRequest];
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = [(BWStillImageCoordinatorNode *)v6 _receivedFrameOrErrorCountForCurrentRequest];
  if (v2 > v7)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_33();
  if (v5)
  {
    v11 = [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForNextRequest];
    v12 = v11;
    if (v11 >= [objc_opt_class() maxShotBufferCapacity])
    {
      v12 = [objc_opt_class() maxShotBufferCapacity];
    }

    os_unfair_lock_lock((a1 + 432));
    v13 = [objc_opt_class() maxShotBufferCapacity];
    v14 = *(a1 + 436);
    if (v13 <= v14)
    {
      v16 = 0;
    }

    else
    {
      v15 = [objc_opt_class() maxShotBufferCapacity];
      v14 = *(a1 + 436);
      v16 = v15 - v14;
    }

    v20 = *(a1 + 480);
    os_unfair_lock_unlock((a1 + 432));
    if (v16 >= v12)
    {
      v23 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_9_29();
        kdebug_trace();
      }

      if (*(a1 + 456))
      {
        v24 = (v20 - v14) & ~((v20 - v14) >> 31);
        v25 = ([OUTLINED_FUNCTION_64_6() captureFlags] & 2) == 0;
        if (([OUTLINED_FUNCTION_34_11() passthroughEnabled] & v25) != 0)
        {
          v26 = (v11 - v24) & ~((v11 - v24) >> 31);
        }

        else
        {
          v26 = 0;
        }

        v27 = [OUTLINED_FUNCTION_34_11() hasUncompressedEquivalentFreeBufferCount:v26];
        v28 = [OUTLINED_FUNCTION_34_11() freeBufferCountIncreasedHandler];
        if (!v27)
        {
          if (!v28)
          {
            v64 = 0;
            v62 = 0;
            v63 = 0;
            OUTLINED_FUNCTION_95_4(*(a1 + 456), v29);
            if (dword_1ED844530)
            {
              OUTLINED_FUNCTION_58_3();
              v30 = OUTLINED_FUNCTION_54_0();
              OUTLINED_FUNCTION_11_20(v30);
              OUTLINED_FUNCTION_115_0();
              if (v5)
              {
                v32 = v31;
              }

              else
              {
                v32 = v23;
              }

              if (v32)
              {
                OUTLINED_FUNCTION_49_6();
                v52 = 136316162;
                OUTLINED_FUNCTION_32_8();
                v55 = v26;
                v56 = v33;
                v57 = v34;
                v58 = 2048;
                v59 = v35;
                v60 = 2048;
                v61 = v36;
                OUTLINED_FUNCTION_77_0();
                OUTLINED_FUNCTION_4_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_13_0();
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              OUTLINED_FUNCTION_83_2();
              kdebug_trace();
            }

            OUTLINED_FUNCTION_8_7();
            OUTLINED_FUNCTION_80_2();
            v49 = __56__BWStillImageCoordinatorNode__attemptToCompleteRequest__block_invoke;
            v50 = &unk_1E798F870;
            v51 = a1;
            [*(a1 + 456) setFreeBufferCountIncreasedHandler:v48];
          }

          goto LABEL_12;
        }

        if (v28)
        {
          [OUTLINED_FUNCTION_34_11() setFreeBufferCountIncreasedHandler:0];
          v64 = 0;
          v62 = 0;
          v63 = 0;
          v37 = OUTLINED_FUNCTION_34_11();
          OUTLINED_FUNCTION_95_4(v37, v38);
          if (*v23 == 1)
          {
            OUTLINED_FUNCTION_83_2();
            OUTLINED_FUNCTION_9_29();
            kdebug_trace();
          }

          if (dword_1ED844530)
          {
            OUTLINED_FUNCTION_58_3();
            v39 = OUTLINED_FUNCTION_54_0();
            OUTLINED_FUNCTION_11_20(v39);
            OUTLINED_FUNCTION_115_0();
            if (v5)
            {
              v41 = v40;
            }

            else
            {
              v41 = v23;
            }

            if (v41)
            {
              OUTLINED_FUNCTION_49_6();
              v52 = 136316162;
              OUTLINED_FUNCTION_32_8();
              v55 = v26;
              v56 = v42;
              v57 = v43;
              v58 = 2048;
              v59 = v44;
              v60 = 2048;
              v61 = v45;
              OUTLINED_FUNCTION_77_0();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0();
          }
        }
      }

      [BWStillImageCoordinatorNode _waitToMakePaceWithReferenceTime:a1];
      v46 = OUTLINED_FUNCTION_75_3();
      [(BWStillImageCoordinatorNode *)v46 _completeRequestWithStatus:v47];
    }

    else
    {
      if (dword_1ED844530)
      {
        v21 = OUTLINED_FUNCTION_57_7();
        v22 = os_log_type_enabled(v21, v62);
        if (OUTLINED_FUNCTION_6(v22))
        {
          v52 = 136315650;
          v53 = "[BWStillImageCoordinatorNode _attemptToCompleteRequest]";
          v54 = 1024;
          v55 = v16;
          v56 = 1024;
          v57 = v12;
          OUTLINED_FUNCTION_77_0();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_89_3();
    return;
  }

  os_unfair_lock_lock((a1 + 432));
  v8 = *(a1 + 436);
  os_unfair_lock_unlock((a1 + 432));
  if (v8 > 0)
  {
    if (dword_1ED844530)
    {
      v9 = OUTLINED_FUNCTION_57_7();
      if (os_log_type_enabled(v9, v62))
      {
        v10 = v63;
      }

      else
      {
        v10 = v63 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v52 = 136315394;
        v53 = "[BWStillImageCoordinatorNode _attemptToCompleteRequest]";
        v54 = 1024;
        v55 = v8;
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_12;
  }

  [BWStillImageCoordinatorNode _waitToMakePaceWithReferenceTime:a1];
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_89_3();

  [(BWStillImageCoordinatorNode *)v17 _completeRequestWithStatus:v18];
}

- (void)_stoppedUsingBufferWithSensorRawHighResolutionFlavor:(int)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_91();
    a54 = v55;
    a55 = v56;
    v58 = v57;
    v60 = v59;
    os_unfair_lock_lock(v59 + 108);
    if (v58 == 2)
    {
      OUTLINED_FUNCTION_51_8();
      *(v60 + 436) -= *(v60 + 448);
    }

    else
    {
      OUTLINED_FUNCTION_51_8();
      if (v58 == 1)
      {
        OUTLINED_FUNCTION_51_8();
      }
    }

    v61 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
      if (*v61 == 1)
      {
        [objc_opt_class() maxShotBufferCapacity];
        kdebug_trace();
      }
    }

    OUTLINED_FUNCTION_33();
    if (v62)
    {
      if (*(v60 + 496))
      {
        if ([objc_opt_class() maxShotBufferCapacity] <= *(v60 + 436))
        {
          v63 = 0;
        }

        else
        {
          v63 = [objc_opt_class() maxShotBufferCapacity] - *(v60 + 436);
        }

        if (v63 >= *(v60 + 504))
        {
          if (dword_1ED844530)
          {
            a43 = 0;
            a42 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v70 = OUTLINED_FUNCTION_96(os_log_and_send_and_compose_flags_and_os_log_type);
            if (OUTLINED_FUNCTION_6(v70))
            {
              a17 = 136315394;
              OUTLINED_FUNCTION_32_8();
              *(&a20 + 2) = v71;
              OUTLINED_FUNCTION_77_0();
              OUTLINED_FUNCTION_8_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_17_8();
          }

          dispatch_group_leave(*(v60 + 496));

          *(v60 + 496) = 0;
        }

        else if (dword_1ED844530)
        {
          a43 = 0;
          a42 = 0;
          v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v66 = OUTLINED_FUNCTION_96(v65);
          if (OUTLINED_FUNCTION_6(v66))
          {
            a17 = 136315650;
            OUTLINED_FUNCTION_32_8();
            *(&a20 + 2) = v63;
            a22 = v67;
            a23 = v68;
            OUTLINED_FUNCTION_77_0();
            OUTLINED_FUNCTION_8_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_17_8();
        }
      }

      os_unfair_lock_unlock((v60 + 432));
    }

    else
    {
      v64 = *(v60 + 436);
      os_unfair_lock_unlock((v60 + 432));
      if (v64)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_80_2();
    a14 = __84__BWStillImageCoordinatorNode__stoppedUsingBufferWithSensorRawHighResolutionFlavor___block_invoke;
    a15 = &unk_1E798F870;
    a16 = v60;
    dispatch_async(v72, &block);
LABEL_29:
    OUTLINED_FUNCTION_90_3();
  }
}

void __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke_2(uint64_t a1)
{
  PortType = BWSampleBufferGetPortType(*(a1 + 72));
  v4 = [objc_msgSend(*(*(a1 + 32) + 288) objectForKeyedSubscript:{PortType), "intValue"}];
  OUTLINED_FUNCTION_94_0([MEMORY[0x1E696AD98] numberWithInt:(v4 + 1)]);
  if (*(a1 + 80) == 2)
  {
    v5 = [objc_msgSend(*(*(a1 + 32) + 296) objectForKeyedSubscript:{PortType), "intValue"}];
    OUTLINED_FUNCTION_94_0([MEMORY[0x1E696AD98] numberWithInt:(v5 + 1)]);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 368);
  v8 = [(BWStillImageCoordinatorNode *)v6 _capturedAllFrames];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 304);
    LOBYTE(v9) = v10 < 1 || *(v9 + 308) >= v10;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8 & v9;
  v11 = *(a1 + 32);
  if (*(v11 + 476) != 1 || (*(*(*(a1 + 56) + 8) + 24) |= (v7 == 0) & v8, (v11 = *(a1 + 32)) != 0))
  {
    if (*(v11 + 344))
    {
      [*(v11 + 312) captureRequestIdentifier];
      if ([OUTLINED_FUNCTION_4() isEqualToString:?])
      {
        if (dword_1ED844530)
        {
          OUTLINED_FUNCTION_62();
          v12 = OUTLINED_FUNCTION_39_10();
          v1 = v46;
          os_log_type_enabled(v12, v45);
          OUTLINED_FUNCTION_115_0();
          if (v14)
          {
            v15 = v13;
          }

          else
          {
            v15 = v46;
          }

          if (v15)
          {
            v16 = BWStillImageSampleBufferToShortDisplayString(*(a1 + 72));
            v17 = [*(a1 + 40) settingsID];
            v38 = 136315650;
            v39 = "[BWStillImageCoordinatorNode renderSampleBuffer:forInput:]_block_invoke_2";
            v40 = 2114;
            *v41 = v16;
            *&v41[8] = 2050;
            *v42 = v17;
            LODWORD(v34) = 32;
            v33 = &v38;
            OUTLINED_FUNCTION_8_0();
            _os_log_send_and_compose_impl();
            v1 = v46;
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
        }

        OUTLINED_FUNCTION_56_7();
      }
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_56_7();
    [*(a1 + 48) index];
    v23 = [OUTLINED_FUNCTION_4() objectAtIndexedSubscript:?];
    if (dword_1ED844530)
    {
      OUTLINED_FUNCTION_62();
      v24 = OUTLINED_FUNCTION_39_10();
      os_log_type_enabled(v24, v45);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        v25 = [v23 count] + 1;
        v26 = [*(a1 + 48) index];
        v27 = BWStillImageSampleBufferToDisplayString(*(a1 + 72));
        v28 = [*(*(a1 + 32) + 320) settingsID];
        v38 = 136316163;
        v39 = "[BWStillImageCoordinatorNode renderSampleBuffer:forInput:]_block_invoke";
        v40 = 1024;
        *v41 = v25;
        *&v41[4] = 1024;
        *&v41[6] = v26;
        *v42 = 2113;
        *&v42[2] = v27;
        v43 = 2048;
        v44 = v28;
        LODWORD(v34) = 44;
        v33 = &v38;
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    [v23 addObject:{*(a1 + 72), v33, v34}];
    [(BWStillImageCoordinatorNode *)*(a1 + 32) _cancelMomentCaptureIfNeeded];
    OUTLINED_FUNCTION_88_2();
    if (v14)
    {
      OUTLINED_FUNCTION_88_2();
      if (v14)
      {
        goto LABEL_21;
      }
    }
  }

  else if (*(*(a1 + 32) + 352))
  {
LABEL_21:
    OUTLINED_FUNCTION_56_7();
    v18 = *(a1 + 72);
    if (v18)
    {
      CFRetain(v18);
      v19 = *(a1 + 72);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 256);
    v22 = *(v20 + 248);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke_97;
    block[3] = &unk_1E79973F0;
    block[4] = v20;
    v37 = v19;
    v36 = *(a1 + 48);
    dispatch_group_async(v21, v22, block);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_52_9();
  if (v14)
  {
    v31 = *(a1 + 72);
    v32 = [(BWStillImageCoordinatorNode *)v29 _currentStillImageSettings];
    BWStillImageCoordinatorAddAttachmentsToSampleBuffer(v31, v32);
  }

LABEL_34:
  v30 = *(a1 + 32);
  if (v30)
  {
    dispatch_group_leave(*(v30 + 256));
  }

  OUTLINED_FUNCTION_89_3();
}

- (uint64_t)_capturedAllFrames
{
  if (!a1)
  {
    return 0;
  }

  [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForCurrentRequest];
  v3 = OUTLINED_FUNCTION_27_0();
  if (v1 <= [(BWStillImageCoordinatorNode *)v3 _receivedFrameOrErrorCountForCurrentRequest])
  {
    return 1;
  }

  v4 = [*(a1 + 320) captureStreamSettings];
  OUTLINED_FUNCTION_74_3();
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = MEMORY[0];
  LOBYTE(v9) = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (MEMORY[0] != v8)
      {
        objc_enumerationMutation(v4);
      }

      if (v9)
      {
        v9 = [objc_msgSend(*(8 * i) "adaptiveBracketingParameters")];
      }

      else
      {
        v9 = 0;
      }
    }

    OUTLINED_FUNCTION_74_3();
    v7 = [v4 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v7);
  return v9;
}

- (uint64_t)_cancelMomentCaptureIfNeeded
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = [*(v1 + 280) currentState];
    if (result == 0x8000)
    {
      value = *MEMORY[0x1E6960C70];
      flags = *(MEMORY[0x1E6960C70] + 12);
      timescale = *(MEMORY[0x1E6960C70] + 8);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = [*(v1 + 320) captureStreamSettings];
      v4 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v19;
LABEL_7:
        v7 = 0;
        while (1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v9 = [*(v1 + 152) objectForKeyedSubscript:{objc_msgSend(v8, "portType")}];
          OUTLINED_FUNCTION_98_3();
          v10 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
          if (((v10 != 0) & ([v8 captureFlags] >> 2)) != 0)
          {
            v9 = v10;
          }

          [v9 index];
          v11 = [objc_msgSend(OUTLINED_FUNCTION_37_0() "objectAtIndexedSubscript:"count"")];
          result = [v8 expectedFrameCaptureCount];
          if (v11 < result)
          {
            break;
          }

          v12 = [objc_msgSend(*(v1 + 368) objectAtIndexedSubscript:{objc_msgSend(v9, "index")), "lastObject"}];
          if (v12)
          {
            memset(&v16, 0, sizeof(v16));
            CMSampleBufferGetPresentationTimeStamp(&v16, v12);
            if ((flags & 1) == 0 || (time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, time2 = v16, CMTimeCompare(&time1, &time2) < 0))
            {
              value = v16.value;
              flags = v16.flags;
              timescale = v16.timescale;
              epoch = v16.epoch;
            }
          }

          if (v5 == ++v7)
          {
            v5 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
            if (v5)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        *(v1 + 408) = value;
        *(v1 + 416) = timescale;
        *(v1 + 420) = flags;
        *(v1 + 424) = epoch;
        return [*(v1 + 280) transitionToState:0x10000];
      }
    }
  }

  return result;
}

void __59__BWStillImageCoordinatorNode_renderSampleBuffer_forInput___block_invoke_97(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_86_3(a1);
  v4 = [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
  OUTLINED_FUNCTION_52_9();
  if (v5)
  {
    *(*(v1 + 32) + 352) = 0;
  }

  BWStillImageCoordinatorAddAttachmentsToSampleBuffer(*(v1 + 56), v4);
  if (dword_1ED844530)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v2)
    {
      BWStillImageSampleBufferToDisplayString(*(v1 + 56));
      [(BWStillImageSettings *)v4 settingsID];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    v7 = [objc_msgSend(v7 "outputs")];
  }

  [v7 emitSampleBuffer:*(v1 + 56)];
  v8 = *(v1 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  OUTLINED_FUNCTION_52_9();
  if (v5)
  {
    [(BWStillImageCoordinatorNode *)*(v1 + 32) _attemptToCompleteRequest];
  }
}

- (BWStillImageSettings)_currentStillImageSettings
{
  if (result)
  {
    v1 = [[BWStillImageSettings alloc] initWithRequestedSettings:result[9]._processingSettings captureSettings:result[10].super.isa processingSettings:result[10]._requestedSettings];

    return v1;
  }

  return result;
}

- (uint64_t)_ensureDeviceOrientationMonitor
{
  if (result)
  {
    v1 = result;
    if (!*(result + 560))
    {
      v2 = objc_alloc_init(BWDeviceOrientationMonitor);
      *(v1 + 560) = v2;

      return [(BWDeviceOrientationMonitor *)v2 start];
    }
  }

  return result;
}

- (void)_completeRequestWithStatus:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v4 = *(a1 + 312);
  if (v4)
  {
    if ([*(a1 + 312) isUserInitiatedRequestSettings])
    {
      v13 = a2 == 0;
    }

    else
    {
      if (![*(a1 + 312) isClientInitiatedPrepareSettings])
      {
        v5 = 0;
LABEL_23:
        if (!a2 && [*(a1 + 320) captureType] && *(a1 + 304) >= 1)
        {
          *(a1 + 528) = mach_absolute_time();
          v14 = FigHostTimeToNanoseconds();
          if (dword_1ED844530)
          {
            v22 = v14;
            OUTLINED_FUNCTION_62();
            v23 = OUTLINED_FUNCTION_39_10();
            if (os_log_type_enabled(v23, v35))
            {
              v15 = v36;
            }

            else
            {
              v15 = v36 & 0xFFFFFFFE;
            }

            if (v15)
            {
              if (*(a1 + 476))
              {
                v16 = @"[Shot Buffer] ";
              }

              else
              {
                v16 = &stru_1F216A3D0;
              }

              v27 = 136315650;
              v28 = "[BWStillImageCoordinatorNode _completeRequestWithStatus:]";
              v29 = 2112;
              v30 = v16;
              v31 = 2048;
              v32 = ((v22 / 1000) / 1000000.0) * 1000.0;
              LODWORD(v21) = 32;
              v20 = &v27;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(a1 + 520) = 0;
        }

        if (dword_1ED844530)
        {
          OUTLINED_FUNCTION_62();
          v17 = OUTLINED_FUNCTION_39_10();
          v18 = v36;
          if (os_log_type_enabled(v17, v35))
          {
            v19 = v18;
          }

          else
          {
            v19 = v18 & 0xFFFFFFFE;
          }

          if (v19)
          {
            v27 = 136315138;
            v28 = "[BWStillImageCoordinatorNode _completeRequestWithStatus:]";
            LODWORD(v21) = 12;
            v20 = &v27;
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
        }

        [(BWStillImageCoordinatorNode *)a1 _readyToRespondToRequest];
        goto LABEL_6;
      }

      v13 = [*(a1 + 280) currentState] == 32;
    }

    v5 = v13;
    goto LABEL_23;
  }

  v5 = 0;
LABEL_6:
  v6 = MEMORY[0x1E695FF58];
  v7 = *MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
    v7 = *v6;
  }

  if (v7)
  {
    v8 = fig_log_handle();
    if (os_signpost_enabled(v8))
    {
      v9 = [*(a1 + 312) settingsID];
      *buf = 67240192;
      v34 = v9;
      _os_signpost_emit_with_name_impl(&dword_1AC90E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StillCaptureRequest", " enableTelemetry=YES N1=%{public,signpost.telemetry:number1}d", buf, 8u);
    }
  }

  v10 = [*(a1 + 312) settingsID];

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;

  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  [*(a1 + 288) removeAllObjects];
  [*(a1 + 296) removeAllObjects];
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 353) = 0;

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  os_unfair_lock_lock((a1 + 232));
  *(a1 + 384) = 0;
  os_unfair_lock_unlock((a1 + 232));
  v11 = MEMORY[0x1E6960C70];
  *(a1 + 408) = *MEMORY[0x1E6960C70];
  *(a1 + 424) = *(v11 + 16);
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"complete request for captureID:%lld", v10];
    dispatch_group_leave(*(a1 + 256));
  }

  v12 = *(a1 + 248);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__BWStillImageCoordinatorNode__completeRequestWithStatus___block_invoke;
  block[3] = &unk_1E7997500;
  block[4] = a1;
  block[5] = v10;
  v25 = a2;
  v26 = v5;
  dispatch_async(v12, block);
}

- (void)captureStreamWillWaitForTimeMachineToFill:(id)a3
{
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (self->_currentRequestedStillImageCaptureSettings)
  {
    os_unfair_lock_lock(&self->_requestQueueLock);
    if ([(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings isBeginMomentCaptureSettings]&& (momentCaptureLastComittedSettingsID = self->_momentCaptureLastComittedSettingsID, momentCaptureLastComittedSettingsID < [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID]))
    {
      self->_momentCaptureUnfiredWillBeginCaptureBeforeResolvingSettingsCallbackSettingsID = [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID];

      os_unfair_lock_unlock(&self->_requestQueueLock);
    }

    else
    {
      os_unfair_lock_unlock(&self->_requestQueueLock);
      objc_loadWeak(&self->_stillImageCaptureStatusDelegate);
      [(FigCaptureStillImageSettings *)self->_currentRequestedStillImageCaptureSettings settingsID];
      v5 = OUTLINED_FUNCTION_40_9();

      [v5 stillImageCoordinator:self willBeginCaptureBeforeResolvingSettingsForID:?];
    }
  }
}

void __71__BWStillImageCoordinatorNode_captureStreamWillBeginStillImageCapture___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  if (*(v2 + 320))
  {
    if (*(v2 + 344))
    {
      [*(v2 + 312) captureRequestIdentifier];
      if ([OUTLINED_FUNCTION_4() isEqualToString:?])
      {
        return;
      }

      v2 = *(v1 + 32);
    }

    [(BWStillImageCoordinatorNode *)v2 _fireDelegateCallbackWithFlag:?];
  }
}

- (void)_fireDelegateCallbackWithFlag:(uint64_t)a1
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v4 = [[BWStillImageCaptureDelegateCallbackInfo alloc] initWithFlag:a2];
    [(BWStillImageCoordinatorNode *)a1 _fireDelegateCallbackWithInfo:v4];
  }
}

uint64_t __122__BWStillImageCoordinatorNode_captureStream_didCaptureReferenceFrameWithPTS_referenceFrameBracketedCaptureSequenceNumber___block_invoke(uint64_t a1)
{
  result = OUTLINED_FUNCTION_86_3(a1);
  if (*(result + 320))
  {
    if (*(result + 344))
    {
      [*(result + 312) captureRequestIdentifier];
      result = [OUTLINED_FUNCTION_4() isEqualToString:?];
      if (result)
      {
        return result;
      }

      result = *(v1 + 32);
    }

    v5 = *(v1 + 48);
    v6 = *(v1 + 64);
    [(BWStillImageCoordinatorNode *)result _didResolveStillImagePTS:0 isPreBracketedEV0:?];
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);

    return [(BWStillImageCoordinatorNode *)v3 _didResolveReferenceFrameBracketedCaptureSequenceNumber:v4];
  }

  return result;
}

- (void)_didResolveStillImagePTS:(void *)a3 isPreBracketedEV0:
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (a3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 16;
    }

    v6 = [BWStillImageCaptureDelegateCallbackInfo alloc];
    v8 = *a2;
    v9 = *(a2 + 2);
    [(BWStillImageCaptureDelegateCallbackInfo *)v6 initWithFlag:v5 pts:&v8 isPreBracketFrame:a3];
    v7 = OUTLINED_FUNCTION_27_0();
    [(BWStillImageCoordinatorNode *)v7 _fireDelegateCallbackWithInfo:a3];
  }
}

void __83__BWStillImageCoordinatorNode_captureStream_didCapturePreBracketedEV0ImageWithPTS___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_86_3(a1);
  if (*(v2 + 320))
  {
    if (*(v2 + 344))
    {
      [*(v2 + 312) captureRequestIdentifier];
      if ([OUTLINED_FUNCTION_4() isEqualToString:?])
      {
        return;
      }

      v2 = *(v1 + 32);
    }

    v3 = *(v1 + 40);
    v4 = *(v1 + 56);
    [(BWStillImageCoordinatorNode *)v2 _didResolveStillImagePTS:1 isPreBracketedEV0:?];
  }
}

void __73__BWStillImageCoordinatorNode_captureStreamDidCompleteStillImageCapture___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 320))
  {
    dispatch_group_leave(*(v1 + 272));
    [*(a1 + 40) portType];
    [OUTLINED_FUNCTION_19_15() masterPortType];
    if ([OUTLINED_FUNCTION_4() isEqualToString:?])
    {
      v3 = *(a1 + 32);

      [(BWStillImageCoordinatorNode *)v3 _didCaptureStillImage];
    }
  }
}

- (void)_didCaptureStillImage
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [(BWStillImageCoordinatorNode *)a1 _fireDelegateCallbackWithFlag:?];
  }
}

void __68__BWStillImageCoordinatorNode_captureStream_stillImageCaptureError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 320))
  {
    dispatch_group_leave(*(v1 + 272));
    [(BWStillImageCoordinatorNode *)*(a1 + 32) _fireDelegateCallbackWithFlag:?];
    if ([*(*(a1 + 32) + 280) currentState] == 0x2000)
    {
      *(*(a1 + 32) + 376) = *(a1 + 40);
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      [(BWStillImageCoordinatorNode *)v3 _flushStillImageRequestWithError:v4];
    }
  }
}

- (void)_flushStillImageRequestWithError:(uint64_t)a1
{
  if (a1)
  {
    if (dword_1ED844530)
    {
      OUTLINED_FUNCTION_81_2();
      v3 = OUTLINED_FUNCTION_35_2();
      if (os_log_type_enabled(v3, v28))
      {
        v4 = v29;
      }

      else
      {
        v4 = v29 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = [OUTLINED_FUNCTION_66_3() settingsID];
        [OUTLINED_FUNCTION_66_3() captureRequestIdentifier];
        OUTLINED_FUNCTION_79_2();
        *(v6 + 4) = "[BWStillImageCoordinatorNode _flushStillImageRequestWithError:]";
        *(v6 + 14) = v5;
        *(v6 + 30) = v7;
        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [*(a1 + 320) captureStreamSettings];
    OUTLINED_FUNCTION_47_0();
    obj = v8;
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      do
      {
        v12 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(8 * v12);
          v14 = [v13 portType];
          v15 = [objc_msgSend(*(a1 + 288) objectForKeyedSubscript:{v14), "intValue"}];
          v16 = [v13 expectedFrameCaptureCount];
          if ([v13 adaptiveBracketingParameters])
          {
            v16 = [v13 currentExpectedAdaptiveBracketedFrameCaptureCount];
          }

          v17 = v16 - v15;
          if (!v17)
          {
            if (*(a1 + 308) == *(a1 + 304))
            {
              goto LABEL_22;
            }

            v17 = [v13 expectedFrameCaptureCount];
          }

          if (v17 >= 1)
          {
            v18 = [BWNodeError newError:a2 sourceNode:a1 stillImageSettings:[(BWStillImageCoordinatorNode *)a1 _currentStillImageSettings] metadata:0];
            do
            {
              if ([v13 isYUVCapture])
              {
                [objc_msgSend(objc_msgSend(a1 "outputs")];
              }

              if ([v13 isSensorRawCapture])
              {
                [objc_msgSend(objc_msgSend(a1 "outputs")];
              }

              --v17;
            }

            while (v17);
          }

LABEL_22:
          ++v12;
        }

        while (v12 != v10);
        OUTLINED_FUNCTION_47_0();
        v19 = [obj countByEnumeratingWithState:? objects:? count:?];
        v10 = v19;
      }

      while (v19);
    }

    [(BWStillImageCoordinatorNode *)a1 _didCaptureStillImage];
    [(BWStillImageCoordinatorNode *)a1 _readyToRespondToRequest];
    if (*(a1 + 320))
    {

      *(a1 + 344) = [objc_msgSend(*(a1 + 312) "captureRequestIdentifier")];
      if (dword_1ED844530)
      {
        OUTLINED_FUNCTION_81_2();
        v20 = OUTLINED_FUNCTION_35_2();
        os_log_type_enabled(v20, v28);
        OUTLINED_FUNCTION_115_0();
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = v29;
        }

        if (v23)
        {
          v24 = [*(a1 + 312) settingsID];
          [*(a1 + 312) captureRequestIdentifier];
          OUTLINED_FUNCTION_79_2();
          *(v25 + 4) = "[BWStillImageCoordinatorNode _flushStillImageRequestWithError:]";
          *(v25 + 14) = v24;
          OUTLINED_FUNCTION_76();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
      }
    }

    else
    {
      [(BWStillImageCoordinatorNode *)a1 _completeRequestWithStatus:a2];
    }
  }
}

- (uint64_t)_didSelectNewReferenceFrameWithPTS:(uint64_t)a3 transform:(uint64_t)a4 forSettings:
{
  if (result)
  {
    v7 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    Weak = objc_loadWeak((v7 + 192));
    v9 = *a2;
    v10 = *(a2 + 2);
    return [Weak stillImageCoordinator:v7 didSelectNewReferenceFrameWithPTS:&v9 transform:a3 forSettings:a4];
  }

  return result;
}

- (void)_serviceNextRequest
{
  if (!a1)
  {
    return;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  [*(a1 + 280) currentState];
  [OUTLINED_FUNCTION_27_0() _unpackNextRequest];
  v3 = OUTLINED_FUNCTION_21_16();
  if (!v3)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v7 = 1;
    goto LABEL_16;
  }

  if ([v3 isClientInitiatedPrepareSettings])
  {
    v4 = v1 == 4;
    v5 = 32;
    v6 = 16;
    goto LABEL_7;
  }

  v8 = *(a1 + 128);
  v9 = [OUTLINED_FUNCTION_21_16() isUserInitiatedRequestSettings];
  if (v8 == 1)
  {
    if (v9)
    {
      if (v1 == 8)
      {
        FigCaptureGetFrameworkRadarComponent();
        v23 = 0;
        v22 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v7 = 1;
        OUTLINED_FUNCTION_39_0();
        v21 = 0;
        v13 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v14, v15, v16, v17, v18, 2036, v19, v20, &v21);
        free(v13);
        [*(a1 + 144) cancelPrepareToCaptureStillImageNow];
        [(BWStillImageCoordinatorNode *)a1 _completeRequestWithStatus:?];
      }

      else
      {
        v7 = 64;
      }

LABEL_16:
      if (v1 == 4)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (*(a1 + 312))
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      [*(a1 + 280) transitionToState:v11];
      return;
    }

    v4 = v1 == 4;
    v5 = 256;
    v6 = 128;
LABEL_7:
    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    [a1 _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings];
    v7 = 1024;
    goto LABEL_16;
  }

  [(BWStillImageCoordinatorNode *)a1 _completeRequestWithStatus:?];
}

- (void)_beginPreparingCapture
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    objc_loadWeak((a1 + 192));
    v2 = OUTLINED_FUNCTION_27_0();
    [(BWStillImageCoordinatorNode *)v2 _currentStillImageSettings];
    [OUTLINED_FUNCTION_40_9() stillImageCoordinator:a1 willPrepareStillImageCaptureWithSettings:? clientInitiated:?];
    v3 = OUTLINED_FUNCTION_75_3();

    [(BWStillImageCoordinatorNode *)v3 _completeRequestWithStatus:v4];
  }
}

- (uint64_t)_beginInitiatingCapture
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v10 = 0uLL;
    v11 = 0;
    v2 = *(v1 + 312);
    if (v2)
    {
      [v2 stillImageUserInitiatedRequestPTS];
    }

    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_80_2();
    v5 = __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke;
    v6 = &unk_1E7990150;
    v7 = v1;
    v8 = v10;
    v9 = v11;
    return [v3 prepareToCaptureStillImageNow:v4];
  }

  return result;
}

- (uint64_t)_beginResolvingCapture
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    mach_absolute_time();
    [OUTLINED_FUNCTION_66_3() setStillImageCaptureStartTime:?];
    v1[65] = [OUTLINED_FUNCTION_66_3() stillImageCaptureStartTime];
    v2 = MEMORY[0x1E695FF58];
    v3 = *MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [OUTLINED_FUNCTION_66_3() settingsID];
      OUTLINED_FUNCTION_10();
      kdebug_trace();
      v3 = *v2;
    }

    if (v3)
    {
      v4 = fig_log_handle();
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillCaptureRequest", &unk_1AD0FC9CB, buf, 2u);
      }
    }

    if ([OUTLINED_FUNCTION_84_3() currentState] == 256)
    {
      [v1 _configureCurrentCaptureRequestStateForFigCaptureStillImageSettings];
      return [OUTLINED_FUNCTION_84_3() transitionToState:512];
    }

    else
    {
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_80_2();
      v7 = __53__BWStillImageCoordinatorNode__beginResolvingCapture__block_invoke;
      v8 = &unk_1E798F870;
      v9 = v1;
      return [v5 prepareToCaptureStillImageNow:v6];
    }
  }

  return result;
}

- (void)_beginCapture
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [(BWStillImageCoordinatorNode *)a1 _fireDelegateCallbackWithFlag:?];
    if (*(a1 + 476) == 1)
    {
      v13 = 0;
      if ([(BWStillImageCoordinatorNode *)a1 _waitUntilShotBufferHasEnoughFreeBuffersWithTimeout:3.0 freeBufferCountOut:?])
      {
        if (*(a1 + 456))
        {
          v7 = v13;
          v8 = [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForCurrentRequest]- v7;
          v9 = ([OUTLINED_FUNCTION_64_6() captureFlags] & 2) == 0;
          if (([*(a1 + 456) passthroughEnabled] & v9) != 0)
          {
            v10 = 0;
          }

          else
          {
            v10 = v8;
          }

          [*(a1 + 456) flushAndWaitForUncompressedEquivalentFreeBufferCount:v10];
        }
      }
    }

    if ((*(a1 + 336) & 0x40) == 0)
    {
      Weak = objc_loadWeak((a1 + 192));
      [Weak stillImageCoordinator:a1 willPrepareStillImageCaptureWithSettings:-[BWStillImageCoordinatorNode _currentStillImageSettings](a1) clientInitiated:0];
      *(a1 + 336) |= 0x40u;
    }

    v2 = [objc_msgSend(OUTLINED_FUNCTION_64_6() "portTypes")];
    v3 = v2;
    if (v2 >= 1)
    {
      v4 = v2;
      do
      {
        dispatch_group_enter(*(a1 + 272));
        --v4;
      }

      while (v4);
    }

    v5 = [*(a1 + 144) captureStillImageNowWithSettings:*(a1 + 312) captureSettings:*(a1 + 320)];
    if (v5)
    {
      v12 = v5;
      FigDebugAssert3();
      if (v3 >= 1)
      {
        do
        {
          dispatch_group_leave(*(a1 + 272));
          --v3;
        }

        while (v3);
      }

      [(BWStillImageCoordinatorNode *)a1 _flushStillImageRequestWithError:v12];
    }

    else if ([OUTLINED_FUNCTION_84_3() currentState] == 512 || objc_msgSend(OUTLINED_FUNCTION_84_3(), "currentState") == 0x2000 && (OUTLINED_FUNCTION_33(), v6))
    {
      [(BWStillImageCoordinatorNode *)a1 _setupProcessing];
    }
  }
}

- (void)_beginMomentCapture
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    v35 = v34;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([*(v35 + 320) captureType] == 1)
    {
      [*(v35 + 320) masterPortType];
      v36 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4() "captureStreamSettingsForPortType:{"unifiedBracketedCaptureParams"), "count"}")] != 0;
    }

    else
    {
      v36 = ([*(v35 + 320) captureFlags] & 0x2000) == 0;
    }

    os_unfair_lock_lock((v35 + 232));
    v37 = [*(v35 + 312) settingsID];
    v38 = *(v35 + 392);
    os_unfair_lock_unlock((v35 + 232));
    v39 = v37 != v38 || dword_1ED844530 == 0;
    if (!v39)
    {
      OUTLINED_FUNCTION_62();
      v40 = OUTLINED_FUNCTION_39_10();
      os_log_type_enabled(v40, a33);
      OUTLINED_FUNCTION_115_0();
      if (v39)
      {
        a34 = v41;
      }

      if (a34)
      {
        [*(v35 + 312) settingsID];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    if (v37 == v38 || v36)
    {
      v44 = 4096;
    }

    else
    {
      v44 = 0x2000;
    }

    [*(v35 + 280) transitionToState:v44];
    OUTLINED_FUNCTION_56();
  }
}

- (void)_beginUncommittedMomentCapture
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    *(a1 + 352) = 1;
    *(a1 + 353) = [objc_loadWeak((a1 + 200)) processingOnBeginMomentSupportedForCaptureSettings:*(a1 + 320)];

    *(a1 + 360) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(a1 + 368) = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([objc_msgSend(a1 "inputs")])
    {
      v2 = 0;
      do
      {
        [*(a1 + 368) setObject:objc_msgSend(MEMORY[0x1E695DF70] atIndexedSubscript:{"array"), v2++}];
      }

      while ([objc_msgSend(a1 "inputs")] > v2);
    }

    [(BWStillImageCoordinatorNode *)a1 _beginCapture];
  }
}

- (void)_commitMomentCapture
{
  if (a1)
  {
    IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
    if (!IsCurrentDispatchQueue)
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      IsCurrentDispatchQueue = FigDebugAssert3();
    }

    v5 = *(a1 + 360);
    *(a1 + 360) = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = OUTLINED_FUNCTION_37(IsCurrentDispatchQueue, v4, &v22, v21);
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(BWStillImageCoordinatorNode *)a1 _fireDelegateCallbackWithInfo:?];
        }

        v7 = OUTLINED_FUNCTION_37(v9, v10, &v22, v21);
      }

      while (v7);
    }

    v11 = *(a1 + 376);
    if (v11)
    {
      [(BWStillImageCoordinatorNode *)a1 _flushStillImageRequestWithError:v11];
    }

    else
    {
      [(BWStillImageCoordinatorNode *)a1 _setupProcessing];
      v12 = *(a1 + 368);
      *(a1 + 368) = 0;
      if ((*(a1 + 353) & 1) == 0)
      {
        v20 = [(BWStillImageCoordinatorNode *)a1 _currentStillImageSettings];
        if ([v12 count])
        {
          v14 = 0;
          v19 = v12;
          do
          {
            v15 = [v12 objectAtIndexedSubscript:v14];
            if ([v15 count])
            {
              v16 = 0;
              do
              {
                v17 = [v15 objectAtIndexedSubscript:v16];
                if (dword_1ED844530)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v12 = 0;
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_4_0();
                  if (i)
                  {
                    BWStillImageSampleBufferToDisplayString(v17);
                    [(BWStillImageSettings *)v20 settingsID];
                    OUTLINED_FUNCTION_77_0();
                    OUTLINED_FUNCTION_13();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  OUTLINED_FUNCTION_39_0();
                }

                BWStillImageCoordinatorAddAttachmentsToSampleBuffer(v17, v20);
                [objc_msgSend(a1 "inputs")];
                i = [OUTLINED_FUNCTION_27_0() outputs];
                [objc_msgSend(i objectAtIndexedSubscript:{objc_msgSend(v12, "index")), "emitSampleBuffer:", v17}];
                ++v16;
              }

              while ([v15 count] > v16);
            }

            ++v14;
            v12 = v19;
          }

          while ([v19 count] > v14);
        }
      }

      OUTLINED_FUNCTION_33();
      if (v13)
      {
        if ([(BWStillImageCoordinatorNode *)a1 _capturedAllFrames])
        {
          *(a1 + 352) = 0;
          [(BWStillImageCoordinatorNode *)a1 _attemptToCompleteRequest];
        }
      }
    }
  }
}

- (void)_cancelMomentCapture
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_33();
    if (v2)
    {
      [(BWStillImageCoordinatorNode *)a1 _flushStillImageRequestWithError:?];
      *(a1 + 353) = 0;
    }

    [*(a1 + 144) cancelPrepareToCaptureStillImageNow];
    Weak = objc_loadWeak((a1 + 192));
    v4 = [*(a1 + 312) settingsID];
    v7 = *(a1 + 408);
    v8 = *(a1 + 424);
    [Weak stillImageCoordinator:a1 didCancelMomentCaptureForSettingsID:v4 streamingDisruptionEndPTS:&v7];
    v5 = OUTLINED_FUNCTION_75_3();
    [(BWStillImageCoordinatorNode *)v5 _completeRequestWithStatus:v6];
  }
}

void __54__BWStillImageCoordinatorNode__beginInitiatingCapture__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 144) cancelPrepareToCaptureStillImageNow];
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);

  [(BWStillImageCoordinatorNode *)v3 _completeRequestWithStatus:v2];
}

- (BOOL)_speedOverQualityCaptureEnabled
{
  if (!a1)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if ([*(a1 + 144) unifiedBracketingMode] == 2)
  {
    return [*(a1 + 312) qualityPrioritization] == 2;
  }

  OUTLINED_FUNCTION_33();
  if (!v3)
  {
    return 0;
  }

  mach_absolute_time();
  v4 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
  v5 = *(a1 + 544);
  if (v5 <= *(a1 + 548))
  {
    v6 = *(a1 + 548);
  }

  else
  {
    v6 = *(a1 + 544);
  }

  v7 = *(a1 + 552);
  if (v7 || v4 > v5)
  {
    if (v7 < 1 || v4 > v6)
    {
      if (v7 >= 1)
      {
        if (dword_1ED844530)
        {
          v11 = OUTLINED_FUNCTION_13_24();
          v12 = OUTLINED_FUNCTION_43_9(v11);
          if (OUTLINED_FUNCTION_6(v12))
          {
            OUTLINED_FUNCTION_50_9();
            OUTLINED_FUNCTION_4_46();
            OUTLINED_FUNCTION_8_0();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_17_8();
        }

        *(a1 + 552) = 0;
      }

      goto LABEL_32;
    }

    *(a1 + 552) = v7 + 1;
    if (dword_1ED844530)
    {
      v13 = OUTLINED_FUNCTION_13_24();
      v14 = OUTLINED_FUNCTION_43_9(v13);
      if (OUTLINED_FUNCTION_6(v14))
      {
LABEL_28:
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_4_46();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

LABEL_29:
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8();
    }
  }

  else
  {
    *(a1 + 552) = 2;
    if (dword_1ED844530)
    {
      v8 = OUTLINED_FUNCTION_13_24();
      v9 = OUTLINED_FUNCTION_43_9(v8);
      if (OUTLINED_FUNCTION_6(v9))
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

LABEL_32:
  v15 = *(a1 + 312);
  v16 = [v15 burstQualityCaptureEnabled];
  v17 = BWCIFilterArrayContainsPortraitFilters([v15 processedImageFilters]);
  v2 = 0;
  if (*(a1 + 552) > *(a1 + 540) && (v16 & 1) == 0 && (v17 & 1) == 0)
  {
    if (dword_1ED844530)
    {
      v18 = OUTLINED_FUNCTION_13_24();
      if (os_log_type_enabled(v18, v21))
      {
        v19 = v22;
      }

      else
      {
        v19 = v22 & 0xFFFFFFFE;
      }

      if (v19)
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      v2 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

- (uint64_t)_setupProcessing
{
  if (result)
  {
    v1 = result;
    v2 = &unk_1ED844000;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v3 = &unk_1ED844000;
    if (dword_1ED844530)
    {
      OUTLINED_FUNCTION_81_2();
      v4 = OUTLINED_FUNCTION_35_2();
      os_log_type_enabled(v4, v24);
      OUTLINED_FUNCTION_115_0();
      if (v6)
      {
        v7 = v5;
      }

      else
      {
        v7 = v25;
      }

      if (v7)
      {
        if ([OUTLINED_FUNCTION_76_2() isBeginMomentCaptureSettings])
        {
          v8 = @"beginning moment ";
        }

        else
        {
          v8 = &stru_1F216A3D0;
        }

        [OUTLINED_FUNCTION_76_2() settingsID];
        OUTLINED_FUNCTION_79_2();
        *(v9 + 4) = "[BWStillImageCoordinatorNode _setupProcessing]";
        *(v9 + 14) = v8;
        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    if ([objc_msgSend(OUTLINED_FUNCTION_97_3() "photoDescriptors")])
    {
      v10 = 0;
      do
      {
        if (v3[332])
        {
          OUTLINED_FUNCTION_81_2();
          v11 = OUTLINED_FUNCTION_35_2();
          if (os_log_type_enabled(v11, v24))
          {
            v12 = v25;
          }

          else
          {
            v12 = v25 & 0xFFFFFFFE;
          }

          if (v12)
          {
            [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_97_3() "photoDescriptors")];
            v13 = v3;
            v14 = v2;
            v15 = [(BWStillImageProcessingSettings *)v1[9]._processingSettings captureRequestIdentifier];
            [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_97_3() "photoDescriptors")];
            OUTLINED_FUNCTION_79_2();
            *(v16 + 4) = "[BWStillImageCoordinatorNode _setupProcessing]";
            *(v16 + 14) = v10 + 1;
            *(v16 + 26) = v15;
            v2 = v14;
            v3 = v13;
            *(v16 + 36) = v17;
            OUTLINED_FUNCTION_76();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v10;
      }

      while ([objc_msgSend(OUTLINED_FUNCTION_97_3() "photoDescriptors")] > v10);
    }

    v18 = [(BWStillImageCoordinatorNode *)v1 _currentStillImageSettings];
    v19 = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)v18 captureSettings] captureStreamSettings];
    OUTLINED_FUNCTION_47_0();
    result = [v20 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v21 = MEMORY[0];
      while (1)
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v19);
        }

        v22 = MEMORY[0];
        if ([MEMORY[0] isYUVCapture])
        {
          OUTLINED_FUNCTION_98_3();
          [objc_msgSend(-[BWStillImageSettings outputs](v1 "outputs")];
        }

        if ([v22 isSensorRawCapture])
        {
          OUTLINED_FUNCTION_98_3();
          v23 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
          [(BWStillImageSettings *)v1 outputs];
          [v23 index];
          [objc_msgSend(OUTLINED_FUNCTION_37_0() "objectAtIndexedSubscript:{"emitStillImagePrewarmMessageWithSettings:resourceConfig:", v18, 0}")];
        }

        OUTLINED_FUNCTION_78_0();
        if (v6)
        {
          OUTLINED_FUNCTION_47_0();
          result = [NSArray countByEnumeratingWithState:v19 objects:"countByEnumeratingWithState:objects:count:" count:?];
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (BWStillImageSettings)_resolvePhotoManifest
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v2 = 0x1E695D000uLL;
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [OUTLINED_FUNCTION_26_11() captureType];
  v5 = [OUTLINED_FUNCTION_26_11() captureFlags];
  v6 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if ([OUTLINED_FUNCTION_21_16() outputFormat])
  {
    v7 = 1;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [OUTLINED_FUNCTION_21_16() isBeginMomentCaptureSettings];
    if ((v5 & 0x800) == 0)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }
  }

  if (![OUTLINED_FUNCTION_21_16() depthDataDeliveryEnabled])
  {
    goto LABEL_12;
  }

  if ([OUTLINED_FUNCTION_21_16() depthDataFiltered])
  {
    v8 = 32;
  }

  else
  {
    v8 = 16;
  }

LABEL_13:
  v9 = 0;
  v10 = v4 - 1;
  v62 = v1;
  v11 = v8 | (v5 >> 5) & 0x200;
  switch(v10)
  {
    case 0:
      if ((v5 & 0x60000000000) != 0)
      {
        v11 |= 2u;
      }

      goto LABEL_51;
    case 1:
LABEL_51:
      if ([OUTLINED_FUNCTION_21_16() constantColorEnabled])
      {
        v11 |= 0x80000u;
      }

      v18 = [objc_msgSend(OUTLINED_FUNCTION_21_16() "bravoConstituentImageDeliveryDeviceTypes")];
      if (v18 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v18;
      }

      if ([OUTLINED_FUNCTION_21_16() constantColorEnabled] && (objc_msgSend(OUTLINED_FUNCTION_21_16(), "constantColorFallbackPhotoDeliveryEnabled") & 1) != 0)
      {
        v9 = 2;
      }

      else if (v9 < 1)
      {
        goto LABEL_81;
      }

      v19 = v9;
      do
      {
        if ((v5 & 0x100) != 0)
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 0x10000];
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        v20 = [OUTLINED_FUNCTION_21_16() rawOutputFormat];
        if (FigCapturePixelFormatIsBayerRaw(v20))
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 0x80];
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        if (v7)
        {
          OUTLINED_FUNCTION_99_2();
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        --v9;
      }

      while (v9);
LABEL_80:
      v9 = v19;
LABEL_81:
      if ([objc_msgSend(OUTLINED_FUNCTION_21_16() "originalImageFilters")])
      {
        v22 = v9 < 1;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = 0;
        do
        {
          v24 = [objc_msgSend(v3 objectAtIndexedSubscript:{v23), "unsignedIntValue"}];
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24 | 4u];
          [OUTLINED_FUNCTION_40_9() replaceObjectAtIndex:v23++ withObject:?];
        }

        while (v9 != v23);
      }

      if ([v3 count])
      {
        v25 = 0;
        do
        {
          v26 = [objc_msgSend(v3 objectAtIndexedSubscript:{v25), "unsignedIntValue"}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = *(&v62->super.isa + v6[921]);
          }

          else
          {
            v27 = 0;
          }

          v28 = [(BWStillImageCoordinatorNode *)v62 _currentStillImageSettings];
          if (BWIsSmartStyleCapture(v28))
          {
            v29 = ([v27 smartStyle] != 0) << 21;
          }

          else
          {
            v29 = 0;
          }

          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29 | v26];
          [OUTLINED_FUNCTION_40_9() replaceObjectAtIndex:v25++ withObject:?];
        }

        while ([v3 count] > v25);
      }

      if ([objc_msgSend(OUTLINED_FUNCTION_21_16() "processedImageFilters")])
      {
        v49 = BWCIFilterArrayContainsPortraitFilters([*(&v62->super.isa + v6[921]) processedImageFilters]);
        v50 = BWCIFilterArrayOnlyContainsPortraitFilters([*(&v62->super.isa + v6[921]) processedImageFilters]);
        v51 = v49 & (v5 >> 11);
        v52 = [(BWStillImageCoordinatorNode *)v62 _currentStillImageSettings];
        v53 = BWIsSmartStyleAllowedForAdjustedImage(v52);
        if ((v51 & 1) != 0 || !v50)
        {
          if ([v3 count])
          {
            v56 = 0;
            if (v53)
            {
              v57 = 0x200000;
            }

            else
            {
              v57 = 0;
            }

            if (v51)
            {
              v58 = 72;
            }

            else
            {
              v58 = 8;
            }

            v59 = v58 | v57;
            do
            {
              v60 = [objc_msgSend(v3 objectAtIndexedSubscript:{v56), "unsignedIntValue"}];
              [v3 insertObject:objc_msgSend(MEMORY[0x1E696AD98] atIndex:{"numberWithUnsignedInt:", v59 | v60), v56 + 1}];
              v56 += 2;
            }

            while ([v3 count] > v56);
          }
        }

        else if ((v5 & 0x800) != 0 && [v3 count])
        {
          v54 = 0;
          do
          {
            v55 = [objc_msgSend(v3 objectAtIndexedSubscript:{v54), "unsignedIntValue"}];
            [MEMORY[0x1E696AD98] numberWithUnsignedInt:v55 | 0x1000000u];
            [OUTLINED_FUNCTION_40_9() replaceObjectAtIndex:v54++ withObject:?];
          }

          while ([v3 count] > v54);
        }
      }

      if (-[objc_class deliverDeferredPhotoProxyImage](v62[10].super.isa, "deliverDeferredPhotoProxyImage") && [v3 count])
      {
        v30 = 0;
        do
        {
          v31 = [objc_msgSend(v3 objectAtIndexedSubscript:{v30), "unsignedIntValue"}];
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31 | 0x1000u];
          [OUTLINED_FUNCTION_40_9() replaceObjectAtIndex:v30++ withObject:?];
        }

        while ([v3 count] > v30);
      }

      v32 = [*(v2 + 3952) arrayWithCapacity:{objc_msgSend(v3, "count")}];
      OUTLINED_FUNCTION_47_0();
      v37 = OUTLINED_FUNCTION_37(v33, v34, v35, v36);
      if (v37)
      {
        v38 = v37;
        v39 = MEMORY[0];
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (MEMORY[0] != v39)
            {
              objc_enumerationMutation(v3);
            }

            v41 = *(8 * i);
            v42 = [BWPhotoDescriptor alloc];
            v43 = -[BWPhotoDescriptor initWithPhotoIdentifier:processingFlags:](v42, "initWithPhotoIdentifier:processingFlags:", [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")], objc_msgSend(v41, "unsignedLongValue"));
            [v32 addObject:v43];
          }

          OUTLINED_FUNCTION_47_0();
          v38 = OUTLINED_FUNCTION_37(v44, v45, v46, v47);
        }

        while (v38);
      }

      v48 = [BWPhotoManifest alloc];
      [(BWStillImageProcessingSettings *)v62[9]._processingSettings captureRequestIdentifier];
      result = [OUTLINED_FUNCTION_40_9() initWithDescriptors:v32 captureRequestIdentifier:?];
      break;
    case 2:
      if ([OUTLINED_FUNCTION_26_11() deliverOriginalImage])
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      if ([OUTLINED_FUNCTION_26_11() deliverOriginalImage])
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 1];
        [OUTLINED_FUNCTION_4() addObject:?];
      }

      goto LABEL_48;
    case 3:
    case 4:
      v16 = [objc_msgSend(OUTLINED_FUNCTION_21_16() "bravoConstituentImageDeliveryDeviceTypes")];
      if (v16 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v16;
      }

      if (v9 >= 1)
      {
        v17 = v9;
        do
        {
          OUTLINED_FUNCTION_99_2();
          [OUTLINED_FUNCTION_4() addObject:?];
          --v17;
        }

        while (v17);
      }

      goto LABEL_81;
    case 5:
    case 10:
      if ((v5 & 0x100) != 0)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 0x10000];
        [OUTLINED_FUNCTION_4() addObject:?];
      }

      v9 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_81;
      }

LABEL_48:
      OUTLINED_FUNCTION_99_2();
      [OUTLINED_FUNCTION_4() addObject:?];
      goto LABEL_81;
    case 6:
      v9 = [OUTLINED_FUNCTION_21_16() bracketImageCount];
      if ([objc_msgSend(OUTLINED_FUNCTION_21_16() "bravoConstituentImageDeliveryDeviceTypes")])
      {
        v9 *= [objc_msgSend(OUTLINED_FUNCTION_21_16() "bravoConstituentImageDeliveryDeviceTypes")];
      }

      if (v9 < 1)
      {
        goto LABEL_81;
      }

      v19 = v9;
      do
      {
        if ((v5 & 0x100) != 0)
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 0x10000];
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        v21 = [OUTLINED_FUNCTION_21_16() rawOutputFormat];
        if (FigCapturePixelFormatIsBayerRaw(v21))
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 0x80];
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        if (v7)
        {
          OUTLINED_FUNCTION_99_2();
          [OUTLINED_FUNCTION_4() addObject:?];
        }

        --v9;
      }

      while (v9);
      goto LABEL_80;
    case 9:
    case 11:
    case 12:
      v12 = [objc_msgSend(OUTLINED_FUNCTION_21_16() "bravoConstituentImageDeliveryDeviceTypes")];
      if (v12 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v12;
      }

      if (v9 >= 1)
      {
        v61 = v9;
        do
        {
          if ((v5 & 0x100) != 0)
          {
            if (([OUTLINED_FUNCTION_26_11() captureFlags] & 0x100000) != 0)
            {
              v13 = 65538;
            }

            else
            {
              v13 = 0x10000;
            }

            [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13 | v11];
            [OUTLINED_FUNCTION_4() addObject:?];
          }

          if (v7)
          {
            [MEMORY[0x1E696AD98] numberWithUnsignedInt:{(objc_msgSend(OUTLINED_FUNCTION_26_11(), "captureFlags") >> 19) & 2 | v11}];
            [OUTLINED_FUNCTION_4() addObject:?];
          }

          if ([OUTLINED_FUNCTION_26_11() deliverOriginalImage])
          {
            v14 = [OUTLINED_FUNCTION_26_11() captureFlags];
            [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11 | 1];
            v15 = OUTLINED_FUNCTION_4();
            if ((v14 & 0x2000) != 0)
            {
              [v15 addObject:?];
            }

            else
            {
              [v15 insertObject:? atIndex:?];
            }
          }

          --v9;
        }

        while (v9);
        v6 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
        v2 = 0x1E695D000;
        v9 = v61;
      }

      goto LABEL_81;
    default:
      goto LABEL_81;
  }

  return result;
}

- (uint64_t)_fireDelegateCallbackWithInfo:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = _FigIsCurrentDispatchQueue();
    if (result)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
      if (!a2)
      {
        return result;
      }
    }

    v4 = *(v3 + 336);
    result = [a2 flag];
    if ((result & v4) == 0)
    {
      v5 = *(v3 + 360);
      if (v5)
      {

        return [v5 addObject:a2];
      }

      else
      {
        v6 = [a2 flag];
        switch(v6)
        {
          case 1:
            [objc_loadWeak((v3 + 192)) stillImageCoordinator:v3 willBeginCaptureBeforeResolvingSettingsForID:{objc_msgSend(*(v3 + 312), "settingsID")}];
            break;
          case 2:
            [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
            objc_loadWeak((v3 + 192));
            OUTLINED_FUNCTION_46_1();
            [v10 stillImageCoordinator:? willBeginCaptureForSettings:?];
            break;
          case 3:
          case 5:
          case 6:
          case 7:
            break;
          case 4:
            [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
            objc_loadWeak((v3 + 192));
            OUTLINED_FUNCTION_46_1();
            [v9 stillImageCoordinator:? willCapturePhotoForSettings:? error:?];
            break;
          case 8:
            goto LABEL_18;
          default:
            switch(v6)
            {
              case 16:
LABEL_18:
                v7 = [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
                Weak = objc_loadWeak((v3 + 192));
                [a2 pts];
                [Weak stillImageCoordinator:v3 didResolveStillImagePTS:v14 forSettings:v7 isPreBracketedEV0:{objc_msgSend(a2, "isPreBracketFrame")}];
                break;
              case 32:
                [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
                objc_loadWeak((v3 + 192));
                OUTLINED_FUNCTION_46_1();
                [v11 stillImageCoordinator:? didCapturePhotoForSettings:?];
                break;
              case 64:
                [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
                objc_loadWeak((v3 + 192));
                OUTLINED_FUNCTION_46_1();
                [v13 stillImageCoordinator:? willPrepareStillImageCaptureWithSettings:? clientInitiated:?];
                break;
              case 128:
                [(BWStillImageCoordinatorNode *)v3 _currentStillImageSettings];
                objc_loadWeak((v3 + 192));
                OUTLINED_FUNCTION_46_1();
                [v12 stillImageCoordinator:? readyToRespondToRequestAfterRequestWithSettings:?];
                break;
            }

            break;
        }

        result = [a2 flag];
        *(v3 + 336) |= result;
      }
    }
  }

  return result;
}

- (BOOL)_waitUntilShotBufferHasEnoughFreeBuffersWithTimeout:(float)a3 freeBufferCountOut:
{
  if (!a1)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (*(a1 + 476) != 1)
  {
    return 0;
  }

  v49 = a2;
  v7 = [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForCurrentRequest];
  v48 = [(BWStillImageCoordinatorNode *)a1 _zoomBasedBufferCountForCurrentSettings];
  v47 = [(BWStillImageCoordinatorNode *)a1 _ultraHighResBufferCountForCurrentSettings];
  v8 = [(BWStillImageCoordinatorNode *)a1 _maxShotBufferCapacityForCurrentRequestWithBufferCount:v7 ultraHighResBufferCount:v47];
  os_unfair_lock_lock((a1 + 432));
  if (*(a1 + 456) && v8 != [objc_opt_class() maxShotBufferCapacity])
  {
    if (dword_1ED844530)
    {
      OUTLINED_FUNCTION_58_3();
      v9 = OUTLINED_FUNCTION_54_0();
      if (OUTLINED_FUNCTION_25_11(v9))
      {
        v10 = v3;
      }

      else
      {
        v10 = v3 & 0xFFFFFFFE;
      }

      if (v10)
      {
        [objc_opt_class() maxShotBufferCapacity];
        OUTLINED_FUNCTION_29_8();
        OUTLINED_FUNCTION_9_3();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_65_5();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    v46 = v8 < [objc_opt_class() maxShotBufferCapacity];
    [objc_opt_class() setMaxShotBufferCapacity:v8];
  }

  else
  {
    v46 = 0;
  }

  v11 = *(a1 + 436);
  v12 = (v8 - v11) & ~((v8 - v11) >> 31);
  if (v11 + v7 >= [objc_opt_class() maxShotBufferCapacity])
  {
    v13 = [objc_opt_class() maxShotBufferCapacity];
  }

  else
  {
    v13 = *(a1 + 436) + v7;
  }

  if (v12 < v7)
  {
    if (!*(a1 + 496))
    {
      if (dword_1ED844530)
      {
        OUTLINED_FUNCTION_58_3();
        v18 = OUTLINED_FUNCTION_54_0();
        v19 = OUTLINED_FUNCTION_25_11(v18);
        if (OUTLINED_FUNCTION_31(v19))
        {
          OUTLINED_FUNCTION_29_8();
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_65_5();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      *(a1 + 496) = dispatch_group_create();
      *(a1 + 504) = v7;
      dispatch_group_enter(*(a1 + 496));
      v20 = *(a1 + 496);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_58_3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = OUTLINED_FUNCTION_25_11(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_31(v17))
    {
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_65_5();
    }

    goto LABEL_29;
  }

  if (dword_1ED844530)
  {
    OUTLINED_FUNCTION_58_3();
    v14 = OUTLINED_FUNCTION_54_0();
    v15 = OUTLINED_FUNCTION_25_11(v14);
    if (OUTLINED_FUNCTION_31(v15))
    {
      OUTLINED_FUNCTION_29_8();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_65_5();
    }

LABEL_29:
    OUTLINED_FUNCTION_16_21();
    OUTLINED_FUNCTION_56_0();
  }

  v20 = 0;
LABEL_31:
  v21 = OUTLINED_FUNCTION_63_6();
  os_unfair_lock_unlock(v21);
  if (*(a1 + 456))
  {
    v22 = [*(a1 + 320) captureFlags];
    if (![*(a1 + 456) passthroughEnabled] || (v23 = v13, (v22 & 2) != 0))
    {
      v23 = [objc_opt_class() maxShotBufferCapacity];
    }

    v24 = *(a1 + 484) - v23;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    if ([*(a1 + 456) uncompressedEquivalentCapacity] != v25)
    {
      if (dword_1ED844530)
      {
        OUTLINED_FUNCTION_58_3();
        v26 = OUTLINED_FUNCTION_54_0();
        if (os_log_type_enabled(v26, v50))
        {
          v27 = v51;
        }

        else
        {
          v27 = v51 & 0xFFFFFFFE;
        }

        if (v27)
        {
          [*(a1 + 456) uncompressedEquivalentCapacity];
          [objc_opt_class() maxShotBufferCapacity];
          OUTLINED_FUNCTION_29_8();
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      [*(a1 + 456) setUncompressedEquivalentCapacity:v25];
    }
  }

  if (v20)
  {
    v28 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v29 = dispatch_time(0, (a3 * 1000000000.0));
    v30 = dispatch_group_wait(v20, v29);
    v31 = v30 == 0;
    if (*v28 == 1)
    {
      OUTLINED_FUNCTION_83_2();
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }

    if (v30)
    {
      OUTLINED_FUNCTION_58_3();
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = OUTLINED_FUNCTION_25_11(v32);
      if (OUTLINED_FUNCTION_31(v33))
      {
        OUTLINED_FUNCTION_9_3();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_65_5();
      }

      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_56_0();
      v34 = OUTLINED_FUNCTION_63_6();
      os_unfair_lock_lock(v34);
      v35 = *(a1 + 496);
      if (v35 == v20)
      {
        dispatch_group_leave(v35);

        *(a1 + 496) = 0;
      }

      v36 = OUTLINED_FUNCTION_63_6();
      os_unfair_lock_unlock(v36);
    }
  }

  else
  {
    v31 = v12 >= v7;
  }

  v37 = OUTLINED_FUNCTION_63_6();
  os_unfair_lock_lock(v37);
  v38 = *(a1 + 436) + v7;
  if (v38 >= [objc_opt_class() maxShotBufferCapacity])
  {
    v39 = [objc_opt_class() maxShotBufferCapacity];
  }

  else
  {
    v39 = (*(a1 + 436) + v7);
  }

  v40 = (*(a1 + 440) + v48);
  v41 = (*(a1 + 444) + v47);
  mach_absolute_time();
  v42 = FigHostTimeToNanoseconds();
  v43 = [*(a1 + 320) captureFlags];
  if (([*(a1 + 456) passthroughEnabled] && (v43 & 2) == 0 || !*(a1 + 552) && !*(a1 + 436) && ((v42 / 1000) / 1000000.0) > 2.0) && v39 != *(a1 + 480) || v39 > *(a1 + 480) || v40 != *(a1 + 488) || v41 != *(a1 + 492) || v46)
  {
    *(a1 + 480) = v39;
    *(a1 + 488) = v40;
    *(a1 + 492) = v41;
    [objc_opt_class() setCurrentAllocatedShotBufferCapacity:v39];
    [objc_opt_class() setNumberOfZoomBasedBufferIncludedInShotBuffer:v40];
    [objc_opt_class() setNumberOfUltraHighResBufferIncludedInShotBuffer:v41];
  }

  v44 = OUTLINED_FUNCTION_63_6();
  os_unfair_lock_unlock(v44);
  if (v49)
  {
    *v49 = v12;
  }

  return v31;
}

- (void)_readyToRespondToRequest
{
  if (a1)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    [(BWStillImageCoordinatorNode *)a1 _fireDelegateCallbackWithFlag:?];
  }
}

- (uint64_t)_receivedFrameOrErrorCountForCurrentRequest
{
  if (result)
  {
    v1 = result;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v2 = [*(result + 320) captureStreamSettings];
    v3 = [v2 countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v46;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v46 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [objc_msgSend(*(v1 + 288) objectForKeyedSubscript:{objc_msgSend(*(*(&v45 + 1) + 8 * i), "portType")), "intValue"}];
          v5 += v8;
        }

        v4 = OUTLINED_FUNCTION_37(v8, v9, &v45, v44);
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v10 = [*(v1 + 320) captureStreamSettings];
    v12 = OUTLINED_FUNCTION_44_0(v10, v11);
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v43;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v2);
          }

          v17 = [objc_msgSend(*(v1 + 296) objectForKeyedSubscript:{objc_msgSend(*(v42 + 8 * j), "portType")), "intValue"}];
          v14 += v17;
        }

        v13 = OUTLINED_FUNCTION_1_3(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    return (v5 - v14 + *(v1 + 448) * v14);
  }

  return result;
}

- (uint64_t)_expectedFrameCountForNextRequest
{
  if (!a1)
  {
    return 0;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v2 = [(BWStillImageCoordinatorNode *)a1 _expectedFrameCountForCurrentRequest];
  os_unfair_lock_lock((a1 + 232));
  OUTLINED_FUNCTION_33();
  if (v11)
  {
    if (*(a1 + 552) == *(a1 + 540) && *(a1 + 236) >= 1)
    {
      v12 = *(a1 + 224);
      if (OUTLINED_FUNCTION_17_0(v3, v4, v5, v6, v7, v8, v9, v10, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, 0))
      {
        v13 = MEMORY[0];
        while (1)
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v12);
          }

          v14 = MEMORY[0];
          v15 = [MEMORY[0] isUserInitiatedRequestSettings];
          v16 = [v14 isClientInitiatedPrepareSettings];
          if ((v15 & 1) == 0 && (v16 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_78_0();
          if (v11 && !OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v21, v22, v23, v24, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64))
          {
            goto LABEL_23;
          }
        }

        v25 = [v14 burstQualityCaptureEnabled];
        v26 = BWCIFilterArrayContainsPortraitFilters([v14 processedImageFilters]);
        if ((v25 & 1) == 0 && (v26 & 1) == 0)
        {
          if ([v14 depthDataDeliveryEnabled])
          {
            v2 = 6;
          }

          else
          {
            v2 = 3;
          }
        }
      }
    }
  }

LABEL_23:
  os_unfair_lock_unlock((a1 + 232));
  return v2;
}

- (void)_waitToMakePaceWithReferenceTime:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_88_2();
    if (v3)
    {
      v2 = [OUTLINED_FUNCTION_64_6() captureFlags];
      v3 = [OUTLINED_FUNCTION_64_6() captureType] == 1 && (v2 & 0x80) == 0;
      if (!v3)
      {
        v4 = MEMORY[0x1E695FF58];
        if (*MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_9_29();
          kdebug_trace();
        }

        mach_absolute_time();
        v5 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
        v6 = 1.0 / *(a1 + 512);
        if (v5 < v6)
        {
          v7 = v6 - v5;
          if (v7 > 0.0)
          {
            usleep((v7 * 1000000.0));
          }
        }

        if (*v4 == 1)
        {
          OUTLINED_FUNCTION_9_29();

          kdebug_trace();
        }
      }
    }
  }
}

- (uint64_t)_ultraHighResBufferCountForCurrentSettings
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 320) captureStreamSettings];
  OUTLINED_FUNCTION_74_3();
  v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  LODWORD(v5) = 0;
  v6 = MEMORY[0];
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (MEMORY[0] != v6)
      {
        objc_enumerationMutation(v1);
      }

      v5 = [*(8 * i) expectedUltraHighResFrameCaptureCount] + v5;
    }

    OUTLINED_FUNCTION_74_3();
    v4 = [v1 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v4);
  return v5;
}

- (uint64_t)_maxShotBufferCapacityForCurrentRequestWithBufferCount:(int)a3 ultraHighResBufferCount:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [objc_opt_class() maxShotBufferCapacity];
  if (!*(a1 + 456))
  {
    return v6;
  }

  v7 = [OUTLINED_FUNCTION_26_11() captureFlags];
  v8 = [OUTLINED_FUNCTION_26_11() captureType];
  v9 = [OUTLINED_FUNCTION_34_11() minimumUncompressedEquivalentCapacity];
  if ([OUTLINED_FUNCTION_34_11() passthroughEnabled])
  {
    if ((v7 & 2) != 0)
    {
      v10 = *(a1 + 444);
      v11 = *(a1 + 448) * v10;
      if (v10 >= 1)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 1;
      }

      v13 = (*(a1 + 436) - v11) & ~((*(a1 + 436) - v11) >> 31);
      v14 = *(a1 + 472);
      if (v14 == -1)
      {
        *(a1 + 472) = v13;
        v14 = *(a1 + 472);
      }

      v15 = v13 < v14;
      if (v13 < v14)
      {
        v14 = v13;
      }

      v16 = v14 + v12;
      if (v15)
      {
        *(a1 + 472) = v13;
      }
    }

    else
    {
      if (![OUTLINED_FUNCTION_34_11() compressionResourcesAllocated])
      {
        v9 = 0;
      }

      if (v8 == 11)
      {
        v17 = 0;
      }

      else
      {
        v17 = a2;
      }

      v16 = *(a1 + 436) + v17;
      if ((*(a1 + 472) & 0x80000000) == 0)
      {
        *(a1 + 472) = -1;
      }
    }
  }

  else
  {
    v16 = 0;
    if ((v7 & 2) == 0 && v8 != 11)
    {
      if (a3 < 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(a1 + 448) * a3;
      }
    }

    v18 = *(a1 + 444);
    if (v18 >= 1)
    {
      v16 += *(a1 + 448) * v18;
    }
  }

  if (*(a1 + 484) - v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a1 + 484) - v9;
  }

  v20 = v16 + a2;
  if ((v16 + a2) >= v19)
  {
    v20 = v19;
  }

  if (v16)
  {
    v21 = v20;
  }

  else
  {
    v21 = a2;
  }

  if (([OUTLINED_FUNCTION_34_11() passthroughEnabled] & 1) == 0 && objc_msgSend(OUTLINED_FUNCTION_26_11(), "captureType") != 11)
  {
    v22 = [*(a1 + 144) thermalSystemPressureLevel];
    if (v22 == 2)
    {
      v23 = &OBJC_IVAR___BWStillImageCoordinatorNode__extraUncompressedShotBufferCapacityForThermalSystemPressureLevelSerious;
    }

    else
    {
      if (v22 < 3)
      {
        return v21;
      }

      v23 = &OBJC_IVAR___BWStillImageCoordinatorNode__extraUncompressedShotBufferCapacityForThermalSystemPressureLevelCritical;
    }

    v24 = *(a1 + *v23);
    v25 = v24 + v21;
    if (v24 + v21 >= v19)
    {
      v25 = v19;
    }

    if (v24 <= 0)
    {
      return v21;
    }

    else
    {
      return v25;
    }
  }

  return v21;
}

- (void)willStopGraph:(const void *)a3 .cold.1(const void *a1, const void *a2, const void *a3)
{
  _Block_object_dispose(a1, 8);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
}

void __65__BWStillImageCoordinatorNode_shouldGraphLiveReconfigurationWait__block_invoke_cold_1(uint64_t a1, int a2)
{
  do
  {
    if (*a1)
    {
      dispatch_group_leave(*(*a1 + 256));
    }

    --a2;
  }

  while (a2);
}

- (uint64_t)_unpackNextRequest
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)_configureCurrentCaptureRequestStateForFigCaptureStillImageSettings
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end