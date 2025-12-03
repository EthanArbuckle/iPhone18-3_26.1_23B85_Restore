@interface BWInferenceSynchronizerNode
+ (void)initialize;
- (BWInferenceSynchronizerNode)initWithIndexOfInputProvidingOutputSampleBuffer:(int)buffer indexOfInputProvidingPreferredInferences:(int)inferences errorHandlingModel:(unsigned __int16)model;
- (BWNodeInput)inputProvidingOnlyInferences;
- (BWNodeInput)inputProvidingOutputSampleBuffer;
- (BWNodeInput)inputProvidingPreferredInferences;
- (uint64_t)_synchronizedBufferFromQueue:(int)queue withIdentifier:(uint64_t)identifier andPortType:;
- (void)_attemptBufferOrErrorEmission;
- (void)_mergeInferencesForPreferredInferencesSampleBuffer:(CMAttachmentBearerRef)buffer otherSampleBuffer:(CMAttachmentBearerRef)sampleBuffer attachingSampleBuffer:(int)attachingSampleBuffer synchronizesTopLevelAttachments:(void *)attachments attachedMediaKeysToSkip:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWInferenceSynchronizerNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWInferenceSynchronizerNode)initWithIndexOfInputProvidingOutputSampleBuffer:(int)buffer indexOfInputProvidingPreferredInferences:(int)inferences errorHandlingModel:(unsigned __int16)model
{
  v23.receiver = self;
  v23.super_class = BWInferenceSynchronizerNode;
  v8 = [(BWNode *)&v23 init];
  v9 = v8;
  if (v8)
  {
    v10 = 1;
    [(BWNode *)v8 setSupportsLiveReconfiguration:1];
    v9->_mostRecentEmittedCaptureIdentifierByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_indexOfInputProvidingOutputSampleBuffer = buffer;
    v9->_indexOfInputProvidingOnlyInferences = buffer == 0;
    v9->_indexOfInputProvidingPreferredInferences = inferences;
    v9->_errorHandlingModel = model;
    [(BWNode *)v9 setSupportsConcurrentLiveInputCallbacks:1];
    v9->_bufferServicingLock._os_unfair_lock_opaque = 0;
    v11 = 0;
    v9->_maximumNumberOfInflightBuffers = FigGetCFPreferenceNumberWithDefault();
    do
    {
      v12 = v10;
      v13 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9 index:v11];
      primaryMediaConfiguration = [(BWNodeInput *)v13 primaryMediaConfiguration];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:v11 == v9->_indexOfInputProvidingOutputSampleBuffer];
      v15 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v15 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v15 setPassthroughMode:1];
      [(BWNodeInput *)v13 setUnspecifiedAttachedMediaConfiguration:v15];
      v16 = &v9->_contexts[v11];
      v16->bufferQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16->mostRecentCaptureIdentifierByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16->numberOfWraparoundsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(BWNode *)v9 addInput:v13];
      v10 = 0;
      v11 = 1;
    }

    while ((v12 & 1) != 0);
    v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    primaryMediaConfiguration2 = [(BWNodeOutput *)v17 primaryMediaConfiguration];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration2 setPassthroughMode:1];
    v22[0] = [MEMORY[0x1E696AD98] numberWithInt:v9->_indexOfInputProvidingOutputSampleBuffer];
    v22[1] = [MEMORY[0x1E696AD98] numberWithInt:v9->_indexOfInputProvidingOnlyInferences];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](primaryMediaConfiguration2, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2]);
    v19 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v19 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v19 setPassthroughMode:1];
    v21[0] = [MEMORY[0x1E696AD98] numberWithInt:v9->_indexOfInputProvidingOutputSampleBuffer];
    v21[1] = [MEMORY[0x1E696AD98] numberWithInt:v9->_indexOfInputProvidingOnlyInferences];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](v19, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2]);
    [(BWNodeOutputMediaConfiguration *)v19 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNode *)v9 addOutput:v17];
  }

  return v9;
}

- (void)dealloc
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &self->_contexts[v3];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v7.receiver = self;
  v7.super_class = BWInferenceSynchronizerNode;
  [(BWNode *)&v7 dealloc];
}

- (BWNodeInput)inputProvidingOutputSampleBuffer
{
  inputs = [(BWNode *)self inputs];
  indexOfInputProvidingOutputSampleBuffer = self->_indexOfInputProvidingOutputSampleBuffer;

  return [(NSArray *)inputs objectAtIndexedSubscript:indexOfInputProvidingOutputSampleBuffer];
}

- (BWNodeInput)inputProvidingPreferredInferences
{
  inputs = [(BWNode *)self inputs];
  indexOfInputProvidingPreferredInferences = self->_indexOfInputProvidingPreferredInferences;

  return [(NSArray *)inputs objectAtIndexedSubscript:indexOfInputProvidingPreferredInferences];
}

- (BWNodeInput)inputProvidingOnlyInferences
{
  inputs = [(BWNode *)self inputs];
  indexOfInputProvidingOnlyInferences = self->_indexOfInputProvidingOnlyInferences;

  return [(NSArray *)inputs objectAtIndexedSubscript:indexOfInputProvidingOnlyInferences];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  input = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:key, input];
  if (!input)
  {
    input = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)self->super._output _setMediaProperties:input forAttachedMediaKey:key];
  }

  [(BWNodeOutputMediaProperties *)input setResolvedFormat:format];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_contexts[[input index]].inputIsLive = 1;
  if (self->_contexts[0].inputIsLive && self->_contexts[1].inputIsLive)
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_contexts[[input index]].inputIsLive = 0;
  if (!self->_contexts[0].inputIsLive && !self->_contexts[1].inputIsLive)
  {
    [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:d];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  synchronizeInferencesResolver = self->_synchronizeInferencesResolver;
  if (!synchronizeInferencesResolver || (synchronizeInferencesResolver[2](synchronizeInferencesResolver, buffer) & 1) != 0)
  {
    v9 = &self->_contexts[[input index]];
    v10 = *off_1E798A3C8;
    v11 = [CMGetAttachment(buffer *off_1E798A3C8];
    v12 = [CMGetAttachment(buffer v10];
    if (v12)
    {
      intValue = [v12 intValue];
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&time, buffer);
      intValue = round(CMTimeGetSeconds(&time) * 1000.0);
    }

    v14 = intValue;
    os_unfair_lock_lock(&self->_bufferServicingLock);
    v15 = [-[NSMutableDictionary objectForKeyedSubscript:](v9->numberOfWraparoundsByPortType objectForKeyedSubscript:{v11), "intValue"}];
    v16 = v15 + (([-[NSMutableDictionary objectForKeyedSubscript:](v9->mostRecentCaptureIdentifierByPortType objectForKeyedSubscript:{v11), "intValue"}] > v14) & ~self->_allowOutOfOrderInputs);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v9->numberOfWraparoundsByPortType, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v16], v11);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v9->mostRecentCaptureIdentifierByPortType, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v14], v11);
    CMSetAttachment(buffer, @"ExtendedCaptureID", [MEMORY[0x1E696AD98] numberWithInt:v14 | (v16 << 12)], 0);
    [(NSMutableArray *)v9->bufferQueue addObject:buffer];
    [(BWInferenceSynchronizerNode *)self _attemptBufferOrErrorEmission];
    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }

  else
  {
    if (dword_1EB58E3A0)
    {
      v21 = 0;
      v20 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
    {
      [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  output = [(BWNode *)self output];
  os_unfair_lock_lock(&self->_bufferServicingLock);
  errorHandlingModel = [(BWInferenceSynchronizerNode *)self errorHandlingModel];
  if (errorHandlingModel == 1)
  {
    goto LABEL_9;
  }

  if (errorHandlingModel)
  {
    goto LABEL_10;
  }

  if ([error errorCode] == -16800 || objc_msgSend(error, "errorCode") == -16802 || objc_msgSend(error, "errorCode") == -16806)
  {
    if ([objc_msgSend(objc_msgSend(error "stillImageSettings")] != 11 || objc_msgSend(input, "index") == self->_indexOfInputProvidingOutputSampleBuffer)
    {
      [(NSMutableArray *)self->_contexts[0].bufferQueue removeAllObjects];

      self->_contexts[0].mostRecentError = 0;
      [(NSMutableArray *)self->_contexts[1].bufferQueue removeAllObjects];

      self->_contexts[1].mostRecentError = 0;
LABEL_9:
      [(BWNodeOutput *)output emitNodeError:error];
    }
  }

  else
  {
    [(BWInferenceSynchronizerNode *)input handleNodeError:output forInput:error];
  }

LABEL_10:

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)[(BWNode *)self output] emitDroppedSample:sample];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    output = [(BWNode *)self output];

    [(BWNodeOutput *)output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];
  }
}

uint64_t __87__BWInferenceSynchronizerNode__synchronizedBufferFromQueue_withIdentifier_andPortType___block_invoke(uint64_t a1, CMAttachmentBearerRef target)
{
  if ([CMGetAttachment(target @"ExtendedCaptureID"] != *(a1 + 40))
  {
    return 0;
  }

  v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v5 = *(a1 + 32);
  v6 = [v4 objectForKeyedSubscript:*off_1E798B540];

  return [v5 isEqualToString:v6];
}

BOOL __60__BWInferenceSynchronizerNode__attemptBufferOrErrorEmission__block_invoke(uint64_t a1, CMAttachmentBearerRef target)
{
  v3 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "stillImageSettings")];
  if (v4 == [v3 settingsID])
  {
    return 1;
  }

  v6 = [objc_msgSend(*(a1 + 40) "stillImageSettings")];
  return v6 == [v3 settingsID];
}

- (void)_attemptBufferOrErrorEmission
{
  if (self)
  {
    output = [self output];
    v42 = (self + 152 + 40 * *(self + 136));
    v3 = *v42;
    v43 = v42[1];
    v4 = self + 152 + 40 * *(self + 140);
    v5 = *v4;
    v6 = *(v4 + 8);
    v46 = output;
    v47 = v4;
    v49 = v6;
    v7 = 0;
    if ([*v42 count])
    {
      v41 = v6 != 0;
      v44 = *off_1E798B540;
      key = *off_1E798A3C8;
      v48 = v3;
      do
      {
        firstObject = [v3 firstObject];
        v9 = CMGetAttachment(firstObject, key, 0);
        v10 = [CMGetAttachment(firstObject @"ExtendedCaptureID"];
        v11 = [v9 objectForKeyedSubscript:v44];
        v12 = [v3 count];
        v13 = *(self + 236);
        v14 = [(BWInferenceSynchronizerNode *)self _synchronizedBufferFromQueue:v5 withIdentifier:v10 andPortType:v11];
        v50 = v11;
        if (v14)
        {
          v27 = *(self + 136);
          v28 = *(self + 144);
          if (v27 == v28)
          {
            v29 = firstObject;
          }

          else
          {
            v29 = v14;
          }

          v15 = v14;
          if (v27 == v28)
          {
            v30 = v14;
          }

          else
          {
            v30 = firstObject;
          }

          -[BWInferenceSynchronizerNode _mergeInferencesForPreferredInferencesSampleBuffer:otherSampleBuffer:attachingSampleBuffer:synchronizesTopLevelAttachments:attachedMediaKeysToSkip:](self, v29, v30, firstObject, [self synchronizesTopLevelAttachments], *(self + 248));
          v18 = 0;
          v3 = v48;
        }

        else
        {
          v15 = 0;
          v16 = [objc_msgSend(v47[3] objectForKeyedSubscript:{v11), "intValue"}];
          v17 = [objc_msgSend(v47[2] objectForKeyedSubscript:{v11), "intValue"}] | (v16 << 12);
          v18 = v17 > v10;
          v3 = v48;
          if (v12 < v13 && v49 == 0 && v17 <= v10)
          {
            break;
          }
        }

        if (!*(self + 238) && dword_1EB58E3A0)
        {
          v69 = 0;
          v68 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v22 = v69;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v68))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (v23)
          {
            HIDWORD(v40) = v15 != 0;
            v24 = v12 >= v13;
            name = [self name];
            v26 = BWStillImageCaptureIDForSampleBuffer(firstObject);
            v52 = 136316930;
            v53 = "[BWInferenceSynchronizerNode _attemptBufferOrErrorEmission]";
            v54 = 2112;
            v55 = name;
            v56 = 2050;
            v57 = v26;
            v58 = 1026;
            v59 = v10;
            v60 = 1026;
            v61 = v24;
            v62 = 1026;
            v63 = v41;
            v64 = 1026;
            v65 = v18;
            v66 = 1026;
            v67 = HIDWORD(v40);
            LODWORD(v40) = 62;
            v39 = &v52;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v3 = v48;
        }

        CMRemoveAttachment(firstObject, @"ExtendedCaptureID");
        [v46 emitSampleBuffer:firstObject];
        [v3 removeObject:firstObject];
        if (v15)
        {
          [v5 removeObject:v15];
        }

        [*(self + 128) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v10, v39, v40), v50}];
        v7 = 1;
      }

      while ([v3 count]);
    }

    if (v43)
    {
      v31 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      if ([v5 count] || (v32 = v7, v49))
      {
        [v46 emitNodeError:v43];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __60__BWInferenceSynchronizerNode__attemptBufferOrErrorEmission__block_invoke;
        v51[3] = &unk_1E7991F48;
        v51[4] = v43;
        v51[5] = v49;
        v33 = [v5 indexesOfObjectsPassingTest:v51];
        if ([v33 count])
        {
          [v5 removeObjectsAtIndexes:v33];
        }

        v32 = 1;
      }
    }

    else
    {
      v31 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      v32 = v7;
    }

    if ([v5 count])
    {
      v34 = *off_1E798A3C8;
      v35 = *off_1E798B540;
      do
      {
        firstObject2 = [v5 firstObject];
        v37 = [objc_msgSend(*(self + v31[376]) objectForKeyedSubscript:{objc_msgSend(CMGetAttachment(firstObject2, v34, 0), "objectForKeyedSubscript:", v35)), "intValue"}];
        v38 = [CMGetAttachment(firstObject2 @"ExtendedCaptureID"];
        if (*(self + 256))
        {
          break;
        }

        if (v38 > v37)
        {
          break;
        }

        [v5 removeObject:firstObject2];
      }

      while ([v5 count]);
    }

    if (v32)
    {

      v42[1] = 0;
      v47[1] = 0;
    }
  }
}

- (uint64_t)_synchronizedBufferFromQueue:(int)queue withIdentifier:(uint64_t)identifier andPortType:
{
  if (result)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__BWInferenceSynchronizerNode__synchronizedBufferFromQueue_withIdentifier_andPortType___block_invoke;
    v6[3] = &unk_1E7991F20;
    queueCopy = queue;
    v6[4] = identifier;
    v5 = [a2 indexOfObjectPassingTest:v6];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return [a2 objectAtIndexedSubscript:v5];
    }
  }

  return result;
}

- (void)_mergeInferencesForPreferredInferencesSampleBuffer:(CMAttachmentBearerRef)buffer otherSampleBuffer:(CMAttachmentBearerRef)sampleBuffer attachingSampleBuffer:(int)attachingSampleBuffer synchronizesTopLevelAttachments:(void *)attachments attachedMediaKeysToSkip:
{
  if (self)
  {
    v11 = CMGetAttachment(target, @"Inferences", 0);
    v12 = MEMORY[0x1E695E0F8];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    v14 = CMGetAttachment(buffer, @"Inferences", 0);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];
    [v16 addEntriesFromDictionary:v13];
    CMSetAttachment(sampleBuffer, @"Inferences", v16, 1u);
    v17 = BWSampleBufferCopyDictionaryOfAttachedMedia(target);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v19 = BWSampleBufferCopyDictionaryOfAttachedMedia(buffer);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v12;
    }

    v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v20];
    v22 = [v21 addEntriesFromDictionary:v18];
    v30 = OUTLINED_FUNCTION_1_1(v22, v23, v24, v25, v26, v27, v28, v29, v74, v77, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v134, v136, v138, v140, v142, v144, v146);
    if (v30)
    {
      v31 = v30;
      v32 = MEMORY[0];
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (MEMORY[0] != v32)
          {
            objc_enumerationMutation(v21);
          }

          v34 = *(8 * i);
          v35 = [attachments containsObject:v34];
          if ((v35 & 1) == 0)
          {
            BWSampleBufferSetAttachedMedia(sampleBuffer, v34, [v21 objectForKeyedSubscript:v34]);
          }
        }

        v31 = OUTLINED_FUNCTION_1_1(v35, v36, v37, v38, v39, v40, v41, v42, v75, v78, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v135, v137, v139, v141, v143, v145, v147);
      }

      while (v31);
    }

    if (sampleBuffer != target)
    {
      BWSampleBufferRemoveAllAttachedMedia(target);
    }

    if (sampleBuffer != buffer)
    {
      BWSampleBufferRemoveAllAttachedMedia(buffer);
    }

    if (attachingSampleBuffer)
    {
      v43 = *MEMORY[0x1E695E480];
      v44 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], target, 1u);
      v45 = CMCopyDictionaryOfAttachments(v43, buffer, 1u);
      v46 = v45;
      if (sampleBuffer == target)
      {
        v47 = v44;
      }

      else
      {
        v47 = v45;
      }

      v79 = v44;
      v48 = [MEMORY[0x1E695DFD8] setWithArray:{-[__CFDictionary allKeys](v44, "allKeys")}];
      v49 = [MEMORY[0x1E695DFD8] setWithArray:{-[__CFDictionary allKeys](v46, "allKeys")}];
      v50 = [MEMORY[0x1E695DFD8] setWithArray:{-[__CFDictionary allKeys](v47, "allKeys")}];
      v51 = [MEMORY[0x1E695DFA8] setWithSet:v48];
      [v51 unionSet:v49];
      v52 = [v51 minusSet:v50];
      v60 = OUTLINED_FUNCTION_14_8(v52, v53, v54, v55, v56, v57, v58, v59, v75, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, 0);
      if (v60)
      {
        v61 = v60;
        v62 = MEMORY[0];
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (MEMORY[0] != v62)
            {
              objc_enumerationMutation(v51);
            }

            v64 = *(8 * j);
            v65 = [(__CFString *)v64 isEqualToString:@"NonProcessedReferenceFrame"];
            if ((v65 & 1) == 0)
            {
              v73 = CMGetAttachment(target, v64, 0);
              if (!v73)
              {
                v73 = CMGetAttachment(buffer, v64, 0);
              }

              CMSetAttachment(sampleBuffer, v64, v73, 1u);
            }
          }

          v61 = OUTLINED_FUNCTION_14_8(v65, v66, v67, v68, v69, v70, v71, v72, v76, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131);
        }

        while (v61);
      }
    }
  }
}

- (void)handleNodeError:(void *)a3 forInput:(void *)a4 .cold.1(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = [a1 index];
  v8 = a2 + 152 + 40 * v7;
  if (v7 == *(a2 + 136) && *(v8 + 8))
  {
    [a3 emitNodeError:?];
  }

  *(v8 + 8) = a4;

  [(BWInferenceSynchronizerNode *)a2 _attemptBufferOrErrorEmission];
}

@end