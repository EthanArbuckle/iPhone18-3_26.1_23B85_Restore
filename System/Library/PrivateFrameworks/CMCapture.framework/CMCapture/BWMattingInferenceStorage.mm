@interface BWMattingInferenceStorage
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)setDictionary:(id)dictionary forMetadataRequirement:(id)requirement;
@end

@implementation BWMattingInferenceStorage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMattingInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)setDictionary:(id)dictionary forMetadataRequirement:(id)requirement
{
  metadataDictionaryByRequirement = self->_metadataDictionaryByRequirement;
  if (!metadataDictionaryByRequirement)
  {
    metadataDictionaryByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_metadataDictionaryByRequirement = metadataDictionaryByRequirement;
  }

  [(NSMutableDictionary *)metadataDictionaryByRequirement setObject:dictionary forKeyedSubscript:requirement];
}

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)requirement withPropagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  target = 0;
  v7 = [objc_msgSend(objc_msgSend(requirement "videoFormat")];
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  cf = v7;
  v8 = [(BWInferenceProviderStorage *)self pixelBufferForRequirement:requirement];
  if (v8)
  {
    if (BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(buffer, v8, 0, &cf, &target))
    {
      [BWMattingInferenceStorage newSampleBufferSatisfyingRequirement:withPropagationSampleBuffer:];
    }

    else
    {
      v9 = *off_1E798A3C8;
      v10 = [CMGetAttachment(target *off_1E798A3C8];
      CMSetAttachment(target, v9, v10, 1u);
    }
  }

  else
  {
    [BWMattingInferenceStorage newSampleBufferSatisfyingRequirement:withPropagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return target;
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v3 = [(NSMutableDictionary *)self->_metadataDictionaryByRequirement objectForKeyedSubscript:requirement];

  return v3;
}

- (uint64_t)newSampleBufferSatisfyingRequirement:withPropagationSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)newSampleBufferSatisfyingRequirement:withPropagationSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end