@interface CSUTextEncoderE5ML
- (BOOL)checkIfEmbeddingInDstBufferIsContiguous:(const void *)contiguous;
- (BOOL)checkIfEmbeddingInSrcBufferIsContiguous:(id)contiguous;
- (BOOL)loadModelCatalogResourcesWithAssetLock:(id)lock Error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (BOOL)loadResourcesInternal:(id *)internal;
- (BOOL)reLoadResources:(id *)resources;
- (CSUTextEncoderE5ML)initWithConfiguration:(id)configuration;
- (id)getTokenEmbeddingsforChunks:(vector<std:(std:(id *)chunks :allocator<std::vector<unsigned int>>> *)a3 :vector<unsigned)int> error:;
- (vector<unsigned)getTokensOnText:(CSUTextEncoderE5ML *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error;
- (void)_unsafeRunOnInput:(id)input completion:(id)completion;
- (void)_unsafeRunOnInputText:(id)text completion:(id)completion;
- (void)runOnInput:(id)input completion:(id)completion;
- (void)runOnInputText:(id)text completion:(id)completion;
@end

@implementation CSUTextEncoderE5ML

- (CSUTextEncoderE5ML)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = CSUTextEncoderE5ML;
  v6 = [(CSUTextEncoderE5ML *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    tokenEmbedder = v7->_tokenEmbedder;
    v7->_tokenEmbedder = 0;

    textEncoder = v7->_textEncoder;
    v7->_textEncoder = 0;

    assetVersionNumber = v7->_assetVersionNumber;
    v7->_assetVersionNumber = 0;

    v11 = v7;
  }

  return v7;
}

- (vector<unsigned)getTokensOnText:(CSUTextEncoderE5ML *)self withBOS:(SEL)s withEOS:(id)oS withError:(BOOL)error
{
  v8 = a6;
  errorCopy = error;
  oSCopy = oS;
  if ((objc_msgSend_loadResources_(self, v13, a7, v14, v15) & 1) == 0)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    goto LABEL_26;
  }

  if (objc_msgSend_inputIsLowerCase(self->_configuration, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_lowercaseString(oSCopy, v20, v21, v22, v23);

    oSCopy = v24;
  }

  v25 = oSCopy;
  if (!objc_msgSend_UTF8String(v25, v26, v27, v28, v29))
  {
    v40 = sub_1AC090E50();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F6F4(oSCopy, v40);

      if (!a7)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!a7)
      {
        goto LABEL_5;
      }
    }

    *a7 = objc_msgSend_errorForInvalidArgumentWithLocalizedDescription_(CSUError, v41, @"Encountered null input while getting tokens for text %@!", v42, v43);
    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = 0;
    goto LABEL_26;
  }

LABEL_5:
  v30 = oSCopy;
  v35 = objc_msgSend_UTF8String(v30, v31, v32, v33, v34);
  v36 = strlen(v35);
  if (v36 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v37 = v36;
  if (v36 >= 0x17)
  {
    operator new();
  }

  v49 = v36;
  if (v36)
  {
    memmove(&__dst, v35, v36);
  }

  *(&__dst + v37) = 0;
  (*(*self->_vocabulary.__ptr_ + 16))(&__src);
  if (errorCopy)
  {
    v45 = 1;
    sub_1AC071660(&__src, __src, &v45);
  }

  v39 = __src;
  v38 = v47;
  if (!v8)
  {
    v38 = v47 - 4;
  }

  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (v38 != v39)
  {
    if (((v38 - v39) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  if (v39)
  {
    v47 = v39;
    operator delete(v39);
  }

  if (v49 < 0)
  {
    operator delete(__dst);
  }

LABEL_26:

  return result;
}

- (BOOL)loadResources:(id *)resources
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = sub_1AC090E50();
  v7 = os_signpost_id_generate(v6);

  v8 = sub_1AC090E50();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v50) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CSUTextEncoderE5MLLoadResources", "", &v50, 2u);
  }

  v51 = &v50;
  v10 = 0;
  v15 = objc_msgSend_configuration(self, v11, v12, v13, v14, &unk_1F20D0A48, v7);
  v24 = objc_msgSend_revision(v15, v16, v17, v18, v19);
  if (v24 == 2)
  {
    v25 = 0;
  }

  else
  {
    v10 = objc_msgSend_configuration(self, v20, v21, v22, v23);
    if (objc_msgSend_revision(v10, v26, v27, v28, v29) == 5)
    {
      v25 = 0;
    }

    else
    {
      v3 = objc_msgSend_configuration(self, v20, v21, v22, v23);
      if (objc_msgSend_revision(v3, v43, v44, v45, v46) != 8)
      {

        goto LABEL_20;
      }

      v25 = 1;
    }
  }

  v30 = objc_msgSend_configuration(self, v20, v21, v22, v23);
  v35 = objc_msgSend_sideLoaded(v30, v31, v32, v33, v34);

  if (v25)
  {

    if (v24 != 2)
    {
LABEL_10:

      goto LABEL_13;
    }
  }

  else if (v24 != 2)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v35)
  {
LABEL_20:
    v42 = 0;
    goto LABEL_21;
  }

  v39 = objc_opt_new();
  if ((objc_msgSend_loadModelCatalogResourcesWithAssetLock_Error_(self, v40, v39, resources, v41) & 1) == 0)
  {
    ResourcesInternal = 0;
    goto LABEL_22;
  }

  v42 = v39;
LABEL_21:
  ResourcesInternal = objc_msgSend_loadResourcesInternal_(self, v36, resources, v37, v38);
  v39 = v42;
LABEL_22:

  if (!v51)
  {
    sub_1AC066F88();
  }

  (*(*v51 + 48))(v51);
  if (v51 == &v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))();
  }

  v48 = *MEMORY[0x1E69E9840];
  return ResourcesInternal;
}

- (BOOL)loadResourcesInternal:(id *)internal
{
  if (self->_textEncoder)
  {
    if (self->_tokenEmbedder)
    {
      selfCopy = self;
      internalCopy = internal;
      v8 = objc_msgSend_updated(self->_configuration, a2, internal, v3, v4);
      internal = internalCopy;
      v9 = v8;
      self = selfCopy;
      v5 = vars8;
      if (!v9)
      {
        return 1;
      }
    }
  }

  return objc_msgSend_reLoadResources_(self, a2, internal, v3, v4);
}

- (BOOL)reLoadResources:(id *)resources
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = sub_1AC090E50();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_1AC090E50();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CSUTextEncoderE5MLReLoadResources", "", buf, 2u);
  }

  *buf = &unk_1F20D0AC8;
  v25 = v5;
  v26 = buf;
  v12 = objc_msgSend_vocabularyModelPath(self->_configuration, v8, v9, v10, v11);
  v13 = v12;
  v18 = objc_msgSend_UTF8String(v12, v14, v15, v16, v17);
  v19 = strlen(v18);
  if (v19 < 0x7FFFFFFFFFFFFFF8)
  {
    v20 = v19;
    if (v19 < 0x17)
    {
      v23 = v19;
      if (v19)
      {
        memmove(&__dst, v18, v19);
      }

      *(&__dst + v20) = 0;
      sub_1AC0600A4();
    }

    operator new();
  }

  sub_1AC060A04();
}

- (BOOL)checkIfEmbeddingInDstBufferIsContiguous:(const void *)contiguous
{
  v4 = *(contiguous + 2);
  v3 = *(contiguous + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  (*(**(contiguous + 5) + 32))(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

- (BOOL)checkIfEmbeddingInSrcBufferIsContiguous:(id)contiguous
{
  contiguousCopy = contiguous;
  v9 = objc_msgSend_strides(contiguousCopy, v5, v6, v7, v8);
  v18 = objc_msgSend_shape(contiguousCopy, v10, v11, v12, v13);
  for (i = 0; ; ++i)
  {
    if (i >= objc_msgSend_count(v18, v14, v15, v16, v17))
    {
      v34 = 0;
      goto LABEL_7;
    }

    v23 = objc_msgSend_objectAtIndex_(v18, v20, i, v21, v22);
    v28 = objc_msgSend_unsignedLongValue(v23, v24, v25, v26, v27);
    v33 = objc_msgSend_tokenEmbeddingLength(self->_configuration, v29, v30, v31, v32);

    if (v28 == v33)
    {
      break;
    }
  }

  v35 = objc_msgSend_objectAtIndex_(v9, v14, i, v16, v17);
  v34 = objc_msgSend_unsignedLongValue(v35, v36, v37, v38, v39) == 1;

LABEL_7:
  return v34;
}

- (id)getTokenEmbeddingsforChunks:(vector<std:(std:(id *)chunks :allocator<std::vector<unsigned int>>> *)a3 :vector<unsigned)int> error:
{
  v90[2] = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_contextLength(self->_configuration, a2, a3, chunks, v4);
  chunksCopy = chunks;
  __p = 0;
  *chunks = 0;
  __dst = 0;
  v85 = 0;
  var0 = a3->var0;
  var1 = a3->var1;
  if (var0 != var1)
  {
    do
    {
      sub_1AC075F44(&__p, __dst, *var0, *(var0 + 1), (*(var0 + 1) - *var0) >> 2);
      var0 += 24;
    }

    while (var0 != var1);
    if (v10 < (__dst - __p) >> 2)
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"Maximum input token sequence length exceeds %zu", v8, v9, v10);
      *chunksCopy = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v14, v13, v15, v16);
    }
  }

  tokenEmbedder = self->_tokenEmbedder;
  v90[0] = &unk_1F20DECC8;
  v18 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v7, v10, v8, v9);
  v90[1] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v90, 2, v20);
  v23 = objc_msgSend_getInputMLMutliArrayFor_WithShape_error_(tokenEmbedder, v22, @"text_ids", v21, chunksCopy);

  if (v23)
  {
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v28 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v24, 0, v25, v26);
        v89[0] = &unk_1F20DED10;
        v32 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v29, i, v30, v31);
        v89[1] = v32;
        v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, v89, 2, v34);
        objc_msgSend_setObject_forKeyedSubscript_(v23, v36, v28, v35, v37);
      }

      v38 = __dst;
      if (__p != __dst)
      {
        v39 = __p + 4;
        v40 = 1;
        do
        {
          v41 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v24, *(v39 - 1), v25, v26);
          v88[0] = &unk_1F20DED10;
          v45 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v42, v40 - 1, v43, v44);
          v88[1] = v45;
          v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v46, v88, 2, v47);
          objc_msgSend_setObject_forKeyedSubscript_(v23, v49, v41, v48, v50);

          if (v39 == v38)
          {
            break;
          }

          v39 += 4;
        }

        while (v40++ < v10);
      }
    }

    v52 = self->_tokenEmbedder;
    v86 = @"text_ids";
    v87 = v23;
    v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v87, &v86, 1);
    v56 = objc_msgSend_setInputFeatures_error_(v52, v54, v53, chunksCopy, v55);

    if (v56)
    {
      if (objc_msgSend_predict_(self->_tokenEmbedder, v57, chunksCopy, v58, v59))
      {
        v63 = objc_msgSend_getOutputFor_(self->_tokenEmbedder, v60, @"token_embed", v61, v62);
        goto LABEL_23;
      }

      v64 = sub_1AC090E50();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_1AC11F7A4(v64, v72, v73, v74, v75, v76, v77, v78);
      }
    }

    else
    {
      v64 = sub_1AC090E50();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_1AC11F76C(v64, v65, v66, v67, v68, v69, v70, v71);
      }
    }
  }

  v63 = 0;
LABEL_23:

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  v79 = *MEMORY[0x1E69E9840];

  return v63;
}

- (BOOL)loadModelCatalogResourcesWithAssetLock:(id)lock Error:(id *)error
{
  lockCopy = lock;
  v13 = objc_msgSend_configuration(self, v9, v10, v11, v12);
  v22 = objc_msgSend_revision(v13, v14, v15, v16, v17);
  if (v22 == 2)
  {
    v23 = 0;
  }

  else
  {
    v4 = objc_msgSend_configuration(self, v18, v19, v20, v21);
    if (objc_msgSend_revision(v4, v24, v25, v26, v27) == 5)
    {
      v23 = 0;
    }

    else
    {
      v5 = objc_msgSend_configuration(self, v18, v19, v20, v21);
      if (objc_msgSend_revision(v5, v28, v29, v30, v31) != 8)
      {

LABEL_24:
        goto LABEL_25;
      }

      v23 = 1;
    }
  }

  v32 = objc_msgSend_configuration(self, v18, v19, v20, v21);
  v37 = objc_msgSend_sideLoaded(v32, v33, v34, v35, v36);

  if (v23)
  {

    if (v22 != 2)
    {
      goto LABEL_9;
    }

LABEL_12:

    if ((v37 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v75 = 1;
    goto LABEL_26;
  }

  if (v22 == 2)
  {
    goto LABEL_12;
  }

LABEL_9:

  if (v37)
  {
    goto LABEL_25;
  }

LABEL_13:
  v13 = objc_opt_new();
  v4 = objc_msgSend_fetchWithAssetLock_error_(v13, v38, lockCopy, error, v39);
  if (!v4)
  {
    if (error)
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v40, @"Model Catalog asset base url for text and token encoders is nil!", *error, v43);
      *error = v75 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v75 = 0;
    goto LABEL_22;
  }

  v44 = objc_msgSend_getAssetVersion(v13, v40, v41, v42, v43);
  isEqual = objc_msgSend_isEqual_(v44, v45, self->_assetVersionNumber, v46, v47);

  if (isEqual)
  {
    goto LABEL_24;
  }

  v49 = sub_1AC090E50();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *v77 = 0;
    _os_log_impl(&dword_1AC05D000, v49, OS_LOG_TYPE_INFO, "new ModelCatalog assets available for text encoder - reloading", v77, 2u);
  }

  v54 = objc_msgSend_configuration(self, v50, v51, v52, v53);
  objc_msgSend_setTextEncoderNetworkURL_(v54, v55, v4, v56, v57);

  v62 = objc_msgSend_configuration(self, v58, v59, v60, v61);
  objc_msgSend_setTokenEmbeddingNetworkURL_(v62, v63, v4, v64, v65);

  if (!objc_msgSend_reLoadResources_(self, v66, error, v67, v68))
  {
    goto LABEL_21;
  }

  v73 = objc_msgSend_getAssetVersion(v13, v69, v70, v71, v72);
  assetVersionNumber = self->_assetVersionNumber;
  self->_assetVersionNumber = v73;

  v75 = 1;
LABEL_22:

LABEL_26:
  return v75;
}

- (void)_unsafeRunOnInput:(id)input completion:(id)completion
{
  v70 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  completionCopy = completion;
  v59 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9, v10, v11);
  v16 = objc_msgSend_configuration(self, v12, v13, v14, v15);
  v25 = objc_msgSend_revision(v16, v17, v18, v19, v20);
  if (v25 == 2)
  {
    v26 = 0;
  }

  else
  {
    v4 = objc_msgSend_configuration(self, v21, v22, v23, v24);
    if (objc_msgSend_revision(v4, v27, v28, v29, v30) == 5)
    {
      v26 = 0;
    }

    else
    {
      v5 = objc_msgSend_configuration(self, v21, v22, v23, v24);
      if (objc_msgSend_revision(v5, v31, v32, v33, v34) != 8)
      {

        goto LABEL_17;
      }

      v26 = 1;
    }
  }

  v35 = objc_msgSend_configuration(self, v21, v22, v23, v24);
  v40 = objc_msgSend_sideLoaded(v35, v36, v37, v38, v39);

  if (v26)
  {

    if (v25 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (v25 != 2)
  {
LABEL_9:

    if ((v40 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v60 = 0;
    v48 = 0;
    goto LABEL_18;
  }

  if (v40)
  {
    goto LABEL_17;
  }

LABEL_13:
  v44 = objc_opt_new();
  v64 = 0;
  ModelCatalogResourcesWithAssetLock_Error = objc_msgSend_loadModelCatalogResourcesWithAssetLock_Error_(self, v45, v44, &v64, v46);
  v48 = v64;
  if ((ModelCatalogResourcesWithAssetLock_Error & 1) == 0)
  {
    completionCopy[2](completionCopy, 0, v48);
    goto LABEL_23;
  }

  v60 = v44;
LABEL_18:
  v63 = v48;
  ResourcesInternal = objc_msgSend_loadResourcesInternal_(self, v41, &v63, v42, v43);
  v62 = v63;

  if (ResourcesInternal)
  {
    objc_msgSend_timeIntervalSinceNow(v59, v50, v51, v52, v53);
    v55 = v54;
    v56 = sub_1AC090E50();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v55;
      _os_log_impl(&dword_1AC05D000, v56, OS_LOG_TYPE_INFO, "time to load resources = %f", &buf, 0xCu);
    }

    buf = 0uLL;
    v69 = 0;
    *v65 = 0;
    v66 = 0;
    v67 = 0;
    operator new();
  }

  v48 = v62;
  (completionCopy[2])(completionCopy, 0);
  v44 = v60;
LABEL_23:

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_unsafeRunOnInputText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  objc_msgSend_setString_(v8, v9, textCopy, v10, v11);
  objc_msgSend_addObject_(v7, v12, v8, v13, v14);
  objc_msgSend_runOnInput_completion_(self, v15, v7, completionCopy, v16);
}

- (void)runOnInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInput_completion_(self, v8, inputCopy, completionCopy, v9);
}

- (void)runOnInputText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInputText_completion_(self, v8, textCopy, completionCopy, v9);
}

@end