@interface BWStillImageStandardResolutionAttachmentTransferNode
- (BWStillImageStandardResolutionAttachmentTransferNode)initWithNodeConfiguration:(id)configuration;
- (void)_resetProcessingState;
- (void)_transferAttachmentsToEnhancedResolutionBufferWithDimensions:(uint64_t)dimensions;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageStandardResolutionAttachmentTransferNode

- (BWStillImageStandardResolutionAttachmentTransferNode)initWithNodeConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWStillImageStandardResolutionAttachmentTransferNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    if ([configuration optimizedEnhancedResolutionDepthPipelineEnabled])
    {
      v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
      [(BWNodeInput *)v5 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
      [(BWNodeInput *)v5 setPassthroughMode:1];
      [(BWNode *)v4 addInput:v5];
      v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
      [(BWNodeOutput *)v6 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
      [(BWNodeOutput *)v6 setPassthroughMode:1];
      [(BWNode *)v4 addOutput:v6];
      v4->_nodeConfiguration = configuration;
      v4->_inferencesFromStandardResBuffer = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4->_attachedMediasFromStandardResBuffer = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4->_attachmentsFromStandardResBuffer = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  enhancedResolutionBuffer = self->_enhancedResolutionBuffer;
  if (enhancedResolutionBuffer)
  {
    CFRelease(enhancedResolutionBuffer);
    self->_enhancedResolutionBuffer = 0;
  }

  self->_lastCaptureRequestIdentifier = 0;
  v4.receiver = self;
  v4.super_class = BWStillImageStandardResolutionAttachmentTransferNode;
  [(BWNode *)&v4 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (v6)
  {
    v7 = v6;
    if (([objc_msgSend(v6 "captureSettings")] & 0x800) != 0 && (BWStillImageProcessingFlagsForSampleBuffer(buffer) & 0x200000) == 0)
    {
      v8 = [objc_msgSend(v7 "requestedSettings")];
      if (([v8 isEqual:self->_lastCaptureRequestIdentifier] & 1) == 0)
      {
        if (![(NSMutableDictionary *)self->_inferencesFromStandardResBuffer count])
        {
          [(NSMutableDictionary *)self->_attachedMediasFromStandardResBuffer count];
        }

        [(BWStillImageStandardResolutionAttachmentTransferNode *)self _resetProcessingState];
        self->_lastCaptureRequestIdentifier = v8;
        self->_lastSettingsID = [v7 settingsID];
      }

      v9 = [CMGetAttachment(buffer @"StillImageBufferFrameType"];
      optimizedEnhancedResolutionDepthPipelineEnabled = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
      optimizedEnhancedResolutionDepthPipelineEnabled2 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
      if (optimizedEnhancedResolutionDepthPipelineEnabled && v9 == 13)
      {
        [(NSMutableDictionary *)self->_inferencesFromStandardResBuffer addEntriesFromDictionary:CMGetAttachment(buffer, @"Inferences", 0)];
        v12 = CMGetAttachment(buffer, @"AttachedMedia", 0);
        [(NSMutableDictionary *)self->_attachedMediasFromStandardResBuffer addEntriesFromDictionary:v12];
        if ([v12 objectForKeyedSubscript:@"Depth"])
        {
          v13 = *off_1E798D2B8;
          v14 = CMGetAttachment(buffer, *off_1E798D2B8, 0);
          if (v14)
          {
            [(NSMutableDictionary *)self->_attachmentsFromStandardResBuffer setObject:v14 forKeyedSubscript:v13];
          }
        }

        self->_hasAttachmentsFromStandardResBuffer = 1;
        self->_standardResBufferDimensions = BWPixelBufferDimensionsFromSampleBuffer(buffer);
        if (-[BWStillImageNodeConfiguration filterRenderingEnabled](self->_nodeConfiguration, "filterRenderingEnabled") && BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v7 "requestedSettings")]))
        {
          [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
        }
      }

      else if (v9 != 13 && optimizedEnhancedResolutionDepthPipelineEnabled2)
      {
        if (buffer)
        {
          v16 = CFRetain(buffer);
        }

        else
        {
          v16 = 0;
        }

        self->_enhancedResolutionBuffer = v16;
      }

      enhancedResolutionBuffer = self->_enhancedResolutionBuffer;
      if (enhancedResolutionBuffer && self->_hasAttachmentsFromStandardResBuffer)
      {
        v18 = BWPixelBufferDimensionsFromSampleBuffer(enhancedResolutionBuffer);
        [(BWStillImageStandardResolutionAttachmentTransferNode *)self _transferAttachmentsToEnhancedResolutionBufferWithDimensions:v18];
        [(BWNodeOutput *)self->super._output emitSampleBuffer:self->_enhancedResolutionBuffer];

        [(BWStillImageStandardResolutionAttachmentTransferNode *)self _resetProcessingState];
      }

      return;
    }
  }

  else
  {
    [BWStillImageStandardResolutionAttachmentTransferNode renderSampleBuffer:forInput:];
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
    *(self + 184) = 0;
  }
}

- (void)_transferAttachmentsToEnhancedResolutionBufferWithDimensions:(uint64_t)dimensions
{
  if (dimensions)
  {
    v2 = HIDWORD(a2);
    v4 = [CMGetAttachment(*(dimensions + 168) @"Inferences"];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v4 addEntriesFromDictionary:*(dimensions + 136)];
    v5 = OUTLINED_FUNCTION_0_124();
    CMSetAttachment(v5, @"Inferences", v4, 1u);

    v14 = *(dimensions + 196);
    if (*(dimensions + 192) >= 1 && v14 >= 1)
    {
      v16 = *(dimensions + 144);
      v17 = OUTLINED_FUNCTION_2_131(v6, v7, v8, v9, v10, v11, v12, v13, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v97, v99, v101, v103, v105, v107, v109, v111);
      if (v17)
      {
        v18 = v17;
        v19 = v2 / v14;
        v20 = MEMORY[0];
        v21 = *off_1E798A788;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (MEMORY[0] != v20)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(8 * i);
            v24 = [v23 isEqual:0x1F217BF50];
            if ((v24 & 1) == 0)
            {
              v32 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata([*(dimensions + 144) objectForKeyedSubscript:v23]);
              v24 = [objc_msgSend(v32 objectForKeyedSubscript:{v21), "floatValue"}];
              if (*&v33 != 0.0)
              {
                *&v33 = v19 * *&v33;
                v24 = [v32 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), v21}];
              }
            }
          }

          v18 = OUTLINED_FUNCTION_2_131(v24, v25, v26, v27, v28, v29, v30, v31, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v95, v98, v100, v102, v104, v106, v108, v110, v112);
        }

        while (v18);
      }
    }

    v34 = OUTLINED_FUNCTION_0_124();
    v35 = BWSampleBufferCopyDictionaryOfAttachedMedia(v34);
    v36 = [v35 mutableCopy];
    if (!v36)
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v36 addEntriesFromDictionary:*(dimensions + 144)];
    v37 = OUTLINED_FUNCTION_0_124();
    CMSetAttachment(v37, @"AttachedMedia", v36, 1u);

    v38 = *(dimensions + 152);
    v47 = OUTLINED_FUNCTION_1_3(v39, v40, v41, v42, v43, v44, v45, v46, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, 0);
    if (v47)
    {
      v48 = v47;
      v49 = MEMORY[0];
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (MEMORY[0] != v49)
          {
            objc_enumerationMutation(v38);
          }

          CMSetAttachment(*(dimensions + 168), *(8 * j), [*(dimensions + 152) objectForKeyedSubscript:*(8 * j)], 1u);
        }

        v48 = OUTLINED_FUNCTION_1_3(v51, v52, v53, v54, v55, v56, v57, v58, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v96);
      }

      while (v48);
    }

    if ([*(dimensions + 128) depthDataType] == 9)
    {
      v59 = OUTLINED_FUNCTION_0_124();
      BWSampleBufferRemoveAttachedMedia(v59, 0x1F21AAB10);
      v60 = OUTLINED_FUNCTION_0_124();
      BWSampleBufferRemoveAttachedMedia(v60, 0x1F21AAB70);
      v61 = OUTLINED_FUNCTION_0_124();
      BWSampleBufferRemoveAttachedMedia(v61, 0x1F21AAB90);
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  [(BWStillImageStandardResolutionAttachmentTransferNode *)self _resetProcessingState];
  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error];
}

@end