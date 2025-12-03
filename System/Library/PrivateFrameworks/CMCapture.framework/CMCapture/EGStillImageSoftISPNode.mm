@interface EGStillImageSoftISPNode
- (EGStillImageSoftISPNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration portType:(id)type processingMode:(int)mode addGatingInput:(BOOL)input delegate:(id)delegate;
- (void)dealloc;
- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err;
- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err;
- (void)processorController:(id)controller willAddSampleBuffer:(opaqueCMSampleBuffer *)buffer processorInput:(id)input;
- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageSoftISPNode

- (EGStillImageSoftISPNode)initWithName:(id)name stillImageSettings:(id)settings nodeConfiguration:(id)configuration portType:(id)type processingMode:(int)mode addGatingInput:(BOOL)input delegate:(id)delegate
{
  inputCopy = input;
  v22.receiver = self;
  v22.super_class = EGStillImageSoftISPNode;
  v14 = [(EGStillImageProcessorControllerDelegateNode *)&v22 initWithName:name delegate:delegate];
  if (v14)
  {
    v14->_stillImageSettings = settings;
    v14->_nodeConfiguration = configuration;
    v14->_portType = type;
    v14->_processingMode = mode;
    v15 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v16 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v14->_processorInput = v16;
    [(EGInputGroup *)v15 installInput:v16];
    v17 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v14->_sbufInput = v17;
    [(EGInputGroup *)v15 installInput:v17];
    if (inputCopy)
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

- (void)queueManagedReceiveData:(id)data fromInputGroup:(id)group
{
  gatingInput = self->_gatingInput;
  if (gatingInput && ![objc_msgSend(objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](gatingInput, "name", data, group)), "number"), "BOOLValue"}])
  {
    v16 = &OBJC_IVAR___EGStillImageSoftISPNode__processingCompleteOutput;
LABEL_12:
    [*(&self->super.super.super.super.isa + *v16) emitPayload:{-[EGStillImageGraphPayload initWithEmptyPayload]([EGStillImageGraphPayload alloc], "initWithEmptyPayload")}];

    return;
  }

  v7 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", data, group)), "sampleBuffer"}];
  if (!v7)
  {
    v16 = &OBJC_IVAR___EGStillImageSoftISPNode__sbufOutput;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [objc_msgSend(data objectForKeyedSubscript:{-[EGInput name](-[EGStillImageSoftISPNode processorInput](self, "processorInput"), "name")), "processorController"}];
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

- (void)processorController:(id)controller willAddSampleBuffer:(opaqueCMSampleBuffer *)buffer processorInput:(id)input
{
  if (-[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && [objc_msgSend(input "captureStreamSettings")] == 12 && (objc_msgSend(objc_msgSend(input, "captureStreamSettings"), "captureFlags") & 0x200000000) != 0)
  {
    v8 = *(MEMORY[0x1E695F050] + 16);
    v12.origin = *MEMORY[0x1E695F050];
    v12.size = v8;
    if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:", buffer, [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:{objc_msgSend(input, "portType")}], &v12))
    {
      v9 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
      if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1 && !CGRectIsNull(v12))
      {
        [objc_msgSend(objc_msgSend(input "captureSettings")];
        if (v10 >= 1.4118)
        {
          [objc_msgSend(objc_msgSend(input "captureSettings")];
          if (v11 < 2.0)
          {
            if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] != 4)
            {
              if (-[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:", [input portType], +[FigCaptureCameraParameters sensorIDStringFromMetadata:](FigCaptureCameraParameters, "sensorIDStringFromMetadata:", v9)))
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

- (void)processorController:(id)controller didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)buffer type:(unint64_t)type processorInput:(id)input err:(int)err
{
  if (err)
  {
    goto LABEL_7;
  }

  if (!buffer)
  {
    *&err = 4294954516;
LABEL_7:
    [EGStillImageSoftISPNode processorController:*&err didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    return;
  }

  v8 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:buffer];
  [(EGStillImageOutput *)self->_sbufOutput emitPayload:v8];
}

- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err
{
  if (err)
  {
    [EGStillImageSoftISPNode processorController:*&err didFinishProcessingInput:? err:?];
  }

  else
  {
    processingCompleteOutput = self->_processingCompleteOutput;
    initWithEmptyPayload = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

    [(EGStillImageOutput *)processingCompleteOutput emitPayload:initWithEmptyPayload];
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