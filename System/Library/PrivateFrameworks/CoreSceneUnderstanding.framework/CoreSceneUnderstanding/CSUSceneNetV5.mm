@interface CSUSceneNetV5
- (BOOL)enumerateAestheticsAttributeScores:(id)scores usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateAestheticsGlobalScores:(id)scores usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateEntityNetClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateHierarchicalSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateLeafSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error;
- (CSUSceneNetV5)initWithConfiguration:(id)configuration;
- (__CVBuffer)pixelBufferForSaliencyMap:(id)map error:(id *)error;
- (id).cxx_construct;
- (id)allAestheticsAttributeScores:(id)scores;
- (id)allAestheticsAttributeScores:(id)scores error:(id *)error;
- (id)allAestheticsGlobalScores:(id)scores;
- (id)allAestheticsGlobalScores:(id)scores error:(id *)error;
- (id)allEntityNetClassificationLikelihoods:(id)likelihoods;
- (id)allEntityNetClassificationLikelihoods:(id)likelihoods error:(id *)error;
- (id)allSceneClassificationLikelihoods:(id)likelihoods;
- (id)allSceneClassificationLikelihoods:(id)likelihoods error:(id *)error;
- (id)base64HashesFromFingerprintEmbedding:(id)embedding;
- (id)detectionResultFromScoreHeatMap:(id)map coordinateOffsetMap:(id)offsetMap;
- (id)detectionResultFromScoreHeatMap:(id)map coordinateOffsetMap:(id)offsetMap options:(id)options error:(id *)error;
- (id)hashesFromFingerprintEmbedding:(id)embedding;
- (vector<float,)computeAllSceneClassificationLikelihoods:(CSUSceneNetV5 *)self;
- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion;
- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion;
@end

@implementation CSUSceneNetV5

- (CSUSceneNetV5)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUSceneNetV5;
  v6 = [(CSUSceneNetV5 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)resources
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = sub_1AC090E50();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_1AC090E50();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CSUSceneNetLoadResources", "", &buf, 2u);
  }

  v65[0] = &unk_1F20D0580;
  v65[1] = v5;
  v66 = v65;
  if (!self->_net.__ptr_)
  {
    v8 = sub_1AC090E50();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_revision(self->_configuration, v9, v10, v11, v12);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1AC05D000, v8, OS_LOG_TYPE_INFO, "SceneNet model configuration revision is %ld", &buf, 0xCu);
    }

    if (objc_msgSend_revision(self->_configuration, v14, v15, v16, v17) == 3 && objc_msgSend_espressoExecutionEngine(self->_configuration, v18, v19, v20, v21) == 10007)
    {
      v22 = objc_msgSend_espressoNetworkPath(self->_configuration, v18, v19, v20, v21);
      v25 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v22, v23, @".espresso.net", @"_dev_op.espresso.net", v24);

      v26 = v25;
      v31 = objc_msgSend_UTF8String(v25, v27, v28, v29, v30);
      buf = 0uLL;
      v50 = 0;
      v51 = objc_msgSend_espressoExecutionEngine(self->_configuration, v32, v33, v34, v35, v31);
      v52 = 1;
      v53 = 0;
      v54 = 0;
      v55 = 0xFFFFFFFFLL;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      *v60 = 0u;
      *v61 = 0u;
      v62 = 1065353216;
      v64 = 0;
      LOBYTE(__p) = 0;
      sub_1AC063040();
    }

    v36 = objc_msgSend_espressoNetworkPath(self->_configuration, v18, v19, v20, v21);
    v37 = v36;
    v42 = objc_msgSend_UTF8String(v36, v38, v39, v40, v41);
    buf = 0uLL;
    v50 = 0;
    v51 = objc_msgSend_espressoExecutionEngine(self->_configuration, v43, v44, v45, v46, v42);
    v52 = 1;
    v53 = 0;
    v54 = 0;
    v55 = 0xFFFFFFFFLL;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    *v60 = 0u;
    *v61 = 0u;
    v62 = 1065353216;
    v64 = 0;
    LOBYTE(__p) = 0;
    sub_1AC063040();
  }

  unk_1F20D05B0();
  if (v66 == v65)
  {
    (*(*v66 + 32))(v66);
  }

  else if (v66)
  {
    (*(*v66 + 40))(v66);
  }

  v47 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = sub_1AC090E50();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_1AC090E50();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v17[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CSUSceneNetResampleImage", "", v17, 2u);
  }

  v17[0] = &unk_1F20D0610;
  v17[1] = v9;
  v18 = v17;
  ptr = self->_transferSession.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v13 = VTPixelTransferSessionTransferImage(**ptr, image, inputImage);
  sub_1AC0670CC(v13, "Image Transfer");
  if (!v18)
  {
    sub_1AC066F88();
  }

  (*(*v18 + 48))(v18);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = sub_1AC090E50();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_1AC090E50();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CSUSceneNetRunOnInputImage", "", buf, 2u);
  }

  *buf = &unk_1F20D0690;
  v15 = v8;
  v16 = buf;
  objc_msgSend__unsafeRunOnInputImage_completion_(self, v11, image, completionCopy, v12);
  if (!v16)
  {
    sub_1AC066F88();
  }

  (*(*v16 + 48))(v16);
  if (v16 == buf)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (vector<float,)computeAllSceneClassificationLikelihoods:(CSUSceneNetV5 *)self
{
  v6 = a4;
  configuration = self->_configuration;
  v52 = 0;
  v11 = objc_msgSend_sceneTaxonomyWithError_(configuration, v8, &v52, v9, v10);
  v16 = v52;
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v34 = objc_msgSend_localizedDescription(v16, v30, v31, v32, v33);
    v39 = objc_msgSend_UTF8String(v34, v35, v36, v37, v38);
    sub_1AC063200(&v50, v39);
    sub_1AC063E68("SceneNet taxonomy could not be loaded: ", &v50, &v51);
    std::runtime_error::runtime_error(exception, &v51);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = objc_msgSend_leafSceneClassificationVocabularyName(self->_configuration, v12, v13, v14, v15);
  v18 = sub_1AC063EC8(v6);
  v22 = objc_msgSend__vocabularyNamed_(v11, v19, v17, v20, v21);
  v27 = objc_msgSend_internalCount(v22, v23, v24, v25, v26);

  if (v18[12] != v27)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    v41 = v18;
    v42 = v40;
    std::to_string(&v48, v41[12]);
    sub_1AC063E68("Number of channels ", &v48, &v49);
    sub_1AC063FAC(" in supplied likelihood buffer does not match the expected number ", &v49, &v50);
    std::to_string(&v47, v27);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v47;
    }

    else
    {
      v43 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v50, v43, size);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v42, &v51);
    __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AC09BD2C(v11, v17, v18, retstr);

  return result;
}

- (BOOL)enumerateSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  likelihoodsCopy = likelihoods;
  blockCopy = block;
  v17 = objc_msgSend_sceneTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v46 = objc_msgSend_leafSceneClassificationVocabularyName(self->_configuration, v13, v14, v15, v16);
    v22 = objc_msgSend_hierarchicalSceneClassificationVocabularyName(self->_configuration, v18, v19, v20, v21);
    objc_msgSend_computeAllSceneClassificationLikelihoods_(self, v23, likelihoodsCopy, v24, v25);
    v26 = v51;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v52[0] = v46;
    v52[1] = v22;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v52, 2, v28);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v47, v53, 16);
    if (v34)
    {
      v35 = *v48;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = objc_msgSend__vocabularyNamed_(v17, v31, *(*(&v47 + 1) + 8 * i), v32, v33);
          started = objc_msgSend_startIndex(v37, v38, v39, v40, v41);
          sub_1AC0642AC(v37, v26 + 4 * started, blockCopy);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v47, v53, 16);
      }

      while (v34);
    }

    if (v26)
    {
      operator delete(v26);
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

- (id)allSceneClassificationLikelihoods:(id)likelihoods error:(id *)error
{
  likelihoodsCopy = likelihoods;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC0644F4;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateSceneClassificationLikelihoods_usingBlock_error_(self, v9, likelihoodsCopy, v13, error))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)allSceneClassificationLikelihoods:(id)likelihoods
{
  v4 = objc_msgSend_allSceneClassificationLikelihoods_error_(self, a2, likelihoods, 0, v3);

  return v4;
}

- (BOOL)enumerateLeafSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error
{
  likelihoodsCopy = likelihoods;
  blockCopy = block;
  v17 = objc_msgSend_sceneTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_leafSceneClassificationVocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC063EC8(likelihoodsCopy);
    sub_1AC09B578(v17, v18, v19, blockCopy);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)enumerateHierarchicalSceneClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error
{
  likelihoodsCopy = likelihoods;
  blockCopy = block;
  v17 = objc_msgSend_sceneTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_hierarchicalSceneClassificationVocabularyName(self->_configuration, v13, v14, v15, v16);
    objc_msgSend_computeAllSceneClassificationLikelihoods_(self, v19, likelihoodsCopy, v20, v21);
    v25 = objc_msgSend__vocabularyNamed_(v17, v22, v18, v23, v24);
    started = objc_msgSend_startIndex(v25, v26, v27, v28, v29);
    sub_1AC0642AC(v25, v33 + 4 * started, blockCopy);

    if (v33)
    {
      operator delete(v33);
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)allAestheticsAttributeScores:(id)scores error:(id *)error
{
  scoresCopy = scores;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC0649A4;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateAestheticsAttributeScores_usingBlock_error_(self, v9, scoresCopy, v13, error))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)allAestheticsAttributeScores:(id)scores
{
  v4 = objc_msgSend_allAestheticsAttributeScores_error_(self, a2, scores, 0, v3);

  return v4;
}

- (id)allAestheticsGlobalScores:(id)scores error:(id *)error
{
  scoresCopy = scores;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC064B78;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateAestheticsGlobalScores_usingBlock_error_(self, v9, scoresCopy, v13, error))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)allAestheticsGlobalScores:(id)scores
{
  v4 = objc_msgSend_allAestheticsGlobalScores_error_(self, a2, scores, 0, v3);

  return v4;
}

- (BOOL)enumerateAestheticsAttributeScores:(id)scores usingBlock:(id)block error:(id *)error
{
  scoresCopy = scores;
  blockCopy = block;
  v17 = objc_msgSend_aestheticsTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_aestheticsAttributeVocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC063EC8(scoresCopy);
    sub_1AC09B578(v17, v18, v19, blockCopy);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)enumerateAestheticsGlobalScores:(id)scores usingBlock:(id)block error:(id *)error
{
  scoresCopy = scores;
  blockCopy = block;
  v17 = objc_msgSend_aestheticsTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_aestheticsGlobalScoreVocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC063EC8(scoresCopy);
    sub_1AC09B578(v17, v18, v19, blockCopy);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)detectionResultFromScoreHeatMap:(id)map coordinateOffsetMap:(id)offsetMap
{
  mapCopy = map;
  offsetMapCopy = offsetMap;
  v8 = objc_alloc_init(CSUObjectDetectionOptions);
  v10 = objc_msgSend_detectionResultFromScoreHeatMap_coordinateOffsetMap_options_error_(self, v9, mapCopy, offsetMapCopy, v8, 0);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = v12;

  return v12;
}

- (id)detectionResultFromScoreHeatMap:(id)map coordinateOffsetMap:(id)offsetMap options:(id)options error:(id *)error
{
  mapCopy = map;
  offsetMapCopy = offsetMap;
  optionsCopy = options;
  v20 = objc_msgSend_detectionTaxonomyWithError_(self->_configuration, v13, error, v14, v15);
  if (v20)
  {
    v55 = 0;
    objc_msgSend_detectionForegroundThreshold(optionsCopy, v16, v17, v18, v19);
    if (v25 > 0.0)
    {
      IsSoftmax = objc_msgSend_detectionHeadIsSoftmax(self->_configuration, v21, v22, v23, v24);
      v31 = objc_msgSend_detectionVocabularyName(self->_configuration, v27, v28, v29, v30);
      v36 = objc_msgSend_relevantClassNames(optionsCopy, v32, v33, v34, v35);
      objc_msgSend_detectionForegroundThreshold(optionsCopy, v37, v38, v39, v40);
      sub_1AC09C0DC(IsSoftmax, v20, v31, v36, v41 | 0x100000000, v54);
      operator new();
    }

    v42 = objc_msgSend_detectionHeadIsSoftmax(self->_configuration, v21, v22, v23, v24);
    v47 = objc_msgSend_detectionVocabularyName(self->_configuration, v43, v44, v45, v46);
    v52 = objc_msgSend_relevantClassNames(optionsCopy, v48, v49, v50, v51);
    sub_1AC09C0DC(v42, v20, v47, v52, 0, v54);
    operator new();
  }

  return 0;
}

- (__CVBuffer)pixelBufferForSaliencyMap:(id)map error:(id *)error
{
  mapCopy = map;
  v5 = sub_1AC063EC8(mapCopy);
  v7 = v5[10];
  v6 = v5[11];
  v42[0] = 0;
  v43 = 0;
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid dimensions requested for CVPixelBuffer creation.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  pixelBufferOut = 0;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v46 = Mutable;
  v11 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = *MEMORY[0x1E69660D8];
  v45.__r_.__value_.__r.__words[0] = v11;
  CFDictionarySetValue(Mutable, v12, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v43 == 1)
  {
    v13 = CFNumberCreate(v9, kCFNumberSInt64Type, v42);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6966020], v13);
    CFRelease(v13);
  }

  v14 = CVPixelBufferCreate(v9, v7, v6, 0x4C303066u, Mutable, &pixelBufferOut);
  if (v14)
  {
    v39 = v14;
    v40 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v44, v39);
    sub_1AC063E68("Failed to create CVPixelBuffer. Status = ", &v44, &v45);
    std::runtime_error::runtime_error(v40, &v45);
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = pixelBufferOut;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CVPixelBufferLockBaseAddress(v15, 0))
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Failed to lock pixel buffer.");
    goto LABEL_49;
  }

  v16 = v5[16];
  BytesPerRow = CVPixelBufferGetBytesPerRow(v15);
  v18 = *v5;
  BaseAddress = CVPixelBufferGetBaseAddress(v15);
  v20 = 4 * v16;
  if (v7 > 7)
  {
    v23 = v18 >= &BaseAddress[4 * v7 + BytesPerRow * (v6 - 1)] || BaseAddress >= v18 + 4 * (v7 + v16 * (v6 - 1));
    if (!v23 || ((BytesPerRow | v20) & 0x8000000000000000) != 0)
    {
      v29 = 0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          *&BaseAddress[4 * i] = *(v18 + 4 * i);
        }

        v18 += v20;
        BaseAddress += BytesPerRow;
        ++v29;
      }

      while (v29 != v6);
    }

    else if (v7 == (v7 & 0xFFFFFFFFFFFFFFF8))
    {
      v24 = 0;
      do
      {
        v25 = 0;
        v26 = v7 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v27 = *(v18 + v25 + 16);
          v28 = &BaseAddress[v25];
          *v28 = *(v18 + v25);
          *(v28 + 1) = v27;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        v18 += v20;
        BaseAddress += BytesPerRow;
        ++v24;
      }

      while (v24 != v6);
    }

    else
    {
      v31 = 0;
      do
      {
        v32 = 0;
        v33 = v7 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v34 = *(v18 + v32 + 16);
          v35 = &BaseAddress[v32];
          *v35 = *(v18 + v32);
          *(v35 + 1) = v34;
          v32 += 32;
          v33 -= 8;
        }

        while (v33);
        v36 = v7 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          *&BaseAddress[4 * v36] = *(v18 + 4 * v36);
          ++v36;
        }

        while (v7 != v36);
        v18 += v20;
        BaseAddress += BytesPerRow;
        ++v31;
      }

      while (v31 != v6);
    }
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = 0;
      do
      {
        *&BaseAddress[4 * v22] = *(v18 + 4 * v22);
        ++v22;
      }

      while (v7 != v22);
      v18 += v20;
      BaseAddress += BytesPerRow;
      ++v21;
    }

    while (v21 != v6);
  }

  if (CVPixelBufferUnlockBaseAddress(v15, 0))
  {
    v41 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v41, "Failed to unlock pixel buffer.");
LABEL_49:
    __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v15;
}

- (id)hashesFromFingerprintEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v5 = sub_1AC063EC8(embeddingCopy);
  v6 = *v5;
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_1AC0706F8(self->_fingerprinter.__ptr_, v6, v5[11] * v5[10] * v5[12], &__p);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = __p;
  v11 = v24;
  if (__p != v24)
  {
    do
    {
      v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, *v10, v10[1] - *v10, v8);
      objc_msgSend_addObject_(v9, v13, v12, v14, v15);

      v10 += 3;
    }

    while (v10 != v11);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v24;
    v18 = __p;
    if (v24 != __p)
    {
      v19 = v24;
      do
      {
        v21 = *(v19 - 3);
        v19 -= 3;
        v20 = v21;
        if (v21)
        {
          *(v17 - 2) = v20;
          operator delete(v20);
        }

        v17 = v19;
      }

      while (v19 != v16);
      v18 = __p;
    }

    v24 = v16;
    operator delete(v18);
  }

  return v9;
}

- (id)base64HashesFromFingerprintEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v5 = sub_1AC063EC8(embeddingCopy);
  v6 = *v5;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_1AC0706F8(self->_fingerprinter.__ptr_, v6, v5[11] * v5[10] * v5[12], &v27);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v27;
  v9 = v28;
  if (v27 != v28)
  {
    do
    {
      __p = 0;
      v25 = 0;
      v26 = 0;
      (*(*self->_fingerprinter.__ptr_ + 24))(self->_fingerprinter.__ptr_, *v8, &__p);
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v26 >= 0)
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, p_p, HIBYTE(v26), v11);
      }

      else
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, p_p, v25, v11);
      }
      v13 = ;
      objc_msgSend_addObject_(v7, v14, v13, v15, v16);

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  v17 = v27;
  if (v27)
  {
    v18 = v28;
    v19 = v27;
    if (v28 != v27)
    {
      v20 = v28;
      do
      {
        v22 = *(v20 - 3);
        v20 -= 24;
        v21 = v22;
        if (v22)
        {
          *(v18 - 2) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = v27;
    }

    v28 = v17;
    operator delete(v19);
  }

  return v7;
}

- (BOOL)enumerateEntityNetClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error
{
  likelihoodsCopy = likelihoods;
  blockCopy = block;
  v17 = objc_msgSend_sceneTaxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_entityNetVocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC063EC8(likelihoodsCopy);
    sub_1AC09B578(v17, v18, v19, blockCopy);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)allEntityNetClassificationLikelihoods:(id)likelihoods error:(id *)error
{
  likelihoodsCopy = likelihoods;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC06620C;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateEntityNetClassificationLikelihoods_usingBlock_error_(self, v9, likelihoodsCopy, v13, error))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)allEntityNetClassificationLikelihoods:(id)likelihoods
{
  v4 = objc_msgSend_allEntityNetClassificationLikelihoods_error_(self, a2, likelihoods, 0, v3);

  return v4;
}

- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  v26[11] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v26[0] = 0;
  Resources = objc_msgSend_loadResources_(self, v6, v26, v7, v8);
  v10 = v26[0];
  v15 = v10;
  if (Resources)
  {
    ptr = self->_net.__ptr_;
    v17 = objc_msgSend_inputImageTensorName(self->_configuration, v11, v12, v13, v14);
    v18 = v17;
    v25[7] = objc_msgSend_UTF8String(v17, v19, v20, v21, v22);
    sub_1AC06B064(v25, image);
  }

  completionCopy[2](completionCopy, 0, v10);

  v23 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end