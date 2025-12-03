@interface CSUImageCaptioningDecoderConfiguration
+ (id)CSUImageCaptioningDecoderConfigurationForRevision:(int64_t)revision saveDecoderFeatures:(BOOL)features error:(id *)error;
+ (id)availableRevisions;
+ (id)createCSUImageCaptioningDecoderConfigurationWithConfigPath:(id)path error:(id *)error;
+ (id)createCSUImageCaptioningDecoderConfigurationWithDecoderEspressoPath:(id)path decoderNetworkParams:(id)params bridgeNetworkPath:(id)networkPath bridgeNetworkParams:(id)networkParams vocabularyPath:(id)vocabularyPath useRuntimeEngine:(int64_t)engine runtimeParamsPath:(id)paramsPath error:(id *)self0;
+ (int64_t)_resolvedRevision:(int64_t)revision;
- (id)initImageCaptioningDecoderConfigurationForRevision:(int64_t)revision runtimeEngine:(int64_t)engine espressoNetPath:(id)path vocabularyModelPath:(id)modelPath inputEncodedFeaturesTensorName:(id)name inputWordIdsTensorName:(id)tensorName outputWordProbsTensorName:(id)probsTensorName decoderEmbeddingShape:(id)self0 decoderInputSeqShape:(id)self1 decoderIsPrecompiled:(BOOL)self2 saveDecoderFeatures:(BOOL)self3 bridgeNetworkPath:(id)self4 inputEncodedFeaturesTensorNameOfBridge:(id)self5 outputTensorNameOfBridge:(id)self6 bridgeInputShape:(id)self7 bridgeIsPrecompiled:(BOOL)self8 runtimeParamsPath:(id)self9;
- (int)espressoExecutionEngine;
@end

@implementation CSUImageCaptioningDecoderConfiguration

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

+ (id)CSUImageCaptioningDecoderConfigurationForRevision:(int64_t)revision saveDecoderFeatures:(BOOL)features error:(id *)error
{
  v8 = MEMORY[0x1E696AAE8];
  v9 = objc_opt_class();
  v119 = objc_msgSend_bundleForClass_(v8, v10, v9, v11, v12);
  v16 = objc_msgSend__resolvedRevision_(self, v13, revision, v14, v15);
  v20 = v16;
  if (v16 > 8)
  {
    if (v16 <= 10)
    {
      v21 = v119;
      if (v16 == 9)
      {
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v64, @"ImageCaptioningMD5_jf7fjab8py-1414", v65, v66);
        objc_msgSend_stringByAppendingPathComponent_(v26, v67, @"ImageCaptioning_Safe.config.json", v68, v69);
      }

      else
      {
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v54, @"ImageCaptioningMD5_jf7fjab8py-1414", v55, v56);
        objc_msgSend_stringByAppendingPathComponent_(v26, v57, @"ImageCaptioning_GP_PeopleDetection.config.json", v58, v59);
      }
      v30 = ;
      v33 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(self, v60, v30, error, v61);
      goto LABEL_25;
    }

    switch(v16)
    {
      case 11:
        v21 = v119;
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v88, @"ImageCaptioningMD7_iyz2icc7y5-1200", v89, v90);
        v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v91, @"ImageCaptioning.config.json", v92, v93);
        v33 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(self, v94, v30, error, v95);
        break;
      case 12:
        v21 = v119;
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v99, @"ImageCaptioningMD7_iyz2icc7y5-1200", v100, v101);
        v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v102, @"ImageCaptioning_Safe.config.json", v103, v104);
        v33 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(self, v105, v30, error, v106);
        break;
      case 13:
        v21 = v119;
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v34, @"ImageCaptioningMD7_iyz2icc7y5-1200", v35, v36);
        v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v37, @"ImageCaptioning_GP_PeopleDetection.config.json", v38, v39);
        v33 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(self, v40, v30, error, v41);
        break;
      default:
        goto LABEL_30;
    }

LABEL_25:
    IsPrecompiled_runtimeParamsPath = v33;

LABEL_26:
    v51 = 0;
    v52 = 0;
    v49 = 0;
    goto LABEL_27;
  }

  if (v16 > 5)
  {
    if (v16 != 6)
    {
      v21 = v119;
      if (v16 == 7)
      {
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        objc_msgSend_stringByAppendingPathComponent_(v22, v96, @"ImageCaptioningMD4_s3xsc4vvsa-34701", v97, v98);
      }

      else
      {
        v22 = objc_msgSend_pathForResource_ofType_(v119, v17, @"image_captioning", &stru_1F20D3148, v19);
        objc_msgSend_stringByAppendingPathComponent_(v22, v23, @"ImageCaptioningMD5_jf7fjab8py-1414", v24, v25);
      }
      v26 = ;
      v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, @"ImageCaptioning.config.json", v28, v29);
      v33 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithConfigPath_error_(self, v31, v30, error, v32);
      goto LABEL_25;
    }

    v70 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"video_captioning/%@", v18, v19, @"VideoCaptioning_v3.0.0_nm8r5qngqf-94830");
    v117 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v71, @"%@_bridge_quant", v72, v73, @"VideoCaptioning_v3.0.0_nm8r5qngqf-94830");
    v77 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74, @"%@_decoder_quant", v75, v76, @"VideoCaptioning_v3.0.0_nm8r5qngqf-94830");
    v81 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78, @"%@.reverse_vocab", v79, v80, @"VideoCaptioning_v3.0.0_nm8r5qngqf-94830");
    v51 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v82, v117, @"espresso.net", v70);
    v49 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v83, v77, @"espresso.net", v70);
    v52 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v84, v81, @"json", v70);

    v116 = @"input_seq";
    v47 = @"captioning_decoder/word_probs";
    v48 = @"encoder_embed";
    v50 = @"image_encoder_head/out";
    v53 = &unk_1F20DEFF8;
    v46 = @"encoder_embed";
LABEL_21:
    v85 = [self alloc];
    HIBYTE(v115) = features;
    LOBYTE(v115) = 0;
    IsPrecompiled_runtimeParamsPath = objc_msgSend_initImageCaptioningDecoderConfigurationForRevision_runtimeEngine_espressoNetPath_vocabularyModelPath_inputEncodedFeaturesTensorName_inputWordIdsTensorName_outputWordProbsTensorName_decoderEmbeddingShape_decoderInputSeqShape_decoderIsPrecompiled_saveDecoderFeatures_bridgeNetworkPath_inputEncodedFeaturesTensorNameOfBridge_outputTensorNameOfBridge_bridgeInputShape_bridgeIsPrecompiled_runtimeParamsPath_(v85, v86, v20, 1, v49, v52, v46, v116, v47, 0, v53, v115, v51, v48, v50, 0, 0, 0);
    v21 = v119;
    goto LABEL_27;
  }

  if (v16 == 1)
  {
    v62 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v17, @"ImageCaptioning-ax_v1.0.0_decoder_quantized", @"espresso.net", @"ImageCaptioning-ax_v1.0.0");
    v51 = 0;
    objc_msgSend_pathForResource_ofType_inDirectory_(v119, v63, @"ImageCaptioning-ax_v1.0.0.reverse_vocab", @"json", @"ImageCaptioning-ax_v1.0.0");
    v46 = @"att_feats_placeholder";
    v116 = @"in_word_ids";
    v47 = @"word_probs";
    v50 = 0;
    v52 = v48 = 0;
    v49 = v62;
    v53 = &unk_1F20DEFC8;
    goto LABEL_21;
  }

  if (v16 == 5)
  {
    v42 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v17, @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222_bridge_stage2_quantized", @"espresso.net", @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222");
    v44 = objc_msgSend_pathForResource_ofType_inDirectory_(v119, v43, @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222_decoder_stage2_quantized", @"espresso.net", @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222");
    objc_msgSend_pathForResource_ofType_inDirectory_(v119, v45, @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222.reverse_vocab", @"json", @"ImageCaptioning-mica_v3.0.0_ya2ywy3nyz-40222");
    v46 = @"encoder_embed";
    v116 = @"input_seq";
    v47 = @"captioning_decoder/word_probs";
    v48 = @"bridge_input";
    v49 = v44;
    v50 = @"image_encoder_head/out";
    v52 = v51 = v42;
    v53 = &unk_1F20DEFE0;
    goto LABEL_21;
  }

LABEL_30:
  if (error)
  {
    v108 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, revision, v18, v19);
    v26 = objc_msgSend_stringWithFormat_(v108, v109, @"Unsupported captioning image decoder revision %@", v110, v111, v22);
    v21 = v119;
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v112, v26, v113, v114);
    *error = IsPrecompiled_runtimeParamsPath = 0;
    goto LABEL_26;
  }

  v51 = 0;
  v52 = 0;
  v49 = 0;
  IsPrecompiled_runtimeParamsPath = 0;
  v21 = v119;
LABEL_27:

  return IsPrecompiled_runtimeParamsPath;
}

+ (id)createCSUImageCaptioningDecoderConfigurationWithConfigPath:(id)path error:(id *)error
{
  v138 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v132 = pathCopy;
  v131 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8, v9, v10);
  v14 = objc_msgSend_fileExistsAtPath_(v131, v11, pathCopy, v12, v13);
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"decoder config file does not exist at path %@", v16, v17, pathCopy);
  v20 = objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v19, v14, error, v18);

  if ((v20 & 1) == 0)
  {
    v58 = 0;
    goto LABEL_40;
  }

  v24 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v21, pathCopy, v22, v23);
  if (objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v25, v24 != 0, error, @"decoder config path could not be read!"))
  {
    v27 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v26, v24, 0, error);
    if (objc_msgSend_CSUAssert_logError_withMessage_(CSUError, v28, v27 != 0, error, @"decoder config path could not be read!"))
    {
      selfCopy = self;
      v130 = v24;
      v33 = objc_msgSend_mutableCopy(MEMORY[0x1E695E0F0], v29, v30, v31, v32);
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F20DF010, v34, &v133, v137, 16);
      if (v39)
      {
        v40 = *v134;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v134 != v40)
            {
              objc_enumerationMutation(&unk_1F20DF010);
            }

            v42 = *(*(&v133 + 1) + 8 * i);
            v43 = objc_msgSend_valueForKey_(v27, v35, v42, v37, v38);
            v44 = v43 == 0;

            if (v44)
            {
              objc_msgSend_addObject_(v33, v35, v42, v37, v38);
            }
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F20DF010, v35, &v133, v137, 16);
        }

        while (v39);
      }

      if (objc_msgSend_count(v33, v35, v36, v37, v38))
      {
        if (!error)
        {
          v58 = 0;
LABEL_38:

          v24 = v130;
          goto LABEL_39;
        }

        v49 = MEMORY[0x1E696AEC0];
        v50 = objc_msgSend_componentsJoinedByString_(v33, v45, @", ", v47, v48);
        v54 = objc_msgSend_stringWithFormat_(v49, v51, @"decoder config missing params: %@", v52, v53, v50);

        objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v55, v54, v56, v57);
        *error = v58 = 0;
      }

      else
      {
        v54 = objc_msgSend_stringByDeletingLastPathComponent(v132, v45, v46, v47, v48);
        v62 = objc_msgSend_objectForKeyedSubscript_(v27, v59, @"decoderNetworkPath", v60, v61);
        v66 = objc_msgSend_stringByAppendingPathComponent_(v54, v63, v62, v64, v65);

        v127 = objc_msgSend_objectForKeyedSubscript_(v27, v67, @"decoderNetworkParams", v68, v69);
        v73 = objc_msgSend_objectForKeyedSubscript_(v27, v70, @"vocabularyPath", v71, v72);
        v126 = objc_msgSend_stringByAppendingPathComponent_(v54, v74, v73, v75, v76);

        v80 = objc_msgSend_objectForKeyedSubscript_(v27, v77, @"bridgeNetworkPath", v78, v79);
        v81 = v80 == 0;

        if (v81)
        {
          v129 = 0;
          v125 = 0;
        }

        else
        {
          v85 = objc_msgSend_objectForKeyedSubscript_(v27, v82, @"bridgeNetworkPath", v83, v84);
          v129 = objc_msgSend_stringByAppendingPathComponent_(v54, v86, v85, v87, v88);

          v92 = objc_msgSend_objectForKeyedSubscript_(v27, v89, @"bridgeNetworkParams", v90, v91);
          v93 = v92 == 0;

          if (v93)
          {
            *error = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v94, @"bridge network params missing", 0, v96);
          }

          v125 = objc_msgSend_objectForKeyedSubscript_(v27, v94, @"bridgeNetworkParams", v95, v96);
        }

        v97 = objc_msgSend_objectForKeyedSubscript_(v27, v82, @"runtime", v83, v84);
        v98 = v97 == 0;

        if (v98)
        {
          v107 = 0;
        }

        else
        {
          v102 = objc_msgSend_objectForKeyedSubscript_(v27, v99, @"runtime", v100, v101);
          isEqualToString = objc_msgSend_isEqualToString_(v102, v103, @"E1", v104, v105);

          if (isEqualToString)
          {
            v107 = 1;
          }

          else
          {
            v108 = objc_msgSend_objectForKeyedSubscript_(v27, v99, @"runtime", v100, v101);
            v112 = objc_msgSend_isEqualToString_(v108, v109, @"AX", v110, v111);

            if (v112)
            {
              v107 = 3;
            }

            else
            {
              v113 = objc_msgSend_objectForKeyedSubscript_(v27, v99, @"runtime", v100, v101);
              v117 = objc_msgSend_isEqualToString_(v113, v114, @"E5", v115, v116);

              if (v117)
              {
                v107 = 2;
              }

              else
              {
                v107 = 0;
              }
            }
          }
        }

        v121 = objc_msgSend_objectForKeyedSubscript_(v27, v99, @"runtimeParamsPath", v100, v101);
        if (v121)
        {
          v122 = objc_msgSend_stringByAppendingPathComponent_(v54, v118, v121, v119, v120);

          v121 = v122;
        }

        v58 = objc_msgSend_createCSUImageCaptioningDecoderConfigurationWithDecoderEspressoPath_decoderNetworkParams_bridgeNetworkPath_bridgeNetworkParams_vocabularyPath_useRuntimeEngine_runtimeParamsPath_error_(selfCopy, v118, v66, v127, v129, v125, v126, v107, v121, error);
      }

      goto LABEL_38;
    }
  }

  else
  {
    v27 = 0;
  }

  v58 = 0;
LABEL_39:

LABEL_40:
  v123 = *MEMORY[0x1E69E9840];

  return v58;
}

+ (id)createCSUImageCaptioningDecoderConfigurationWithDecoderEspressoPath:(id)path decoderNetworkParams:(id)params bridgeNetworkPath:(id)networkPath bridgeNetworkParams:(id)networkParams vocabularyPath:(id)vocabularyPath useRuntimeEngine:(int64_t)engine runtimeParamsPath:(id)paramsPath error:(id *)self0
{
  pathCopy = path;
  paramsCopy = params;
  networkPathCopy = networkPath;
  networkParamsCopy = networkParams;
  vocabularyPathCopy = vocabularyPath;
  paramsPathCopy = paramsPath;
  v135 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v17, v18, v19, v20);
  v25 = objc_msgSend_mutableCopy(MEMORY[0x1E695E0F0], v21, v22, v23, v24);
  if ((objc_msgSend_fileExistsAtPath_(v135, v26, pathCopy, v27, v28) & 1) == 0)
  {
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, @"decoder network file does not exist %@", v30, v31, pathCopy);
    objc_msgSend_addObject_(v25, v33, v32, v34, v35);
  }

  if ((objc_msgSend_fileExistsAtPath_(v135, v29, vocabularyPathCopy, v30, v31) & 1) == 0)
  {
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v36, @"vocabulary file does not exist %@", v37, v38, vocabularyPathCopy);
    objc_msgSend_addObject_(v25, v40, v39, v41, v42);
  }

  v43 = objc_msgSend_valueForKey_(paramsCopy, v36, @"inputEncodedFeaturesTensorName", v37, v38);

  if (!v43)
  {
    objc_msgSend_addObject_(v25, v44, @"decoder config missing params: inputEncodedFeaturesTensorName", v45, v46);
  }

  v47 = objc_msgSend_valueForKey_(paramsCopy, v44, @"inputWordIdsTensorName", v45, v46);

  if (!v47)
  {
    objc_msgSend_addObject_(v25, v48, @"decoder config missing params: inputWordIdsTensorName", v49, v50);
  }

  v51 = objc_msgSend_valueForKey_(paramsCopy, v48, @"outputWordProbsTensorName", v49, v50);

  if (!v51)
  {
    objc_msgSend_addObject_(v25, v52, @"decoder config missing params: outputWordProbsTensorName", v54, v55);
  }

  if (networkPathCopy)
  {
    if ((objc_msgSend_fileExistsAtPath_(v135, v52, networkPathCopy, v54, v55) & 1) == 0)
    {
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"bridge network file does not exist %@", v57, v58, networkPathCopy);
    }

    v60 = objc_msgSend_valueForKey_(networkParamsCopy, v56, @"inputEncodedFeaturesTensorNameOfBridge", v57, v58);

    if (!v60)
    {
      objc_msgSend_addObject_(v25, v61, @"decoder config missing params: inputEncodedFeaturesTensorNameOfBridge", v62, v63);
    }

    v64 = objc_msgSend_valueForKey_(networkParamsCopy, v61, @"outputTensorNameOfBridge", v62, v63);

    if (!v64)
    {
      objc_msgSend_addObject_(v25, v52, @"decoder config missing params: outputTensorNameOfBridge", v54, v55);
    }
  }

  if (!objc_msgSend_count(v25, v52, v53, v54, v55))
  {
    if (!engine)
    {
      hasSuffix = objc_msgSend_hasSuffix_(pathCopy, v65, @".net", v66, v67);
      v79 = 1;
      if (!hasSuffix)
      {
        v79 = 2;
      }

      engine = v79;
    }

    v129 = networkParamsCopy;
    v80 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v65, @"isPrecompiled", v66, v67);
    v85 = objc_msgSend_BOOLValue(v80, v81, v82, v83, v84);

    v89 = objc_msgSend_objectForKeyedSubscript_(networkParamsCopy, v86, @"isPrecompiled", v87, v88);
    v127 = objc_msgSend_BOOLValue(v89, v90, v91, v92, v93);

    v94 = [self alloc];
    v130 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v95, @"inputEncodedFeaturesTensorName", v96, v97);
    v128 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v98, @"inputWordIdsTensorName", v99, v100);
    v104 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v101, @"outputWordProbsTensorName", v102, v103);
    v108 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v105, @"decoderEmbeddingShape", v106, v107);
    v126 = objc_msgSend_objectForKeyedSubscript_(paramsCopy, v109, @"decoderInputSeqShape", v110, v111);
    v115 = objc_msgSend_objectForKeyedSubscript_(networkParamsCopy, v112, @"inputEncodedFeaturesTensorNameOfBridge", v113, v114);
    v119 = objc_msgSend_objectForKeyedSubscript_(networkParamsCopy, v116, @"outputTensorNameOfBridge", v117, v118);
    v123 = objc_msgSend_objectForKeyedSubscript_(networkParamsCopy, v120, @"bridgeInputShape", v121, v122);
    IsPrecompiled_runtimeParamsPath = objc_msgSend_initImageCaptioningDecoderConfigurationForRevision_runtimeEngine_espressoNetPath_vocabularyModelPath_inputEncodedFeaturesTensorName_inputWordIdsTensorName_outputWordProbsTensorName_decoderEmbeddingShape_decoderInputSeqShape_decoderIsPrecompiled_saveDecoderFeatures_bridgeNetworkPath_inputEncodedFeaturesTensorNameOfBridge_outputTensorNameOfBridge_bridgeInputShape_bridgeIsPrecompiled_runtimeParamsPath_(v94, v124, networkPathCopy == 0, engine, pathCopy, vocabularyPathCopy, v130, v128, v104, v108, v126, v85, networkPathCopy, v115, v119, v123, v127, paramsPathCopy);

    networkParamsCopy = v129;
    v73 = v130;
    goto LABEL_26;
  }

  if (error)
  {
    v68 = MEMORY[0x1E696AEC0];
    v69 = objc_msgSend_componentsJoinedByString_(v25, v65, @" ", v66, v67);;
    v73 = objc_msgSend_stringWithFormat_(v68, v70, @"decoder config errors: %@", v71, v72, v69);

    objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v74, v73, v75, v76);
    *error = IsPrecompiled_runtimeParamsPath = 0;
LABEL_26:

    goto LABEL_28;
  }

  IsPrecompiled_runtimeParamsPath = 0;
LABEL_28:

  return IsPrecompiled_runtimeParamsPath;
}

- (id)initImageCaptioningDecoderConfigurationForRevision:(int64_t)revision runtimeEngine:(int64_t)engine espressoNetPath:(id)path vocabularyModelPath:(id)modelPath inputEncodedFeaturesTensorName:(id)name inputWordIdsTensorName:(id)tensorName outputWordProbsTensorName:(id)probsTensorName decoderEmbeddingShape:(id)self0 decoderInputSeqShape:(id)self1 decoderIsPrecompiled:(BOOL)self2 saveDecoderFeatures:(BOOL)self3 bridgeNetworkPath:(id)self4 inputEncodedFeaturesTensorNameOfBridge:(id)self5 outputTensorNameOfBridge:(id)self6 bridgeInputShape:(id)self7 bridgeIsPrecompiled:(BOOL)self8 runtimeParamsPath:(id)self9
{
  pathCopy = path;
  modelPathCopy = modelPath;
  nameCopy = name;
  tensorNameCopy = tensorName;
  probsTensorNameCopy = probsTensorName;
  v24 = modelPathCopy;
  shapeCopy = shape;
  seqShapeCopy = seqShape;
  networkPathCopy = networkPath;
  bridgeCopy = bridge;
  ofBridgeCopy = ofBridge;
  inputShapeCopy = inputShape;
  paramsPathCopy = paramsPath;
  v122.receiver = self;
  v122.super_class = CSUImageCaptioningDecoderConfiguration;
  v28 = [(CSUImageCaptioningDecoderConfiguration *)&v122 init];
  v33 = v28;
  if (!v28)
  {
    goto LABEL_4;
  }

  v28->_revision = revision;
  v28->_runtimeEngine = engine;
  v34 = objc_msgSend_copy(pathCopy, v29, v30, v31, v32);
  decoderNetworkPath = v33->_decoderNetworkPath;
  v33->_decoderNetworkPath = v34;

  v33->_espressoExecutionEngine = 0x7FFFFFFF;
  v40 = objc_msgSend_copy(v24, v36, v37, v38, v39);
  vocabularyModelPath = v33->_vocabularyModelPath;
  v33->_vocabularyModelPath = v40;

  v46 = objc_msgSend_copy(nameCopy, v42, v43, v44, v45);
  inputEncodedFeaturesTensorName = v33->_inputEncodedFeaturesTensorName;
  v33->_inputEncodedFeaturesTensorName = v46;

  v52 = objc_msgSend_copy(tensorNameCopy, v48, v49, v50, v51);
  inputWordIdsTensorName = v33->_inputWordIdsTensorName;
  v33->_inputWordIdsTensorName = v52;

  v58 = objc_msgSend_copy(probsTensorNameCopy, v54, v55, v56, v57);
  outputWordProbsTensorName = v33->_outputWordProbsTensorName;
  v33->_outputWordProbsTensorName = v58;

  v64 = objc_msgSend_copy(shapeCopy, v60, v61, v62, v63);
  decoderEmbeddingShape = v33->_decoderEmbeddingShape;
  v33->_decoderEmbeddingShape = v64;

  if (seqShapeCopy)
  {
    v70 = objc_msgSend_copy(seqShapeCopy, v66, v67, v68, v69);
    decoderInputSeqShape = v33->_decoderInputSeqShape;
    v33->_decoderInputSeqShape = v70;

    v76 = objc_msgSend_copy(networkPathCopy, v72, v73, v74, v75);
    bridgeNetworkPath = v33->_bridgeNetworkPath;
    v33->_bridgeNetworkPath = v76;

    v82 = objc_msgSend_copy(bridgeCopy, v78, v79, v80, v81);
    inputEncodedFeaturesTensorNameOfBridge = v33->_inputEncodedFeaturesTensorNameOfBridge;
    v33->_inputEncodedFeaturesTensorNameOfBridge = v82;

    v88 = objc_msgSend_copy(ofBridgeCopy, v84, v85, v86, v87);
    outputTensorNameOfBridge = v33->_outputTensorNameOfBridge;
    v33->_outputTensorNameOfBridge = v88;

    v33->_saveDecoderFeatures = features;
    v94 = objc_msgSend_copy(inputShapeCopy, v90, v91, v92, v93);
    bridgeInputShape = v33->_bridgeInputShape;
    v33->_bridgeInputShape = v94;

    v100 = objc_msgSend_count(seqShapeCopy, v96, v97, v98, v99);
    v104 = objc_msgSend_objectAtIndex_(seqShapeCopy, v101, v100 - 1, v102, v103);
    v33->_maxSeqLen = objc_msgSend_unsignedLongValue(v104, v105, v106, v107, v108);

    objc_storeStrong(&v33->_runTimeParamsPath, paramsPath);
    v33->_bridgeIsPrecompiled = isPrecompiled;
    v33->_decoderIsPrecompiled = precompiled;
LABEL_4:
    v109 = v33;
    goto LABEL_8;
  }

  v110 = sub_1AC090E50();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
    sub_1AC1201E4(v110);
  }

  v109 = 0;
LABEL_8:

  return v109;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 11, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 12, v10, v11);
  objc_msgSend_addIndex_(v2, v12, 13, v13, v14);

  return v2;
}

- (int)espressoExecutionEngine
{
  result = self->_espressoExecutionEngine;
  if (result == 0x7FFFFFFF)
  {
    v7 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
    self->_espressoExecutionEngine = sub_1AC08405C(v7);

    return self->_espressoExecutionEngine;
  }

  return result;
}

@end