@interface BWMotionAttachmentsNode
- (BWMotionAttachmentsNode)initWithSensorIDDictionaryByPortType:(id)type cameraInfoByPortType:(id)portType tuningParameters:(id)parameters activePortTypes:(id)types horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor maxSupportedFrameRate:(float)rate motionAttachmentsMode:(int)self0 motionAttachmentsSource:(int)self1 motionCallbackThreadPriority:(unsigned int)self2 provideSourceVideoWithMotionAttachmentsOutput:(BOOL)self3 provideOfflineVISMotionDataOutput:(BOOL)self4 inputFormatIsProResRaw:(BOOL)self5 errorOut:(int *)self6;
- (uint64_t)_flushIfRequiredForMarkerBuffer:(uint64_t)result;
- (uint64_t)_setupSampleBufferProcessor;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMotionAttachmentsNode

- (BWMotionAttachmentsNode)initWithSensorIDDictionaryByPortType:(id)type cameraInfoByPortType:(id)portType tuningParameters:(id)parameters activePortTypes:(id)types horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor maxSupportedFrameRate:(float)rate motionAttachmentsMode:(int)self0 motionAttachmentsSource:(int)self1 motionCallbackThreadPriority:(unsigned int)self2 provideSourceVideoWithMotionAttachmentsOutput:(BOOL)self3 provideOfflineVISMotionDataOutput:(BOOL)self4 inputFormatIsProResRaw:(BOOL)self5 errorOut:(int *)self6
{
  selfCopy = self;
  if (!output && !dataOutput)
  {
    [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:];
    return selfCopy;
  }

  v61.receiver = self;
  v61.super_class = BWMotionAttachmentsNode;
  v24 = [(BWNode *)&v61 init];
  selfCopy = v24;
  if (v24)
  {
    if (mode)
    {
      if (mode != 2)
      {
        if (mode == 1)
        {
          factorCopy6 = factor;
          binningFactorCopy6 = binningFactor;
          dataOutputCopy6 = dataOutput;
          if (source == 1)
          {
            v60[0] = 0x1F2193190;
            v60[1] = 0x1F2193110;
            v60[2] = 0x1F21930F0;
            v60[3] = 0x1F2193150;
            v60[4] = 0x1F2193130;
            v25 = MEMORY[0x1E695DEC8];
            v26 = v60;
            v27 = 5;
          }

          else
          {
            v59[0] = 0x1F2193110;
            v59[1] = 0x1F21930F0;
            v59[2] = 0x1F2193150;
            v59[3] = 0x1F2193130;
            v25 = MEMORY[0x1E695DEC8];
            v26 = v59;
            v27 = 4;
          }

          v35 = [v25 arrayWithObjects:v26 count:v27];
          v36 = 240;
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      if (source == 2)
      {
        factorCopy6 = factor;
        binningFactorCopy6 = binningFactor;
        dataOutputCopy6 = dataOutput;
        v57[0] = 0x1F2193190;
        v57[1] = 0x1F21931B0;
        v28 = MEMORY[0x1E695DEC8];
        v29 = v57;
        v30 = 2;
      }

      else
      {
        if (source != 1)
        {
          goto LABEL_16;
        }

        factorCopy6 = factor;
        binningFactorCopy6 = binningFactor;
        dataOutputCopy6 = dataOutput;
        v58 = 0x1F2193190;
        v28 = MEMORY[0x1E695DEC8];
        v29 = &v58;
        v30 = 1;
      }

      v35 = [v28 arrayWithObjects:v29 count:v30];
      v32 = 0;
    }

    else
    {
      switch(source)
      {
        case 3:
          factorCopy6 = factor;
          binningFactorCopy6 = binningFactor;
          dataOutputCopy6 = dataOutput;
          v37 = vcvtps_s32_f32(0.042 / (1.0 / rate));
          if (v37 <= 3)
          {
            v32 = 3;
          }

          else
          {
            v32 = v37;
          }

          v54[0] = 0x1F21930D0;
          v54[1] = 0x1F2193170;
          v31 = MEMORY[0x1E695DEC8];
          v33 = v54;
          v34 = 2;
          break;
        case 2:
          factorCopy6 = factor;
          binningFactorCopy6 = binningFactor;
          dataOutputCopy6 = dataOutput;
          v55[0] = 0x1F2193190;
          v55[1] = 0x1F21931B0;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
          v36 = 0;
LABEL_19:
          v32 = 1;
LABEL_29:
          selfCopy->_emitMotionAttachmentsSBufForOfflineProResRawVIS = dataOutputCopy6 && raw;
          v38 = *off_1E798A970;
          v52[0] = *off_1E798A9B8;
          v52[1] = v38;
          v53[0] = type;
          v53[1] = portType;
          v39 = *off_1E798A9D0;
          v52[2] = *off_1E798A968;
          v52[3] = v39;
          v53[2] = types;
          v53[3] = parameters;
          v52[4] = *off_1E798A998;
          v53[4] = [MEMORY[0x1E696AD98] numberWithInt:factorCopy6];
          v52[5] = *off_1E798A9A0;
          v53[5] = [MEMORY[0x1E696AD98] numberWithInt:binningFactorCopy6];
          v52[6] = 0x1F2193090;
          v53[6] = [MEMORY[0x1E696AD98] numberWithInt:v36];
          v52[7] = 0x1F2193070;
          v53[7] = [MEMORY[0x1E696AD98] numberWithInt:v32];
          v53[8] = v35;
          v52[8] = 0x1F2193050;
          v52[9] = 0x1F21930B0;
          v53[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:priority];
          selfCopy->_optionsDict = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:10];
          v40 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:selfCopy];
          v41 = objc_alloc_init(BWVideoFormatRequirements);
          if (v35)
          {
            v42 = v32;
            firstObject = [v35 firstObject];
            if ([v35 count] <= 1 && objc_msgSend(firstObject, "isEqualToString:", 0x1F21930D0))
            {
              [(BWNodeInput *)v40 setRetainedBufferCount:0];
            }

            else
            {
              [(BWNodeInput *)v40 setDelayedBufferCount:v42];
            }
          }

          [(BWNodeInput *)v40 setFormatRequirements:v41];

          [(BWNode *)selfCopy addInput:v40];
          if (output)
          {
            [(BWNodeInput *)v40 setPassthroughMode:1];
            v44 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:selfCopy];
            v45 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWNodeOutput *)v44 setName:@"Source Video With Motion Attachments"];
            [(BWNodeOutput *)v44 setPassthroughMode:1];
            [(BWNodeOutput *)v44 setFormatRequirements:v45];

            [(BWNode *)selfCopy addOutput:v44];
            selfCopy->_sourceVideoWithMotionAttachmentsOutput = v44;
          }

          if (dataOutputCopy6)
          {
            v46 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:selfCopy];
            v51 = *MEMORY[0x1E69629D8];
            -[BWNodeOutput setFormat:](v46, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1]));
            [(BWNodeOutput *)v46 setName:@"Motion Attachments For Offline VIS"];
            [(BWNode *)selfCopy addOutput:v46];
            selfCopy->_offlineVISMotionDataOutput = v46;
          }

          selfCopy->_limitedGMErrorLogger = [[BWLimitedGMErrorLogger alloc] initWithName:@"MotionAttachments" maxLoggingCount:10];

          [(BWNode *)selfCopy setSupportsLiveReconfiguration:1];
          [(BWNode *)selfCopy setSupportsPrepareWhileRunning:1];
          [(BWNode *)selfCopy setRequiresEndOfDataForConfigurationChanges:1];
          return selfCopy;
        case 1:
          factorCopy6 = factor;
          binningFactorCopy6 = binningFactor;
          dataOutputCopy6 = dataOutput;
          v56 = 0x1F2193190;
          v31 = MEMORY[0x1E695DEC8];
          v32 = 1;
          v33 = &v56;
          v34 = 1;
          break;
        default:
LABEL_16:

          selfCopy = 0;
          *out = -12787;
          return selfCopy;
      }

      v35 = [v31 arrayWithObjects:v33 count:v34];
    }

    v36 = 0;
    goto LABEL_29;
  }

  return selfCopy;
}

- (void)dealloc
{
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(sampleBufferProcessor, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v6 = FigBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    CFRelease(self->_sampleBufferProcessor);
  }

  v8.receiver = self;
  v8.super_class = BWMotionAttachmentsNode;
  [(BWNode *)&v8 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWMotionAttachmentsNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_sampleBufferProcessor)
  {
    if ([(BWMotionAttachmentsNode *)self _setupSampleBufferProcessor])
    {
      [BWMotionAttachmentsNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v8(sampleBufferProcessor);
    }
  }

  [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
  v9.receiver = self;
  v9.super_class = BWMotionAttachmentsNode;
  [(BWNode *)&v9 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&v9, buffer);
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    [(BWMotionAttachmentsNode *)self _flushIfRequiredForMarkerBuffer:buffer];
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  }

  else
  {
    sampleBufferProcessor = self->_sampleBufferProcessor;
    if (sampleBufferProcessor)
    {
      if (self->_adjustsValidBufferRectForDarkShade)
      {
        FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(buffer);
        sampleBufferProcessor = self->_sampleBufferProcessor;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v7)
      {
        v7(sampleBufferProcessor, buffer);
      }
    }

    else
    {
      v8 = v9;
      [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFD0 pts:&v8]];
    }
  }
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!self)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = *(self + 136);
  v13 = 0;
  v5 = FigSampleBufferProcessorCreateForMotionAttachments(v3, v4, &v13);
  if (v5)
  {
    v8 = v5;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_72();
    FigDebugAssert3();
    fig_log_get_emitter();
    v12 = v1;
    LODWORD(v11) = 0;
    OUTLINED_FUNCTION_1_72();
  }

  else
  {
    v6 = v13;
    *(self + 128) = v13;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v8 = v7(v6, man_maProcessorOutputReadyCallback, self);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
  }

  FigDebugAssert3();
  v9 = *(self + 128);
  if (v9)
  {
    CFRelease(v9);
    *(self + 128) = 0;
  }

  [*(self + 160) logErrorNumber:v8 errorString:{@"setup SBP", v11, v12}];
  return v8;
}

- (uint64_t)_flushIfRequiredForMarkerBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = CMGetAttachment(target, @"FileWriterAction", 0);
    v5 = CMGetAttachment(target, @"AttachedMediaSwapPlaceholderSampleBuffer", 0);
    if ([v4 isEqualToString:0x1F21A9C50] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", 0x1F21A9C70) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", 0x1F21A9CD0) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", 0x1F21A9CB0) & 1) != 0 || (result = objc_msgSend(v4, "isEqualToString:", 0x1F21A9D30), (result) || v5 == *MEMORY[0x1E695E4D0])
    {
      v6 = *(v3 + 128);
      if (v6)
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      v8 = *(v3 + 160);

      return [v8 resetCurrentLoggingCounter];
    }
  }

  return result;
}

- (uint64_t)initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end