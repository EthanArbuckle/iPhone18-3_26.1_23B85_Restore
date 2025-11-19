@interface EGStillImageDeferredProcessingNode
- (EGStillImageDeferredProcessingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 numSbufOutputs:(int)a6 portType:(id)a7 delegate:(id)a8;
- (void)dealloc;
- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6;
- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageDeferredProcessingNode

- (EGStillImageDeferredProcessingNode)initWithName:(id)a3 stillImageSettings:(id)a4 resourceCoordinator:(id)a5 numSbufOutputs:(int)a6 portType:(id)a7 delegate:(id)a8
{
  v22.receiver = self;
  v22.super_class = EGStillImageDeferredProcessingNode;
  v12 = [(EGStillImageProcessorControllerDelegateNode *)&v22 initWithName:a3 delegate:a8];
  if (v12)
  {
    v12->_stillImageSettings = a4;
    v12->_resourceCoordinator = a5;
    v12->_portType = a7;
    v13 = [[EGInputGroup alloc] initWithName:@"mainInputGroup"];
    v14 = +[EGStillImageProcessorControllerDelegateNode newProcessorControllerInput];
    v12->_processorInput = v14;
    [(EGInputGroup *)v13 installInput:v14];
    v15 = +[EGStillImageProcessorControllerDelegateNode newSbufInput];
    v12->_sbufInput = v15;
    [(EGInputGroup *)v13 installInput:v15];
    [(EGNode *)v12 installInputGroup:v13];
    v16 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"referenceFrame"];
    v12->_referenceFrameOutput = v16;
    [(EGNode *)v12 installOutput:v16];
    v17 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"inferencesDelivered"];
    v12->_inferencesDeliveredOutput = v17;
    [(EGNode *)v12 installOutput:v17];
    v18 = [MEMORY[0x1E695DF70] array];
    if (a6 >= 1)
    {
      v19 = 0;
      do
      {
        v20 = [EGStillImageProcessorControllerDelegateNode newSbufOutputWithIndex:v19];
        [v18 addObject:v20];
        [(EGNode *)v12 installOutput:v20];
        v19 = (v19 + 1);
      }

      while (a6 != v19);
    }

    v12->_sbufOutputs = [v18 copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageDeferredProcessingNode;
  [(EGQueueManagementNode *)&v3 dealloc];
}

- (void)queueManagedReceiveData:(id)a3 fromInputGroup:(id)a4
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](self->_sbufInput, "name", a3, a4)), "sampleBuffer"}];
  if (v6)
  {
    v7 = v6;
    v6 = CMGetAttachment(v6, @"DeferredProcessingContainer", 0);
    if (v6)
    {
      v8 = v6;
      v6 = [objc_msgSend(CMGetAttachment(v7 @"PhotoManifest"];
      if (v6)
      {
        v9 = v6;
        v6 = [objc_msgSend(a3 objectForKeyedSubscript:{-[EGInput name](-[EGStillImageDeferredProcessingNode processorInput](self, "processorInput"), "name")), "processorController"}];
        if (v6)
        {
          v10 = v6;
          v11 = [(BWStillImageProcessorControllerInput *)[BWDeferredProcessorControllerInput alloc] initWithSettings:self->_stillImageSettings portType:self->_portType];
          if (v11)
          {
            v14 = v11;
            v12 = [v10 enqueueInputForProcessing:v11 delegate:self];
            if (!v12)
            {
              -[BWDeferredProcessorControllerInput setContainer:photoIdentifier:](v14, "setContainer:photoIdentifier:", v8, [v9 photoIdentifier]);
              v6 = v14;
              goto LABEL_8;
            }

            v13 = v12;
            v11 = v14;
          }

          else
          {
            v13 = 4294954516;
          }

          [(EGStillImageDeferredProcessingNode *)v11 queueManagedReceiveData:v13 fromInputGroup:?];
          return;
        }
      }
    }
  }

LABEL_8:
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7 || !a4 || (sbufOutputCount = self->_sbufOutputCount, [(NSArray *)self->_sbufOutputs count:a3]<= sbufOutputCount))
  {
    [EGStillImageDeferredProcessingNode processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
  }

  else
  {
    v10 = [(NSArray *)self->_sbufOutputs objectAtIndexedSubscript:self->_sbufOutputCount++];
    v11 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
    [v10 emitPayload:v11];
  }
}

- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6
{
  if (a6 || !a4)
  {
    [EGStillImageDeferredProcessingNode processorController:? didDetermineReferenceFrame:? processorInput:? err:?];
  }

  else
  {
    v7 = [[EGStillImageGraphPayload alloc] initWithSampleBuffer:a4];
    [(EGStillImageOutput *)self->_referenceFrameOutput emitPayload:v7];
  }
}

- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8
{
  if (a8 || !a4)
  {
    [EGStillImageDeferredProcessingNode processorController:? didFinishProcessingInferenceBuffer:? metadata:? inferenceAttachedMediaKey:? processorInput:? err:?];
  }

  else
  {
    resourceCoordinator = self->_resourceCoordinator;

    [(BWPhotonicEngineNodeResourceCoordinator *)resourceCoordinator asyncSetInferenceBuffer:a4 metadata:a5 inferenceAttachedMediaKey:a6];
  }
}

- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7
{
  if (a7 || !a4)
  {
    [EGStillImageDeferredProcessingNode processorController:? didFinishProcessingInference:? inferenceAttachmentKey:? processorInput:? err:?];
  }

  else
  {
    resourceCoordinator = self->_resourceCoordinator;

    [(BWPhotonicEngineNodeResourceCoordinator *)resourceCoordinator asyncSetInference:a4 inferenceAttachmentKey:a5];
  }
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  if (a5)
  {
    [EGStillImageDeferredProcessingNode processorController:? didFinishProcessingInput:? err:?];
  }

  else
  {
    inferencesDeliveredOutput = self->_inferencesDeliveredOutput;
    v6 = [[EGStillImageGraphPayload alloc] initWithEmptyPayload];

    [(EGStillImageOutput *)inferencesDeliveredOutput emitPayload:v6];
  }
}

- (uint64_t)queueManagedReceiveData:(uint64_t)a3 fromInputGroup:.cold.1(void *a1, void *a2, uint64_t a3)
{
  EGStillImageGraphManagerForGraphElement(a2);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error:%d", a3];
  v5 = OUTLINED_FUNCTION_0_71();

  return [v5 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingSampleBuffer:type:processorInput:err:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1_96(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v1, "-[EGStillImageDeferredProcessingNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]"];
  v2 = OUTLINED_FUNCTION_0_71();

  return [v2 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didDetermineReferenceFrame:processorInput:err:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1_96(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v1, "-[EGStillImageDeferredProcessingNode processorController:didDetermineReferenceFrame:processorInput:err:]"];
  v2 = OUTLINED_FUNCTION_0_71();

  return [v2 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1_96(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v1, "-[EGStillImageDeferredProcessingNode processorController:didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:]"];
  v2 = OUTLINED_FUNCTION_0_71();

  return [v2 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1_96(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v1, "-[EGStillImageDeferredProcessingNode processorController:didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:]"];
  v2 = OUTLINED_FUNCTION_0_71();

  return [v2 didEncounterError:? description:? element:?];
}

- (uint64_t)processorController:(void *)a1 didFinishProcessingInput:err:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_1_96(a1);
  [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v1, "-[EGStillImageDeferredProcessingNode processorController:didFinishProcessingInput:err:]"];
  v2 = OUTLINED_FUNCTION_0_71();

  return [v2 didEncounterError:? description:? element:?];
}

@end