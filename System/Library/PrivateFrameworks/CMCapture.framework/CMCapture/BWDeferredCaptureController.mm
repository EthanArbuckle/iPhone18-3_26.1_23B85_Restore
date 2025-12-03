@interface BWDeferredCaptureController
- (BWDeferredCaptureController)initWithConfiguration:(id)configuration;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)process;
- (void)_addInferences;
- (void)cancelProcessing;
- (void)input:(id)input encounteredProcessingError:(int)error;
@end

@implementation BWDeferredCaptureController

- (BWDeferredCaptureController)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = BWDeferredCaptureController;
  return [(BWStillImageProcessorController *)&v4 initWithName:@"DeferredCapture" type:14 configuration:configuration];
}

- (void)input:(id)input encounteredProcessingError:(int)error
{
  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] setErr:*&error];

  [(BWDeferredCaptureController *)self cancelProcessing];
}

- (void)cancelProcessing
{
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  v4 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] err];
  captureRequestIdentifier = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] settings] captureRequestIdentifier];
  if (captureRequestIdentifier)
  {
    v6 = captureRequestIdentifier;
    if ([+[BWDeferredCaptureContainerManager lookupCaptureContainer:"lookupCaptureContainer:"]
    {
      [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager abortContainer:"abortContainer:error:" error:v6, v4];
    }
  }

  v7.receiver = self;
  v7.super_class = BWDeferredCaptureController;
  [(BWStillImageProcessorController *)&v7 cancelProcessing];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWDeferredCaptureControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)process
{
  input = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  [(BWDeferredCaptureController *)self _addInferences];
  v4 = +[BWDeferredCaptureContainerManager sharedInstance];
  captureRequestIdentifier = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)input settings] captureRequestIdentifier];

  return [(BWDeferredCaptureContainerManager *)v4 commitContainer:captureRequestIdentifier];
}

- (void)_addInferences
{
  input = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  if (([(BWStillImageProcessorControllerInput *)input skipInferences]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self newInferencesForProcessorInput:input];
    if (v4)
    {
      portType = [(BWStillImageProcessorControllerInput *)input portType];
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
              -[BWStillImageProcessorControllerInput _addInferenceBuffer:metadata:inferenceAttachedMediaKey:portType:](input, "_addInferenceBuffer:metadata:inferenceAttachedMediaKey:portType:", v12, [v4 metadataForAttachedMediaKey:v11], v11, portType);
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
              [(BWStillImageProcessorControllerInput *)input _addInference:v19 inferenceAttachmentKey:v18 portType:portType];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v21 count:16];
        }

        while (v15);
      }

      if ([v4 inferenceAttachedMediaMetadata])
      {
        inferenceAttachedMediaMetadata = [v4 inferenceAttachedMediaMetadata];
        -[BWStillImageProcessorControllerInput _addDictionary:tag:](input, "_addDictionary:tag:", inferenceAttachedMediaMetadata, [MEMORY[0x1E696AEC0] stringWithFormat:@"InferenceAttachedMediaMeta-%@", portType]);
      }
    }
  }
}

@end