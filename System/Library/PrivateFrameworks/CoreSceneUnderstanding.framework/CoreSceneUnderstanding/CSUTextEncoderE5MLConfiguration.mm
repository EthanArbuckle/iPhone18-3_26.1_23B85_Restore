@interface CSUTextEncoderE5MLConfiguration
+ (id)TextEncoderE5MLConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (id)availableRevisions;
+ (id)getConfigurationForRevision_v1_2_EnglishWithError:(id *)a3;
+ (id)getConfigurationForRevision_v7_0_Tier0WithError:(id *)a3;
+ (id)getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError:(id *)a3;
+ (id)getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError:(id *)a3;
+ (id)getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError:(id *)a3;
+ (id)overrideWithSideLoadedPathForTokenEmbeddingModel:(id)a3 TextEmbeddingModel:(id)a4;
- (BOOL)isTextEncoderE5MLPresentForTextEncoderVersion:(id)a3 forTextEncoderName:(id)a4;
- (id)initTextEncoderV1ConfigurationForRevision:(int64_t)a3 vocabularyModelPath:(id)a4 tokenEmbeddingNetworkPath:(id)a5 textEncoderNetworkPath:(id)a6 encoderParams:(id)a7;
@end

@implementation CSUTextEncoderE5MLConfiguration

- (BOOL)isTextEncoderE5MLPresentForTextEncoderVersion:(id)a3 forTextEncoderName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"SystemSearch/%@/", v14, v15, v5);
  v22 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v17, v6, @"mlmodelc", v16);
  if (v22)
  {
    v23 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19, v20, v21);
    v27 = objc_msgSend_fileExistsAtPath_(v23, v24, v22, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError:(id *)a3
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"t5_base", @"model", @"SystemSearch/v1.2.0/");
  if (v14)
  {
    v15 = [a1 alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v15, v16, 2, v14, @"md1_e5_3outputs_token_embed_fp32inOut.mlmodelc", @"md1_e5_3outputs_text_model_fp16outs_only.mlmodelc", &unk_1F20DF058);
  }

  else if (a3)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *a3 = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)getConfigurationForRevision_v1_2_EnglishWithError:(id *)a3
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"t5_base", @"model", @"SystemSearch/v1.2.0/");
  if (v14)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v12, @"SystemSearch_v1.2.0_ac4rja6ikq-15000_token-embed-en", @"mlmodelc", @"SystemSearch/v1.2.0/");
    if (v17)
    {
      v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v15, @"SystemSearch_v1.2.0_ac4rja6ikq-15000_text-encoder-en", @"mlmodelc", @"SystemSearch/v1.2.0/");
      if (v20)
      {
        v21 = [a1 alloc];
        inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v21, v22, 2, v14, v17, v20, &unk_1F20DF080);
      }

      else if (a3)
      {
        objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v18, @"text embedding model file not found in bundle!", 0, v19);
        *a3 = inited = 0;
      }

      else
      {
        inited = 0;
      }
    }

    else if (a3)
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v15, @"token embedding model file not found in bundle!", 0, v16);
      *a3 = inited = 0;
    }

    else
    {
      inited = 0;
    }
  }

  else if (a3)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *a3 = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)overrideWithSideLoadedPathForTokenEmbeddingModel:(id)a3 TextEmbeddingModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8, v9, v10);
  v15 = objc_msgSend_stringByAppendingPathComponent_(@"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", v12, v5, v13, v14);
  if (objc_msgSend_fileExistsAtPath_(v11, v16, v15, v17, v18))
  {
    v22 = objc_msgSend_stringByAppendingPathComponent_(@"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", v19, v6, v20, v21);
    if (objc_msgSend_fileExistsAtPath_(v11, v23, v22, v24, v25))
    {
      v28 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v26, @"private/var/mobile/Library/Application Support/com.apple.VisualGeneration/OVERRIDE", 1, v27);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError:(id *)a3
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"omnie_t0_50k_mmap", @"model", @"SystemSearch/v5.0.0/");
  if (v14)
  {
    v15 = [a1 alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v15, v16, 5, v14, @"token_model_md4_mubb.mlmodelc", @"text_model_md4_mubb.mlmodelc", &unk_1F20DF0A8);
  }

  else if (a3)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *a3 = inited = 0;
  }

  else
  {
    inited = 0;
  }

  return inited;
}

+ (id)getConfigurationForRevision_v7_0_Tier0WithError:(id *)a3
{
  v44[11] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"spm_omnie_md7_v02_100k_mmap", @"model", @"SystemSearch/v7.0.0/");
  if (v14)
  {
    v15 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v12, @"token_md7_6bit", @"mlmodelc", @"SystemSearch/v7.0.0/");
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"file://%@", v17, v18, v15);

    if (v19)
    {
      v25 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v20, @"text_md7_6bit_ctx_512_77", @"mlmodelc", @"SystemSearch/v7.0.0/");
      if (v25)
      {
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"file://%@", v23, v24, v25);

        v43[0] = @"contextLength";
        v43[1] = @"maxSeqLen";
        v44[0] = &unk_1F20DEC80;
        v44[1] = &unk_1F20DEC98;
        v43[2] = @"tokenEmbedLen";
        v43[3] = @"numCustomTokens";
        v44[2] = &unk_1F20DECE0;
        v44[3] = &unk_1F20DECB0;
        v43[4] = @"text_embed_shape";
        v43[5] = @"text_embed_width";
        v44[4] = &unk_1F20DEEA8;
        v44[5] = &unk_1F20DEC98;
        v43[6] = @"text_embed_height";
        v43[7] = @"usePrecompiledBundleForMacOS";
        v44[6] = &unk_1F20DECC8;
        v44[7] = MEMORY[0x1E695E110];
        v44[8] = @"main_ctx_77";
        v43[8] = @"e5function";
        v43[9] = @"e5functionsAvailable";
        v41[0] = &unk_1F20DEC98;
        v41[1] = &unk_1F20DEC80;
        v42[0] = @"main_ctx_512";
        v42[1] = @"main_ctx_77";
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v42, v41, 2);
        v44[9] = v28;
        v43[10] = @"default_compute_units";
        v32 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, 0, v30, v31);
        v44[10] = v32;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v44, v43, 11);

        v35 = [a1 alloc];
        inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v35, v36, 7, v14, v19, v26, v34);

LABEL_13:
        goto LABEL_14;
      }

      if (a3)
      {
        v38 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v22, @"text embedding model file not found in bundle!", 0, v24);
        goto LABEL_11;
      }
    }

    else if (a3)
    {
      v38 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v20, @"token embedding model file not found in bundle!", 0, v21);
LABEL_11:
      inited = 0;
      *a3 = v38;
      goto LABEL_13;
    }

    inited = 0;
    goto LABEL_13;
  }

  if (a3)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *a3 = inited = 0;
  }

  else
  {
    inited = 0;
  }

LABEL_14:

  v39 = *MEMORY[0x1E69E9840];

  return inited;
}

+ (id)getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError:(id *)a3
{
  v30[11] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  v6 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v7, v6, v8, v9);
  v14 = objc_msgSend_pathForResource_ofType_inDirectory_(v10, v11, @"spm_omnie_md6_v01_100k_mmap", @"model", @"VisualGeneration/v10-revision1/");
  if (v14)
  {
    v29[0] = @"contextLength";
    v29[1] = @"maxSeqLen";
    v30[0] = &unk_1F20DECF8;
    v30[1] = &unk_1F20DECF8;
    v29[2] = @"tokenEmbedLen";
    v29[3] = @"numCustomTokens";
    v30[2] = &unk_1F20DECE0;
    v30[3] = &unk_1F20DECB0;
    v29[4] = @"text_embed_shape";
    v29[5] = @"text_embed_width";
    v30[4] = &unk_1F20DEEC0;
    v30[5] = &unk_1F20DEC98;
    v29[6] = @"text_embed_height";
    v29[7] = @"usePrecompiledBundleForMacOS";
    v30[6] = &unk_1F20DECC8;
    v30[7] = MEMORY[0x1E695E118];
    v30[8] = @"main_ctx_128";
    v29[8] = @"e5function";
    v29[9] = @"e5functionsAvailable";
    v27[0] = &unk_1F20DECF8;
    v27[1] = &unk_1F20DEC80;
    v28[0] = @"main_ctx_128";
    v28[1] = @"main_ctx_77";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v28, v27, 2);
    v30[9] = v15;
    v29[10] = @"default_compute_units";
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, 0, v17, v18);
    v30[10] = v19;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v30, v29, 11);

    v22 = [a1 alloc];
    inited = objc_msgSend_initTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_encoderParams_(v22, v23, 8, v14, @"token_ADM_md6.mlmodelc", @"text_ADM_md6_ctx_128_77.mlmodelc", v21);
  }

  else if (a3)
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v12, @"Vocabulary model file not found in bundle!", 0, v13);
    *a3 = inited = 0;
  }

  else
  {
    inited = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return inited;
}

+ (id)TextEncoderE5MLConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  v8 = objc_msgSend__resolvedRevision_(a1, a2, a3, a4, v4);
  if (v8 > 6)
  {
    if (v8 == 7)
    {
      v12 = objc_msgSend_getConfigurationForRevision_v7_0_Tier0WithError_(a1, v9, a4, v10, v11);
    }

    else
    {
      if (v8 != 8)
      {
LABEL_12:
        if (a4)
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a3, v10, v11);
          v19 = objc_msgSend_stringWithFormat_(v14, v16, @"Unsupported TextEncoderE5ML revision %@", v17, v18, v15);
          *a4 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v20, v19, v21, v22);
        }

        v12 = 0;

        return v12;
      }

      v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_ADM_v10Revision_v1WithError_(a1, v9, a4, v10, v11);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 5)
      {
        v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_v4_1_Tier0WithError_(a1, v9, a4, v10, v11);

        return v12;
      }

      goto LABEL_12;
    }

    v12 = objc_msgSend_getConfigurationFromModelCatalogForRevision_v1_2_EnglishWithError_(a1, v9, a4, v10, v11);
  }

  return v12;
}

- (id)initTextEncoderV1ConfigurationForRevision:(int64_t)a3 vocabularyModelPath:(id)a4 tokenEmbeddingNetworkPath:(id)a5 textEncoderNetworkPath:(id)a6 encoderParams:(id)a7
{
  v221 = *MEMORY[0x1E69E9840];
  v203 = a4;
  v204 = a5;
  v205 = a6;
  v210 = a7;
  v215.receiver = self;
  v215.super_class = CSUTextEncoderE5MLConfiguration;
  v208 = [(CSUTextEncoderE5MLConfiguration *)&v215 init];
  if (v208)
  {
    *(v208 + 6) = a3;
    v16 = objc_msgSend_copy(v203, v12, v13, v14, v15);
    v17 = *(v208 + 7);
    *(v208 + 7) = v16;

    v21 = objc_msgSend_objectForKeyedSubscript_(v210, v18, @"contextLength", v19, v20);
    *(v208 + 2) = objc_msgSend_unsignedLongValue(v21, v22, v23, v24, v25);

    v29 = objc_msgSend_objectForKeyedSubscript_(v210, v26, @"maxSeqLen", v27, v28);
    *(v208 + 12) = objc_msgSend_unsignedLongValue(v29, v30, v31, v32, v33);

    *(v208 + 5) = 257;
    v34 = *(v208 + 20);
    *(v208 + 20) = @"text_ids";

    v35 = *(v208 + 8);
    *(v208 + 8) = 0;

    v40 = objc_msgSend_copy(v204, v36, v37, v38, v39);
    v41 = *(v208 + 9);
    *(v208 + 9) = v40;

    v42 = *(v208 + 10);
    *(v208 + 10) = 0;

    v47 = objc_msgSend_copy(v205, v43, v44, v45, v46);
    v48 = *(v208 + 11);
    *(v208 + 11) = v47;

    v49 = objc_opt_class();
    obj = objc_msgSend_overrideWithSideLoadedPathForTokenEmbeddingModel_TextEmbeddingModel_(v49, v50, *(v208 + 9), *(v208 + 11), v51);
    objc_storeStrong(v208 + 10, obj);
    objc_storeStrong(v208 + 8, obj);
    v52 = v208;
    *(v208 + 8) = 0;
    if (obj)
    {
      v53 = sub_1AC090E50();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v58 = objc_msgSend_absoluteString(obj, v54, v55, v56, v57);
        *buf = 138412290;
        v220 = v58;
        _os_log_impl(&dword_1AC05D000, v53, OS_LOG_TYPE_INFO, "Models side loaded from %@", buf, 0xCu);
      }

      v52 = v208;
      *(v208 + 8) = 1;
    }

    v59 = v52[21];
    v52[21] = @"token_embed";

    v63 = objc_msgSend_objectForKeyedSubscript_(v210, v60, @"tokenEmbedLen", v61, v62);
    *(v208 + 13) = objc_msgSend_unsignedLongValue(v63, v64, v65, v66, v67);

    v71 = objc_msgSend_objectForKeyedSubscript_(v210, v68, @"numCustomTokens", v69, v70);
    *(v208 + 14) = objc_msgSend_unsignedLongValue(v71, v72, v73, v74, v75);

    v79 = objc_msgSend_objectForKeyedSubscript_(v210, v76, @"usePrecompiledBundleForMacOS", v77, v78);
    *(v208 + 9) = objc_msgSend_BOOLValue(v79, v80, v81, v82, v83);

    v84 = objc_opt_new();
    v85 = *(v208 + 17);
    *(v208 + 17) = v84;

    v89 = objc_msgSend_objectForKeyedSubscript_(v210, v86, @"text_embed_shape", v87, v88);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 17), v90, v89, @"text_embed", v91);

    v92 = objc_opt_new();
    v93 = *(v208 + 18);
    *(v208 + 18) = v92;

    v97 = objc_msgSend_objectForKeyedSubscript_(v210, v94, @"text_embed_width", v95, v96);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 18), v98, v97, @"text_embed", v99);

    v100 = objc_opt_new();
    v101 = *(v208 + 19);
    *(v208 + 19) = v100;

    v105 = objc_msgSend_objectForKeyedSubscript_(v210, v102, @"text_embed_height", v103, v104);
    objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 19), v106, v105, @"text_embed", v107);

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v207 = *(v208 + 3);
    v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v108, &v211, v218, 16);
    if (v112)
    {
      v209 = *v212;
      do
      {
        for (i = 0; i != v112; ++i)
        {
          if (*v212 != v209)
          {
            objc_enumerationMutation(v207);
          }

          v114 = *(*(&v211 + 1) + 8 * i);
          v115 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v109, @"%@_shape", v110, v111, v114);
          v122 = objc_msgSend_objectForKey_(v210, v116, v115, v117, v118);
          if (!v122)
          {
            goto LABEL_10;
          }

          v123 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v119, @"%@_width", v120, v121, v114);
          v130 = objc_msgSend_objectForKey_(v210, v124, v123, v125, v126);
          if (!v130)
          {

            goto LABEL_9;
          }

          v131 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v127, @"%@_height", v128, v129, v114);
          v135 = objc_msgSend_objectForKey_(v210, v132, v131, v133, v134);
          v136 = v135 == 0;

          if (!v136)
          {
            v137 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v109, @"%@_shape", v110, v111, v114);
            v141 = objc_msgSend_objectForKeyedSubscript_(v210, v138, v137, v139, v140);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 17), v142, v141, v114, v143);

            v147 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v144, @"%@_width", v145, v146, v114);
            v151 = objc_msgSend_objectForKeyedSubscript_(v210, v148, v147, v149, v150);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 18), v152, v151, v114, v153);

            v115 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v154, @"%@_height", v155, v156, v114);
            v122 = objc_msgSend_objectForKeyedSubscript_(v210, v157, v115, v158, v159);
            objc_msgSend_setObject_forKeyedSubscript_(*(v208 + 19), v160, v122, v114, v161);
LABEL_9:

LABEL_10:
            continue;
          }
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v109, &v211, v218, 16);
      }

      while (v112);
    }

    v162 = *(v208 + 22);
    *(v208 + 22) = @"token_embed";

    v163 = *(v208 + 23);
    *(v208 + 23) = @"indices";

    v164 = *(v208 + 24);
    *(v208 + 24) = @"text_embed";

    v165 = *(v208 + 25);
    *(v208 + 25) = @"input_tranpose";

    v169 = objc_msgSend_objectForKey_(v210, v166, @"e5function", v167, v168);
    v170 = v169 == 0;

    if (v170)
    {
      *(v208 + 4) = @"main";
    }

    else
    {
      v174 = objc_msgSend_objectForKeyedSubscript_(v210, v171, @"e5function", v172, v173);
      *(v208 + 4) = v174;
    }

    v175 = objc_msgSend_objectForKey_(v210, v171, @"e5functionsAvailable", v172, v173);
    v176 = v175 == 0;

    if (v176)
    {
      v181 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v177, *(v208 + 12), v178, v179);
      v182 = *(v208 + 4);
      v216 = v181;
      v217 = v182;
      v184 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v183, &v217, &v216, 1);
      *(v208 + 5) = v184;

      v180 = v181;
    }

    else
    {
      v180 = objc_msgSend_objectForKeyedSubscript_(v210, v177, @"e5functionsAvailable", v178, v179);
      *(v208 + 5) = v180;
    }

    v188 = objc_msgSend_objectForKey_(v210, v185, @"default_compute_units", v186, v187);
    v189 = v188 == 0;

    if (v189)
    {
      v198 = 1;
      v199 = v208;
      *(v208 + 16) = 1;
    }

    else
    {
      v193 = objc_msgSend_objectForKeyedSubscript_(v210, v190, @"default_compute_units", v191, v192);
      *(v208 + 16) = objc_msgSend_integerValue(v193, v194, v195, v196, v197);

      v198 = *(v208 + 16);
      v199 = v208;
    }

    v199[15] = v198;
    v200 = v199;
  }

  v201 = *MEMORY[0x1E69E9840];
  return v208;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 2, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 4, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 5, v10, v11);
  v16 = objc_msgSend_copy(v2, v12, v13, v14, v15);

  return v16;
}

@end