@interface BWAttachedMediaSwapNode
- (BWAttachedMediaSwapNode)initWithPrimaryFormatToAttachedMediaKey:(id)key attachedMediaKeyToPrimaryFormat:(id)format sampleBufferAttachmentsToTransfer:(id)transfer generatesDroppedSampleMarkerBuffers:(BOOL)buffers;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWAttachedMediaSwapNode

- (BWAttachedMediaSwapNode)initWithPrimaryFormatToAttachedMediaKey:(id)key attachedMediaKeyToPrimaryFormat:(id)format sampleBufferAttachmentsToTransfer:(id)transfer generatesDroppedSampleMarkerBuffers:(BOOL)buffers
{
  if (!key || !format)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"Neither attached media key may be nil";
    goto LABEL_13;
  }

  if ([key isEqualToString:format])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"The primaryFormatToAttachedMediaKey must be different from the attachedMediaKeyToPrimaryFormat";
    goto LABEL_13;
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"The primaryFormatToAttachedMediaKey cannot be BWAttachedMediaKey_PrimaryFormat";
    goto LABEL_13;
  }

  if ([format isEqualToString:@"PrimaryFormat"])
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"The attachedMediaKeyToPrimaryFormat cannot be BWAttachedMediaKey_PrimaryFormat";
LABEL_13:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:{0, buffers}]);
  }

  v24.receiver = self;
  v24.super_class = BWAttachedMediaSwapNode;
  v11 = [(BWNode *)&v24 init];
  if (v11)
  {
    v11->_primaryFormatToAttachedMediaKey = key;
    v11->_attachedMediaKeyToPrimaryFormat = format;
    v11->_sampleBufferAttachmentsToTransfer = transfer;
    v11->_generatesDroppedSampleMarkerBuffers = buffers;
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNode *)v11 addInput:v12];

    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNode *)v11 addOutput:v13];

    primaryMediaConfiguration = [(BWNodeInput *)v11->super._input primaryMediaConfiguration];
    [(BWNodeInput *)v11->super._input formatRequirements];
    [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:objc_alloc_init(objc_opt_class())];
    [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
    v15 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v15 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v15 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNodeOutput *)v11->super._output setMediaConfiguration:v15 forAttachedMediaKey:key];
    v16 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInput *)v11->super._input formatRequirements];
    [(BWNodeInputMediaConfiguration *)v16 setFormatRequirements:objc_alloc_init(objc_opt_class())];
    [(BWNodeInputMediaConfiguration *)v16 setPassthroughMode:1];
    [(BWNodeInput *)v11->super._input setMediaConfiguration:v16 forAttachedMediaKey:format];
    primaryMediaConfiguration2 = [(BWNodeOutput *)v11->super._output primaryMediaConfiguration];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setAttachedMediaKeyOfInputWhichDrivesThisOutput:format];
    v18 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v18 setPassthroughMode:1];
    [(BWNodeInput *)v11->super._input setUnspecifiedAttachedMediaConfiguration:v18];
    v19 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v19 setPassthroughMode:1];
    [(BWNodeOutput *)v11->super._output setUnspecifiedAttachedMediaConfiguration:v19];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAttachedMediaSwapNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:{@"PrimaryFormat", input}])
  {
    primaryFormatToAttachedMediaKey = self->_primaryFormatToAttachedMediaKey;
  }

  else if ([key isEqualToString:self->_attachedMediaKeyToPrimaryFormat])
  {
    primaryFormatToAttachedMediaKey = @"PrimaryFormat";
  }

  else
  {
    primaryFormatToAttachedMediaKey = key;
  }

  v9 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:primaryFormatToAttachedMediaKey];
  if (!v9)
  {
    if ([(__CFString *)primaryFormatToAttachedMediaKey isEqualToString:@"PrimaryFormat"])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output unexpectedly has no mediaProperties for the primary format (provided media key was %@)", self, key];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
    }

    v9 = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)self->super._output _setMediaProperties:v9 forAttachedMediaKey:primaryFormatToAttachedMediaKey];
  }

  [(BWNodeOutputMediaProperties *)v9 setResolvedFormat:format];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = [CMGetAttachment(buffer @"AttachedMediaSwapPlaceholderSampleBuffer"];
  v7 = [CMGetAttachment(buffer @"FileWriterAction"];
  if (!BWSampleBufferIsMarkerBuffer(buffer) || (v6 & 1) != 0 || (v7 & 1) != 0)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, self->_attachedMediaKeyToPrimaryFormat);
    if (AttachedMedia && (v10 = CFRetain(AttachedMedia)) != 0)
    {
      v8 = v10;
      BWSampleBufferRemoveAttachedMedia(buffer, self->_attachedMediaKeyToPrimaryFormat);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      sampleBufferAttachmentsToTransfer = self->_sampleBufferAttachmentsToTransfer;
      v12 = [(NSArray *)sampleBufferAttachmentsToTransfer countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(sampleBufferAttachmentsToTransfer);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            LODWORD(attachmentModeOut.duration.value) = 0;
            v17 = CMGetAttachment(buffer, v16, &attachmentModeOut);
            if (v17)
            {
              CMSetAttachment(v8, v16, v17, attachmentModeOut.duration.value);
            }
          }

          v13 = [(NSArray *)sampleBufferAttachmentsToTransfer countByEnumeratingWithState:&v23 objects:v22 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v18 = *(MEMORY[0x1E6960CF0] + 48);
      *&attachmentModeOut.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
      *&attachmentModeOut.decodeTimeStamp.value = v18;
      attachmentModeOut.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
      v28 = 0;
      v19 = *(MEMORY[0x1E6960CF0] + 16);
      *&attachmentModeOut.duration.value = *MEMORY[0x1E6960CF0];
      *&attachmentModeOut.duration.epoch = v19;
      CMSampleBufferGetPresentationTimeStamp(&attachmentModeOut.presentationTimeStamp, buffer);
      if (CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &attachmentModeOut, 0, 0, &v28))
      {
        [BWAttachedMediaSwapNode renderSampleBuffer:forInput:];
      }

      else
      {
        CMSetAttachment(v28, @"AttachedMediaSwapPlaceholderSampleBuffer", *MEMORY[0x1E695E4D0], 1u);
      }

      v8 = v28;
      if (!v28)
      {
        [BWAttachedMediaSwapNode renderSampleBuffer:forInput:];
        return;
      }
    }

    BWSampleBufferPropagateAttachedMedia(buffer, v8);
    BWSampleBufferRemoveAllAttachedMedia(buffer);
    if ((v6 & 1) == 0)
    {
      BWSampleBufferSetAttachedMedia(v8, self->_primaryFormatToAttachedMediaKey, buffer);
    }
  }

  else
  {
    v8 = CFRetain(buffer);
  }

  if (v8)
  {
    if (self->_generatesDroppedSampleMarkerBuffers && [CMGetAttachment(v8 @"SampleDataToBeDropped"])
    {
      if (CMGetAttachment(v8, @"SampleDataToBeDroppedEmitSampleBufferSemaphores", 0))
      {
        v20 = [BWNodeInput newSampleDataToBeDroppedMarkerBufferFromSampleBuffer:v8];
        if (v20)
        {
          v21 = v20;
          [(BWNodeOutput *)self->super._output emitSampleBuffer:v20];
          CFRelease(v21);
        }
      }
    }

    else
    {
      [(BWNodeOutput *)self->super._output emitSampleBuffer:v8];
    }

    CFRelease(v8);
  }
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end