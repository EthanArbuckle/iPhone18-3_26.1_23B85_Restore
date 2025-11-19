@interface BWTiledInferenceStorage
- (BWTiledInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4 espressoStorages:(id)a5;
- (void)clear;
- (void)dealloc;
@end

@implementation BWTiledInferenceStorage

- (BWTiledInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4 espressoStorages:(id)a5
{
  v8.receiver = self;
  v8.super_class = BWTiledInferenceStorage;
  v6 = [(BWInferenceProviderStorage *)&v8 initWithRequirementsNeedingPixelBuffers:a3 requirementsNeedingPixelBufferPools:a4];
  v6->_espressoStorages = a5;
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