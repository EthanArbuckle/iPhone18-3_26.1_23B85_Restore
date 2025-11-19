@interface BWTiledEspressoInferenceStorage
- (BWTiledEspressoInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4 espressoStorages:(id)a5;
- (void)dealloc;
@end

@implementation BWTiledEspressoInferenceStorage

- (BWTiledEspressoInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)a3 requirementsNeedingPixelBufferPools:(id)a4 espressoStorages:(id)a5
{
  v8.receiver = self;
  v8.super_class = BWTiledEspressoInferenceStorage;
  v6 = [(BWInferenceProviderStorage *)&v8 initWithRequirementsNeedingPixelBuffers:a3 requirementsNeedingPixelBufferPools:a4];
  v6->_espressoStorages = a5;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

@end