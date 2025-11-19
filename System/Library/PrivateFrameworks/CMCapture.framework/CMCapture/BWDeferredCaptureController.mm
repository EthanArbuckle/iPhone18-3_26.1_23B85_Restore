@interface BWDeferredCaptureController
- (BWDeferredCaptureController)initWithConfiguration:(id)a3;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)process;
- (void)_addInferences;
- (void)cancelProcessing;
- (void)input:(id)a3 encounteredProcessingError:(int)a4;
@end

@implementation BWDeferredCaptureController

- (BWDeferredCaptureController)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = BWDeferredCaptureController;
  return [(BWStillImageProcessorController *)&v4 initWithName:@"DeferredCapture" type:14 configuration:a3];
}

- (void)input:(id)a3 encounteredProcessingError:(int)a4
{
  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] setErr:*&a4];

  [(BWDeferredCaptureController *)self cancelProcessing];
}

- (void)cancelProcessing
{
  v3 = [(BWStillImageProcessorController *)self currentRequest];
  v4 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] err];
  v5 = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v3 input] settings] captureRequestIdentifier];
  if (v5)
  {
    v6 = v5;
    if ([+[BWDeferredCaptureContainerManager lookupCaptureContainer:"lookupCaptureContainer:"]
    {
      [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager abortContainer:"abortContainer:error:" error:v6, v4];
    }
  }

  v7.receiver = self;
  v7.super_class = BWDeferredCaptureController;
  [(BWStillImageProcessorController *)&v7 cancelProcessing];
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWDeferredCaptureControllerRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)process
{
  v3 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  [(BWDeferredCaptureController *)self _addInferences];
  v4 = +[BWDeferredCaptureContainerManager sharedInstance];
  v5 = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)v3 settings] captureRequestIdentifier];

  return [(BWDeferredCaptureContainerManager *)v4 commitContainer:v5];
}

- (void)_addInferences
{
  v3 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  if (([(BWStillImageProcessorControllerInput *)v3 skipInferences]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self newInferencesForProcessorInput:v3];
    if (v4)
    {
      v5 = [(BWStillImageProcessorControllerInput *)v3 portType];
      v32[0] = @"PersonSemanticsSkin";
      v32[1] = @"PersonSemanticsHair";
      v32[2] = 0x1F21AAD30;
      v32[3] = 0x1F219E750;
      v32[4] = 0x1F219E7F0;
      v32[5] = 0x1F21AABB0;
      v6 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:{6), "arrayByAddingObjectsFromArray:", BWInferenceLowResPersonInstanceMaskKeys()}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            v12 = [v4 inferenceBufferForAttachedMediaKey:v11];
            if (v12)
            {
              -[BWStillImageProcessorControllerInput _addInferenceBuffer:metadata:inferenceAttachedMediaKey:portType:](v3, "_addInferenceBuffer:metadata:inferenceAttachedMediaKey:portType:", v12, [v4 metadataForAttachedMediaKey:v11], v11, v5);
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v28 objects:v27 count:16];
        }

        while (v8);
      }

      v26[0] = 0x1F219E990;
      v26[1] = 0x1F219E9B0;
      v26[2] = 0x1F219E6F0;
      v26[3] = 0x1F219E5F0;
      v26[4] = 0x1F219E710;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * j);
            v19 = [v4 inferenceForAttachmentKey:v18];
            if (v19)
            {
              [(BWStillImageProcessorControllerInput *)v3 _addInference:v19 inferenceAttachmentKey:v18 portType:v5];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        }

        while (v15);
      }

      if ([v4 inferenceAttachedMediaMetadata])
      {
        v20 = [v4 inferenceAttachedMediaMetadata];
        -[BWStillImageProcessorControllerInput _addDictionary:tag:](v3, "_addDictionary:tag:", v20, [MEMORY[0x1E696AEC0] stringWithFormat:@"InferenceAttachedMediaMeta-%@", v5]);
      }
    }
  }
}

@end