@interface BWStillImageSmartStyleAttachmentTransferNode
- (BWStillImageSmartStyleAttachmentTransferNode)initWithNodeConfiguration:(id)configuration;
- (uint64_t)_transferAttachmentsToStyledBuffer;
- (void)_resetProcessingState;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageSmartStyleAttachmentTransferNode

- (BWStillImageSmartStyleAttachmentTransferNode)initWithNodeConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWStillImageSmartStyleAttachmentTransferNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(BWNode *)v4 addInput:v5];

    v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeOutput *)v6 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v6 setPassthroughMode:1];
    [(BWNode *)v4 addOutput:v6];

    v4->_nodeConfiguration = configuration;
    v4->_inferencesFromUnstyledBuffers = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_attachedMediaFromUnstyledBuffers = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_attachmentsFromUnstyledBuffers = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
  }

  return v4;
}

- (void)dealloc
{
  [(BWStillImageSmartStyleAttachmentTransferNode *)self _resetProcessingState];

  v3.receiver = self;
  v3.super_class = BWStillImageSmartStyleAttachmentTransferNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (BWIsSmartStyleCapture(v6))
  {
    v7 = [objc_msgSend(v6 "requestedSettings")];
    if (([v7 isEqual:self->_lastCaptureRequestIdentifier] & 1) == 0)
    {
      [(BWStillImageSmartStyleAttachmentTransferNode *)self renderSampleBuffer:v7 forInput:&self->_lastCaptureRequestIdentifier];
    }

    v8 = BWStillImageProcessingFlagsForSampleBuffer(buffer);
    if ((v8 & 0x2800000) == 0)
    {
      v9 = v8;
      v10 = [CMGetAttachment(buffer @"StillImageBufferFrameType"];
      optimizedEnhancedResolutionDepthPipelineEnabled = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
      v12 = v10 == 13 && optimizedEnhancedResolutionDepthPipelineEnabled;
      if ((v9 & 0x200000) == 0)
      {
        if (v10 != 40 && !v12)
        {
LABEL_35:
          if (self->_styledBuffer)
          {
            if (self->_hasAttachmentsFromUnstyledBuffer)
            {
              [BWStillImageSmartStyleAttachmentTransferNode renderSampleBuffer:&self->_styledBuffer forInput:?];
            }
          }

          return;
        }

        goto LABEL_13;
      }

      if (BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAF90))
      {
        if (v10 != 40 && !v12)
        {
          if (buffer)
          {
            v26 = CFRetain(buffer);
          }

          else
          {
            v26 = 0;
          }

          self->_styledBuffer = v26;
          goto LABEL_35;
        }

LABEL_13:
        [(NSMutableDictionary *)self->_inferencesFromUnstyledBuffers addEntriesFromDictionary:CMGetAttachment(buffer, @"Inferences", 0)];
        v13 = CMGetAttachment(buffer, @"AttachedMedia", 0);
        [(NSMutableDictionary *)self->_attachedMediaFromUnstyledBuffers addEntriesFromDictionary:v13];
        if ([v13 objectForKeyedSubscript:@"Depth"])
        {
          v14 = *off_1E798D2B8;
          v15 = CMGetAttachment(buffer, *off_1E798D2B8, 0);
          if (v15)
          {
            [(NSMutableDictionary *)self->_attachmentsFromUnstyledBuffers setObject:v15 forKeyedSubscript:v14];
          }
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = *off_1E798D360;
        v27[0] = *off_1E798D340;
        v27[1] = v16;
        v17 = *off_1E798D368;
        v27[2] = *off_1E798D348;
        v27[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
        v19 = [v18 countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v29 + 1) + 8 * i);
              v24 = CMGetAttachment(buffer, v23, 0);
              if (v24)
              {
                [(NSMutableDictionary *)self->_attachmentsFromUnstyledBuffers setObject:v24 forKeyedSubscript:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v29 objects:v28 count:16];
          }

          while (v20);
        }

        self->_hasAttachmentsFromUnstyledBuffer |= v10 == 40;
        if (-[BWStillImageNodeConfiguration filterRenderingEnabled](self->_nodeConfiguration, "filterRenderingEnabled") && BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v6 "requestedSettings")]))
        {
          [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
        }

        goto LABEL_35;
      }
    }
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitSampleBuffer:buffer];
}

- (void)_resetProcessingState
{
  if (self)
  {
    [*(self + 136) removeAllObjects];
    [*(self + 144) removeAllObjects];
    [*(self + 152) removeAllObjects];
    *(self + 160) = 0;
    v2 = *(self + 168);
    if (v2)
    {
      CFRelease(v2);
      *(self + 168) = 0;
    }

    *(self + 176) = 0;
  }
}

- (uint64_t)_transferAttachmentsToStyledBuffer
{
  if (result)
  {
    v1 = result;
    v2 = CMGetAttachment(*(result + 168), @"Inferences", 0);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v73 objects:v72 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v74;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v74 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v73 + 1) + 8 * i);
          if (![*(v1 + 136) objectForKeyedSubscript:v7])
          {
            [*(v1 + 136) setObject:objc_msgSend(v2 forKeyedSubscript:{"objectForKeyedSubscript:", v7), v7}];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v73 objects:v72 count:16];
      }

      while (v4);
    }

    OUTLINED_FUNCTION_0_98([*(v1 + 136) copy]);

    v8 = CMGetAttachment(*(v1 + 168), @"AttachedMedia", 0);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v68 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v69;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v69 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v68 + 1) + 8 * j);
          if (![*(v1 + 144) objectForKeyedSubscript:v13])
          {
            [*(v1 + 144) setObject:objc_msgSend(v8 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v68 objects:v67 count:16];
      }

      while (v10);
    }

    OUTLINED_FUNCTION_0_98([*(v1 + 144) copy]);

    v14 = *(v1 + 152);
    result = OUTLINED_FUNCTION_1_3(v15, v16, v17, v18, v19, v20, v21, v22, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, 0);
    if (result)
    {
      v23 = result;
      v24 = MEMORY[0];
      do
      {
        v25 = 0;
        do
        {
          if (MEMORY[0] != v24)
          {
            objc_enumerationMutation(v14);
          }

          CMSetAttachment(*(v1 + 168), *(8 * v25), [*(v1 + 152) objectForKeyedSubscript:*(8 * v25)], 1u);
          ++v25;
        }

        while (v23 != v25);
        result = OUTLINED_FUNCTION_1_3(v26, v27, v28, v29, v30, v31, v32, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66);
        v23 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  [(BWStillImageSmartStyleAttachmentTransferNode *)self _resetProcessingState];
  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error];
}

- (id)renderSampleBuffer:(void *)a3 forInput:.cold.1(uint64_t a1, void *a2, void *a3)
{
  if (![*(a1 + 136) count])
  {
    [*(a1 + 144) count];
  }

  [(BWStillImageSmartStyleAttachmentTransferNode *)a1 _resetProcessingState];
  result = a2;
  *a3 = result;
  return result;
}

- (void)renderSampleBuffer:(uint64_t)a1 forInput:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  [(BWStillImageSmartStyleAttachmentTransferNode *)a1 _transferAttachmentsToStyledBuffer];
  [*(a1 + 16) emitSampleBuffer:*a2];
  [(BWStillImageSmartStyleAttachmentTransferNode *)a1 _resetProcessingState];
}

@end