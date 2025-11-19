@interface EGStillImageSoftISPNode
- (EGStillImageSoftISPNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 portType:(id)a6 processingMode:(int)a7 addGatingInput:(BOOL)a8 delegate:(id)a9;
- (void)dealloc;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 willAddSampleBuffer:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageSoftISPNode

- (EGStillImageSoftISPNode)initWithName:(id)a3 stillImageSettings:(id)a4 nodeConfiguration:(id)a5 portType:(id)a6 processingMode:(int)a7 addGatingInput:(BOOL)a8 delegate:(id)a9
{
  v9 = a8;
  v22.receiver = self;
  v22.super_class = EGStillImageSoftISPNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v22 initWithName:a3 delegate:a9];
  if (v14)
  {
    v14->_stillImageSettings = a4;
    v14->_nodeConfiguration = a5;
    v14->_portType = a6;
    v14->_processingMode = a7;
    v15 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v16 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v14->_processorInput = v16;
    [(EGInputGroup *)v15 installInput:v16];
    v17 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v14->_sbufInput = v17;
    [(EGInputGroup *)v15 installInput:v17];
    if (v9)
    {
      v18 = [[EGInput alloc] initWithName:@"gating"];
      v14->_gatingInput = v18;
      [(EGInputGroup *)v15 installInput:v18];
    }

    [(EGNode *)v14 installInputGroup:v15];
    v19 = +[EGStillImageProcessorControllerDelegateNode newSbufOutput];
    v14->_sbufOutput = v19;
    [(EGNode *)v14 installOutput:v19];
    v20 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"processingComplete"];
    v14->_processingCompleteOutput = v20;
    [(EGNode *)v14 installOutput:v20];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageSoftISPNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  gatingInput = self->_gatingInput;
  if (gatingInput && ![objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](gatingInput, "name", a3, a4)), "number"), "BOOLValue"}])
  {
    v16 = &OBJC_IVAR___EGStillImageSoftISPNode__processingCompleteOutput;
LABEL_12:
    [*(&self->super.super.super.super.isa + *v16) emitPayload:{-[EGStillImageGraphPayload initWithEmptyPayload]([EGStillImageGraphPayload alloc], "initWithEmptyPayload")}];

    return;
  }

  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (!v7)
  {
    v16 = &OBJC_IVAR___EGStillImageSoftISPNode__sbufOutput;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageSoftISPNode processorInput](self, "processorInput"), "name")), "processorController"}];
  if (v9 && (v10 = v9, (v11 = [[BWSoftISPProcessorControllerInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType resolutionFlavor:[(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration resolvedProcessingResolutionFlavorForSettings:self->_stillImageSettings portType:self->_portType] gdcEnabled:[(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration gdcSourceForSettings:self->_stillImageSettings portType:self->_portType]== 3]) != 0))
  {
    v12 = v11;
    [(BWSoftISPProcessorControllerInput *)v11 addFrame:v8 processingMode:self->_processingMode transferOwnership:0];
    v13 = [v10 enqueueInputForProcessing:v12 delegate:self];

    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = 4294954516;
  }

  v14 = EGStillImageGraphManagerForGraphElement(self);
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", v13];

  [v14 didEncounterError:v13 description:v15 element:self];
}

- (void)processorController:(id)a3 willAddSampleBuffer:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5
{
  if (-[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && [objc_msgSend(a5 "captureStreamSettings")] == 12 && (objc_msgSend(objc_msgSend(a5, "captureStreamSettings"), "captureFlags") & 0x200000000) != 0)
  {
    v8 = *(MEMORY[0x1E695F050] + 16);
    v12.origin = *MEMORY[0x1E695F050];
    v12.size = v8;
    if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:", a4, [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:{objc_msgSend(a5, "portType")}], &v12))
    {
      v9 = CMGetAttachment(a4, *off_1E798A3C8, 0);
      if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1 && !CGRectIsNull(v12))
      {
        [objc_msgSend(objc_msgSend(a5 "captureSettings")];
        if (v10 >= 1.4118)
        {
          [objc_msgSend(objc_msgSend(a5 "captureSettings")];
          if (v11 < 2.0)
          {
            if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] != 4)
            {
              if (-[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:", [a5 portType], +[FigCaptureCameraParameters sensorIDStringFromMetadata:](FigCaptureCameraParameters, "sensorIDStringFromMetadata:", v9)))
              {
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Deep Zoom Transfer wrongly configured userInfo:{processing mode should be 'FuseHighResolutionWithZoomedImage'", 0}]);
              }
            }

            FigCFDictionarySetCGRect();
          }
        }
      }
    }
  }
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7)
  {
    goto LABEL_7;
  }

  if (!a4)
  {
    *&a7 = 4294954516;
LABEL_7:
    [EGStillImageSoftISPNode processorController:*&a7 didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  if (a5)
  {
    [EGStillImageSoftISPNode processorController:*&a5 didFinishProcessingInput:? err:?];
  }

  else
  {
    processingCompleteOutput = self->_processingCompleteOutput;
    v6 = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

    [(EGStillImageOutput *)processingCompleteOutput emitPayload:v6];
  }
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:(uint64_t)a2 type:processorInput:err:.cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageSoftISPNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingInput:(uint64_t)a2 err:.cold.1(void *a1, uint64_t a2)
{
  EGStillImageGraphManagerForGraphElement(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", a2, "-[EGStillImageSoftISPNode processorController:didFinishProcessingInput:err:]"];
  v3 = OUTLINED_FUNCTION_0_71();

  return [v3 didEncounterError:? description:? element:?];
}

@end