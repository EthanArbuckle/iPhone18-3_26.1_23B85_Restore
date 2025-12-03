@interface BWTiledEspressoInferenceStorage
- (BWTiledEspressoInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools espressoStorages:(id)storages;
- (void)dealloc;
@end

@implementation BWTiledEspressoInferenceStorage

- (BWTiledEspressoInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools espressoStorages:(id)storages
{
  v8.receiver = self;
  v8.super_class = BWTiledEspressoInferenceStorage;
  v6 = [(BWInferenceProviderStorage *)&v8 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  v6->_espressoStorages = storages;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

@end