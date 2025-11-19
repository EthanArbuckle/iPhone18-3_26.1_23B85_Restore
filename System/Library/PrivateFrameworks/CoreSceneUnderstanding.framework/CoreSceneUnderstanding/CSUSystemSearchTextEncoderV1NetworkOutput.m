@interface CSUSystemSearchTextEncoderV1NetworkOutput
- (CSUSystemSearchTextEncoderV1NetworkOutput)initWithTextEmbedding:(const void *)a3 tokenSegments:(id)a4;
@end

@implementation CSUSystemSearchTextEncoderV1NetworkOutput

- (CSUSystemSearchTextEncoderV1NetworkOutput)initWithTextEmbedding:(const void *)a3 tokenSegments:(id)a4
{
  v7 = a4;
  v33.receiver = self;
  v33.super_class = CSUSystemSearchTextEncoderV1NetworkOutput;
  v8 = [(CSUSystemSearchTextEncoderV1NetworkOutput *)&v33 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tokenSegments, a4);
    v13 = objc_msgSend_castToFP16WithDeepCopyFromTensor_(CSUMLMultiArrayUtilities, v10, a3, v11, v12);
    systemSearchTextEmbeddingMLMultiArray = v9->_systemSearchTextEmbeddingMLMultiArray;
    v9->_systemSearchTextEmbeddingMLMultiArray = v13;

    v15 = *(a3 + 5);
    v16 = *(v15 + 40);
    v17 = *(v15 + 24);
    v31[0] = *(v15 + 8);
    v31[1] = v17;
    v31[2] = v16;
    v18 = *(v15 + 72);
    v19 = *(v15 + 104);
    v20 = *(v15 + 56);
    v31[5] = *(v15 + 88);
    v31[6] = v19;
    v31[3] = v20;
    v31[4] = v18;
    v21 = *(v15 + 120);
    v22 = *(v15 + 136);
    v23 = *(v15 + 152);
    v32 = *(v15 + 168);
    v31[8] = v22;
    v31[9] = v23;
    v31[7] = v21;
    v27 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v24, v31, v25, v26);
    systemSearchTextEmbedding = v9->_systemSearchTextEmbedding;
    v9->_systemSearchTextEmbedding = v27;

    v29 = v9;
  }

  return v9;
}

@end