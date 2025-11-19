@interface BWVideoProcessingInferenceStorage
- (BWVideoProcessingInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4;
- (id)newMetadataDictionarySatisfyingRequirement:(id)a3;
- (void)dealloc;
@end

@implementation BWVideoProcessingInferenceStorage

- (BWVideoProcessingInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4
{
  v6.receiver = self;
  v6.super_class = BWVideoProcessingInferenceStorage;
  v4 = [(BWInferenceProviderStorage *)&v6 initWithRequirementsNeedingPixelBuffers:a3 requirementsNeedingPixelBufferPools:a4];
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

- (id)newMetadataDictionarySatisfyingRequirement:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_metadataDictionaryForRequirement objectForKeyedSubscript:a3];

  return v3;
}

@end