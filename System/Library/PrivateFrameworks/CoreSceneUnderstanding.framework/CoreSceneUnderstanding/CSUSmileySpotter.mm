@interface CSUSmileySpotter
- (BOOL)loadModelCatalogResourcesWithAssetLock:(id)a3 Error:(id *)a4;
- (BOOL)loadResources:(id *)a3;
- (BOOL)loadResourcesInternal:(id *)a3;
- (BOOL)reLoadResources:(id *)a3;
- (CSUSmileySpotter)initWithConfiguration:(id)a3;
- (id)runSmileySpotterOnTextEncoding:(id)a3 error:(id *)a4;
- (id)unsafeRunSmileySpotterOnTextEncoding:(id)a3 error:(id *)a4;
@end

@implementation CSUSmileySpotter

- (CSUSmileySpotter)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSUSmileySpotter;
  v6 = [(CSUSmileySpotter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    smileySpotterHead = v7->_smileySpotterHead;
    v7->_smileySpotterHead = 0;

    v9 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)a3
{
  v5 = objc_opt_new();
  if (objc_msgSend_loadModelCatalogResourcesWithAssetLock_Error_(self, v6, v5, a3, v7))
  {
    ResourcesInternal = objc_msgSend_loadResourcesInternal_(self, v8, a3, v9, v10);

    return ResourcesInternal;
  }

  else
  {

    return 0;
  }
}

- (BOOL)loadResourcesInternal:(id *)a3
{
  if (self->_smileySpotterHead)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_reLoadResources_(self, a2, a3, v3, v4);
  }
}

- (BOOL)reLoadResources:(id *)a3
{
  v7 = objc_msgSend_configuration(self, a2, a3, v3, v4);
  v12 = objc_msgSend_headModelURL(v7, v8, v9, v10, v11);

  v21 = objc_msgSend_configuration(self, v13, v14, v15, v16);
  if (v12)
  {
    v22 = objc_msgSend_headModelURL(v21, v17, v18, v19, v20);
    v27 = objc_msgSend_absoluteString(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_configuration(self, v28, v29, v30, v31);
    v37 = objc_msgSend_headModelPath(v32, v33, v34, v35, v36);
    v41 = objc_msgSend_stringByAppendingPathComponent_(v27, v38, v37, v39, v40);
  }

  else
  {
    v41 = objc_msgSend_headModelPath(v21, v17, v18, v19, v20);
  }

  v42 = [CSUCoreMLInference alloc];
  v44 = objc_msgSend_initWithCompiledModelFromUri_useComputeUnit_usePrecompiledE5Bundle_error_(v42, v43, v41, 2, 1, a3);
  smileySpotterHead = self->_smileySpotterHead;
  self->_smileySpotterHead = v44;

  v46 = self->_smileySpotterHead != 0;
  return v46;
}

- (BOOL)loadModelCatalogResourcesWithAssetLock:(id)a3 Error:(id *)a4
{
  v6 = a3;
  v11 = objc_msgSend_configuration(self, v7, v8, v9, v10);
  v16 = objc_msgSend_sideLoaded(v11, v12, v13, v14, v15);

  if (v16)
  {
    goto LABEL_5;
  }

  v17 = objc_opt_new();
  v24 = objc_msgSend_fetchWithAssetLock_error_(v17, v18, v6, a4, v19);
  if (!v24)
  {
    if (a4)
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v20, @"Model Catalog asset base url for text and token encoders is nil!", *a4, v23);
      *a4 = v30 = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v25 = objc_msgSend_getAssetVersion(v17, v20, v21, v22, v23);
  isEqual = objc_msgSend_isEqual_(v25, v26, self->_assetVersionNumber, v27, v28);

  if ((isEqual & 1) == 0)
  {
    v31 = sub_1AC090E50();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&dword_1AC05D000, v31, OS_LOG_TYPE_INFO, "new ModelCatalog assets available for Smiley Spotter - reloading", v50, 2u);
    }

    v36 = objc_msgSend_configuration(self, v32, v33, v34, v35);
    objc_msgSend_setHeadModelURL_(v36, v37, v24, v38, v39);

    if (objc_msgSend_reLoadResources_(self, v40, a4, v41, v42))
    {
      v47 = objc_msgSend_getAssetVersion(v17, v43, v44, v45, v46);
      assetVersionNumber = self->_assetVersionNumber;
      self->_assetVersionNumber = v47;

      v30 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_5:
  v30 = 1;
LABEL_14:

  return v30;
}

- (id)runSmileySpotterOnTextEncoding:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  if ((objc_msgSend_loadModelCatalogResourcesWithAssetLock_Error_(self, v8, v7, a4, v9) & 1) != 0 && objc_msgSend_loadResourcesInternal_(self, v10, a4, v11, v12))
  {
    v15 = objc_msgSend_unsafeRunSmileySpotterOnTextEncoding_error_(self, v13, v6, a4, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)unsafeRunSmileySpotterOnTextEncoding:(id)a3 error:(id *)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  smileySpotterHead = self->_smileySpotterHead;
  if (a4 && !smileySpotterHead)
  {
    *a4 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v6, @"Predictor instance is nil, are you sure you loadedResources(...)?", v8, v9);
    smileySpotterHead = self->_smileySpotterHead;
  }

  v52 = @"pooled_out";
  v12 = objc_msgSend_textEncoding(v10, v6, v7, v8, v9);
  v53[0] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v53, &v52, 1);
  v17 = objc_msgSend_setInputFeatures_error_(smileySpotterHead, v15, v14, a4, v16);

  if ((v17 & 1) != 0 && objc_msgSend_predict_(self->_smileySpotterHead, v18, a4, v19, v20))
  {
    v24 = objc_msgSend_getOutputFor_(self->_smileySpotterHead, v21, @"fc_dense2_post_act", v22, v23);
    v28 = v24;
    if (v24)
    {
      v29 = objc_msgSend_objectForKeyedSubscript_(v24, v25, &unk_1F20DEDE8, v26, v27);
      objc_msgSend_floatValue(v29, v30, v31, v32, v33);
      v35 = v34;
      objc_msgSend_threshold(self->_configuration, v36, v37, v38, v39);
      v41 = v40;

      v42 = [CSUSmileySpotterModelOutput alloc];
      v47 = objc_msgSend_revision(self->_configuration, v43, v44, v45, v46);
      v49 = objc_msgSend_initWithOutput_Probability_smileySpotterRevision_(v42, v48, v35 > v41, v28, v47);
    }

    else if (a4)
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v25, @"Could not get output tensor for smiley spotter head", v26, v27);
      *a4 = v49 = 0;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

@end