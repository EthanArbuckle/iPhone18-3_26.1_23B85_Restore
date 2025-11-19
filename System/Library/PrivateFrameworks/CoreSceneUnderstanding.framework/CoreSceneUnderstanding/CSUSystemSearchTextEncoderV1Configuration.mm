@interface CSUSystemSearchTextEncoderV1Configuration
+ (id)SystemSearchTextEncoderV1ConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)availableRevisions;
- (id)initSystemSearchTextEncoderV1ConfigurationForRevision:(int64_t)a3 vocabularyModelPath:(id)a4 tokenEmbeddingNetworkPath:(id)a5 textEncoderNetworkPath:(id)a6 encoderParams:(id)a7;
- (int)espressoExecutionEngine;
@end

@implementation CSUSystemSearchTextEncoderV1Configuration

+ (id)SystemSearchTextEncoderV1ConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  objc_msgSend__resolvedRevision_(a1, a2, a3, a4, v4);
  if (a4)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, a3, v8, v9);
    v15 = objc_msgSend_stringWithFormat_(v10, v12, @"Unsupported SystemSearchTextEncoderV1 revision %@", v13, v14, v11);
    *a4 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v16, v15, v17, v18);
  }

  return 0;
}

- (id)initSystemSearchTextEncoderV1ConfigurationForRevision:(int64_t)a3 vocabularyModelPath:(id)a4 tokenEmbeddingNetworkPath:(id)a5 textEncoderNetworkPath:(id)a6 encoderParams:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v63.receiver = self;
  v63.super_class = CSUSystemSearchTextEncoderV1Configuration;
  v16 = [(CSUSystemSearchTextEncoderV1Configuration *)&v63 init];
  v21 = v16;
  if (v16)
  {
    v16->_revision = a3;
    v22 = objc_msgSend_copy(v12, v17, v18, v19, v20);
    vocabularyModelPath = v21->_vocabularyModelPath;
    v21->_vocabularyModelPath = v22;

    v27 = objc_msgSend_objectForKeyedSubscript_(v15, v24, @"maxSeqLen", v25, v26);
    v21->_maximumSequenceLength = objc_msgSend_unsignedLongValue(v27, v28, v29, v30, v31);

    v21->_inputIsLowerCase = 1;
    inputTextIDTensorName = v21->_inputTextIDTensorName;
    v21->_inputTextIDTensorName = @"text_ids";

    v37 = objc_msgSend_copy(v13, v33, v34, v35, v36);
    tokenEmbeddingNetworkPath = v21->_tokenEmbeddingNetworkPath;
    v21->_tokenEmbeddingNetworkPath = v37;

    outputTokenEmbeddingIDTensorName = v21->_outputTokenEmbeddingIDTensorName;
    v21->_outputTokenEmbeddingIDTensorName = @"token_embed";

    v43 = objc_msgSend_objectForKeyedSubscript_(v15, v40, @"tokenEmbedLen", v41, v42);
    v21->_tokenEmbeddingLength = objc_msgSend_unsignedLongValue(v43, v44, v45, v46, v47);

    v50 = objc_msgSend_CSUAssert_log_(CSUError, v48, v21->_maximumSequenceLength != v21->_tokenEmbeddingLength, @"Implementation of checkIfSrcBufferisContiguousForCopyToDestBuffer might fail", v49);
    v55 = objc_msgSend_copy(v14, v51, v52, v53, v54);
    textEncoderNetworkPath = v21->_textEncoderNetworkPath;
    v21->_textEncoderNetworkPath = v55;

    inputTokenEmbeddingIDTensorName = v21->_inputTokenEmbeddingIDTensorName;
    v21->_inputTokenEmbeddingIDTensorName = @"token_embed";

    inputTokenEmbeddingMaskTensorName = v21->_inputTokenEmbeddingMaskTensorName;
    v21->_inputTokenEmbeddingMaskTensorName = @"indices";

    outputTextEmbeddingTensorName = v21->_outputTextEmbeddingTensorName;
    v21->_outputTextEmbeddingTensorName = @"text_embed";

    outputLastHiddenStateTensorName = v21->_outputLastHiddenStateTensorName;
    v21->_outputLastHiddenStateTensorName = @"input_tranpose";

    v61 = v21;
  }

  return v21;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 2, v4, v5);
  v10 = objc_msgSend_copy(v2, v6, v7, v8, v9);

  return v10;
}

- (int)espressoExecutionEngine
{
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, v2, v3, v4);
  v10 = objc_msgSend_BOOLForKey_(v6, v7, @"CSU_UseEspressoCPUEngine", v8, v9);

  if (v10)
  {
    return 0;
  }

  v16 = objc_msgSend_computeDevice(self, v11, v12, v13, v14);
  v17 = sub_1AC08405C(v16);

  return v17;
}

@end