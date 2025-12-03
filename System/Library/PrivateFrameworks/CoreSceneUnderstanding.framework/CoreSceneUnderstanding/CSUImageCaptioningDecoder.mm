@interface CSUImageCaptioningDecoder
- (BOOL)loadResources:(id *)resources;
- (CSUImageCaptioningDecoder)initWithConfiguration:(id)configuration;
- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method error:(id *)error;
- (id)computeDecodedCaptionsForFeaturesWithCSUBuffer:(id)buffer withDecodingMethod:(int64_t)method error:(id *)error;
- (id)getBridgeLayerOutputE1:(id)e1 error:(id *)error;
- (id)getBridgeLayerOutputE5:(id)e5 error:(id *)error;
- (id)postProcessResults:(id)results error:(id *)error;
@end

@implementation CSUImageCaptioningDecoder

- (CSUImageCaptioningDecoder)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v41.receiver = self;
  v41.super_class = CSUImageCaptioningDecoder;
  v6 = [(CSUImageCaptioningDecoder *)&v41 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_configuration, configuration);
  imageCaptioningDecoderE1 = v7->_imageCaptioningDecoderE1;
  v7->_imageCaptioningDecoderE1 = 0;

  imageCaptioningDecoderE5 = v7->_imageCaptioningDecoderE5;
  v7->_imageCaptioningDecoderE5 = 0;

  imageCaptioningDecoderAXKVCacheE1 = v7->_imageCaptioningDecoderAXKVCacheE1;
  v7->_imageCaptioningDecoderAXKVCacheE1 = 0;

  v15 = objc_msgSend_runtimeEngine(configurationCopy, v11, v12, v13, v14);
  if (v15 == 3)
  {
    v30 = [CSUImageCaptioningDecoderAXKVCacheE1 alloc];
    v34 = objc_msgSend_initWithConfiguration_(v30, v31, configurationCopy, v32, v33);
    v24 = v7->_imageCaptioningDecoderAXKVCacheE1;
    v7->_imageCaptioningDecoderAXKVCacheE1 = v34;
    goto LABEL_8;
  }

  if (v15 == 2)
  {
    v25 = [CSUImageCaptioningDecoderE5 alloc];
    v29 = objc_msgSend_initWithConfiguration_(v25, v26, configurationCopy, v27, v28);
    v24 = v7->_imageCaptioningDecoderE5;
    v7->_imageCaptioningDecoderE5 = v29;
    goto LABEL_8;
  }

  if (v15 != 1)
  {
    v36 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v16, @"Runtime not supported!", v17, v18);
    objc_msgSend_logInternalError_(CSUError, v37, v36, v38, v39);

LABEL_10:
    v35 = 0;
    goto LABEL_11;
  }

  v19 = [CSUImageCaptioningDecoderE1 alloc];
  v23 = objc_msgSend_initWithConfiguration_(v19, v20, configurationCopy, v21, v22);
  v24 = v7->_imageCaptioningDecoderE1;
  v7->_imageCaptioningDecoderE1 = v23;
LABEL_8:

  v35 = v7;
LABEL_11:

  return v35;
}

- (BOOL)loadResources:(id *)resources
{
  imageCaptioningDecoderE1 = self->_imageCaptioningDecoderE1;
  if (imageCaptioningDecoderE1)
  {
    LODWORD(imageCaptioningDecoderE5) = objc_msgSend_loadResources_(imageCaptioningDecoderE1, a2, resources, v3, v4);
    if (imageCaptioningDecoderE5)
    {
      v12 = objc_msgSend_procUtils(self->_imageCaptioningDecoderE1, v8, v9, v10, v11);
      v17 = objc_msgSend_postProcessingHandler(v12, v13, v14, v15, v16);
LABEL_10:
      postProcessingHandler = self->_postProcessingHandler;
      self->_postProcessingHandler = v17;

      LOBYTE(imageCaptioningDecoderE5) = 1;
    }
  }

  else
  {
    imageCaptioningDecoderAXKVCacheE1 = self->_imageCaptioningDecoderAXKVCacheE1;
    if (imageCaptioningDecoderAXKVCacheE1)
    {
      LODWORD(imageCaptioningDecoderE5) = objc_msgSend_loadResources_(imageCaptioningDecoderAXKVCacheE1, a2, resources, v3, v4);
      if (imageCaptioningDecoderE5)
      {
        v12 = objc_msgSend_procUtils(self->_imageCaptioningDecoderAXKVCacheE1, v19, v20, v21, v22);
        v17 = objc_msgSend_postProcessingHandler(v12, v23, v24, v25, v26);
        goto LABEL_10;
      }
    }

    else
    {
      imageCaptioningDecoderE5 = self->_imageCaptioningDecoderE5;
      if (imageCaptioningDecoderE5)
      {
        LODWORD(imageCaptioningDecoderE5) = objc_msgSend_loadResources_(imageCaptioningDecoderE5, a2, resources, v3, v4);
        if (imageCaptioningDecoderE5)
        {
          v12 = objc_msgSend_procUtils(self->_imageCaptioningDecoderE5, v27, v28, v29, v30);
          v17 = objc_msgSend_postProcessingHandler(v12, v31, v32, v33, v34);
          goto LABEL_10;
        }
      }
    }
  }

  return imageCaptioningDecoderE5;
}

- (id)computeDecodedCaptionsForFeaturesWithCSUBuffer:(id)buffer withDecodingMethod:(int64_t)method error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v17 = objc_msgSend_runtimeEngine(self->_configuration, v9, v10, v11, v12);
  configuration = self->_configuration;
  if (v17 == 1)
  {
    v19 = objc_msgSend_bridgeNetworkPath(configuration, v13, v14, v15, v16);
    v20 = v19 == 0;

    v22 = objc_msgSend_computeDecodedCaptionsForFeaturesE1_withDecodingMethod_runDecoderOnly_error_(self, v21, bufferCopy, method, v20, error);
LABEL_3:
    v23 = v22;
    goto LABEL_11;
  }

  if (objc_msgSend_runtimeEngine(configuration, v13, v14, v15, v16) == 2)
  {
    v28 = bufferCopy;
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = objc_msgSend_espressoBuffer(v28, v29, v30, v31, v32);

        v34 = v33[19];
        v35 = objc_alloc(MEMORY[0x1E695FED0]);
        v36 = *v33;
        v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v37, v34, v38, v39);
        v52[0] = v40;
        v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v41, v52, 1, v42);
        v45 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v35, v44, v36, v43, 65568, &unk_1F20DF028, 0, error);

        v23 = objc_msgSend_computeDecodedCaptionsForFeaturesE5_withDecodingMethod_runDecoderOnly_error_(self, v46, v45, method, 0, error);

        goto LABEL_11;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    }

    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (objc_msgSend_runtimeEngine(self->_configuration, v24, v25, v26, v27) == 3)
  {
    v22 = objc_msgSend_computeDecodedCaptionsForFeaturesAXKVCacheE1_withDecodingMethod_runDecoderOnly_error_(self, v47, bufferCopy, method, 0, error);
    goto LABEL_3;
  }

  objc_msgSend_errorWithCode_message_(CSUError, v47, 3, @"Unknown Runtime engine requested", v48);
  *error = v23 = 0;
LABEL_11:

  v49 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method error:(id *)error
{
  v94[1] = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  if (objc_msgSend_runtimeEngine(self->_configuration, v9, v10, v11, v12) == 1)
  {
    objc_msgSend_tensorForInputEmbedding_(CSUDataUtilities, v13, featuresCopy, v15, v16);
    v17 = *(v92 + 40);
    v18 = *(v92 + 24);
    v78 = *(v92 + 8);
    v79 = v18;
    v80 = v17;
    v19 = *(v92 + 72);
    v20 = *(v92 + 104);
    v21 = *(v92 + 56);
    v83 = *(v92 + 88);
    v84 = v20;
    v81 = v21;
    v82 = v19;
    v22 = *(v92 + 120);
    v23 = *(v92 + 136);
    v24 = *(v92 + 152);
    v88 = *(v92 + 168);
    v86 = v23;
    v87 = v24;
    v85 = v22;
    v28 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v25, &v78, v26, v27);
    v33 = objc_msgSend_bridgeNetworkPath(self->_configuration, v29, v30, v31, v32);
    v34 = v33 == 0;

    v36 = objc_msgSend_computeDecodedCaptionsForFeaturesE1_withDecodingMethod_runDecoderOnly_error_(self, v35, v28, method, v34, error);
  }

  else
  {
    if (objc_msgSend_runtimeEngine(self->_configuration, v13, v14, v15, v16) == 2)
    {
      v42 = objc_msgSend_length(featuresCopy, v38, v39, v40, v41);
      v43 = objc_alloc(MEMORY[0x1E695FED0]);
      v44 = featuresCopy;
      v49 = objc_msgSend_bytes(v44, v45, v46, v47, v48);
      v53 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v50, v42 >> 2, v51, v52);
      v94[0] = v53;
      v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v54, v94, 1, v55);
      v58 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v43, v57, v49, v56, 65568, &unk_1F20DF040, 0, error);

      v36 = objc_msgSend_computeDecodedCaptionsForFeaturesE5_withDecodingMethod_runDecoderOnly_error_(self, v59, v58, method, 0, error);

      goto LABEL_13;
    }

    if (objc_msgSend_runtimeEngine(self->_configuration, v38, v39, v40, v41) != 3)
    {
      objc_msgSend_errorWithCode_message_(CSUError, v60, 3, @"Unknown Runtime engine requested", v62);
      *error = v36 = 0;
      goto LABEL_13;
    }

    objc_msgSend_tensorForInputEmbedding_(CSUDataUtilities, v60, featuresCopy, v61, v62);
    v63 = *(v92 + 40);
    v64 = *(v92 + 24);
    v78 = *(v92 + 8);
    v79 = v64;
    v80 = v63;
    v65 = *(v92 + 72);
    v66 = *(v92 + 104);
    v67 = *(v92 + 56);
    v83 = *(v92 + 88);
    v84 = v66;
    v81 = v67;
    v82 = v65;
    v68 = *(v92 + 120);
    v69 = *(v92 + 136);
    v70 = *(v92 + 152);
    v88 = *(v92 + 168);
    v86 = v69;
    v87 = v70;
    v85 = v68;
    v74 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v71, &v78, v72, v73);
    v36 = objc_msgSend_computeDecodedCaptionsForFeaturesAXKVCacheE1_withDecodingMethod_runDecoderOnly_error_(self, v75, v74, method, 1, error);
  }

  v89 = &unk_1F20D01C0;
  v37 = v93;
  if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

LABEL_13:

  v76 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)getBridgeLayerOutputE5:(id)e5 error:(id *)error
{
  e5Copy = e5;
  if (objc_msgSend_loadResources_(self, v7, error, v8, v9))
  {
    if (self->_imageCaptioningDecoderE1 || (imageCaptioningDecoderE5 = self->_imageCaptioningDecoderE5) == 0)
    {
      objc_msgSend_errorWithCode_message_(CSUError, v10, 3, @"Found null object of ML inferences", v13);
      *error = v14 = 0;
    }

    else
    {
      v17 = objc_msgSend_configuration(imageCaptioningDecoderE5, v10, v11, v12, v13);
      v22 = objc_msgSend_bridgeInputShape(v17, v18, v19, v20, v21);
      v25 = objc_msgSend_copyFromNSDataAndReshape_shape_(CSUMLMultiArrayUtilities, v23, e5Copy, v22, v24);

      v14 = objc_msgSend_getBridgeLayerOutput_error_(self->_imageCaptioningDecoderE5, v26, v25, error, v27);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getBridgeLayerOutputE1:(id)e1 error:(id *)error
{
  e1Copy = e1;
  if (objc_msgSend_loadResources_(self, v7, error, v8, v9))
  {
    imageCaptioningDecoderE1 = self->_imageCaptioningDecoderE1;
    if (imageCaptioningDecoderE1 && !self->_imageCaptioningDecoderE5)
    {
      v13 = objc_msgSend_getBridgeLayerOutput_error_(imageCaptioningDecoderE1, v10, e1Copy, error, v11);
    }

    else
    {
      objc_msgSend_errorWithCode_message_(CSUError, v10, 3, @"Found null object of ML inferences", v11);
      *error = v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)postProcessResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v11 = objc_msgSend_runtimeEngine(self->_configuration, v7, v8, v9, v10);
  switch(v11)
  {
    case 1:
      v14 = objc_msgSend_postProcessResults_error_(self->_imageCaptioningDecoderE1, v12, resultsCopy, error, v13);
LABEL_7:
      v15 = v14;

      v16 = v15;

      return v16;
    case 2:
      v14 = objc_msgSend_postProcessResults_error_(self->_imageCaptioningDecoderE5, v12, resultsCopy, error, v13);
      goto LABEL_7;
    case 3:
      v14 = objc_msgSend_postProcessResults_error_(self->_imageCaptioningDecoderAXKVCacheE1, v12, resultsCopy, error, v13);
      goto LABEL_7;
  }

  v18 = sub_1AC090E50();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1AC1201A0(v18);
  }

  v16 = resultsCopy;

  return v16;
}

@end