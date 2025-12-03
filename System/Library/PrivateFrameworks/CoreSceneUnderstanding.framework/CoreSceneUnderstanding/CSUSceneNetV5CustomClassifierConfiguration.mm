@interface CSUSceneNetV5CustomClassifierConfiguration
+ (id)availableCityNatureRevisions;
+ (id)availableClassifierAlphaRevisions;
+ (id)availableClassifierBetaRevisions;
+ (id)availableJunkHierarchicalRevisions;
+ (id)availableJunkLeafRevisions;
+ (id)availableSafetyNetLightRevisions;
+ (id)cityNatureConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)classifierAlphaConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)classifierBetaConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)junkHierarchicalConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)junkLeafConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)safetyNetLightConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)validateAndInitCustomClassifierForRevision:(int64_t)revision forNetworkPath:(id)path forTaxonomyPath:(id)taxonomyPath withInputImageTensorName:(id)name withVocabularyName:(id)vocabularyName withClassificationTensorName:(id)tensorName withIdentifier:(int64_t)identifier error:(id *)self0;
- (id)initConfigurationForRevision:(int64_t)revision espressoNetworkPath:(id)path inputImageTensorName:(id)name vocabularyName:(id)vocabularyName taxonomyPath:(id)taxonomyPath identifier:(int64_t)identifier classificationTensorName:(id)tensorName;
- (id)taxonomyWithError:(id *)error;
- (int)espressoExecutionEngine;
@end

@implementation CSUSceneNetV5CustomClassifierConfiguration

+ (id)safetyNetLightConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"SafetyNetLight_v1.1.0_vx6zphgfsp_15880_safetynet_quant", @"espresso.net", @"scenenet_v5_custom_classifiers/SafetyNetLight/SafetyNetLight_v1.1.0");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"SafetyNetLight-v1a_manifest", @"bplist", @"taxonomies/SafetyNetLight/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"image_embed_normalize_out", @"leaf", @"safetynet_fc/post_act", 6, error);
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported Classifier Alpha revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
  }

  return v21;
}

+ (id)classifierAlphaConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"EventsLeaf_v0.5.0_89sf2c9ryr-157700", @"espresso.net", @"scenenet_v5_custom_classifiers/EventsLeaf/EventsLeaf_v0.5.0");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"Events-v1c_manifest", @"bplist", @"taxonomies/events/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"2590", @"basic", @"events_fc_post_act_1", 1, error);
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported Classifier Alpha revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
  }

  return v21;
}

+ (id)junkLeafConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"JunkLeaf_v0.11.0_y8pf7cunms-10000", @"espresso.net", @"scenenet_v5_custom_classifiers/JunkLeaf/JunkLeaf_v0.11.0/");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"Junk-v3b_manifest", @"bplist", @"taxonomies/junk/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"2593", @"leaf", @"fc_leaf_post_act_1", 2, error);
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported Junk Leaf revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
  }

  return v21;
}

+ (id)junkHierarchicalConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"JunkHierarchical_v0.11.0_y8pf7cunms-10000", @"espresso.net", @"scenenet_v5_custom_classifiers/JunkHierarchical/JunkHierarchical_v0.11.0/");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"Junk-v3b_manifest", @"bplist", @"taxonomies/junk/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"2593", @"hierarchical", @"fc_hier_post_act_1", 3, error);
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported Junk Hierarchical revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
  }

  return v21;
}

+ (id)cityNatureConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"UrbanNatureLeaf_v0.1.0_ccinynq7s3-5000", @"espresso.net", @"scenenet_v5_custom_classifiers/CityNature/CityNature_v0.1.0");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"CityNature-v1a_manifest", @"bplist", @"taxonomies/citynature/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"2590", @"basic", @"fc_leaf_post_act_1", 4, error);
  }

  else
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported CityNature revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
  }

  return v21;
}

+ (id)classifierBetaConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  v16 = v12;
  if (revision == 1 || revision == -1)
  {
    v17 = objc_msgSend_pathForResource_ofType_inDirectory_(v12, v13, @"semdev_23y8pwvx7w_18000", @"espresso.net", @"scenenet_v5_custom_classifiers/SemanticDevelopment/SemanticDevelopment_v1.0.0");
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(v16, v18, @"SemDev-v1a_manifest", @"bplist", @"taxonomies/semanticdeveloping/");
    v21 = objc_msgSend_validateAndInitCustomClassifierForRevision_forNetworkPath_forTaxonomyPath_withInputImageTensorName_withVocabularyName_withClassificationTensorName_withIdentifier_error_(self, v20, 1, v17, v19, @"2590", @"basic", @"fc_leaf_post_act_1", 5, error);
LABEL_6:

    goto LABEL_7;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, revision, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v22, v23, @"Unsupported Classifier Beta revision %@", v24, v25, v17);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v26, v19, v27, v28);
    *error = v21 = 0;
    goto LABEL_6;
  }

  v21 = 0;
LABEL_7:

  return v21;
}

+ (id)validateAndInitCustomClassifierForRevision:(int64_t)revision forNetworkPath:(id)path forTaxonomyPath:(id)taxonomyPath withInputImageTensorName:(id)name withVocabularyName:(id)vocabularyName withClassificationTensorName:(id)tensorName withIdentifier:(int64_t)identifier error:(id *)self0
{
  pathCopy = path;
  taxonomyPathCopy = taxonomyPath;
  nameCopy = name;
  vocabularyNameCopy = vocabularyName;
  tensorNameCopy = tensorName;
  if (pathCopy)
  {
    if (taxonomyPathCopy)
    {
      v24 = [self alloc];
      inited = objc_msgSend_initConfigurationForRevision_espressoNetworkPath_inputImageTensorName_vocabularyName_taxonomyPath_identifier_classificationTensorName_(v24, v25, revision, pathCopy, nameCopy, vocabularyNameCopy, taxonomyPathCopy, identifier, tensorNameCopy);
      goto LABEL_7;
    }

    objc_msgSend_errorForDataUnavailableWithLocalizedDescription_(CSUError, v20, @"Missing custom classifier taxonomy files", v21, v22);
  }

  else
  {
    objc_msgSend_errorForDataUnavailableWithLocalizedDescription_(CSUError, v20, @"Missing custom classifier network files", v21, v22);
  }

  *error = inited = 0;
LABEL_7:

  return inited;
}

+ (id)availableSafetyNetLightRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

+ (id)availableClassifierAlphaRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

+ (id)availableJunkLeafRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

+ (id)availableJunkHierarchicalRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

+ (id)availableCityNatureRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

+ (id)availableClassifierBetaRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);

  return v2;
}

- (id)taxonomyWithError:(id *)error
{
  taxonomy = self->_taxonomy;
  if (taxonomy)
  {
  }

  else
  {
    v7 = [CSUSceneNetV5CustomClassifierTaxonomy alloc];
    v12 = objc_msgSend_taxonomyPath(self, v8, v9, v10, v11);
    v15 = objc_msgSend_initWithManifestPath_error_(v7, v13, v12, error, v14);
    v16 = self->_taxonomy;
    self->_taxonomy = v15;

    taxonomy = self->_taxonomy;
  }

  return taxonomy;
}

- (id)initConfigurationForRevision:(int64_t)revision espressoNetworkPath:(id)path inputImageTensorName:(id)name vocabularyName:(id)vocabularyName taxonomyPath:(id)taxonomyPath identifier:(int64_t)identifier classificationTensorName:(id)tensorName
{
  pathCopy = path;
  nameCopy = name;
  vocabularyNameCopy = vocabularyName;
  taxonomyPathCopy = taxonomyPath;
  tensorNameCopy = tensorName;
  v53.receiver = self;
  v53.super_class = CSUSceneNetV5CustomClassifierConfiguration;
  v20 = [(CSUSceneNetV5CustomClassifierConfiguration *)&v53 init];
  v25 = v20;
  if (v20)
  {
    v20->_revision = revision;
    v26 = objc_msgSend_copy(pathCopy, v21, v22, v23, v24);
    espressoNetworkPath = v25->_espressoNetworkPath;
    v25->_espressoNetworkPath = v26;

    v32 = objc_msgSend_copy(nameCopy, v28, v29, v30, v31);
    inputImageTensorName = v25->_inputImageTensorName;
    v25->_inputImageTensorName = v32;

    v38 = objc_msgSend_copy(vocabularyNameCopy, v34, v35, v36, v37);
    vocabularyName = v25->_vocabularyName;
    v25->_vocabularyName = v38;

    v44 = objc_msgSend_copy(taxonomyPathCopy, v40, v41, v42, v43);
    taxonomyPath = v25->_taxonomyPath;
    v25->_taxonomyPath = v44;

    v50 = objc_msgSend_copy(tensorNameCopy, v46, v47, v48, v49);
    classificationTensorName = v25->_classificationTensorName;
    v25->_classificationTensorName = v50;

    v25->_customClassifierIdentifier = identifier;
  }

  return v25;
}

- (int)espressoExecutionEngine
{
  v5 = objc_msgSend_computeDevice(self, a2, v2, v3, v4);
  v6 = sub_1AC08405C(v5);

  return v6;
}

@end