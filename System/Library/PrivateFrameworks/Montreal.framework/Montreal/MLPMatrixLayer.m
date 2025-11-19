@interface MLPMatrixLayer
- (MLPMatrixLayer)initWithLayerType:(unint64_t)a3 name:(id)a4 neuronType:(int)a5 neuronParams:(id)a6;
- (MLPMatrixLayer)initWithLayerType:(unint64_t)a3 name:(id)a4 parameters:(id *)a5;
- (void)allocateInputDictionaries;
- (void)updateInputMatrixToFirstKernel:(id)a3 index:(id)a4 inference:(BOOL)a5;
- (void)updateInputMatrixToSecondKernel:(id)a3 index:(id)a4 inference:(BOOL)a5;
@end

@implementation MLPMatrixLayer

- (MLPMatrixLayer)initWithLayerType:(unint64_t)a3 name:(id)a4 neuronType:(int)a5 neuronParams:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = MLPMatrixLayer;
  v12 = [(MLPLayer *)&v18 initWithLayerType:a3 name:v10 neuronType:v7 neuronParams:v11];
  v16 = v12;
  if (v12)
  {
    objc_msgSend_allocateInputDictionaries(v12, v13, v14, v15);
  }

  return v16;
}

- (MLPMatrixLayer)initWithLayerType:(unint64_t)a3 name:(id)a4 parameters:(id *)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MLPMatrixLayer;
  v9 = [(MLPLayer *)&v15 initWithLayerType:a3 name:v8 parameters:a5];
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

- (void)updateInputMatrixToFirstKernel:(id)a3 index:(id)a4 inference:(BOOL)a5
{
  v17 = a3;
  v11 = a4;
  if (!a5)
  {
    objc_msgSend_incrementReadCount(v17, v8, v9, v10);
    v15 = objc_msgSend_inputMatrixToFirstKernel(self, v12, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v17, v11);
  }
}

- (void)updateInputMatrixToSecondKernel:(id)a3 index:(id)a4 inference:(BOOL)a5
{
  v17 = a3;
  v11 = a4;
  if (!a5)
  {
    objc_msgSend_incrementReadCount(v17, v8, v9, v10);
    v15 = objc_msgSend_inputMatrixToSecondKernel(self, v12, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v17, v11);
  }
}

@end