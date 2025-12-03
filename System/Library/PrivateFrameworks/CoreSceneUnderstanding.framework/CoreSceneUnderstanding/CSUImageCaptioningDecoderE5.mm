@interface CSUImageCaptioningDecoderE5
- (BOOL)loadBridge:(id *)bridge;
- (BOOL)loadDecoder:(id *)decoder;
- (BOOL)loadResources:(id *)resources;
- (CSUImageCaptioningDecoderE5)initWithConfiguration:(id)configuration;
- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error;
- (id)getBridgeLayerOutput:(id)output error:(id *)error;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures:(id *)features;
- (id)postProcessResults:(id)results error:(id *)error;
@end

@implementation CSUImageCaptioningDecoderE5

- (CSUImageCaptioningDecoderE5)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = CSUImageCaptioningDecoderE5;
  v10 = [(CSUImageCaptioningDecoderE5 *)&v13 init];
  if (v10 && objc_msgSend_runtimeEngine(configurationCopy, v6, v7, v8, v9) == 2)
  {
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)loadBridge:(id *)bridge
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, bridge, v3, v4);

  if (!v7 || self->_bridgeE5Net)
  {
    goto LABEL_11;
  }

  IsPrecompiled = objc_msgSend_bridgeIsPrecompiled(self->_configuration, v8, v9, v10, v11);
  v17 = objc_msgSend_bridgeNetworkPath(self->_configuration, v13, v14, v15, v16);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"model.specialization.bundle", v19, v20);

  v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ((objc_msgSend_fileExistsAtPath_(v22, v23, v21, v24, v25) & 1) == 0)
  {
    v30 = sub_1AC090E50();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v35 = objc_msgSend_bridgeNetworkPath(self->_configuration, v31, v32, v33, v34);
      v50 = 138412290;
      v51 = v35;
      _os_log_impl(&dword_1AC05D000, v30, OS_LOG_TYPE_INFO, "Could not fing the pre-compiled bundle for %@.", &v50, 0xCu);
    }

    IsPrecompiled = 0;
  }

  v36 = objc_msgSend_espressoExecutionEngine(self->_configuration, v26, v27, v28, v29) ? 3 : 0;
  v37 = [CSUCoreMLInference alloc];
  v42 = objc_msgSend_bridgeNetworkPath(self->_configuration, v38, v39, v40, v41);
  v44 = objc_msgSend_initWithCompiledModelFromUri_useComputeUnit_usePrecompiledE5Bundle_error_(v37, v43, v42, v36, IsPrecompiled, bridge);
  bridgeE5Net = self->_bridgeE5Net;
  p_bridgeE5Net = &self->_bridgeE5Net;
  *p_bridgeE5Net = v44;

  v47 = *p_bridgeE5Net == 0;
  if (v47)
  {
    result = 0;
  }

  else
  {
LABEL_11:
    result = 1;
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)loadDecoder:(id *)decoder
{
  v78 = *MEMORY[0x1E69E9840];
  if (self->_decoderE5Net)
  {
    result = 1;
    v5 = *MEMORY[0x1E69E9840];
  }

  else if (objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, decoder, v3))
  {
    IsPrecompiled = objc_msgSend_decoderIsPrecompiled(self->_configuration, v8, v9, v10, v11);
    v17 = objc_msgSend_decoderNetworkPath(self->_configuration, v13, v14, v15, v16);
    v74 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"model.specialization.bundle", v19, v20);

    v73 = objc_alloc_init(MEMORY[0x1E696AC08]);
    if ((objc_msgSend_fileExistsAtPath_(v73, v21, v74, v22, v23) & 1) == 0)
    {
      v28 = sub_1AC090E50();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v33 = objc_msgSend_decoderNetworkPath(self->_configuration, v29, v30, v31, v32);
        *buf = 138412290;
        v77 = v33;
        _os_log_impl(&dword_1AC05D000, v28, OS_LOG_TYPE_INFO, "Could not fing the pre-compiled bundle for %@.", buf, 0xCu);
      }

      IsPrecompiled = 0;
    }

    if (objc_msgSend_espressoExecutionEngine(self->_configuration, v24, v25, v26, v27))
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    v35 = [CSUCoreMLInference alloc];
    v40 = objc_msgSend_decoderNetworkPath(self->_configuration, v36, v37, v38, v39);
    v42 = objc_msgSend_initWithCompiledModelFromUri_useComputeUnit_usePrecompiledE5Bundle_error_(v35, v41, v40, v34, IsPrecompiled, decoder);
    decoderE5Net = self->_decoderE5Net;
    self->_decoderE5Net = v42;

    v44 = self->_decoderE5Net;
    v72 = v44 != 0;
    if (v44)
    {
      v45 = objc_alloc(MEMORY[0x1E695FED0]);
      v50 = objc_msgSend_decoderInputSeqShape(self->_configuration, v46, v47, v48, v49);
      v52 = objc_msgSend_initWithShape_dataType_error_(v45, v51, v50, 65568, decoder);
      inputTokensE5 = self->_inputTokensE5;
      self->_inputTokensE5 = v52;

      v61 = objc_msgSend_maxSeqLen(self->_configuration, v54, v55, v56, v57);
      if (v61)
      {
        for (i = 0; i != v61; ++i)
        {
          v63 = self->_inputTokensE5;
          v75[0] = &unk_1F20DED88;
          v64 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v58, i, v59, v60);
          v75[1] = v64;
          v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v65, v75, 2, v66);
          objc_msgSend_setObject_forKeyedSubscript_(v63, v68, &unk_1F20DF0D0, v67, v69);
        }
      }
    }

    result = v72;
    v70 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = 0;
    v71 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_decoderE5Net)
  {
    Decoder = objc_msgSend_loadDecoder_(self, a2, resources, v3, v4);
    v18 = objc_msgSend_bridgeNetworkPath(self->_configuration, v14, v15, v16, v17);

    if (v18)
    {
      goto LABEL_3;
    }

    return Decoder;
  }

  Decoder = 1;
  v8 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, resources, v3, v4);

  if (!v8)
  {
    return Decoder;
  }

LABEL_3:
  bridgeE5Net = self->_bridgeE5Net;
  result = (bridgeE5Net != 0) & Decoder;
  if (!bridgeE5Net && ((Decoder ^ 1) & 1) == 0)
  {

    return objc_msgSend_loadBridge_(self, v9, resources, v10, v11);
  }

  return result;
}

- (id)getBridgeLayerOutput:(id)output error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  if ((objc_msgSend_loadBridge_(self, v7, error, v8, v9) & 1) == 0)
  {
    v32 = 0;
    goto LABEL_12;
  }

  bridgeE5Net = self->_bridgeE5Net;
  v15 = objc_msgSend_inputEncodedFeaturesTensorNameOfBridge(self->_configuration, v10, v11, v12, v13);
  v35 = v15;
  v36[0] = outputCopy;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v36, &v35, 1);
  LOBYTE(bridgeE5Net) = objc_msgSend_setInputFeatures_error_(bridgeE5Net, v18, v17, error, v19);

  if ((bridgeE5Net & 1) == 0)
  {
    v28 = sub_1AC090E50();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F9C8();
    }

    goto LABEL_10;
  }

  if ((objc_msgSend_predict_(self->_bridgeE5Net, v20, error, v21, v22) & 1) == 0)
  {
    v28 = sub_1AC090E50();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F9FC();
    }

LABEL_10:
    v32 = 0;
    goto LABEL_11;
  }

  v27 = self->_bridgeE5Net;
  v28 = objc_msgSend_outputTensorNameOfBridge(self->_configuration, v23, v24, v25, v26);
  v32 = objc_msgSend_getOutputFor_(v27, v29, v28, v30, v31);
LABEL_11:

LABEL_12:
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error
{
  featuresCopy = features;
  if ((objc_msgSend_loadResources_(self, v11, error, v12, v13) & 1) == 0)
  {
    goto LABEL_14;
  }

  configuration = self->_configuration;
  if (!self->_bridgeE5Net || only)
  {
    v40 = objc_msgSend_decoderEmbeddingShape(configuration, v14, v15, v16, v17);
    v43 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v41, featuresCopy, v40, v42);
    encodedFeaturesBufferE5 = self->_encodedFeaturesBufferE5;
    self->_encodedFeaturesBufferE5 = v43;

    if (self->_encodedFeaturesBufferE5)
    {
      goto LABEL_8;
    }

    if (error)
    {
      objc_msgSend_errorWithCode_message_(CSUError, v37, 12, @"Incorrect shape to run Captioner", v39);
      *error = v45 = 0;
LABEL_15:
      v22 = featuresCopy;
      goto LABEL_16;
    }

LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  v19 = objc_msgSend_bridgeInputShape(configuration, v14, v15, v16, v17);
  v22 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v20, featuresCopy, v19, v21);

  if (v22)
  {
    v25 = objc_msgSend_getBridgeLayerOutput_error_(self, v23, v22, error, v24);
    v26 = self->_encodedFeaturesBufferE5;
    self->_encodedFeaturesBufferE5 = v25;

    v31 = self->_encodedFeaturesBufferE5;
    if (v31)
    {
      v32 = objc_msgSend_decoderEmbeddingShape(self->_configuration, v27, v28, v29, v30);
      v35 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v33, v31, v32, v34);
      v36 = self->_encodedFeaturesBufferE5;
      self->_encodedFeaturesBufferE5 = v35;

      featuresCopy = v22;
LABEL_8:
      if (method)
      {
        objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures_(self, v37, error, v38, v39);
      }

      else
      {
        objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures_(self, v37, error, v38, v39);
      }
      v45 = ;
      goto LABEL_15;
    }

    v47 = sub_1AC090E50();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FA30();
    }

    v45 = 0;
  }

  else if (error)
  {
    objc_msgSend_errorWithCode_message_(CSUError, v23, 12, @"Incorrect shape to run bridge model of Captioner", v24);
    v22 = 0;
    *error = v45 = 0;
  }

  else
  {
    v22 = 0;
    v45 = 0;
  }

LABEL_16:

  return v45;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures:(id *)features
{
  v127[2] = *MEMORY[0x1E69E9840];
  v112 = objc_msgSend_maxSeqLen(self->_configuration, a2, features, v3, v4);
  if (!v112)
  {
    v113 = 0;
LABEL_14:
    v79 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10);
    v83 = objc_msgSend_componentsJoinedByString_(v79, v80, @" ", v81, v82);
    v84 = [CSUCaptionResult alloc];
    v85 = 0.0 / 0;
    *&v85 = v85;
    v89 = objc_msgSend_initWithCaption_score_(v84, v86, v83, v87, v88, v85);
    v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_addObject_(v90, v91, v89, v92, v93);
    v97 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v94, v90, v95, v96);
    v101 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v98, v97, v99, v100);

    objc_msgSend_setDecoderFeaturesMLMultiArray_(v101, v102, v113, v103, v104);
    goto LABEL_19;
  }

  v113 = 0;
  if (self->_encodedFeaturesBufferE5)
  {
    decoderE5Net = self->_decoderE5Net;
    v12 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v7, v8, v9, v10, v115);
    v126[0] = v12;
    v127[0] = self->_encodedFeaturesBufferE5;
    v17 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v13, v14, v15, v16);
    v126[1] = v17;
    v127[1] = self->_inputTokensE5;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v127, v126, 2);
    v22 = objc_msgSend_setInputFeatures_error_(decoderE5Net, v20, v19, features, v21);

    if (v22)
    {
      if (objc_msgSend_predict_(self->_decoderE5Net, v23, features, v24, v25))
      {
        v30 = self->_decoderE5Net;
        v31 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v26, v27, v28, v29);
        v35 = objc_msgSend_getOutputFor_(v30, v32, v31, v33, v34);

        v40 = objc_msgSend_configuration(self, v36, v37, v38, v39);
        v45 = objc_msgSend_saveDecoderFeatures(v40, v41, v42, v43, v44);

        if (v45)
        {
          v113 = v35;
        }

        else
        {
          v113 = 0;
        }

        v50 = objc_msgSend_shape(v35, v46, v47, v48, v49);
        v55 = objc_msgSend_count(v50, v51, v52, v53, v54);

        v60 = objc_msgSend_shape(v35, v56, v57, v58, v59);
        v64 = objc_msgSend_objectAtIndex_(v60, v61, v55 - 1, v62, v63);
        v69 = objc_msgSend_unsignedLongValue(v64, v65, v66, v67, v68);

        v125[0] = 0;
        v125[1] = v125;
        v125[2] = 0x2020000000;
        v125[3] = 0;
        v121 = 0;
        v122 = &v121;
        v123 = 0x2020000000;
        v124 = v69 + 1;
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = sub_1AC0964C0;
        v116[3] = &unk_1E7968150;
        v70 = v35;
        v117 = v70;
        v118 = v125;
        v119 = &v121;
        v120 = 0;
        objc_msgSend_getBytesWithHandler_(v70, v71, v116, v72, v73);
        if (v122[3])
        {
          if (v112 > 1)
          {
            inputTokensE5 = self->_inputTokensE5;
            v114[0] = MEMORY[0x1E69E9820];
            v114[1] = 3221225472;
            v115[0] = sub_1AC0965D0;
            v115[1] = &unk_1E7968178;
            v115[2] = &v121;
            v115[3] = 0;
            objc_msgSend_getMutableBytesWithHandler_(inputTokensE5, v74, v114, v75, v76);
            v78 = v122[3];
          }

          operator new();
        }

        _Block_object_dispose(&v121, 8);
        _Block_object_dispose(v125, 8);

        goto LABEL_14;
      }

      objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v26, @"Decoder model failed to generate output", v28, v29);
    }

    else
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v23, @"Decoder model failed to set input features", v24, v25);
    }
    v105 = ;
    v106 = v105;
    *features = v105;
    objc_msgSend_logInternalError_(CSUError, v107, v105, v108, v109);
  }

  v101 = 0;
LABEL_19:

  v110 = *MEMORY[0x1E69E9840];

  return v101;
}

- (id)postProcessResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v11 = objc_msgSend_postProcessingHandler(self->_procUtils, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_postProcessingHandler(self->_procUtils, v12, v13, v14, v15);
    v21 = objc_msgSend_genderOptionForBeamSearch(self->_procUtils, v17, v18, v19, v20);
    v23 = objc_msgSend_postProcessResults_genderOption_error_(v16, v22, resultsCopy, v21, error);
  }

  else
  {
    v24 = sub_1AC090E50();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC11FBB8();
    }

    v23 = resultsCopy;
  }

  return v23;
}

@end