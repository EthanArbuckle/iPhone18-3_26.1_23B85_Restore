@interface EGStillImageLearnedFusionNRFNode
- (EGStillImageLearnedFusionNRFNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 provideInferenceInputImageForProcessing:(BOOL)a6 addSyncErrorRecoveryPorts:(BOOL)a7 portType:(id)a8 delegate:(id)a9;
- (uint64_t)_handleAnyErrorRecoveryLogicWithErr:(_DWORD *)val;
- (void)_releaseErrorRecoveryResources;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5;
- (void)queueManagedReceiveData:(id)a3 fromInput:(id)a4;
@end

@implementation EGStillImageLearnedFusionNRFNode

- (EGStillImageLearnedFusionNRFNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 provideInferenceInputImageForProcessing:(BOOL)a6 addSyncErrorRecoveryPorts:(BOOL)a7 portType:(id)a8 delegate:(id)a9
{
  v10 = a7;
  v27.receiver = self;
  v27.super_class = EGStillImageLearnedFusionNRFNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v27 initWithName:a3 delegate:a9];
  if (v14)
  {
    v14->_stillImageSettings = a4;
    v14->_nodeConfiguration = a5;
    v14->_portType = a8;
    v15 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v14->_processorInput = v15;
    [(EGNode *)v14 installInput:v15];
    v16 = [[EGInput alloc] initWithName:@"referenceFrame"];
    v14->_referenceFrameInput = v16;
    [(EGNode *)v14 installInput:v16];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = 0;
    do
    {
      v19 = [EGStillImageProcessorControllerDelegateNode newSbufInputWithIndex:v18];
      [(EGNode *)v14 installInput:v19];
      [v17 addObject:v19];
      v18 = (v18 + 1);
    }

    while (v18 != 3);
    v14->_primarySbufInputs = [v17 copy];
    v20 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v14->_sbufOutput = v20;
    [(EGNode *)v14 installOutput:v20];
    v21 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"fusionMode"];
    v14->_fusionModeOutput = v21;
    [(EGNode *)v14 installOutput:v21];
    v14->_provideInferenceInputImageForProcessing = a6;
    if (a6)
    {
      v22 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferenceInputImage"];
      v14->_inferenceInputImageOutput = v22;
      [(EGNode *)v14 installOutput:v22];
    }

    v23 = [(BWPhotonicEngineNodeConfiguration *)v14->_nodeConfiguration resolvedProcessingResolutionFlavorForSettings:v14->_stillImageSettings portType:v14->_portType];
    v14->_nrfProcessorControllerInput = [[BWNRFProcessorInput alloc] initWithSettings:v14->_stillImageSettings portType:v14->_portType resolutionFlavor:v23];
    if (v10)
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

- (void)queueManagedReceiveData:(id)a3 fromInput:(id)a4
{
  if (self->_processorInput != a4)
  {
    if ([(NSArray *)self->_primarySbufInputs containsObject:a4])
    {
      v7 = [a3 sampleBuffer];
      if (v7)
      {
        v8 = v7;
        [(BWNRFProcessorInput *)self->_nrfProcessorControllerInput addFrame:v7];
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

    if (self->_hdrErrorRecoveryEVZeroInput == a4)
    {
      v17 = [a3 sampleBuffer];
      if (v17)
      {
        v10 = v17;
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

    if (self->_referenceFrameInput != a4)
    {
      return;
    }

    v14 = [a3 sampleBuffer];
    if (v14)
    {
      v15 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v14, 1u);
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

  v11 = [a3 processorController];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  BYTE3(v20) = 1;
  BYTE2(v20) = self->_processSmartStyleRenderingInput;
  BYTE1(v20) = self->_provideInferenceInputImageForProcessing;
  LOBYTE(v20) = 1;
  LOBYTE(v19) = 0;
  v13 = [v11 enqueueInputForProcessing:self->_nrfProcessorControllerInput delegate:self processErrorRecoveryFrame:0 processErrorRecoveryProxy:0 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v19 clientBracketSequenceNumber:v20 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
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

- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5
{
  v5 = *&a4;
  fusionModeOutput = self->_fusionModeOutput;
  v7 = [EGStillImageGraphPayload alloc];
  v8 = -[EGStillImageGraphPayload initWithNumber:](v7, "initWithNumber:", [MEMORY[0x1E696AD98] numberWithInt:v5]);

  [(EGStillImageOutput *)fusionModeOutput emitPayload:v8];
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7)
  {
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_5:
    *&a7 = 4294954516;
LABEL_6:
    [EGStillImageLearnedFusionNRFNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  if (a5 == 15)
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
    BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(a4);
    attemptErrorRecoveryOutput = self->_attemptErrorRecoveryOutput;
    if (attemptErrorRecoveryOutput && !self->_errorCodeTriggeringErrorRecovery)
    {
      v11 = [EGStillImageGraphPayload alloc];
      [(EGStillImageOutput *)attemptErrorRecoveryOutput emitPayload:[(EGStillImageGraphPayload *)v11 initWithNumber:MEMORY[0x1E695E110]]];
      [(EGStillImageLearnedFusionNRFNode *)self _releaseErrorRecoveryResources];
    }
  }

  v12 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)inferenceInputImageOutput emitPayload:v12];
}

- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9
{
  if (a9)
  {
    v10 = EGStillImageGraphManagerForGraphElement(self);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a9, "-[EGStillImageLearnedFusionNRFNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]"];

    [v10 didEncounterError:a9 description:v11 element:self];
  }
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  v5 = *&a5;
  p_nrfProcessorControllerInput = &self->_nrfProcessorControllerInput;
  nrfProcessorControllerInput = self->_nrfProcessorControllerInput;
  if (nrfProcessorControllerInput == a4 || (p_nrfProcessorControllerInput = &self->_nrfProcessorControllerErrorRecoveryInput, nrfProcessorControllerInput = self->_nrfProcessorControllerErrorRecoveryInput, nrfProcessorControllerInput == a4))
  {

    *p_nrfProcessorControllerInput = 0;
  }

  if (v5)
  {
    [EGStillImageLearnedFusionNRFNode processorController:v5 didFinishProcessingInput:a4 err:?];
  }

  else
  {

    [(EGStillImageLearnedFusionNRFNode *)self _releaseErrorRecoveryResources];
  }
}

- (void)_releaseErrorRecoveryResources
{
  if (a1)
  {
    if (*(a1 + 240) == 1)
    {

      *(a1 + 232) = 0;
      *(a1 + 216) = 0;
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