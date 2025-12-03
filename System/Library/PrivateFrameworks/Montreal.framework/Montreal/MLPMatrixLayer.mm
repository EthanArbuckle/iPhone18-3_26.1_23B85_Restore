@interface MLPMatrixLayer
- (MLPMatrixLayer)initWithLayerType:(unint64_t)type name:(id)name neuronType:(int)neuronType neuronParams:(id)params;
- (MLPMatrixLayer)initWithLayerType:(unint64_t)type name:(id)name parameters:(id *)parameters;
- (void)allocateInputDictionaries;
- (void)updateInputMatrixToFirstKernel:(id)kernel index:(id)index inference:(BOOL)inference;
- (void)updateInputMatrixToSecondKernel:(id)kernel index:(id)index inference:(BOOL)inference;
@end

@implementation MLPMatrixLayer

- (MLPMatrixLayer)initWithLayerType:(unint64_t)type name:(id)name neuronType:(int)neuronType neuronParams:(id)params
{
  v7 = *&neuronType;
  nameCopy = name;
  paramsCopy = params;
  v18.receiver = self;
  v18.super_class = MLPMatrixLayer;
  v12 = [(MLPLayer *)&v18 initWithLayerType:type name:nameCopy neuronType:v7 neuronParams:paramsCopy];
  v16 = v12;
  if (v12)
  {
    objc_msgSend_allocateInputDictionaries(v12, v13, v14, v15);
  }

  return v16;
}

- (MLPMatrixLayer)initWithLayerType:(unint64_t)type name:(id)name parameters:(id *)parameters
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MLPMatrixLayer;
  v9 = [(MLPLayer *)&v15 initWithLayerType:type name:nameCopy parameters:parameters];
  v13 = v9;
  if (v9)
  {
    objc_msgSend_allocateInputDictionaries(v9, v10, v11, v12);
  }

  return v13;
}

- (void)allocateInputDictionaries
{
  v12 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  objc_msgSend_setInputMatrixToSecondKernel_(self, v5, v12, v6);

  v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8, v9);
  objc_msgSend_setInputMatrixToFirstKernel_(self, v10, v13, v11);
}

- (void)updateInputMatrixToFirstKernel:(id)kernel index:(id)index inference:(BOOL)inference
{
  kernelCopy = kernel;
  indexCopy = index;
  if (!inference)
  {
    objc_msgSend_incrementReadCount(kernelCopy, v8, v9, v10);
    v15 = objc_msgSend_inputMatrixToFirstKernel(self, v12, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, kernelCopy, indexCopy);
  }
}

- (void)updateInputMatrixToSecondKernel:(id)kernel index:(id)index inference:(BOOL)inference
{
  kernelCopy = kernel;
  indexCopy = index;
  if (!inference)
  {
    objc_msgSend_incrementReadCount(kernelCopy, v8, v9, v10);
    v15 = objc_msgSend_inputMatrixToSecondKernel(self, v12, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, kernelCopy, indexCopy);
  }
}

@end