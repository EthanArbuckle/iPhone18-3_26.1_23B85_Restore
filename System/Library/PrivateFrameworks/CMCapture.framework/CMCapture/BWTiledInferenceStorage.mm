@interface BWTiledInferenceStorage
- (BWTiledInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools espressoStorages:(id)storages;
- (void)clear;
- (void)dealloc;
@end

@implementation BWTiledInferenceStorage

- (BWTiledInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools espressoStorages:(id)storages
{
  v8.receiver = self;
  v8.super_class = BWTiledInferenceStorage;
  v6 = [(BWInferenceProviderStorage *)&v8 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  v6->_espressoStorages = storages;
  v6->_textureStorage = objc_alloc_init(BWInferenceSimpleTextureStorage);
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)clear
{
  [(BWInferenceSimpleTextureStorage *)self->_textureStorage clear];
  v3.receiver = self;
  v3.super_class = BWTiledInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 clear];
}

@end