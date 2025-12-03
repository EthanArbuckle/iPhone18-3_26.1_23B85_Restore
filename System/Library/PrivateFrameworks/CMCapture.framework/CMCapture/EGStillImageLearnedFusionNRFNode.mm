@interface EGStillImageLearnedFusionNRFNode
- (EGStillImageLearnedFusionNRFNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration provideInferenceInputImageForProcessing:(BOOL)processing addSyncErrorRecoveryPorts:(BOOL)ports portType:(id)type delegate:(id)delegate;
- (uint64_t)_handleAnyErrorRecoveryLogicWithErr:(_DWORD *)val;
- (void)_releaseErrorRecoveryResources;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(unint64_t)type captureFrameFlags:(unint64_t)flags processorInput:(id)input err:(int)err;
- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)processorController:(id)controller didSelectFusionMode:(int)mode processorInput:(id)input;
- (void)queueManagedReceiveData:(id)data fromInput:(id)input;
@end

@implementation EGStillImageLearnedFusionNRFNode

- (EGStillImageLearnedFusionNRFNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration provideInferenceInputImageForProcessing:(BOOL)processing addSyncErrorRecoveryPorts:(BOOL)ports portType:(id)type delegate:(id)delegate
{
  portsCopy = ports;
  v27.receiver = self;
  v27.super_class = EGStillImageLearnedFusionNRFNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v27 initWithName:name delegate:delegate];
  if (v14)
  {
    v14->_stillImageSettings = settings;
    v14->_nodeConfiguration = configuration;
    v14->_portType = type;
    v15 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v14->_processorInput = v15;
    [(EGNode *)v14 installInput:v15];
    v16 = [[EGInput alloc] initWithName:@"referenceFrame"];
    v14->_referenceFrameInput = v16;
    [(EGNode *)v14 installInput:v16];
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0;
    do
    {
      v19 = [EGStillImageProcessorControllerDelegateNode newSbufInputWithIndex:v18];
      [(EGNode *)v14 installInput:v19];
      [array addObject:v19];
      v18 = (v18 + 1);
    }

    while (v18 != 3);
    v14->_primarySbufInputs = [array copy];
    v20 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v14->_sbufOutput = v20;
    [(EGNode *)v14 installOutput:v20];
    v21 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"fusionMode"];
    v14->_fusionModeOutput = v21;
    [(EGNode *)v14 installOutput:v21];
    v14->_provideInferenceInputImageForProcessing = processing;
    if (processing)
    {
      v22 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferenceInputImage"];
      v14->_inferenceInputImageOutput = v22;
      [(EGNode *)v14 installOutput:v22];
    }

    v23 = [(BWPhotonicEngineNodeConfiguration *)v14->_nodeConfiguration resolvedProcessingResolutionFlavorForSettings:v14->_stillImageSettings portType:v14->_portType];
    v14->_nrfProcessorControllerInput = [[BWNRFProcessorInput alloc] initWithSettings:v14->_stillImageSettings portType:v14->_portType resolutionFlavor:v23];
    if (portsCopy)
    {
      v14->_handleSyncErrorRecovery = 1;
      v24 = [[EGInput alloc] initWithName:@"hdrErrorRecoveryEVZero"];
      v14->_hdrErrorRecoveryEVZeroInput = v24;
      [(EGNode *)v14 installInput:v24];
      v25 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"attemptErrorRecovery"];
      v14->_attemptErrorRecoveryOutput = v25;
      [(EGNode *)v14 installOutput:v25];
      v14->_nrfProcessorControllerErrorRecoveryInput = [[BWNRFProcessorInput alloc] initWithSettings:v14->_stillImageSettings portType:v14->_portType resolutionFlavor:v23];
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageLearnedFusionNRFNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)data fromInput:(id)input
{
  if (self->_processorInput != input)
  {
    if ([(NSArray *)self->_primarySbufInputs containsObject:input])
    {
      sampleBuffer = [data sampleBuffer];
      if (sampleBuffer)
      {
        v8 = sampleBuffer;
        [(BWNRFProcessorInput *)self->_nrfProcessorControllerInput addFrame:sampleBuffer];
        if (!self->_nrfProcessorControllerErrorRecoveryInput || (BWStillImageCaptureFrameFlagsForSampleBuffer(v8) & 0xA) == 0)
        {
          return;
        }

        nrfProcessorControllerErrorRecoveryInput = self->_nrfProcessorControllerErrorRecoveryInput;
        v10 = v8;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (self->_hdrErrorRecoveryEVZeroInput == input)
    {
      sampleBuffer2 = [data sampleBuffer];
      if (sampleBuffer2)
      {
        v10 = sampleBuffer2;
        nrfProcessorControllerErrorRecoveryInput = self->_nrfProcessorControllerErrorRecoveryInput;
        if (!nrfProcessorControllerErrorRecoveryInput)
        {
          return;
        }

LABEL_20:

        [(BWNRFProcessorInput *)nrfProcessorControllerErrorRecoveryInput addFrame:v10];
        return;
      }

      goto LABEL_23;
    }

    if (self->_referenceFrameInput != input)
    {
      return;
    }

    sampleBuffer3 = [data sampleBuffer];
    if (sampleBuffer3)
    {
      v15 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], sampleBuffer3, 1u);
      [(BWNRFProcessorInput *)self->_nrfProcessorControllerInput setReferenceFrameAttachments:v15];
      v16 = self->_nrfProcessorControllerErrorRecoveryInput;
      if (v16)
      {

        [(BWNRFProcessorInput *)v16 setReferenceFrameAttachments:v15];
      }

      return;
    }

LABEL_23:
    v18 = 4294954516;
LABEL_25:
    [EGStillImageLearnedFusionNRFNode queueManagedReceiveData:v18 fromInput:?];
    return;
  }

  processorController = [data processorController];
  if (!processorController)
  {
    goto LABEL_23;
  }

  v12 = processorController;
  BYTE3(v20) = 1;
  BYTE2(v20) = self->_processSmartStyleRenderingInput;
  BYTE1(v20) = self->_provideInferenceInputImageForProcessing;
  LOBYTE(v20) = 1;
  LOBYTE(v19) = 0;
  v13 = [processorController enqueueInputForProcessing:self->_nrfProcessorControllerInput delegate:self processErrorRecoveryFrame:0 processErrorRecoveryProxy:0 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v19 clientBracketSequenceNumber:v20 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
  if (v13)
  {
    v18 = v13;
    goto LABEL_25;
  }

  if (self->_handleSyncErrorRecovery)
  {
    self->_stashedNRFProcessorController = v12;
  }
}

- (void)processorController:(id)controller didSelectFusionMode:(int)mode processorInput:(id)input
{
  v5 = *&mode;
  fusionModeOutput = self->_fusionModeOutput;
  v7 = [EGStillImageGraphPayload alloc];
  v8 = -[EGStillImageGraphPayload initWithNumber:](v7, "initWithNumber:", [MEMORY[0x1E696AD98] numberWithInt:v5]);

  [(EGStillImageOutput *)fusionModeOutput emitPayload:v8];
}

- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err
{
  if (err)
  {
    goto LABEL_6;
  }

  if (!buffer)
  {
LABEL_5:
    *&err = 4294954516;
LABEL_6:
    [EGStillImageLearnedFusionNRFNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  if (type == 15)
  {
    inferenceInputImageOutput = self->_inferenceInputImageOutput;
    if (!inferenceInputImageOutput)
    {
      goto LABEL_5;
    }
  }

  else
  {
    inferenceInputImageOutput = self->_sbufOutput;
    BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(buffer);
    attemptErrorRecoveryOutput = self->_attemptErrorRecoveryOutput;
    if (attemptErrorRecoveryOutput && !self->_errorCodeTriggeringErrorRecovery)
    {
      v11 = [EGStillImageGraphPayload alloc];
      [(EGStillImageOutput *)attemptErrorRecoveryOutput emitPayload:[(EGStillImageGraphPayload *)v11 initWithNumber:MEMORY[0x1E695E110]]];
      [(EGStillImageLearnedFusionNRFNode *)self _releaseErrorRecoveryResources];
    }
  }

  v12 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [(EGStillImageOutput *)inferenceInputImageOutput emitPayload:v12];
}

- (void)processorController:(id)controller didFinishProcessingBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(unint64_t)type captureFrameFlags:(unint64_t)flags processorInput:(id)input err:(int)err
{
  if (err)
  {
    v10 = EGStillImageGraphManagerForGraphElement(self);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", err, "-[EGStillImageLearnedFusionNRFNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]"];

    [v10 didEncounterError:err description:v11 element:self];
  }
}

- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err
{
  v5 = *&err;
  p_nrfProcessorControllerInput = &self->_nrfProcessorControllerInput;
  nrfProcessorControllerInput = self->_nrfProcessorControllerInput;
  if (nrfProcessorControllerInput == input || (p_nrfProcessorControllerInput = &self->_nrfProcessorControllerErrorRecoveryInput, nrfProcessorControllerInput = self->_nrfProcessorControllerErrorRecoveryInput, nrfProcessorControllerInput == input))
  {

    *p_nrfProcessorControllerInput = 0;
  }

  if (v5)
  {
    [EGStillImageLearnedFusionNRFNode processorController:v5 didFinishProcessingInput:input err:?];
  }

  else
  {

    [(EGStillImageLearnedFusionNRFNode *)self _releaseErrorRecoveryResources];
  }
}

- (void)_releaseErrorRecoveryResources
{
  if (self)
  {
    if (*(self + 240) == 1)
    {

      *(self + 232) = 0;
      *(self + 216) = 0;
    }
  }
}

- (uint64_t)_handleAnyErrorRecoveryLogicWithErr:(_DWORD *)val
{
  result = 0;
  if (val && a2)
  {
    if (*(val + 240) == 1)
    {
      if (val[56])
      {
        return 1;
      }

      v5 = *(val + 29);
      if (v5 && (v6 = *(val + 27)) != 0)
      {
        BYTE3(v12) = 1;
        BYTE2(v12) = *(val + 201);
        BYTE1(v12) = *(val + 200);
        LOBYTE(v12) = 1;
        LOBYTE(v11) = 0;
        v7 = [v5 enqueueInputForProcessing:v6 delegate:val processErrorRecoveryFrame:1 processErrorRecoveryProxy:0 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v11 clientBracketSequenceNumber:v12 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
        if (!v7)
        {
          val[56] = a2;
          v8 = *(val + 21);
          v9 = [EGStillImageGraphPayload alloc];
          [v8 emitPayload:{-[EGStillImageGraphPayload initWithNumber:](v9, "initWithNumber:", MEMORY[0x1E695E118])}];
          return 1;
        }

        v10 = v7;
      }

      else
      {
        v10 = 4294954516;
      }

      [EGStillImageGraphManagerForGraphElement(val) didEncounterError:a2 description:objc_msgSend(MEMORY[0x1E696AEC0] element:{"stringWithFormat:", @"Encountered err:%d in %s", v10, "-[EGStillImageLearnedFusionNRFNode _handleAnyErrorRecoveryLogicWithErr:]"), val}];
    }

    return 0;
  }

  return result;
}

- (uint64_t)queueManagedReceiveData:(void *)a1 fromInput:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", a2];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(_DWORD *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(_DWORD *a1, uint64_t a2)
{
  result = [(EGStillImageLearnedFusionNRFNode *)a1 _handleAnyErrorRecoveryLogicWithErr:a2];
  if ((result & 1) == 0)
  {
    v5 = EGStillImageGraphManagerForGraphElement(a1);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageLearnedFusionNRFNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];

    return [v5 didEncounterError:a2 description:v6 element:a1];
  }

  return result;
}

- (uint64_t)processorController:(_DWORD *)a1 didFinishProcessingInput:(uint64_t)a2 err:(void *)a3 .cold.1(_DWORD *a1, uint64_t a2, void *a3)
{
  if ([(EGStillImageLearnedFusionNRFNode *)a1 _handleAnyErrorRecoveryLogicWithErr:a2])
  {
    v6 = [objc_msgSend(a3 "captureSettings")];

    return [v6 setProcessingError:a2];
  }

  else
  {
    EGStillImageGraphManagerForGraphElement(a1);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageLearnedFusionNRFNode processorController:didFinishProcessingInput:err:]"];
    v8 = OUTLINED_FUNCTION_0_71();

    return [v8 didEncounterError:? description:? element:?];
  }
}

@end