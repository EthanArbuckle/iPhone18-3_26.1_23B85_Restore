@interface BWVideoProcessingInferenceStorage
- (BWVideoProcessingInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools;
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (void)dealloc;
@end

@implementation BWVideoProcessingInferenceStorage

- (BWVideoProcessingInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools
{
  v6.receiver = self;
  v6.super_class = BWVideoProcessingInferenceStorage;
  v4 = [(BWInferenceProviderStorage *)&v6 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  if (v4)
  {
    v4->_metadataDictionaryForRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoProcessingInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v3 = [(NSMutableDictionary *)self->_metadataDictionaryForRequirement objectForKeyedSubscript:requirement];

  return v3;
}

@end