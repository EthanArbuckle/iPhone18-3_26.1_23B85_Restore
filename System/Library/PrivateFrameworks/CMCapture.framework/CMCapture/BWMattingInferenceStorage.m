@interface BWMattingInferenceStorage
- (id)newMetadataDictionarySatisfyingRequirement:(id)a3;
- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)a3 withPropagationSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)dealloc;
- (void)setDictionary:(id)a3 forMetadataRequirement:(id)a4;
@end

@implementation BWMattingInferenceStorage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMattingInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)setDictionary:(id)a3 forMetadataRequirement:(id)a4
{
  metadataDictionaryByRequirement = self->_metadataDictionaryByRequirement;
  if (!metadataDictionaryByRequirement)
  {
    metadataDictionaryByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_metadataDictionaryByRequirement = metadataDictionaryByRequirement;
  }

  [(NSMutableDictionary *)metadataDictionaryByRequirement setObject:a3 forKeyedSubscript:a4];
}

- (opaqueCMSampleBuffer)newSampleBufferSatisfyingRequirement:(id)a3 withPropagationSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  target = 0;
  v7 = [objc_msgSend(objc_msgSend(a3 "videoFormat")];
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  cf = v7;
  v8 = [(BWInferenceProviderStorage *)self pixelBufferForRequirement:a3];
  if (v8)
  {
    if (BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(a4, v8, 0, &cf, &target))
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

- (id)newMetadataDictionarySatisfyingRequirement:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_metadataDictionaryByRequirement objectForKeyedSubscript:a3];

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