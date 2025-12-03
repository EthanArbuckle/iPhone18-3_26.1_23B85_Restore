@interface BWDeskCamNode
+ (void)initialize;
- (BWDeskCamNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor stillImageCaptureEnabled:(BOOL)enabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)level portType:(id)self0 overheadCameraMode:(int)self1 captureDevice:(id)self2 downStreamRequires10BitPixelFormat:(BOOL)self3;
- (uint64_t)_initDeskCamSession;
- (uint64_t)_updateFocusIfNeededWithFocusPoint:(uint64_t)result;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)_updateTransportLayerAttachmentsForOutputSampleBuffer:(uint64_t)result;
- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts;
- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer;
- (void)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:;
- (void)_supportedOutputPixelFormats;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didChangeOverheadCameraMode:(int)mode;
- (void)didReachEndOfDataForInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWDeskCamNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDeskCamNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor stillImageCaptureEnabled:(BOOL)enabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)level portType:(id)self0 overheadCameraMode:(int)self1 captureDevice:(id)self2 downStreamRequires10BitPixelFormat:(BOOL)self3
{
  enabledCopy = enabled;
  v33.receiver = self;
  v33.super_class = BWDeskCamNode;
  v19 = [(BWNode *)&v33 init];
  v20 = v19;
  if (v19)
  {
    v19->_outputDimensions = dimensions;
    v19->_cameraInfoByPortType = type;
    *(v20 + 296) = objc_alloc_init(BWDeviceOrientationMonitor);
    *(v20 + 184) = 0;
    if ((factor - 3) >= 0xFFFFFFFE && (*(v20 + 188) = factor, (binningFactor - 3) >= 0xFFFFFFFE))
    {
      *(v20 + 192) = binningFactor;
      *(v20 + 328) = level;
      *(v20 + 368) = format;
      v22 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v20 index:0];
      v23 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v23 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248868, *(v20 + 328))];
      [(BWNodeInput *)v22 setFormatRequirements:v23];
      [(BWNodeInput *)v22 setPassthroughMode:0];
      [v20 addInput:v22];
      *(v20 + 128) = v22;

      v24 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v20];
      v25 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:[(BWDeskCamNode *)v20 _supportedOutputPixelFormats]];
      [(BWNodeOutput *)v24 setFormatRequirements:v25];
      [(BWNodeOutput *)v24 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setOwningNodeRetainedBufferCount:2];
      *(v20 + 136) = v24;
      [v20 addOutput:v24];

      *(v20 + 316) = enabledCopy;
      if (enabledCopy)
      {
        v26 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v20 index:1];
        v27 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248868, *(v20 + 328))];
        [(BWNodeInput *)v26 setFormatRequirements:v27];
        [(BWNodeInput *)v26 setPassthroughMode:0];
        *(v20 + 144) = v26;
        [v20 addInput:v26];

        v28 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v20];
        v29 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:[(BWDeskCamNode *)v20 _supportedOutputPixelFormats]];
        [(BWNodeOutput *)v28 setFormatRequirements:v29];
        [(BWNodeOutput *)v28 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v28 primaryMediaConfiguration] setProvidesPixelBufferPool:1];
        *(v20 + 152) = v28;
        [v20 addOutput:v28];

        *(v20 + 216) = 0u;
        *(v20 + 232) = 0u;
        *(v20 + 248) = 0u;
        *(v20 + 264) = 0u;
        *(v20 + 280) = 0;
      }

      if (identifiers)
      {
        v30 = [[BWNodeInput alloc] initWithMediaType:1835365473 node:v20 index:2];
        *(v20 + 160) = v30;
        [v20 addInput:v30];

        v31 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v20];
        [(BWNodeOutput *)v31 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:identifiers]];
        *(v20 + 168) = v31;
        [v20 addOutput:v31];
      }

      *(v20 + 312) = 5;
      *(v20 + 336) = [portType copy];
      *(v20 + 344) = mode;
      deviceCopy = device;
      *(v20 + 352) = deviceCopy;
      [deviceCopy setOverheadCameraModeChangeDelegate:v20];
      [(BWDeskCamNode *)v20 _updateOutputRequirements];
      *(v20 + 360) = 6;
      *(v20 + 362) = 0;
      *(v20 + 364) = 1065353216;
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
  stillImagePixelTransferSession = self->_stillImagePixelTransferSession;
  if (stillImagePixelTransferSession)
  {
    CFRelease(stillImagePixelTransferSession);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_stillImageCaptureEnabled)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      pixelBuffer = self->_stillCaptureQueue[v5].pixelBuffer;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  v9.receiver = self;
  v9.super_class = BWDeskCamNode;
  [(BWNode *)&v9 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWDeskCamNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWDeskCamNode *)self _initDeskCamSession];
  [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor start];
  if (self->_stillImageCaptureEnabled)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_stillImagePixelTransferSession);
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_videoCaptureInput == input)
  {
    v5 = &OBJC_IVAR___BWDeskCamNode__videoCaptureOutput;
LABEL_8:
    [*(&self->super.super.isa + *v5) makeConfiguredFormatLive];
    return;
  }

  if (self->_stillImageInput == input)
  {
    v5 = &OBJC_IVAR___BWDeskCamNode__stillImageOutput;
    goto LABEL_8;
  }

  if (self->_detectionMetadataInput == input)
  {
    v5 = &OBJC_IVAR___BWDeskCamNode__detectionMetadataOutput;
    goto LABEL_8;
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if (self->_videoCaptureInput == input)
  {
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];
    [(BWNodeOutput *)self->_videoCaptureOutput markEndOfLiveOutput];

    self->_deskCamSession = 0;
  }

  else
  {
    if (self->_stillImageInput == input)
    {
      v4 = 152;
    }

    else
    {
      if (self->_detectionMetadataInput != input)
      {
        return;
      }

      v4 = 168;
    }

    v5 = *(&self->super.super.isa + v4);

    [v5 markEndOfLiveOutput];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  os_unfair_lock_lock(v4 + 46);
  v49 = 0;
  v10 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (*(v9 + 144) == v6)
  {
    v11 = &OBJC_IVAR___BWDeskCamNode__stillImageOutput;
  }

  else if (*(v9 + 160) == v6)
  {
    v11 = &OBJC_IVAR___BWDeskCamNode__detectionMetadataOutput;
  }

  else
  {
    v11 = &OBJC_IVAR___BWDeskCamNode__videoCaptureOutput;
  }

  v12 = *(v9 + *v11);
  v13 = CMGetAttachment(v8, *off_1E798A3C8, 0);
  Value = CFDictionaryGetValue(v13, *off_1E798A420);
  memset(&v48, 0, sizeof(v48));
  CMTimeMakeFromDictionary(&v48, Value);
  if (*(v9 + 128) != v6)
  {
    if (*(v9 + 144) != v6)
    {
      v15 = 0;
      goto LABEL_26;
    }

    v47 = v48;
    v15 = [(BWDeskCamNode *)v9 _createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:?];
    if (!v15)
    {
      [BWDeskCamNode renderSampleBuffer:? forInput:?];
      v37 = -12783;
      goto LABEL_33;
    }

LABEL_26:
    if (*(v9 + v10[865]) == v6)
    {
      v37 = 0;
      v39 = v8;
    }

    else
    {
      v37 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v8, v15, (v9 + 176), &v49);
      if (!v49)
      {
        goto LABEL_31;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v8);
      CVBufferPropagateAttachments(ImageBuffer, v15);
      [(BWDeskCamNode *)v9 _updateTransportLayerAttachmentsForOutputSampleBuffer:v49];
      v39 = v49;
    }

    [v12 emitSampleBuffer:v39];
LABEL_31:
    os_unfair_lock_unlock((v9 + 184));
    if (!v15)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v16 = CMGetAttachment(v8, @"OriginalCameraIntrinsicMatrix", 0);
  if (!v16)
  {
    [BWDeskCamNode renderSampleBuffer:forInput:];
LABEL_44:
    v37 = 0;
    goto LABEL_46;
  }

  v17 = v16;
  v18 = CMGetAttachment(v8, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
  if (!v18)
  {
    [BWDeskCamNode renderSampleBuffer:forInput:];
    goto LABEL_44;
  }

  v19 = v18;
  v20 = [objc_msgSend(objc_msgSend(objc_msgSend(v9 "output")];
  if (v20)
  {
    v15 = v20;
    v21 = CMSampleBufferGetImageBuffer(v8);
    Width = CVPixelBufferGetWidth(v21);
    v43 = v21;
    Height = CVPixelBufferGetHeight(v21);
    if ([-[__CFDictionary objectForKeyedSubscript:](v13 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}] >= *(v9 + 312))
    {
      v44 = [(__CFDictionary *)v13 objectForKeyedSubscript:*off_1E798B220];
    }

    else
    {
      v44 = 0;
    }

    v24 = *(v9 + 200);
    v25 = *(v9 + 188);
    v26 = *(v9 + 192);
    v47 = v48;
    v27 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(v13, &v47.value, v24, v25, v26, v17, v19, 0, 0, 1, 1);
    if (v27)
    {
      v28 = v27;
      v29 = Width / Height;
      if ([-[__CFDictionary objectForKeyedSubscript:](v13 objectForKeyedSubscript:{*off_1E798B3E0), "unsignedIntValue"}])
      {
        v42 = 2143289344;
        v10 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
        v32 = v43;
      }

      else
      {
        bzero(&v47, 0x14A0uLL);
        v45 = 0;
        v46 = 0;
        MotionDataFromISP = FigMotionGetMotionDataFromISP(v13, &v47, 0, 110, &v46 + 1, &v45, 0, 0, 0);
        v31 = 2143289344;
        v10 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
        v32 = v43;
        if (!MotionDataFromISP && SHIDWORD(v46) >= 1)
        {
          v31 = v45;
        }

        v42 = v31;
      }

      v33 = FigCaptureSensorIDFromSampleBufferMetadata(v13, *(v9 + 200));
      v34 = objc_alloc(MEMORY[0x1E6994578]);
      mostRecentPortraitLandscapeOrientation = [*(v9 + 296) mostRecentPortraitLandscapeOrientation];
      v47 = v48;
      v36 = [v34 initWithDetectedObjectsInfo:v44 cameraCalibrationData:v28 cameraOrientation:mostRecentPortraitLandscapeOrientation timestamp:&v47 aspectRatio:v33 sensorID:COERCE_DOUBLE(__PAIR64__(HIDWORD(v48.value) gravity:{LODWORD(v29))), *&v42}];
      v37 = [*(v9 + 288) processPixelBuffer:v32 withMetadata:v36 outputPixelBuffer:v15];
      if ([objc_msgSend(*(v9 + 352) "captureStream")])
      {
        ++*(v9 + 362);
        [*(v9 + 288) focusPoint];
        if ([(BWDeskCamNode *)v9 _updateFocusIfNeededWithFocusPoint:v41])
        {
          *(v9 + 362) = 0;
        }
      }

      if (!v37)
      {
        if (*(v9 + 316) == 1)
        {
          v47 = v48;
          [(BWDeskCamNode *)v9 _savePixelBufferForStillImageCaptureRequests:v15 withPts:&v47.value];
        }

        goto LABEL_26;
      }

      [BWDeskCamNode renderSampleBuffer:forInput:];
    }

    else
    {
      [BWDeskCamNode renderSampleBuffer:forInput:];
      v37 = -12784;
    }

    os_unfair_lock_unlock((v9 + 184));
LABEL_32:
    CFRelease(v15);
    goto LABEL_33;
  }

  v37 = -12786;
LABEL_46:
  os_unfair_lock_unlock((v9 + 184));
LABEL_33:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v37)
  {
    CMSampleBufferGetPresentationTimeStamp(&v47, v8);
    v40 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C0D0 pts:&v47];
    [v12 emitDroppedSample:v40];
  }
}

- (void)didChangeOverheadCameraMode:(int)mode
{
  if (self->_overheadCameraMode != mode)
  {
    self->_overheadCameraMode = mode;
    [(DeskCamSession *)self->_deskCamSession setOutputType:?];
  }
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 368))
  {
    return &unk_1F2248880;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248868, *(self + 328))}];
  v3 = [objc_msgSend(*(self + 128) "videoFormat")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__BWDeskCamNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 128) "videoFormat")];
    if (v2)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    }

    else
    {
      v3 = 0;
    }

    [objc_msgSend(*(v1 + 144) "videoFormat")];
    _supportedOutputPixelFormats = [(BWDeskCamNode *)v1 _supportedOutputPixelFormats];
    formatRequirements = [*(v1 + 136) formatRequirements];
    [formatRequirements setWidth:*(v1 + 208)];
    OUTLINED_FUNCTION_3_50();
    [formatRequirements setSupportedColorSpaceProperties:v3];
    [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
    formatRequirements2 = [*(v1 + 152) formatRequirements];
    [formatRequirements2 setWidth:*(v1 + 208)];
    OUTLINED_FUNCTION_3_50();
    [formatRequirements2 setSupportedColorSpaceProperties:v3];
    return [formatRequirements2 setSupportedPixelFormats:_supportedOutputPixelFormats];
  }

  return result;
}

- (uint64_t)_initDeskCamSession
{
  if (result)
  {
    v1 = result;

    v2 = [objc_alloc(MEMORY[0x1E6994570]) initWithOutputDimensions:*(v1 + 208) portType:*(v1 + 336) deviceModelName:FigCaptureGetModelSpecificName()];
    *(v1 + 288) = v2;
    [v2 setDelegate:v1];
    v3 = *(v1 + 344);
    v4 = *(v1 + 288);

    return [v4 setOutputType:v3];
  }

  return result;
}

- (uint64_t)_updateFocusIfNeededWithFocusPoint:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = [objc_msgSend(*(result + 352) "captureStream")];
    if (result)
    {
      if (*(v2 + 362) == *(v2 + 360))
      {
        if (*&a2 != -1.0 || *(&a2 + 1) != -1.0)
        {
          [*(v2 + 352) setContinuousAutoFocusRect:0 isFocusRectInOverscanSpace:{*&a2, *(&a2 + 1), 0.0, 0.0}];
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:
{
  if (self)
  {
    v6 = *(self + 216 + 32 * *(self + 280));
    if (v6)
    {
      CFRelease(v6);
    }

    v10 = *requests;
    v11 = *(requests + 2);
    if (cf)
    {
      CFRetain(cf);
    }

    v7 = self + 216 + 32 * *(self + 280);
    *v7 = cf;
    *(v7 + 8) = v10;
    *(v7 + 24) = v11;
    v8 = *(self + 280);
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    *(self + 280) = v9;
  }
}

- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts
{
  if (!pts)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = (pts + 216 + 32 * v3);
    v11 = *v9;
    v10 = v9[1];
    v12 = v5 - v10;
    if (v5 == v10)
    {
      break;
    }

    v7 = 0;
    if (v12 < 0)
    {
      v12 = -v12;
    }

    if (v6 > v12)
    {
      v4 = v11;
    }

    if (v6 >= v12)
    {
      v6 = v12;
    }

    v3 = 1;
    if ((v8 & 1) == 0)
    {
      if (!v4)
      {
        return 0;
      }

      return [(BWDeskCamNode *)pts _newStillImageOutputPixelBufferFromVideoPixelBuffer:v4];
    }
  }

  v4 = v11;
  if (!v11)
  {
    return 0;
  }

  return [(BWDeskCamNode *)pts _newStillImageOutputPixelBufferFromVideoPixelBuffer:v4];
}

- (uint64_t)_updateTransportLayerAttachmentsForOutputSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *off_1E798A518;
    dictionary = CMGetAttachment(target, *off_1E798A518, 0);
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      CMSetAttachment(target, v4, dictionary, 1u);
    }

    [*(v3 + 288) transformMatrix];
    [dictionary setObject:BWRowMajorArrayFrom3x3Matrix(v6 forKeyedSubscript:{v7, v8), *off_1E798CD70}];
    [OUTLINED_FUNCTION_0_53() transformIsValid];
    [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), *off_1E798CD68}];
    [OUTLINED_FUNCTION_0_53() isFrontFacingCamera];
    [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), *off_1E798CD58}];
    [OUTLINED_FUNCTION_0_53() exifOrientation];
    [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithUnsignedInt:"), *MEMORY[0x1E696DE78]}];
    [OUTLINED_FUNCTION_0_53() outputType];
    [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798CD60}];
    result = [*(v3 + 288) autoZoomSupported];
    if (result)
    {
      [OUTLINED_FUNCTION_0_53() autoZoomValue];
      v9 = [target numberWithFloat:?];
      v10 = *off_1E798CD50;

      return [dictionary setObject:v9 forKeyedSubscript:v10];
    }
  }

  return result;
}

- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    if (*(buffer + 320))
    {
      v3 = [objc_msgSend(objc_msgSend(*(buffer + 152) "primaryMediaProperties")];
      if (v3)
      {
        if (VTPixelTransferSessionTransferImage(*(buffer + 320), a2, v3))
        {
          CFRelease(v3);
          return 0;
        }
      }
    }
  }

  return v3;
}

- (void)renderSampleBuffer:(os_unfair_lock_s *)a1 forInput:.cold.1(os_unfair_lock_s *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  os_unfair_lock_unlock(a1);
}

@end