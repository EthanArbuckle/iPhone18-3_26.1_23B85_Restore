@interface BWSceneClassifierSinkNode
- (BWSceneClassifierSinkNode)initWithCaptureDevice:(id)device version:(id)version lensSmudgeDetectionConfiguration:(BWLensSmudgeDetectionConfiguration *)configuration sinkID:(id)d;
- (uint64_t)_updateLensSmudgeDetectionWithSampleBuffer:(uint64_t)result;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setMrcSceneObserver:(id)observer;
- (void)setSemanticStyleSceneObserver:(id)observer;
@end

@implementation BWSceneClassifierSinkNode

- (BWSceneClassifierSinkNode)initWithCaptureDevice:(id)device version:(id)version lensSmudgeDetectionConfiguration:(BWLensSmudgeDetectionConfiguration *)configuration sinkID:(id)d
{
  v7 = *&version.var0;
  v16.receiver = self;
  v16.super_class = BWSceneClassifierSinkNode;
  v9 = [(BWSinkNode *)&v16 initWithSinkID:d];
  if (v9)
  {
    v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
    v11 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v10 setFormatRequirements:v11];

    [(BWNode *)v9 addInput:v10];
    v9->_version.patch = WORD2(v7);
    *&v9->_version.major = v7;
    [device setSmartCameraVersion:v7 & 0xFFFFFFFFFFFFLL];
    v9->_resultLock._os_unfair_lock_opaque = 0;
    v9->_device = device;
    v9->_observerQueue = FigDispatchQueueCreateWithPriority();
    if (configuration->lensSmudgeDetectionEnabled)
    {
      v12 = [BWLensSmudgeDetection alloc];
      activePortTypes = [device activePortTypes];
      v15[0] = *&configuration->lensSmudgeDetectionEnabled;
      *(v15 + 12) = *(&configuration->lensSmudgeDetectionInterval.value + 4);
      v9->_lensSmudgeDetection = [(BWLensSmudgeDetection *)v12 initWithConfiguration:v15 activePortTypes:activePortTypes];
    }

    [(BWNode *)v9 setSupportsLiveReconfiguration:1];
    [(BWNode *)v9 setSupportsPrepareWhileRunning:1];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSceneClassifierSinkNode;
  [(BWSinkNode *)&v3 dealloc];
}

- (void)setMrcSceneObserver:(id)observer
{
  if (observer)
  {
    v5 = [[FigWeakReference alloc] initWithReferencedObject:observer];
  }

  else
  {
    v5 = 0;
  }

  self->_weakMRCSceneObserver = v5;
}

- (void)setSemanticStyleSceneObserver:(id)observer
{
  if (observer)
  {
    BWSmartCameraSceneInitialize(&self->_foodScene, 0.77 > 0.0, 2, 4, "Food", 0.77, 0.05, 0.75);
    BWSmartCameraSceneInitialize(&self->_indoorScene, 0.4 > 0.0, 2, 4, "Indoor", 0.4, 0.05, 0.75);
    BWSmartCameraSceneInitialize(&self->_outdoorScene, 0.58 > 0.0, 2, 4, "Outdoor", 0.58, 0.05, 0.75);
    BWSmartCameraSceneInitialize(&self->_sunsetScene, 0.88 > 0.0, 2, 4, "Sunset", 0.88, 0.05, 0.75);
    p_weakSemanticStyleSceneObserver = &self->_weakSemanticStyleSceneObserver;

    v6 = [[FigWeakReference alloc] initWithReferencedObject:observer];
  }

  else
  {
    BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&self->_foodScene.enabled);
    BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&self->_indoorScene.enabled);
    BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&self->_outdoorScene.enabled);
    BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&self->_sunsetScene.enabled);
    p_weakSemanticStyleSceneObserver = &self->_weakSemanticStyleSceneObserver;

    v6 = 0;
  }

  *p_weakSemanticStyleSceneObserver = v6;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    observerQueue = self->_observerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__BWSceneClassifierSinkNode_didReachEndOfDataForConfigurationID_input___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_sync(observerQueue, block);
  }

  v8.receiver = self;
  v8.super_class = BWSceneClassifierSinkNode;
  [(BWSinkNode *)&v8 didReachEndOfDataForConfigurationID:d input:input];
}

uint64_t __57__BWSceneClassifierSinkNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 240) updateSmartCameraStreamPropertiesWithInferenceResult:*(a1 + 40)];
  if (*(a1 + 52) == 1)
  {
    v3 = *(*(a1 + 32) + 240);
    v4 = *(a1 + 48);

    return [v3 semanticStyleSceneTypeDidChange:v4];
  }

  return result;
}

void __72__BWSceneClassifierSinkNode__updateLensSmudgeDetectionWithSampleBuffer___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__BWSceneClassifierSinkNode__updateLensSmudgeDetectionWithSampleBuffer___block_invoke_2;
  v4[3] = &unk_1E798F898;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (self->_lensSmudgeDetection)
  {
    [BWSceneClassifierSinkNode _updateLensSmudgeDetectionWithSampleBuffer:?];
  }

  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(buffer, 101);
  if (AttachedInferenceResult)
  {
    v7 = AttachedInferenceResult;
    if (![(NSString *)[(BWInferenceResult *)AttachedInferenceResult preventionReason] isEqualToString:@"BlurryInputBuffer"])
    {
      if ([(NSString *)[(BWInferenceResult *)v7 preventionReason] isEqualToString:@"FilteredInputBuffer"])
      {
        v8 = [BWInferenceResult alloc];
        v7 = [(BWInferenceResult *)v8 initWithResult:v7 replacementInferences:MEMORY[0x1E695E0F8] replacementPreventionReason:0];
      }

      os_unfair_lock_lock(&self->_resultLock);

      self->_mostRecentSmartCameraResult = v7;
      os_unfair_lock_unlock(&self->_resultLock);
      if ([(BWInferenceResult *)v7 isValid])
      {
        inferences = [(BWInferenceResult *)v7 inferences];
        v10 = inferences;
        if (self->_weakMRCSceneObserver)
        {
          [-[NSDictionary objectForKeyedSubscript:](inferences objectForKeyedSubscript:{*off_1E798C340), "floatValue"}];
          v12 = v11;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C300), "floatValue"}];
          v14 = v13;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C310), "floatValue"}];
          v16 = v15;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C358), "floatValue"}];
          v18 = v17;
          referencedObject = [(FigWeakReference *)self->_weakMRCSceneObserver referencedObject];
          LODWORD(v20) = v12;
          LODWORD(v21) = v14;
          LODWORD(v22) = v16;
          LODWORD(v23) = v18;
          [referencedObject sceneDidChangeQRConfidence:v20 appClipCodeConfidence:v21 documentConfidence:v22 textConfidence:v23];
        }

        if (self->_weakSemanticStyleSceneObserver)
        {
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C318), "floatValue"}];
          v25 = v24;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C320), "floatValue"}];
          v27 = v26;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C338), "floatValue"}];
          v29 = v28;
          [-[NSDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798C350), "floatValue"}];
          v31 = v30;
          BWSmartCameraSceneUpdateWithConfidence(&self->_foodScene, v25);
          BWSmartCameraSceneUpdateWithConfidence(&self->_indoorScene, v27);
          BWSmartCameraSceneUpdateWithConfidence(&self->_outdoorScene, v29);
          BWSmartCameraSceneUpdateWithConfidence(&self->_sunsetScene, v31);
          if (self->_foodScene.confident)
          {
            v32 = 1;
          }

          else if (self->_sunsetScene.confident)
          {
            v32 = 3;
          }

          else if (self->_indoorScene.confident)
          {
            v32 = 0;
          }

          else if (self->_outdoorScene.confident)
          {
            v32 = 2;
          }

          else
          {
            v32 = 0;
          }

          if (self->_semanticStyleSceneType != v32)
          {
            self->_semanticStyleSceneType = v32;
            [-[FigWeakReference referencedObject](self->_weakSemanticStyleSceneObserver "referencedObject")];
          }
        }

        else
        {
          LODWORD(v32) = 0;
        }

        OUTLINED_FUNCTION_0_41();
        v36 = 3221225472;
        v37 = __57__BWSceneClassifierSinkNode_renderSampleBuffer_forInput___block_invoke;
        v38 = &unk_1E7991B48;
        selfCopy = self;
        v40 = v7;
        v42 = v33;
        v41 = v32;
        dispatch_async(v34, block);
      }
    }
  }
}

- (uint64_t)_updateLensSmudgeDetectionWithSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_41();
    v5 = 3221225472;
    v6 = __72__BWSceneClassifierSinkNode__updateLensSmudgeDetectionWithSampleBuffer___block_invoke;
    v7 = &unk_1E798F8C0;
    v8 = v1;
    return [v3 updateDetectionUsingSampleBuffer:v2 detectionUpdatedBlock:v4];
  }

  return result;
}

@end