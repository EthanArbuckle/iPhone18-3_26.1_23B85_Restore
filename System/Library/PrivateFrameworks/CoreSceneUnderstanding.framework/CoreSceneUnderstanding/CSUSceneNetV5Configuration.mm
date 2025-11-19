@interface CSUSceneNetV5Configuration
+ (id)availableRevisions;
+ (id)sceneNetV5ConfigurationForRevision:(int64_t)a3 error:(id *)a4;
+ (int64_t)_resolvedRevision:(int64_t)a3;
- (id)aestheticsTaxonomyWithError:(id *)a3;
- (id)detectionTaxonomyWithError:(id *)a3;
- (id)initSceneNetV5ConfigurationForRevision:(int64_t)a3 espressoNetPath:(id)a4 inputImageTensorName:(id)a5 inputImageDimension:(unint64_t)a6 inputImageBytesPerRowAlignment:(unint64_t)a7 scenePrintTensorName:(id)a8 sceneClassificationTensorName:(id)a9 sceneTaxonomyPath:(id)a10 aestheticsAttributesTensorName:(id)a11 aestheticsGlobalScoresTensorName:(id)a12 aestheticsTaxonomyPath:(id)a13 detectionScoreHeatMapName:(id)a14 detectionCoordinateOffsetMapName:(id)a15 detectionTaxonomyPath:(id)a16 detectionHeadIsSoftmax:(BOOL)a17 detectionNMSThreshold:(float)a18 saliencyAttentionTensorName:(id)a19 saliencyAMapDimension:(unint64_t)a20 saliencyObjectnessTensorName:(id)a21 saliencyOMapDimension:(unint64_t)a22 fingerprintEmbeddingTensorName:(id)a23 fingerprintModelPath:(id)a24 entityNetClassificationTensorName:(id)a25 leafSceneClassificationVocabularyName:(id)a26 hierarchicalSceneClassificationVocabularyName:(id)a27 entityNetVocabularyName:(id)a28 aestheticsAttributeVocabularyName:(id)a29 aestheticsGlobalScoreVocabularyName:(id)a30 detectionVocabularyName:(id)a31;
- (id)newCityNatureConfigurationAndReturnError:(id *)a3;
- (id)newClassifierAlphaConfigurationAndReturnError:(id *)a3;
- (id)newClassifierBetaConfigurationAndReturnError:(id *)a3;
- (id)newJunkHierarchicalConfigurationAndReturnError:(id *)a3;
- (id)newJunkLeafConfigurationAndReturnError:(id *)a3;
- (id)newSafetyNetLightConfigurationAndReturnError:(id *)a3;
- (id)sceneTaxonomyWithError:(id *)a3;
- (int)espressoExecutionEngine;
@end

@implementation CSUSceneNetV5Configuration

+ (int64_t)_resolvedRevision:(int64_t)a3
{
  if (a3 == -1)
  {
    return 3;
  }

  else
  {
    return a3;
  }
}

+ (id)sceneNetV5ConfigurationForRevision:(int64_t)a3 error:(id *)a4
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v49 = v48 = a1;
  v15 = objc_msgSend__resolvedRevision_(a1, v12, a3, v13, v14);
  v19 = v15;
  switch(v15)
  {
    case 1:
      v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v16, @"SceneNet_v5.10.4_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2");
      v21 = sub_1AC090E50();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "Scenenet 5.10 model is loaded";
        v23 = buf;
        goto LABEL_10;
      }

      break;
    case 2:
      v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v16, @"SceneNet_v5.11.1_47tazbjgzq_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.1", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.11.1_47tazbjgzq_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.1");
      v21 = sub_1AC090E50();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v51 = 0;
        v22 = "Scenenet 5.11 model is loaded";
        v23 = &v51;
        goto LABEL_10;
      }

      break;
    case 3:
      v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v16, @"SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2", @"espresso.net", @"scenenet_v5_model/SceneNet_v5.13.0_8wiqmpbbig_fe1.3_sc3.3_sa2.4_ae2.4_so2.4_od1.5_fp1.5_en0.2");
      v21 = sub_1AC090E50();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v50 = 0;
        v22 = "Scenenet 5.13 model is loaded";
        v23 = &v50;
LABEL_10:
        _os_log_impl(&dword_1AC05D000, v21, OS_LOG_TYPE_INFO, v22, v23, 2u);
      }

      break;
    default:
      if (a4)
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, a3, v17, v18);
        v43 = objc_msgSend_stringWithFormat_(v38, v40, @"Unsupported SceneNetV5 revision %@", v41, v42, v39);
        *a4 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v44, v43, v45, v46);

        v27 = 0;
        v29 = 0;
        v31 = 0;
        a4 = 0;
      }

      else
      {
        v27 = 0;
        v29 = 0;
        v31 = 0;
      }

      v24 = 0;
      IsSoftmax_detectionNMSThreshold_saliencyAttentionTensorName_saliencyAMapDimension_saliencyObjectnessTensorName_saliencyOMapDimension_fingerprintEmbeddingTensorName_fingerprintModelPath_entityNetClassificationTensorName_leafSceneClassificationVocabularyName_hierarchicalSceneClassificationVocabularyName_entityNetVocabularyName_aestheticsAttributeVocabularyName_aestheticsGlobalScoreVocabularyName_detectionVocabularyName = 0;
      goto LABEL_20;
  }

  v24 = v20;

  a4 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v25, @"ENv0b_manifest", @"bplist", @"taxonomies/EntityNet/v0b/");
  v27 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v26, @"AEv8e_manifest", @"bplist", @"taxonomies/Aesthetics/v8e/");
  v29 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v28, @"ODv1b_manifest", @"bplist", @"taxonomies/ObjectDetection/v1b/");
  v31 = objc_msgSend_pathForResource_ofType_inDirectory_(v49, v30, @"fingerprint_lsh_144x2x192_seed1", @"bson", @"scenenet_v5_fingerprint/");
  v32 = [v48 alloc];
  v35 = @"entitynet";
  if (v19 == 1)
  {
    v35 = 0;
  }

  v36 = @"entitynet/labels";
  if (v19 == 1)
  {
    v36 = 0;
  }

  LODWORD(v34) = 1055286886;
  IsSoftmax_detectionNMSThreshold_saliencyAttentionTensorName_saliencyAMapDimension_saliencyObjectnessTensorName_saliencyOMapDimension_fingerprintEmbeddingTensorName_fingerprintModelPath_entityNetClassificationTensorName_leafSceneClassificationVocabularyName_hierarchicalSceneClassificationVocabularyName_entityNetVocabularyName_aestheticsAttributeVocabularyName_aestheticsGlobalScoreVocabularyName_detectionVocabularyName = objc_msgSend_initSceneNetV5ConfigurationForRevision_espressoNetPath_inputImageTensorName_inputImageDimension_inputImageBytesPerRowAlignment_scenePrintTensorName_sceneClassificationTensorName_sceneTaxonomyPath_aestheticsAttributesTensorName_aestheticsGlobalScoresTensorName_aestheticsTaxonomyPath_detectionScoreHeatMapName_detectionCoordinateOffsetMapName_detectionTaxonomyPath_detectionHeadIsSoftmax_detectionNMSThreshold_saliencyAttentionTensorName_saliencyAMapDimension_saliencyObjectnessTensorName_saliencyOMapDimension_fingerprintEmbeddingTensorName_fingerprintModelPath_entityNetClassificationTensorName_leafSceneClassificationVocabularyName_hierarchicalSceneClassificationVocabularyName_entityNetVocabularyName_aestheticsAttributeVocabularyName_aestheticsGlobalScoreVocabularyName_detectionVocabularyName_(v32, v33, v19, v24, @"image", 360, 4096, @"inner/sceneprint", v34, @"classification/labels", a4, @"aesthetics/attributes", @"aesthetics/scores", v27, @"detection/scores", @"detection/coordinates", v29, 0, @"saliency/map", 68, @"objectness/map", 68, @"fingerprint/embedding", v31, v36, @"scenenet_leaf", @"scenenet_hierarchical", v35, @"basic", @"global", @"main");
LABEL_20:

  return IsSoftmax_detectionNMSThreshold_saliencyAttentionTensorName_saliencyAMapDimension_saliencyObjectnessTensorName_saliencyOMapDimension_fingerprintEmbeddingTensorName_fingerprintModelPath_entityNetClassificationTensorName_leafSceneClassificationVocabularyName_hierarchicalSceneClassificationVocabularyName_entityNetVocabularyName_aestheticsAttributeVocabularyName_aestheticsGlobalScoreVocabularyName_detectionVocabularyName;
}

- (id)initSceneNetV5ConfigurationForRevision:(int64_t)a3 espressoNetPath:(id)a4 inputImageTensorName:(id)a5 inputImageDimension:(unint64_t)a6 inputImageBytesPerRowAlignment:(unint64_t)a7 scenePrintTensorName:(id)a8 sceneClassificationTensorName:(id)a9 sceneTaxonomyPath:(id)a10 aestheticsAttributesTensorName:(id)a11 aestheticsGlobalScoresTensorName:(id)a12 aestheticsTaxonomyPath:(id)a13 detectionScoreHeatMapName:(id)a14 detectionCoordinateOffsetMapName:(id)a15 detectionTaxonomyPath:(id)a16 detectionHeadIsSoftmax:(BOOL)a17 detectionNMSThreshold:(float)a18 saliencyAttentionTensorName:(id)a19 saliencyAMapDimension:(unint64_t)a20 saliencyObjectnessTensorName:(id)a21 saliencyOMapDimension:(unint64_t)a22 fingerprintEmbeddingTensorName:(id)a23 fingerprintModelPath:(id)a24 entityNetClassificationTensorName:(id)a25 leafSceneClassificationVocabularyName:(id)a26 hierarchicalSceneClassificationVocabularyName:(id)a27 entityNetVocabularyName:(id)a28 aestheticsAttributeVocabularyName:(id)a29 aestheticsGlobalScoreVocabularyName:(id)a30 detectionVocabularyName:(id)a31
{
  v220 = a4;
  v34 = a5;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v38 = v35;
  v219 = a11;
  v39 = v34;
  v218 = a12;
  v217 = a13;
  v216 = a14;
  v215 = a15;
  v214 = a16;
  v213 = a19;
  v212 = a21;
  v211 = a23;
  v40 = a24;
  v41 = a25;
  v209 = a26;
  v208 = a27;
  v207 = a28;
  v206 = a29;
  v205 = a30;
  v204 = a31;
  v221.receiver = self;
  v221.super_class = CSUSceneNetV5Configuration;
  v42 = [(CSUSceneNetV5Configuration *)&v221 init];
  v47 = v42;
  if (v42)
  {
    v42->_revision = a3;
    v48 = objc_msgSend_copy(v220, v43, v44, v45, v46);
    espressoNetworkPath = v47->_espressoNetworkPath;
    v47->_espressoNetworkPath = v48;

    v54 = objc_msgSend_copy(v39, v50, v51, v52, v53);
    inputImageTensorName = v47->_inputImageTensorName;
    v47->_inputImageTensorName = v54;

    v60 = objc_msgSend_copy(v38, v56, v57, v58, v59);
    scenePrintTensorName = v47->_scenePrintTensorName;
    v47->_scenePrintTensorName = v60;

    v66 = objc_msgSend_copy(v36, v62, v63, v64, v65);
    sceneClassificationTensorName = v47->_sceneClassificationTensorName;
    v47->_sceneClassificationTensorName = v66;

    v72 = objc_msgSend_copy(v37, v68, v69, v70, v71);
    sceneTaxonomyPath = v47->_sceneTaxonomyPath;
    v47->_sceneTaxonomyPath = v72;

    v78 = objc_msgSend_copy(v219, v74, v75, v76, v77);
    aestheticsAttributesTensorName = v47->_aestheticsAttributesTensorName;
    v47->_aestheticsAttributesTensorName = v78;

    v84 = objc_msgSend_copy(v218, v80, v81, v82, v83);
    aestheticsGlobalScoresTensorName = v47->_aestheticsGlobalScoresTensorName;
    v47->_aestheticsGlobalScoresTensorName = v84;

    v90 = objc_msgSend_copy(v217, v86, v87, v88, v89);
    aestheticsTaxonomyPath = v47->_aestheticsTaxonomyPath;
    v47->_aestheticsTaxonomyPath = v90;

    v96 = objc_msgSend_copy(v216, v92, v93, v94, v95);
    detectionScoreHeatMapName = v47->_detectionScoreHeatMapName;
    v47->_detectionScoreHeatMapName = v96;

    v102 = objc_msgSend_copy(v215, v98, v99, v100, v101);
    detectionCoordinateOffsetMapName = v47->_detectionCoordinateOffsetMapName;
    v47->_detectionCoordinateOffsetMapName = v102;

    v108 = objc_msgSend_copy(v214, v104, v105, v106, v107);
    detectionTaxonomyPath = v47->_detectionTaxonomyPath;
    v47->_detectionTaxonomyPath = v108;

    v47->_detectionHeadIsSoftmax = a17;
    v47->_detectionNMSThreshold = a18;
    v114 = objc_msgSend_copy(v213, v110, v111, v112, v113);
    saliencyAttentionTensorName = v47->_saliencyAttentionTensorName;
    v47->_saliencyAttentionTensorName = v114;

    v120 = objc_msgSend_copy(v212, v116, v117, v118, v119);
    saliencyObjectnessTensorName = v47->_saliencyObjectnessTensorName;
    v47->_saliencyObjectnessTensorName = v120;

    v126 = objc_msgSend_copy(v211, v122, v123, v124, v125);
    fingerprintEmbeddingTensorName = v47->_fingerprintEmbeddingTensorName;
    v47->_fingerprintEmbeddingTensorName = v126;

    v132 = objc_msgSend_copy(v40, v128, v129, v130, v131);
    fingerprintModelPath = v47->_fingerprintModelPath;
    v47->_fingerprintModelPath = v132;

    v138 = objc_msgSend_copy(v41, v134, v135, v136, v137);
    entityNetClassificationTensorName = v47->_entityNetClassificationTensorName;
    v47->_entityNetClassificationTensorName = v138;

    v140 = objc_alloc_init(CSUPixelBufferDescriptor);
    inputPixelBufferDescriptor = v47->_inputPixelBufferDescriptor;
    v47->_inputPixelBufferDescriptor = v140;

    objc_msgSend_setWidth_(v47->_inputPixelBufferDescriptor, v142, a6, v143, v144);
    objc_msgSend_setHeight_(v47->_inputPixelBufferDescriptor, v145, a6, v146, v147);
    objc_msgSend_setPixelFormat_(v47->_inputPixelBufferDescriptor, v148, 1111970369, v149, v150);
    objc_msgSend_setBytesPerRowAlignment_(v47->_inputPixelBufferDescriptor, v151, a7, v152, v153);
    objc_msgSend_setIsIOSurfaceBacked_(v47->_inputPixelBufferDescriptor, v154, 1, v155, v156);
    v157 = objc_alloc_init(CSUPixelBufferDescriptor);
    saliencyAttentionMapBufferDescriptor = v47->_saliencyAttentionMapBufferDescriptor;
    v47->_saliencyAttentionMapBufferDescriptor = v157;

    objc_msgSend_setWidth_(v47->_saliencyAttentionMapBufferDescriptor, v159, a20, v160, v161);
    objc_msgSend_setHeight_(v47->_saliencyAttentionMapBufferDescriptor, v162, a20, v163, v164);
    objc_msgSend_setPixelFormat_(v47->_saliencyAttentionMapBufferDescriptor, v165, 1278226534, v166, v167);
    v168 = v47->_saliencyAttentionMapBufferDescriptor;
    v173 = objc_msgSend_width(v168, v169, v170, v171, v172);
    objc_msgSend_setBytesPerRowAlignment_(v168, v174, 4 * v173, v175, v176);
    v177 = objc_alloc_init(CSUPixelBufferDescriptor);
    saliencyObjectnessMapBufferDescriptor = v47->_saliencyObjectnessMapBufferDescriptor;
    v47->_saliencyObjectnessMapBufferDescriptor = v177;

    objc_msgSend_setWidth_(v47->_saliencyObjectnessMapBufferDescriptor, v179, a22, v180, v181);
    objc_msgSend_setHeight_(v47->_saliencyObjectnessMapBufferDescriptor, v182, a22, v183, v184);
    objc_msgSend_setPixelFormat_(v47->_saliencyObjectnessMapBufferDescriptor, v185, 1278226534, v186, v187);
    v188 = v47->_saliencyAttentionMapBufferDescriptor;
    v193 = objc_msgSend_width(v47->_saliencyObjectnessMapBufferDescriptor, v189, v190, v191, v192);
    objc_msgSend_setBytesPerRowAlignment_(v188, v194, 4 * v193, v195, v196);
    objc_storeStrong(&v47->_leafSceneClassificationVocabularyName, a26);
    objc_storeStrong(&v47->_hierarchicalSceneClassificationVocabularyName, a27);
    objc_storeStrong(&v47->_entityNetVocabularyName, a28);
    objc_storeStrong(&v47->_aestheticsAttributeVocabularyName, a29);
    objc_storeStrong(&v47->_aestheticsGlobalScoreVocabularyName, a30);
    objc_storeStrong(&v47->_detectionVocabularyName, a31);
    sceneTaxonomy = v47->_sceneTaxonomy;
    v47->_sceneTaxonomy = 0;

    detectionTaxonomy = v47->_detectionTaxonomy;
    v47->_detectionTaxonomy = 0;

    aestheticsTaxonomy = v47->_aestheticsTaxonomy;
    v47->_aestheticsTaxonomy = 0;
  }

  return v47;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 3, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 1, v7, v8);

  return v2;
}

- (int)espressoExecutionEngine
{
  v5 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
  v6 = sub_1AC08405C(v5);

  return v6;
}

- (id)newSafetyNetLightConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for SafetyNetLight corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_safetyNetLightConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)newJunkLeafConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for Junk Leaf corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_junkLeafConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)newClassifierAlphaConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for CSU240a5b55fd50f267 corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_classifierAlphaConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)newJunkHierarchicalConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for Junk Hierarchical corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_junkHierarchicalConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)newCityNatureConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for City Nature corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_cityNatureConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)newClassifierBetaConfigurationAndReturnError:(id *)a3
{
  revision = self->_revision;
  if ((revision - 1) > 2)
  {
    if (a3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, revision, v3, v4);
      v13 = objc_msgSend_stringWithFormat_(v8, v10, @"Unsupported Custom Classifier for CSU46e61bcf56c2de0a corresponding to SceneNetV5 revision %@", v11, v12, v9);
      *a3 = objc_msgSend_errorForUnsupportedRevision_(CSUError, v14, v13, v15, v16);
    }

    return 0;
  }

  else
  {
    objc_msgSend_classifierBetaConfigurationForRevision_error_(CSUSceneNetV5CustomClassifierConfiguration, a2, -1, a3, v4);
    return objc_claimAutoreleasedReturnValue();
  }
}

- (id)sceneTaxonomyWithError:(id *)a3
{
  sceneTaxonomy = self->_sceneTaxonomy;
  if (sceneTaxonomy)
  {
  }

  else
  {
    v7 = [CSUSceneNetV5SceneTaxonomy alloc];
    v12 = objc_msgSend_sceneTaxonomyPath(self, v8, v9, v10, v11);
    v15 = objc_msgSend_initWithManifestPath_error_(v7, v13, v12, a3, v14);
    v16 = self->_sceneTaxonomy;
    self->_sceneTaxonomy = v15;

    sceneTaxonomy = self->_sceneTaxonomy;
  }

  return sceneTaxonomy;
}

- (id)aestheticsTaxonomyWithError:(id *)a3
{
  aestheticsTaxonomy = self->_aestheticsTaxonomy;
  if (aestheticsTaxonomy)
  {
  }

  else
  {
    v7 = [CSUSceneNetV5AestheticsTaxonomy alloc];
    v12 = objc_msgSend_aestheticsTaxonomyPath(self, v8, v9, v10, v11);
    v15 = objc_msgSend_initWithManifestPath_error_(v7, v13, v12, a3, v14);
    v16 = self->_aestheticsTaxonomy;
    self->_aestheticsTaxonomy = v15;

    aestheticsTaxonomy = self->_aestheticsTaxonomy;
  }

  return aestheticsTaxonomy;
}

- (id)detectionTaxonomyWithError:(id *)a3
{
  detectionTaxonomy = self->_detectionTaxonomy;
  if (detectionTaxonomy)
  {
  }

  else
  {
    v7 = [CSUSceneNetV5DetectionTaxonomy alloc];
    v12 = objc_msgSend_detectionTaxonomyPath(self, v8, v9, v10, v11);
    v15 = objc_msgSend_initWithManifestPath_error_(v7, v13, v12, a3, v14);
    v16 = self->_detectionTaxonomy;
    self->_detectionTaxonomy = v15;

    detectionTaxonomy = self->_detectionTaxonomy;
  }

  return detectionTaxonomy;
}

@end