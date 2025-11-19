@interface BWSmartCropNode
- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls;
- (BOOL)_isSampleBufferFromPrimaryStream:(opaqueCMSampleBuffer *)a3 metadataDict:(id)a4;
- (BWSmartCropNode)initWithOutputDimensions:(__n128)a3 cameraInfoByPortType:(__n128)a4 horizontalSensorBinningFactor:(uint64_t)a5 verticalSensorBinningFactor:(id)a6 maxLossyCompressionLevel:(void *)a7 cameraExtrinsicMatrix:(int)a8 processingMode:(int)a9 stillCaptureEnabled:(int)a10 objectMetadataIdentifiers:(int)a11 captureDevice:(BOOL)a12;
- (CGRect)regionOfInterestForCameraControls;
- (id)_createCalibrationDictionaryFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (id)_popHomography;
- (id)_supportedOutputPixelFormats;
- (id)smartCropHomographyDataForPTS:(id *)a3;
- (int)_updateDetectedFacesArray:(id)a3;
- (int)_updateDetectedObjectsInfo:(id)a3;
- (uint64_t)_initRTSCProcessor;
- (uint64_t)_pushHomography:(__n128)a3 pts:(__n128)a4;
- (void)_addMetadataInputsAndOutputsWithMetadataIdentifiers:(id)a3;
- (void)_addVideoCaptureInputAndOutput;
- (void)_initRTSCProcessor;
- (void)_processFaceDetectionTimeAnalytics:(id)a3;
- (void)_startFaceDetectionTimeAnalytics;
- (void)_updateFaceDetectionTimeAnalytics;
- (void)_updateOutputRequirements;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didChangeCenterStageRectOfInterest:(CGRect)a3;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderMetadataSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)renderVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWSmartCropNode

- (BWSmartCropNode)initWithOutputDimensions:(__n128)a3 cameraInfoByPortType:(__n128)a4 horizontalSensorBinningFactor:(uint64_t)a5 verticalSensorBinningFactor:(id)a6 maxLossyCompressionLevel:(void *)a7 cameraExtrinsicMatrix:(int)a8 processingMode:(int)a9 stillCaptureEnabled:(int)a10 objectMetadataIdentifiers:(int)a11 captureDevice:(BOOL)a12
{
  v30.receiver = a1;
  v30.super_class = BWSmartCropNode;
  v20 = [(BWNode *)&v30 init];
  if (v20)
  {
    v20->_cameraInfoByPortType = a7;
    v20->_processingMode = a11;
    v21 = [a7 objectForKeyedSubscript:*off_1E798A0D8];
    v20->_teleNondisruptiveSwitchingZoomFactor = 1.0;
    if (v21)
    {
      v22 = v21;
      [objc_msgSend(objc_msgSend(v21 objectForKeyedSubscript:{*off_1E7989F00), "firstObject"), "floatValue"}];
      v24 = v23;
      [objc_msgSend(v22 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
      v20->_teleNondisruptiveSwitchingZoomFactor = v24 / v25;
    }

    v20->_captureDevice = a14;
    if ((a8 - 3) >= 0xFFFFFFFE && (v20->_horizontalSensorBinningFactor = a8, (a9 - 3) >= 0xFFFFFFFE))
    {
      v20->_verticalSensorBinningFactor = a9;
      v20->_maxLossyCompressionLevel = a10;
      *v20->_anon_a0 = a2;
      *&v20->_anon_a0[16] = a3;
      *&v20->_anon_a0[32] = a4;
      v20->_outputDimensions = a6;
      [(BWNode *)v20 setSupportsLiveReconfiguration:1];
      [(BWNode *)v20 setSupportsPrepareWhileRunning:1];
      [(BWSmartCropNode *)v20 _addVideoCaptureInputAndOutput];
      if (a13)
      {
        [(BWSmartCropNode *)v20 _addMetadataInputsAndOutputsWithMetadataIdentifiers:a13];
      }

      v20->_stillCaptureEnabled = a12;
      v20->_stillHomographyByPTS = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20->_stillPTSQueue = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v20->_stillHomographyQueueLock._os_unfair_lock_opaque = 0;
      v20->_bufferServicingLock._os_unfair_lock_opaque = 0;
      v20->_singleFaceDetectedCumulativeTime = 0;
      v20->_multipleFacesDetectedCumulativeTime = 0;
      v20->_faceDetectionStartTime = 0;
    }

    else
    {
      return 0;
    }
  }

  return v20;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWSmartCropNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWSmartCropNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (self->_rtscProcessor)
  {
    self->_liveReconfigurationInProgress = 1;
  }

  else
  {
    [(BWSmartCropNode *)self _initRTSCProcessor];
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  [(BWSmartCropNode *)self _updateOutputRequirements];
  if (self->_processingMode == 2)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);
    v8 = [v7 mediaPropertiesForAttachedMediaKey:@"PrimaryFormat"];
    if (!v8)
    {
      v8 = objc_alloc_init(BWNodeOutputMediaProperties);
      [v7 _setMediaProperties:v8 forAttachedMediaKey:@"PrimaryFormat"];
    }

    [(BWNodeOutputMediaProperties *)v8 setResolvedFormat:a3];
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (!self->_videoOutputFormatIsLive && self->super._input == a5)
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive:a3];
    self->_videoOutputFormatIsLive = 1;
  }

  if (!self->_detectionMetadataIsLive && self->_detectionMetadataInput == a5)
  {
    [(BWNodeOutput *)self->_detectionMetadataOutput makeConfiguredFormatLive:a3];
    self->_detectionMetadataIsLive = 1;
  }

  if (self->super._input == a5)
  {
    if (!self->_liveReconfigurationInProgress)
    {
      [(BWSmartCropNode *)self _startFaceDetectionTimeAnalytics:a3];
    }

    if (self->_rtscProcessor)
    {
      if (self->_liveReconfigurationInProgress)
      {
        [(BWFigVideoCaptureDevice *)self->_captureDevice resetSmartFramingSceneMonitor:a3];
        self->_liveReconfigurationInProgress = 0;
      }
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (self->super._input == a4)
  {
    [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:a3];
    self->_videoOutputFormatIsLive = 0;
    [(BWSmartCropNode *)self _updateFaceDetectionTimeAnalytics];
  }

  if (self->_detectionMetadataInput == a4)
  {
    [(BWNodeOutput *)self->_detectionMetadataOutput markEndOfLiveOutputForConfigurationID:a3];
    self->_detectionMetadataIsLive = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  input = self->super._input;
  detectionMetadataInput = self->_detectionMetadataInput;
  if (input == a4 || detectionMetadataInput == a4)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    if (input == a4)
    {
      [(BWSmartCropNode *)self renderVideoSampleBuffer:a3 forInput:a4];
    }

    else if (detectionMetadataInput == a4)
    {
      [(BWSmartCropNode *)self renderMetadataSampleBuffer:a3 forInput:a4];
    }

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }

  else
  {
    [BWSmartCropNode renderSampleBuffer:forInput:];
  }
}

- (void)renderMetadataSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  [(BWSmartCropNode *)self _updateDetectedObjectsInfo:v6];
  [(BWSmartCropNode *)self _updateDetectedFacesArray:v6];
  [v6 setObject:0 forKeyedSubscript:*off_1E798A5C8];
  detectionMetadataOutput = self->_detectionMetadataOutput;

  [(BWNodeOutput *)detectionMetadataOutput emitSampleBuffer:a3];
}

- (CGRect)regionOfInterestForCameraControls
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls
{
  *&retstr->var6 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var3.origin.y = 0u;
  *&retstr->var3.size.height = 0u;
  *&retstr->var0 = 0u;
  return self;
}

- (void)_addVideoCaptureInputAndOutput
{
  v3 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self index:0];
  v4 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:[(BWSmartCropNode *)self _supportedInputPixelFormats]];
  [(BWNodeInput *)v3 setFormatRequirements:v4];
  [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v3 primaryMediaConfiguration] setPassthroughMode:0];
  [(BWNodeInput *)v3 setDelayedBufferCount:[(BWNodeInput *)v3 delayedBufferCount]+ 1];
  [(BWNode *)self addInput:v3];

  v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:self];
  v5 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v5 setSupportedPixelFormats:[(BWSmartCropNode *)self _supportedOutputPixelFormats]];
  if (self->_processingMode != 2)
  {
    [(BWVideoFormatRequirements *)v5 setDimensions:*&self->_outputDimensions];
  }

  [(BWNodeOutput *)v6 setFormatRequirements:v5];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v6 primaryMediaConfiguration] setPassthroughMode:2 * (self->_processingMode == 2)];
  [(BWNodeOutput *)self->super._output setIndexOfInputWhichDrivesThisOutput:0];
  [(BWNode *)self addOutput:v6];
}

- (void)_addMetadataInputsAndOutputsWithMetadataIdentifiers:(id)a3
{
  v5 = [[BWNodeInput alloc] initWithMediaType:1835365473 node:self index:0];
  [(BWNode *)self addInput:v5];
  self->_detectionMetadataInput = v5;

  v6 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:self];
  [(BWNodeOutput *)v6 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:a3]];
  [(BWNode *)self addOutput:v6];
  self->_detectionMetadataOutput = v6;
}

- (id)_supportedOutputPixelFormats
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:{-[BWSmartCropNode _supportedInputPixelFormats](self, "_supportedInputPixelFormats")}];
  v4 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat];
  if (v4)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v4);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__BWSmartCropNode__supportedOutputPixelFormats__block_invoke;
    v7[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v8 = IsFullRange;
    [v3 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v7)}];
  }

  return v3;
}

- (void)_updateOutputRequirements
{
  v3 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] colorSpaceProperties];
  if (v3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BWSmartCropNode *)self _supportedOutputPixelFormats];
  v6 = [(BWNodeOutput *)self->super._output formatRequirements];
  v7 = v6;
  if (self->_processingMode != 2)
  {
    p_outputDimensions = &self->_outputDimensions;
    [(BWFormatRequirements *)v6 setWidth:p_outputDimensions->width];
    [(BWFormatRequirements *)v7 setHeight:p_outputDimensions->height];
  }

  [(BWFormatRequirements *)v7 setSupportedColorSpaceProperties:v4];
  [(BWFormatRequirements *)v7 setSupportedPixelFormats:v5];
}

- (void)_initRTSCProcessor
{
  v3 = BWLoadProcessorBundle(@"RTSC", 1);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = [v3 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"RTSCProcessorV%d", 1)}];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;

  v6 = objc_alloc_init(v5);
  self->_rtscProcessor = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  [(RTSCProcessor *)v6 setCameraInfoByPortType:self->_cameraInfoByPortType];
  [(RTSCProcessor *)self->_rtscProcessor setCameraExtrinsicMatrix:*self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32]];
  if ([(RTSCProcessor *)self->_rtscProcessor setup])
  {
    [BWSmartCropNode _initRTSCProcessor];
LABEL_19:
    [(BWSmartCropNode *)v3 _initRTSCProcessor];
    return;
  }

  if ([(RTSCProcessor *)self->_rtscProcessor prewarm])
  {
    [BWSmartCropNode _initRTSCProcessor];
    goto LABEL_19;
  }

  processingMode = self->_processingMode;
  if (processingMode != 2)
  {
    if (processingMode == 1)
    {
      [(RTSCProcessor *)self->_rtscProcessor setEnableFaceReframing:0];
      [(RTSCProcessor *)self->_rtscProcessor setZoomOutForMultiSubjects:0];
      rtscProcessor = self->_rtscProcessor;
      v9 = 4;
    }

    else
    {
      if (processingMode)
      {
LABEL_12:
        v10 = 0;
        goto LABEL_14;
      }

      [(RTSCProcessor *)self->_rtscProcessor setEnableFaceReframing:1];
      [(RTSCProcessor *)self->_rtscProcessor setZoomOutForMultiSubjects:1];
      rtscProcessor = self->_rtscProcessor;
      v9 = 3;
    }

    [(RTSCProcessor *)rtscProcessor setOutputFOVPreset:v9];
    goto LABEL_12;
  }

  [(RTSCProcessor *)self->_rtscProcessor setEnableFaceReframing:0];
  [(RTSCProcessor *)self->_rtscProcessor setZoomOutForMultiSubjects:0];
  [(RTSCProcessor *)self->_rtscProcessor setOutputFOVPreset:4];
  [(RTSCProcessor *)self->_rtscProcessor setRollingShutterCompensationEnabled:1];
  [(RTSCProcessor *)self->_rtscProcessor setStabilizationSmoothingDisabled:1];
  v10 = 2;
LABEL_14:
  if ([(RTSCProcessor *)self->_rtscProcessor prepareToProcess:v10])
  {
    [BWSmartCropNode _initRTSCProcessor];
    goto LABEL_19;
  }
}

- (id)_createCalibrationDictionaryFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v5)
  {
    [BWSmartCropNode _createCalibrationDictionaryFromSampleBuffer:];
LABEL_9:
    ScaledCalibrationDataDictionaryFromSampleBufferMetadata = 0;
    return ScaledCalibrationDataDictionaryFromSampleBufferMetadata;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(v5, *off_1E798A420);
  memset(&v19, 0, sizeof(v19));
  CMTimeMakeFromDictionary(&v19, Value);
  v8 = CMGetAttachment(a3, *MEMORY[0x1E6960470], 0);
  if (!v8)
  {
    [BWSmartCropNode _createCalibrationDictionaryFromSampleBuffer:];
    goto LABEL_9;
  }

  v9 = v8;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  v20.height = CVPixelBufferGetHeight(ImageBuffer);
  v20.width = Width;
  v12 = CGSizeCreateDictionaryRepresentation(v20);
  if (!v12)
  {
    [BWSmartCropNode _createCalibrationDictionaryFromSampleBuffer:];
    goto LABEL_9;
  }

  cameraInfoByPortType = self->_cameraInfoByPortType;
  horizontalSensorBinningFactor = self->_horizontalSensorBinningFactor;
  verticalSensorBinningFactor = self->_verticalSensorBinningFactor;
  v18 = v19;
  ScaledCalibrationDataDictionaryFromSampleBufferMetadata = FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(v6, &v18, cameraInfoByPortType, horizontalSensorBinningFactor, verticalSensorBinningFactor, v9, v12, 0, 0, 0, 1);
  return ScaledCalibrationDataDictionaryFromSampleBufferMetadata;
}

uint64_t __46__BWSmartCropNode__updateDetectedObjectsInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:?];
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8.origin = *MEMORY[0x1E695F050];
  v8.size = v7;
  if (result)
  {
    result = CGRectMakeWithDictionaryRepresentation(result, &v8);
    if (result)
    {
      [*(*(a1 + 32) + 232) warpCGRect:{*&v8.origin, *&v8.size}];
      v8 = v9;
      return [a2 setObject:CGRectCreateDictionaryRepresentation(v9) forKeyedSubscript:a3];
    }
  }

  return result;
}

uint64_t __45__BWSmartCropNode__updateDetectedFacesArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:?];
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8.origin = *MEMORY[0x1E695F050];
  v8.size = v7;
  if (result)
  {
    result = CGRectMakeWithDictionaryRepresentation(result, &v8);
    if (result)
    {
      [*(*(a1 + 32) + 232) warpCGRect:{*&v8.origin, *&v8.size}];
      v8 = v9;
      return [a2 setObject:CGRectCreateDictionaryRepresentation(v9) forKeyedSubscript:a3];
    }
  }

  return result;
}

- (void)renderVideoSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  cf = 0;
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v7 = v6;
  output = self->super._output;
  if (self->_processingMode == 2)
  {
    v9 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0D8}];
    [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
    if (v9)
    {
      v11 = v10 <= 1.0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || v10 >= self->_teleNondisruptiveSwitchingZoomFactor)
    {
      goto LABEL_7;
    }
  }

  else if (BWSampleBufferIsMarkerBuffer(a3))
  {
LABEL_7:

    [(BWNodeOutput *)output emitSampleBuffer:a3];
    return;
  }

  v12 = [(BWSmartCropNode *)self _isSampleBufferFromPrimaryStream:a3 metadataDict:v7];
  if (self->_processingMode == 2 || v12)
  {
    [(BWSmartCropNode *)self _processFaceDetectionTimeAnalytics:v7];
    v14 = [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)[(BWNode *)self output] primaryMediaProperties] livePixelBufferPool] newPixelBuffer];
    if (!v14)
    {
      goto LABEL_31;
    }

    v15 = v14;
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    memset(&v31, 0, sizeof(v31));
    CMSampleBufferGetPresentationTimeStamp(&v31, a3);
    v17 = *off_1E798A420;
    if ([v7 objectForKeyedSubscript:*off_1E798A420])
    {
      CMTimeMakeFromDictionary(v29, [v7 objectForKeyedSubscript:v17]);
      v31 = *v29;
    }

    v18 = [(BWSmartCropNode *)self _createCalibrationDictionaryFromSampleBuffer:a3];
    if (v18)
    {
      [(RTSCProcessor *)self->_rtscProcessor setInputCalibrationData:v18];
      [(RTSCProcessor *)self->_rtscProcessor setInputPixelBuffer:ImageBuffer];
      *v29 = v31;
      [(RTSCProcessor *)self->_rtscProcessor setInputPTS:v29];
      [(RTSCProcessor *)self->_rtscProcessor setInputMetadata:v7];
      [(RTSCProcessor *)self->_rtscProcessor setOutputPixelBuffer:v15];
      if ([(RTSCProcessor *)self->_rtscProcessor process]|| [(RTSCProcessor *)self->_rtscProcessor finishProcessing])
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
        FigDebugAssert3();
        CopyWithNewPixelBuffer = 1;
      }

      else
      {
        if (self->_processingMode != 2)
        {
          [v7 setObject:0 forKeyedSubscript:*off_1E798A5C8];
        }

        [(BWSmartCropNode *)self _updateDetectedObjectsInfo:v7];
        [(BWSmartCropNode *)self _updateDetectedFacesArray:v7];
        v19 = *MEMORY[0x1E6960470];
        if (CMGetAttachment(a3, *MEMORY[0x1E6960470], 0))
        {
          v30 = 0u;
          memset(v29, 0, sizeof(v29));
          [(RTSCProcessor *)self->_rtscProcessor outputCameraIntrinsic];
          *&v29[8] = v20;
          *&v29[24] = v21;
          *v29 = v22;
          *&v29[16] = v23;
          DWORD2(v30) = v24;
          *&v30 = v25;
          CMSetAttachment(a3, v19, [MEMORY[0x1E695DEF0] dataWithBytes:v29 length:48], 1u);
        }

        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a3, v15, &self->_outputFormatDescription, &cf);
        if (cf)
        {
          v27 = CMSampleBufferGetImageBuffer(a3);
          CVBufferPropagateAttachments(v27, v15);
          [(BWFigVideoCaptureDevice *)self->_captureDevice setSmartCropCandidateFramingRects:[(RTSCProcessor *)self->_rtscProcessor candidateFramingCropRects]];
          [(BWNodeOutput *)output emitSampleBuffer:cf];
          if (self->_stillCaptureEnabled)
          {
            os_unfair_lock_lock(&self->_stillHomographyQueueLock);
            [(RTSCProcessor *)self->_rtscProcessor renderingHomography];
            *v29 = v31;
            [(BWSmartCropNode *)self _pushHomography:v29 pts:?];
            os_unfair_lock_unlock(&self->_stillHomographyQueueLock);
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
      CopyWithNewPixelBuffer = 0;
    }

    CFRelease(v15);
    if (cf)
    {
      CFRelease(cf);
    }

    if (CopyWithNewPixelBuffer)
    {
LABEL_31:
      CMSampleBufferGetPresentationTimeStamp(v29, a3);
      v28 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C0F0 pts:v29];
      [(BWNodeOutput *)output emitDroppedSample:v28];
    }
  }
}

- (id)smartCropHomographyDataForPTS:(id *)a3
{
  v43 = **&MEMORY[0x1E6960C88];
  os_unfair_lock_lock(&self->_stillHomographyQueueLock);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  stillPTSQueue = self->_stillPTSQueue;
  v14 = OUTLINED_FUNCTION_4_35(v6, v7, v8, v9, v10, v11, v12, v13, v30.value, *&v30.timescale, v30.epoch, v31, lhs.value, *&lhs.timescale, lhs.epoch, v33, time2.value, *&time2.timescale, time2.epoch, v35, time1.value, *&time1.timescale, time1.epoch, v37.value, *&v37.timescale, v37.epoch, v38);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v40;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v40 != v17)
      {
        objc_enumerationMutation(stillPTSQueue);
      }

      v19 = *(*(&v39 + 1) + 8 * i);
      memset(&v37, 0, sizeof(v37));
      CMTimeMakeFromDictionary(&v37, v19);
      time1 = v37;
      time2 = *a3;
      if (!CMTimeCompare(&time1, &time2))
      {
        v16 = v19;
        goto LABEL_13;
      }

      memset(&time1, 0, sizeof(time1));
      lhs = *a3;
      v30 = v37;
      CMTimeSubtract(&time2, &lhs, &v30);
      CMTimeAbsoluteValue(&time1, &time2);
      time2 = time1;
      lhs = v43;
      v20 = CMTimeCompare(&time2, &lhs);
      if (v20 <= 0)
      {
        v43 = time1;
        v16 = v19;
      }
    }

    v15 = OUTLINED_FUNCTION_4_35(v20, v21, v22, v23, v24, v25, v26, v27, v30.value, *&v30.timescale, v30.epoch, v31, lhs.value, *&lhs.timescale, lhs.epoch, v33, time2.value, *&time2.timescale, time2.epoch, v35, time1.value, *&time1.timescale, time1.epoch, v37.value, *&v37.timescale, v37.epoch, v38);
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_13:
  if (v16 && [(NSMutableDictionary *)self->_stillHomographyByPTS objectForKeyedSubscript:v16])
  {
    v28 = [(NSMutableDictionary *)self->_stillHomographyByPTS objectForKeyedSubscript:v16];
  }

  else
  {
LABEL_16:
    v28 = 0;
  }

  os_unfair_lock_unlock(&self->_stillHomographyQueueLock);
  return v28;
}

- (void)didChangeCenterStageRectOfInterest:(CGRect)a3
{
  if (!self->_processingMode)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(RTSCProcessor *)self->_rtscProcessor setOutputROI:x, y, width, height];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (BOOL)_isSampleBufferFromPrimaryStream:(opaqueCMSampleBuffer *)a3 metadataDict:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:*off_1E798B710];
  if (!v4)
  {
    return 1;
  }

  return [v4 BOOLValue];
}

- (uint64_t)_pushHomography:(__n128)a3 pts:(__n128)a4
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  if (*(a6 + 12))
  {
    v7 = result;
    if ([*(result + 264) count] >= 2)
    {
      [v7 _popHomography];
    }

    v8 = *MEMORY[0x1E695E480];
    v10 = *a6;
    v9 = CMTimeCopyAsDictionary(&v10, v8);
    [v7[33] addObject:v9];
    return [v7[34] setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v11, 48), v9}];
  }

  return result;
}

- (id)_popHomography
{
  result = [(NSMutableArray *)self->_stillPTSQueue count];
  if (result)
  {
    v4 = [(NSMutableArray *)self->_stillPTSQueue objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_stillPTSQueue removeObjectAtIndex:0];
    v5 = [(NSMutableDictionary *)self->_stillHomographyByPTS objectForKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_stillHomographyByPTS removeObjectForKey:v4];
    return v5;
  }

  return result;
}

- (int)_updateDetectedObjectsInfo:(id)a3
{
  OUTLINED_FUNCTION_1_50();
  v46 = 3221225472;
  v47 = __46__BWSmartCropNode__updateDetectedObjectsInfo___block_invoke;
  v48 = &unk_1E7990608;
  v49 = v4;
  v5 = *off_1E798B220;
  v7 = [v6 objectForKeyedSubscript:*off_1E798B220];
  if (v7)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v7, 1uLL);
    if (DeepCopy)
    {
      v9 = DeepCopy;
      v28 = v5;
      v29 = a3;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v33 = [DeepCopy countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v33)
      {
        v31 = *v43;
        v30 = *off_1E798ACE8;
        v10 = *off_1E798B5C0;
        v11 = *off_1E798ACB8;
        v35 = *off_1E798B470;
        v12 = *off_1E798B5D0;
        v32 = v9;
        do
        {
          v13 = 0;
          do
          {
            if (*v43 != v31)
            {
              objc_enumerationMutation(v9);
            }

            v34 = v13;
            v14 = *(*(&v42 + 1) + 8 * v13);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = [objc_msgSend(v9 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v30}];
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v36 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  v21 = OUTLINED_FUNCTION_3_38();
                  v22(v21, v20, v10);
                  if ([v14 isEqual:v11])
                  {
                    v23 = OUTLINED_FUNCTION_3_38();
                    v24(v23, v20, v35);
                    v25 = OUTLINED_FUNCTION_3_38();
                    v26(v25, v20, v12);
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:v36 count:16];
              }

              while (v17);
            }

            v13 = v34 + 1;
            v9 = v32;
          }

          while (v34 + 1 != v33);
          v33 = [v32 countByEnumeratingWithState:&v42 objects:v41 count:16];
        }

        while (v33);
      }

      [v29 setObject:v9 forKeyedSubscript:v28];
      CFRelease(v9);
      LODWORD(v7) = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      LODWORD(v7) = -1;
    }
  }

  return v7;
}

- (int)_updateDetectedFacesArray:(id)a3
{
  OUTLINED_FUNCTION_1_50();
  v4 = *off_1E798B218;
  v6 = [v5 objectForKeyedSubscript:*off_1E798B218];
  if (v6)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v6, 1uLL);
    v15 = DeepCopy;
    if (!DeepCopy)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
      v38 = -1;
      goto LABEL_12;
    }

    v16 = OUTLINED_FUNCTION_5_4(DeepCopy, v8, v9, v10, v11, v12, v13, v14, v40, v42, v44, a3, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, 0);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      v19 = *off_1E798B5C0;
      v20 = *off_1E798B470;
      v21 = *off_1E798B5D0;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(8 * i);
          v24 = OUTLINED_FUNCTION_3_38();
          v25(v24, v23, v19);
          v26 = OUTLINED_FUNCTION_3_38();
          v27(v26, v23, v20);
          v28 = OUTLINED_FUNCTION_3_38();
          v30 = v29(v28, v23, v21);
        }

        v17 = OUTLINED_FUNCTION_5_4(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43, v45, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v79);
      }

      while (v17);
    }

    [v46 setObject:v15 forKeyedSubscript:v4];
  }

  else
  {
    v15 = 0;
  }

  v38 = 0;
LABEL_12:

  return v38;
}

- (void)_startFaceDetectionTimeAnalytics
{
  if (!self->_processingMode)
  {
    v3 = mach_absolute_time();
    self->_singleFaceDetectedCumulativeTime = 0;
    self->_multipleFacesDetectedCumulativeTime = 0;
    self->_faceDetectionStartTime = v3;
    self->_numFacesDetected = 0;
  }
}

- (void)_updateFaceDetectionTimeAnalytics
{
  if (!self->_processingMode)
  {
    v3 = mach_absolute_time();
    numFacesDetected = self->_numFacesDetected;
    if (numFacesDetected)
    {
      if (numFacesDetected == 1)
      {
        v5 = &OBJC_IVAR___BWSmartCropNode__singleFaceDetectedCumulativeTime;
      }

      else
      {
        v5 = &OBJC_IVAR___BWSmartCropNode__multipleFacesDetectedCumulativeTime;
      }

      *(&self->super.super.isa + *v5) = (*(&self->super.super.isa + *v5) + v3 - self->_faceDetectionStartTime);
    }

    self->_faceDetectionStartTime = v3;
  }
}

- (void)_processFaceDetectionTimeAnalytics:(id)a3
{
  if (!self->_processingMode)
  {
    v4 = [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
    if ([v4 count] != self->_numFacesDetected)
    {
      [(BWSmartCropNode *)self _updateFaceDetectionTimeAnalytics];
      self->_numFacesDetected = [v4 count];
    }
  }
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_initRTSCProcessor
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_createCalibrationDictionaryFromSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_createCalibrationDictionaryFromSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_createCalibrationDictionaryFromSampleBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end