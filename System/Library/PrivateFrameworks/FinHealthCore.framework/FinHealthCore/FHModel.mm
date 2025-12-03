@interface FHModel
+ (id)predictionLabelForModelName:(id)name modelVersion:(id)version;
+ (id)predictionsByModelName:(id)name modelVersion:(id)version;
+ (id)retrievePersistedModelVersion:(id)version;
+ (void)recordModelScore:(id)score;
- (BOOL)_loadModel:(id)model;
- (FHModel)initWithCoder:(id)coder;
- (FHModel)initWithModelURL:(id)l;
- (FHModel)initWithModelURL:(id)l modelName:(id)name;
- (id)_predict:(id)_predict;
- (id)featureSet;
- (id)predictClassProbabilitiesWithDict:(id)dict;
- (id)predictClassProbabilitiesWithMultiArray:(id)array;
- (void)_deleteModelFile:(id)file;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHModel

- (id)featureSet
{
  modelDescription = [(MLModel *)self->_mlModel modelDescription];
  inputFeatureNames = [modelDescription inputFeatureNames];

  return inputFeatureNames;
}

- (FHModel)initWithModelURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = FHModel;
  v5 = [(FHModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_modelVersion, @"0");
    [(FHModel *)v6 _loadModel:lCopy];
  }

  return v6;
}

- (FHModel)initWithModelURL:(id)l modelName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = FHModel;
  v8 = [(FHModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelVersion, @"0");
    objc_storeStrong(&v9->_modelName, name);
    [(FHModel *)v9 _loadModel:lCopy];
  }

  return v9;
}

- (BOOL)_loadModel:(id)model
{
  v71 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    lastPathComponent = [(NSURL *)modelCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    pathExtension = [(NSURL *)modelCopy pathExtension];
    v10 = [pathExtension isEqualToString:@"mlmodelc"];

    if (v10)
    {
      objc_storeStrong(&self->_compiledModelURL, model);
      v11 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        absoluteString = [(NSURL *)self->_compiledModelURL absoluteString];
        *buf = 136315394;
        v64 = "[FHModel _loadModel:]";
        v65 = 2112;
        v66 = absoluteString;
        _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_INFO, "%s Using pre-compiled model at path: %@", buf, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = FHModelDirectory();
      v11 = [v15 fileURLWithPath:v16];

      v62 = 0;
      v17 = [defaultManager createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v62];
      v18 = v62;
      if ((v17 & 1) == 0)
      {
        v31 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          absoluteString2 = [v11 absoluteString];
          localizedDescription = [v18 localizedDescription];
          *buf = 136315650;
          v64 = "[FHModel _loadModel:]";
          v65 = 2112;
          v66 = absoluteString2;
          v67 = 2112;
          v68 = localizedDescription;
          v34 = "%s failed to create directory at path: %@ with error: %@";
LABEL_24:
          _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_ERROR, v34, buf, 0x20u);
        }

LABEL_25:
        v14 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v58 = defaultManager;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.mlmodelc", stringByDeletingPathExtension];
      v20 = [v11 URLByAppendingPathComponent:v19];
      compiledModelURL = self->_compiledModelURL;
      self->_compiledModelURL = v20;

      v22 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        absoluteString3 = [(NSURL *)self->_compiledModelURL absoluteString];
        *buf = 136315650;
        v64 = "[FHModel _loadModel:]";
        v65 = 2112;
        v66 = modelCopy;
        v67 = 2112;
        v68 = absoluteString3;
        _os_log_impl(&dword_226DD4000, v22, OS_LOG_TYPE_INFO, "%s Compiling model from path: %@ to %@", buf, 0x20u);
      }

      v24 = stringByDeletingPathExtension;

      pathExtension2 = [(NSURL *)modelCopy pathExtension];
      v26 = [pathExtension2 isEqualToString:@"mlpackage"];

      v27 = MEMORY[0x277CBFEC0];
      defaultOptions = [MEMORY[0x277CBFEC8] defaultOptions];
      if (v26)
      {
        v61 = v18;
        v29 = &v61;
        v30 = [v27 compileModelAtURL:modelCopy toURL:v11 options:defaultOptions error:&v61];
      }

      else
      {
        v60 = v18;
        v29 = &v60;
        v30 = [v27 compileSpecificationAtURL:modelCopy toURL:v11 options:defaultOptions error:&v60];
      }

      v35 = v30;
      v13 = *v29;

      v36 = FinHealthLogObject(@"FinHealthCore");
      v31 = v36;
      if (!v35)
      {
        stringByDeletingPathExtension = v24;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          absoluteString4 = [v11 absoluteString];
          localizedDescription2 = [v13 localizedDescription];
          *buf = 136315906;
          v64 = "[FHModel _loadModel:]";
          v65 = 2112;
          v66 = modelCopy;
          v67 = 2112;
          v68 = absoluteString4;
          v69 = 2112;
          v70 = localizedDescription2;
          _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_ERROR, "%s failed to compile modelURL spec at path: %@ to tempDir path: %@ with error: %@", buf, 0x2Au);
        }

        v14 = 0;
        v18 = v13;
        defaultManager = v58;
        goto LABEL_35;
      }

      stringByDeletingPathExtension = v24;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        path = [v11 path];
        *buf = 136315650;
        v64 = "[FHModel _loadModel:]";
        v65 = 2112;
        v66 = modelCopy;
        v67 = 2112;
        v68 = path;
        _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_INFO, "%s Successfully compiled modelURL spec at path: %@ to tempDir path: %@!", buf, 0x20u);
      }

      defaultManager = v58;
    }

    v11 = objc_alloc_init(MEMORY[0x277CBFF38]);
    [v11 setComputeUnits:0];
    modelName = [(FHModel *)self modelName];
    [v11 setModelDisplayName:modelName];

    v39 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = self->_compiledModelURL;
      *buf = 136315394;
      v64 = "[FHModel _loadModel:]";
      v65 = 2112;
      v66 = v40;
      _os_log_impl(&dword_226DD4000, v39, OS_LOG_TYPE_INFO, "%s Loading model from path: %@", buf, 0x16u);
    }

    v41 = self->_compiledModelURL;
    v59 = v13;
    v42 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v41 configuration:v11 error:&v59];
    v18 = v59;

    mlModel = self->_mlModel;
    self->_mlModel = v42;

    v44 = FinHealthLogObject(@"FinHealthCore");
    v31 = v44;
    if (!v18)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = self->_compiledModelURL;
        *buf = 136315394;
        v64 = "[FHModel _loadModel:]";
        v65 = 2112;
        v66 = v45;
        _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_INFO, "%s Successfully loaded model from path: %@", buf, 0x16u);
      }

      modelDescription = [(MLModel *)self->_mlModel modelDescription];
      metadata = [modelDescription metadata];
      v48 = [metadata objectForKey:*MEMORY[0x277CBFEA8]];
      modelVersion = self->_modelVersion;
      p_modelVersion = &self->_modelVersion;
      *p_modelVersion = v48;

      if (!*p_modelVersion || (v51 = [*p_modelVersion isEqualToString:&stru_283A7B918], v52 = p_modelVersion, v51))
      {
        v52 = defaultPredictedRealtimeVersion;
      }

      v53 = *v52;
      v31 = *p_modelVersion;
      *p_modelVersion = v53;
      v14 = 1;
      goto LABEL_35;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      absoluteString2 = [(NSURL *)self->_compiledModelURL path];
      localizedDescription = [v18 localizedDescription];
      *buf = 136315650;
      v64 = "[FHModel _loadModel:]";
      v65 = 2112;
      v66 = absoluteString2;
      v67 = 2112;
      v68 = localizedDescription;
      v34 = "%s failed to load model %@ with error: %@";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v14 = 0;
LABEL_36:

  v56 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_predict:(id)_predict
{
  v25 = *MEMORY[0x277D85DE8];
  mlModel = self->_mlModel;
  if (mlModel)
  {
    v5 = MEMORY[0x277CBFED0];
    _predictCopy = _predict;
    v18 = 0;
    v7 = [[v5 alloc] initWithDictionary:_predictCopy error:&v18];

    v8 = v18;
    v17 = v8;
    v9 = [(MLModel *)mlModel predictionFromFeatures:v7 error:&v17];
    v10 = v17;

    if (v10)
    {
      v11 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        modelName = self->_modelName;
        localizedDescription = [v10 localizedDescription];
        *buf = 136315650;
        v20 = "[FHModel _predict:]";
        v21 = 2112;
        v22 = modelName;
        v23 = 2112;
        v24 = localizedDescription;
        _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "%s Error in getting predictions for model %@ Error %@", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)predictClassProbabilitiesWithMultiArray:(id)array
{
  v28[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = objc_alloc(MEMORY[0x277CBFF48]);
  v28[0] = &unk_283A88338;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(arrayCopy, "count")}];
  v28[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v21 = 0;
  v8 = [v5 initWithShape:v7 dataType:65568 error:&v21];
  v9 = v21;

  if ([arrayCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [arrayCopy objectAtIndexedSubscript:v10];
      [v8 setObject:v11 atIndexedSubscript:v10];

      ++v10;
    }

    while (v10 < [arrayCopy count]);
  }

  if (v9)
  {
    v12 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 136315394;
      v25 = "[FHModel predictClassProbabilitiesWithMultiArray:]";
      v26 = 2112;
      v27 = localizedDescription;
      _os_log_impl(&dword_226DD4000, v12, OS_LOG_TYPE_ERROR, "%s Error converting features into MLMultiArray %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v22 = @"input_";
    v15 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v8];
    v23 = v15;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v16 = [(FHModel *)self _predict:v12];
    v17 = [v16 featureValueForName:@"classProbability"];
    multiArrayValue = [v17 multiArrayValue];
    v14 = [multiArrayValue objectAtIndexedSubscript:0];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)predictClassProbabilitiesWithDict:(id)dict
{
  v3 = [(FHModel *)self _predict:dict];
  v4 = [v3 featureValueForName:@"classProbability"];
  dictionaryValue = [v4 dictionaryValue];

  return dictionaryValue;
}

- (void)_deleteModelFile:(id)file
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    path = [fileCopy path];
    *buf = 136315394;
    v16 = "[FHModel _deleteModelFile:]";
    v17 = 2112;
    v18 = path;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "%s Deleting file %@", buf, 0x16u);
  }

  v14 = 0;
  v7 = [defaultManager removeItemAtURL:fileCopy error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 136315394;
      v16 = "[FHModel _deleteModelFile:]";
      v17 = 2112;
      v18 = localizedDescription;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "%s Error deleting file %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)recordModelScore:(id)score
{
  scoreCopy = score;
  v3 = scoreCopy;
  AnalyticsSendEventLazy();
}

id __28__FHModel_recordModelScore___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:*(a1 + 32)];
  v2 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&dword_226DD4000, v2, OS_LOG_TYPE_DEBUG, "fhAnalyticsRecord: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)encodeWithCoder:(id)coder
{
  modelName = self->_modelName;
  coderCopy = coder;
  [coderCopy encodeObject:modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
}

- (FHModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FHModel;
  v5 = [(FHModel *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v8;
  }

  return v5;
}

+ (id)predictionsByModelName:(id)name modelVersion:(id)version
{
  nameCopy = name;
  versionCopy = version;
  if (versionCopy || ([self retrievePersistedModelVersion:nameCopy], (versionCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = versionCopy;
    v9 = [[FHDatabaseEntity alloc] initWithEntity:@"features_predicted_realtime"];
    fieldsInOrder = [(FHDatabaseEntity *)v9 fieldsInOrder];
    v11 = [fieldsInOrder subarrayWithRange:{1, objc_msgSend(fieldsInOrder, "count") - 1}];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__FHModel_predictionsByModelName_modelVersion___block_invoke;
    v23[3] = &unk_2785CB9C8;
    v24 = nameCopy;
    v12 = v8;
    v25 = v12;
    v13 = [FHDatabaseClauseFromBuilder initWithBuilder:v23];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2;
    v21 = __Block_byref_object_dispose__2;
    v22 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__FHModel_predictionsByModelName_modelVersion___block_invoke_217;
    v16[3] = &unk_2785CB080;
    v16[4] = &v17;
    [(FHDatabaseEntity *)v9 queryDataWithBlock:v13 logicalOperator:@"AND" selectFields:v11 usingBlock:v16];
    v14 = [v18[5] copy];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v14;
}

void __47__FHModel_predictionsByModelName_modelVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addStringClause:@"==" fieldName:@"features_predicted_realtime.feature_name" expression:v3];
  [v4 addStringClause:@"==" fieldName:@"features_predicted_realtime.version" expression:*(a1 + 40)];
}

void __47__FHModel_predictionsByModelName_modelVersion___block_invoke_217(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectAtIndex:0];
  v7 = [v6 stringValue];
  [v5 setObject:v7 forKey:@"dataIdentifier"];

  v8 = [v4 objectAtIndex:1];
  v9 = [v8 stringValue];
  [v5 setObject:v9 forKey:@"modelName"];

  v10 = [v4 objectAtIndex:3];
  v11 = [v10 stringValue];
  [v5 setObject:v11 forKey:@"modelVersion"];

  v12 = objc_alloc(MEMORY[0x277CCA980]);
  v13 = [v4 objectAtIndex:5];

  if (v13)
  {
    [v13 decimalValue];
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
  }

  v14 = [v12 initWithDecimal:v16];
  [v5 setObject:v14 forKey:@"predictedScore"];

  v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v5];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v15];
}

+ (id)retrievePersistedModelVersion:(id)version
{
  v25[1] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v4 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_processing_history"];
  fieldsInOrder = [(FHDatabaseEntity *)v4 fieldsInOrder];
  if ([fieldsInOrder count] > 2)
  {
    v8 = [fieldsInOrder objectAtIndex:1];
    v9 = [fieldsInOrder objectAtIndex:2];
    v25[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v11 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v9 featureRank:1];
    v24 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__FHModel_retrievePersistedModelVersion___block_invoke;
    v17[3] = &unk_2785CB9C8;
    v6 = v8;
    v18 = v6;
    v19 = versionCopy;
    v13 = [FHDatabaseClauseFromBuilder initWithBuilder:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__FHModel_retrievePersistedModelVersion___block_invoke_2;
    v16[3] = &unk_2785CB080;
    v16[4] = buf;
    [(FHDatabaseEntity *)v4 queryDataWithBlock:v13 logicalOperator:@"AND" limit:1 selectFields:v10 orderby:v12 usingBlock:v16];
    v7 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "+[FHModel retrievePersistedModelVersion:]";
      *&buf[12] = 2048;
      *&buf[14] = 3;
      *&buf[22] = 2048;
      v21 = [fieldsInOrder count];
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_ERROR, "%s: Required fields in processing history table not found. Expected %lu got %lu", buf, 0x20u);
    }

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __41__FHModel_retrievePersistedModelVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 stringWithFormat:@"%%%%%@%%%%", v4];
  [v5 addStringClause:@"LIKE" fieldName:v3 expression:v6];
}

void __41__FHModel_retrievePersistedModelVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectAtIndex:0];
  v4 = [v3 stringValue];

  v5 = [v4 componentsSeparatedByString:@":"];
  if ([v5 count] < 2)
  {
    v9 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[FHModel retrievePersistedModelVersion:]_block_invoke_2";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "%s: Feature name '%@' does not have version", &v11, 0x16u);
    }
  }

  else
  {
    v6 = [v5 objectAtIndex:1];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)predictionLabelForModelName:(id)name modelVersion:(id)version
{
  nameCopy = name;
  versionCopy = version;
  if (versionCopy)
  {
    v7 = [[FHDatabaseEntity alloc] initWithEntity:@"features_prediction_labels"];
    versionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", nameCopy, versionCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__FHModel_predictionLabelForModelName_modelVersion___block_invoke;
    v20[3] = &unk_2785CB058;
    v9 = versionCopy;
    v21 = v9;
    v10 = [FHDatabaseClauseFromBuilder initWithBuilder:v20];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__FHModel_predictionLabelForModelName_modelVersion___block_invoke_2;
    v13[3] = &unk_2785CB080;
    v13[4] = &v14;
    [(FHDatabaseEntity *)v7 queryDataWithBlock:v10 logicalOperator:@"AND" selectFields:&unk_283A881A0 usingBlock:v13];
    v11 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __52__FHModel_predictionLabelForModelName_modelVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = [a2 objectAtIndex:0];
  v3 = [v6 stringValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = FinHealthLogObject(@"FinHealthClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[FHModel dealloc]";
    _os_log_impl(&dword_226DD4000, v3, OS_LOG_TYPE_DEBUG, "%s deallocated", buf, 0xCu);
  }

  mlModel = self->_mlModel;
  if (mlModel)
  {
    self->_mlModel = 0;
  }

  v6.receiver = self;
  v6.super_class = FHModel;
  [(FHModel *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

@end