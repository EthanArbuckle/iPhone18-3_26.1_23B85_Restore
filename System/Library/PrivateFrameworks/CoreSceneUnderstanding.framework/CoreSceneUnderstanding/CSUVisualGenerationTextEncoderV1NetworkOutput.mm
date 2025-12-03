@interface CSUVisualGenerationTextEncoderV1NetworkOutput
- (CSUVisualGenerationTextEncoderV1NetworkOutput)initWithLastHiddenLayer:(const void *)layer PooledCLIPEmbedding:(const void *)embedding MaskIndices:(const void *)indices;
@end

@implementation CSUVisualGenerationTextEncoderV1NetworkOutput

- (CSUVisualGenerationTextEncoderV1NetworkOutput)initWithLastHiddenLayer:(const void *)layer PooledCLIPEmbedding:(const void *)embedding MaskIndices:(const void *)indices
{
  v34.receiver = self;
  v34.super_class = CSUVisualGenerationTextEncoderV1NetworkOutput;
  v11 = [(CSUVisualGenerationTextEncoderV1NetworkOutput *)&v34 init];
  if (v11)
  {
    v12 = objc_msgSend_deepCopyFromTensor_(CSUMLMultiArrayUtilities, v8, layer, v9, v10);
    lastHiddenLayerEmbedding = v11->_lastHiddenLayerEmbedding;
    v11->_lastHiddenLayerEmbedding = v12;

    v17 = objc_msgSend_deepCopyFromTensor_(CSUMLMultiArrayUtilities, v14, embedding, v15, v16);
    pooledCLIPLayerEmbedding = v11->_pooledCLIPLayerEmbedding;
    v11->_pooledCLIPLayerEmbedding = v17;

    v23 = objc_opt_new();
    v25 = *indices;
    for (i = *(indices + 1); v25 != i; v25 += 16)
    {
      v26 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v19, *v25, (*(v25 + 8) - *v25), v22);
      objc_msgSend_addObject_(v23, v27, v26, v28, v29);
    }

    v30 = objc_msgSend_copy(v23, v19, v20, v21, v22);
    maskIndices = v11->_maskIndices;
    v11->_maskIndices = v30;

    v32 = v11;
  }

  return v11;
}

@end