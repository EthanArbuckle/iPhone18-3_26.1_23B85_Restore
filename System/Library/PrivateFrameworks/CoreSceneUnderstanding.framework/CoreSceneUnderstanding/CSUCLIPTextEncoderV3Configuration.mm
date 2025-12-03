@interface CSUCLIPTextEncoderV3Configuration
+ (id)CLIPTextEncoderV3ConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (int64_t)_resolvedRevision:(int64_t)revision;
- (BOOL)isCLIPTextEncoderPresent;
- (id)initCLIPTextEncoderV3ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath;
- (int)espressoExecutionEngine;
@end

@implementation CSUCLIPTextEncoderV3Configuration

+ (int64_t)_resolvedRevision:(int64_t)revision
{
  if (revision == -1)
  {
    return 1;
  }

  else
  {
    return revision;
  }
}

- (BOOL)isCLIPTextEncoderPresent
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v2, v4, v3, v5, v6);
  v13 = objc_msgSend_pathForResource_ofType_inDirectory_(v7, v8, @"text_encoder_main", @"espresso.net", @"clip/v3.1/");
  if (v13)
  {
    v14 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10, v11, v12);
    v18 = objc_msgSend_fileExistsAtPath_(v14, v15, v13, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)CLIPTextEncoderV3ConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  if (objc_msgSend__resolvedRevision_(self, v13, revision, v14, v15) == 1)
  {
    v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v16, @"vocab", @"model", @"clip/v3.1/");
    if (v20)
    {
      v22 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v19, @"text_encoder_lookup_unilm_quantized", @"espresso.net", @"clip/v3.1/");
      if (v22)
      {
        v23 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v21, @"text_encoder_main", @"espresso.net", @"clip/v3.1/");
        if (v23)
        {
          v24 = [self alloc];
          inited = objc_msgSend_initCLIPTextEncoderV3ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_(v24, v25, 1, v20, v22, v23);
LABEL_24:

          goto LABEL_25;
        }

        v56 = sub_1AC090E50();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1AC122130(v56, v57, v58, v59, v60, v61, v62, v63);

          if (error)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (error)
          {
LABEL_17:
            objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v64, @"text encoder main file not found in bundle!", 0, v65);
            *error = inited = 0;
            goto LABEL_24;
          }
        }

        inited = 0;
        goto LABEL_24;
      }

      v46 = sub_1AC090E50();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1AC122168(v46, v47, v48, v49, v50, v51, v52, v53);

        if (error)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (error)
        {
LABEL_14:
          objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v54, @"text encoder lookup file not found in bundle!", 0, v55);
          *error = inited = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      inited = 0;
      goto LABEL_25;
    }

    v36 = sub_1AC090E50();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AC1221A0(v36, v37, v38, v39, v40, v41, v42, v43);

      if (error)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (error)
      {
LABEL_11:
        objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v44, @"vocab file not found in bundle!", 0, v45);
        *error = inited = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    inited = 0;
    goto LABEL_26;
  }

  if (error)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, revision, v17, v18);
    v32 = objc_msgSend_stringWithFormat_(v27, v29, @"Unsupported CLIPTextEncoderV3 revision %@", v30, v31, v28);
    *error = objc_msgSend_errorForUnsupportedRevision_(CSUError, v33, v32, v34, v35);
  }

  inited = 0;
LABEL_27:

  return inited;
}

- (id)initCLIPTextEncoderV3ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath
{
  pathCopy = path;
  networkPathCopy = networkPath;
  encoderNetworkPathCopy = encoderNetworkPath;
  v42.receiver = self;
  v42.super_class = CSUCLIPTextEncoderV3Configuration;
  v13 = [(CSUCLIPTextEncoderV3Configuration *)&v42 init];
  v18 = v13;
  if (v13)
  {
    v13->_revision = revision;
    v19 = objc_msgSend_copy(pathCopy, v14, v15, v16, v17);
    vocabularyModelPath = v18->_vocabularyModelPath;
    v18->_vocabularyModelPath = v19;

    v18->_maximumSequenceLength = 60;
    v18->_inputIsLowerCase = 1;
    v25 = objc_msgSend_copy(networkPathCopy, v21, v22, v23, v24);
    tokenEmbeddingNetworkPath = v18->_tokenEmbeddingNetworkPath;
    v18->_tokenEmbeddingNetworkPath = v25;

    inputTextIDTensorName = v18->_inputTextIDTensorName;
    v18->_inputTextIDTensorName = @"text_ids";

    inputTextIDMaskTensorName = v18->_inputTextIDMaskTensorName;
    v18->_inputTextIDMaskTensorName = @"text_ids_mask";

    outputTokenEmbeddingIDTensorName = v18->_outputTokenEmbeddingIDTensorName;
    v18->_outputTokenEmbeddingIDTensorName = @"t1_1_cast";

    outputTokenEmbeddingMaskTensorName = v18->_outputTokenEmbeddingMaskTensorName;
    v18->_outputTokenEmbeddingMaskTensorName = @"k_mask_1_cast";

    v35 = objc_msgSend_copy(encoderNetworkPathCopy, v31, v32, v33, v34);
    textEncoderNetworkPath = v18->_textEncoderNetworkPath;
    v18->_textEncoderNetworkPath = v35;

    inputTokenEmbeddingIDTensorName = v18->_inputTokenEmbeddingIDTensorName;
    v18->_inputTokenEmbeddingIDTensorName = @"t1_1_cast";

    inputTokenEmbeddingMaskTensorName = v18->_inputTokenEmbeddingMaskTensorName;
    v18->_inputTokenEmbeddingMaskTensorName = @"k_mask_1_cast";

    outputTextEmbeddingTensorName = v18->_outputTextEmbeddingTensorName;
    v18->_outputTextEmbeddingTensorName = @"text_embed_normalize";

    v40 = v18;
  }

  return v18;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);
  v10 = objc_msgSend_copy(v2, v6, v7, v8, v9);

  return v10;
}

- (int)espressoExecutionEngine
{
  v5 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
  v6 = sub_1AC08405C(v5);

  return v6;
}

@end