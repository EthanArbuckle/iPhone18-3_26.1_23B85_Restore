@interface BWSubjectSelectionNode
+ (void)initialize;
- (BWSubjectSelectionNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled portTypes:(id)types cameraHasDistortionCoefficients:(BOOL)coefficients cameraHasCalibrationValidMaxRadius:(BOOL)self0 centerStageFramingMode:(int)self1 gazeSelectionEnabled:(BOOL)self2;
- (uint64_t)_initSubjectSelectionSession;
- (void)_addInputAndOutputWithOutputDrivingInputIndex:(uint64_t)index mapToPortType:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didChangeCenterStageFramingMode:(int)mode;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWSubjectSelectionNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSubjectSelectionNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWSubjectSelectionNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWSubjectSelectionNode *)self _initSubjectSelectionSession];
  [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor start];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWNode *)self outputs:format];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setFormat:format];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  v5 = [(NSMutableDictionary *)self->_videoCaptureOutputsByPortType objectForKeyedSubscript:BWUtilitiesGetPortTypeForInputFromInputByPortTypes(input, self->_videoCaptureInputsByPortType)];

  [v5 makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")])
  {
    atomic_fetch_add_explicit(&self->_endOfDataInputsCount, 1u, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_videoCaptureOutputsByPortType objectForKeyedSubscript:{BWUtilitiesGetPortTypeForInputFromInputByPortTypes(input, self->_videoCaptureInputsByPortType)), "markEndOfLiveOutput"}];
  endOfDataInputsCount = self->_endOfDataInputsCount;
  if ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")] == endOfDataInputsCount)
  {
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];
    self->_endOfDataInputsCount = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v7 = [(NSMutableDictionary *)self->_videoCaptureOutputsByPortType objectForKeyedSubscript:BWUtilitiesGetPortTypeForInputFromInputByPortTypes(input, self->_videoCaptureInputsByPortType)];
  v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  Value = CFDictionaryGetValue(v8, *off_1E798A420);
  memset(&v46, 0, sizeof(v46));
  CMTimeMakeFromDictionary(&v46, Value);
  v10 = CMGetAttachment(buffer, @"OriginalCameraIntrinsicMatrix", 0);
  if (v10)
  {
    v11 = v10;
    v12 = CMGetAttachment(buffer, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v12)
    {
      v13 = v12;
      v40 = v7;
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      Height = CVPixelBufferGetHeight(ImageBuffer);
      cameraInfoByPortType = self->_cameraInfoByPortType;
      horizontalSensorBinningFactor = self->_horizontalSensorBinningFactor;
      verticalSensorBinningFactor = self->_verticalSensorBinningFactor;
      cameraHasDistortionCoefficients = self->_cameraHasDistortionCoefficients;
      cameraHasCalibrationValidMaxRadius = self->_cameraHasCalibrationValidMaxRadius;
      v42 = *&v46.value;
      epoch = v46.epoch;
      v22 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(v8, &v42, cameraInfoByPortType, horizontalSensorBinningFactor, verticalSensorBinningFactor, v11, v13, 0, 0, cameraHasDistortionCoefficients, cameraHasCalibrationValidMaxRadius);
      if (v22)
      {
        v23 = v22;
        if ([-[__CFDictionary objectForKeyedSubscript:](v8 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}] >= self->_minLuxLevelNeeded)
        {
          v24 = [(__CFDictionary *)v8 objectForKeyedSubscript:*off_1E798B220];
        }

        else
        {
          v24 = 0;
        }

        v45 = 0;
        v44 = 0;
        v25 = Width / Height;
        v26 = 0;
        if (([-[__CFDictionary objectForKeyedSubscript:](v8 objectForKeyedSubscript:{*off_1E798B3E0), "unsignedIntValue"}] & 1) == 0)
        {
          bzero(&v42, 0x14A0uLL);
          v41 = 0;
          if (FigMotionGetMotionDataFromISP(v8, &v42, 0, 110, &v41, &v44, 0, 0, 0))
          {
            v27 = 1;
          }

          else
          {
            v27 = v41 <= 0;
          }

          v26 = !v27;
        }

        v28 = FigCaptureSensorIDFromSampleBufferMetadata(v8, self->_cameraInfoByPortType);
        v29 = objc_alloc(MEMORY[0x1E6994568]);
        v30 = self->_cameraHasDistortionCoefficients;
        v31 = self->_cameraHasCalibrationValidMaxRadius;
        v42 = *&v46.value;
        epoch = v46.epoch;
        BYTE1(v39) = v31;
        LOBYTE(v39) = v30;
        v32 = [v29 initWithDetectedObjectsInfo:v24 calibrationData:v23 timestamp:&v42 aspectRatio:v28 sensorID:0 filteredFaceIDs:0 filteredBodyIDs:COERCE_DOUBLE(__PAIR64__(HIDWORD(v46.value) calibrationDistortionCoefficientsSupported:LODWORD(v25))) calibrationValidMaxRadiusSupported:v39];
        if (v26)
        {
          LODWORD(v34) = v44.i32[1];
          LODWORD(v33) = v44.i32[0];
          LODWORD(v35) = v45;
          [v32 setGravityX:v33 y:v34 z:v35];
        }

        v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        subjectSelectionSession = self->_subjectSelectionSession;
        v42 = *&v46.value;
        epoch = v46.epoch;
        if ([(SubjectSelectionSession *)subjectSelectionSession processPixelBuffer:ImageBuffer timestamp:&v42 detectedObjects:v24 usedFaceIDs:v36 usedBodyIDs:v37])
        {
          [BWSubjectSelectionNode renderSampleBuffer:forInput:];
          v7 = v40;
        }

        else
        {
          v7 = v40;
          if ([v36 count])
          {
            CMSetAttachment(buffer, *off_1E798A308, v36, 1u);
          }

          if ([v37 count])
          {
            CMSetAttachment(buffer, *off_1E798A300, v37, 1u);
          }
        }
      }

      else
      {
        [BWSubjectSelectionNode renderSampleBuffer:forInput:];
        v7 = v40;
      }
    }

    else
    {
      [BWSubjectSelectionNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWSubjectSelectionNode renderSampleBuffer:forInput:];
  }

  [v7 emitSampleBuffer:buffer];
  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeCenterStageFramingMode:(int)mode
{
  self->_centerStageFramingMode = mode;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(SubjectSelectionSession *)self->_subjectSelectionSession setSingleSubjectSelection:self->_centerStageFramingMode != 0];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (BWSubjectSelectionNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled portTypes:(id)types cameraHasDistortionCoefficients:(BOOL)coefficients cameraHasCalibrationValidMaxRadius:(BOOL)self0 centerStageFramingMode:(int)self1 gazeSelectionEnabled:(BOOL)self2
{
  v79.receiver = self;
  v79.super_class = BWSubjectSelectionNode;
  v18 = [(BWNode *)&v79 init];
  if (v18)
  {
    v18->_videoCaptureInputsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18->_videoCaptureOutputsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18->_portTypes = types;
    v18->_outputDimensions = dimensions;
    v18->_cameraInfoByPortType = type;
    if ((factor - 3) < 0xFFFFFFFE)
    {
      return 0;
    }

    v18->_horizontalSensorBinningFactor = factor;
    if ((binningFactor - 3) < 0xFFFFFFFE)
    {
      return 0;
    }

    else
    {
      HIDWORD(v44) = selectionEnabled;
      v18->_verticalSensorBinningFactor = binningFactor;
      v18->_deviceOrientationCorrectionEnabled = enabled;
      v19 = objc_alloc_init(BWDeviceOrientationMonitor);
      v18->_deviceOrientationMonitor = v19;
      v27 = OUTLINED_FUNCTION_1_2(v19, v20, v21, v22, v23, v24, v25, v26, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, 0);
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = MEMORY[0];
        do
        {
          v31 = 0;
          v32 = v29;
          do
          {
            if (MEMORY[0] != v30)
            {
              objc_enumerationMutation(types);
            }

            v29 = (v32 + 1);
            [(BWSubjectSelectionNode *)&v18->super.super.isa _addInputAndOutputWithOutputDrivingInputIndex:v32 mapToPortType:*(8 * v31++)];
            v32 = v29;
          }

          while (v28 != v31);
          v28 = OUTLINED_FUNCTION_1_2(v33, v34, v35, v36, v37, v38, v39, v40, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v78);
        }

        while (v28);
      }

      v18->_minLuxLevelNeeded = 5;
      v18->_endOfDataInputsCount = 0;
      v18->_centerStageFramingMode = mode;
      v18->_cameraHasDistortionCoefficients = coefficients;
      v18->_cameraHasCalibrationValidMaxRadius = radius;
      v18->_gazeSelectionEnabled = BYTE4(v45);
    }
  }

  return v18;
}

- (void)_addInputAndOutputWithOutputDrivingInputIndex:(uint64_t)index mapToPortType:
{
  if (self)
  {
    v6 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self];
    [(BWNodeInput *)v6 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v6 setPassthroughMode:1];
    [self addInput:v6];
    [self[16] setObject:v6 forKeyedSubscript:index];

    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:self];
    [(BWNodeOutput *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v7 setPassthroughMode:1];
    [(BWNodeOutput *)v7 setIndexOfInputWhichDrivesThisOutput:a2];
    [self addOutput:v7];
    [self[17] setObject:v7 forKeyedSubscript:index];
  }
}

- (uint64_t)_initSubjectSelectionSession
{
  if (result)
  {
    v1 = result;

    v2 = [objc_alloc(MEMORY[0x1E6994580]) initWithCurrentProcessIsCameraCaptureDaemon:FigCaptureCurrentProcessIsCameracaptured() != 0];
    *(v1 + 176) = v2;
    [v2 setSingleSubjectSelection:*(v1 + 216) != 0];
    v3 = *(v1 + 220);
    v4 = *(v1 + 176);

    return [v4 setEnableGazeSelection:v3];
  }

  return result;
}

@end