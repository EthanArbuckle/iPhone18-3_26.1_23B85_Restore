@interface SGBinaryClassificationModel
+ (id)modelForPath:(id)a3 modelClass:(Class)a4;
+ (id)modelFromMobileAssetForEntity:(id)a3 type:(id)a4 language:(id)a5 class:(Class)a6;
+ (id)modelFromMobileAssetForName:(id)a3 language:(id)a4;
- (SGBinaryClassificationModel)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)predictLabelForInput:(id)a3;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation SGBinaryClassificationModel

+ (id)modelFromMobileAssetForName:(id)a3 language:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hasPrefix:@"args:"])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_autoreleasePoolPush();
    v10 = [v6 substringFromIndex:5];
    v11 = [v10 componentsSeparatedByString:{@", "}];

    objc_autoreleasePoolPop(v9);
    if ([v11 count] == 3)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 objectAtIndexedSubscript:1];
      v14 = [v11 objectAtIndexedSubscript:2];
      v15 = NSClassFromString(v14);
      if (v15)
      {
        v16 = [a1 modelFromMobileAssetForEntity:v12 type:v13 language:v7 class:v15];
      }

      else
      {
        v19 = sgLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315138;
          v24 = [(NSString *)v14 UTF8String];
          _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "Unknown model class: %s", &v23, 0xCu);
        }

        v16 = 0;
      }
    }

    else
    {
      v12 = sgLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315138;
        v24 = [v6 UTF8String];
        _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "Invalid model string: %s", &v23, 0xCu);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"dataDetectionSignificantPhrasePhoneLogistic"])
  {
    v17 = objc_opt_class();
    v18 = @"significantPhoneNumber";
LABEL_13:
    v16 = [a1 modelFromMobileAssetForEntity:v18 type:@"Logistic" language:v7 class:v17];
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"dataDetectionSignificantPhraseEmailLogistic"] || objc_msgSend(v6, "isEqualToString:", @"dataDetectionSignificantPhraseEmailForIMessageLogistic"))
  {
    v17 = objc_opt_class();
    v18 = @"significantEmailAddress";
    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"dataDetectionSignificantPhraseAddressLogistic"] || objc_msgSend(v6, "isEqualToString:", @"dataDetectionSignificantPhraseAddressForIMessageLogistic"))
  {
    v17 = objc_opt_class();
    v18 = @"significantAddress";
    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"selfIdentificationPhraseLogistic"])
  {
    v17 = objc_opt_class();
    v18 = @"selfId";
    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"birthdayTextMessageCongrats"])
  {
    v17 = objc_opt_class();
    v18 = @"birthdayExtraction";
    goto LABEL_13;
  }

  v22 = sgLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315138;
    v24 = [v6 UTF8String];
    _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Unknown model name: %s", &v23, 0xCu);
  }

  v16 = 0;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)modelFromMobileAssetForEntity:(id)a3 type:(id)a4 language:(id)a5 class:(Class)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@_%@%@Model.chunk", @"PREDICTION", v12, v10, v11];
  v14 = [MEMORY[0x277D02558] asset];
  v15 = [v14 filesystemPathForAssetDataRelativePath:v13];

  v16 = sgLogHandle();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v24 = [v10 UTF8String];
      v23 = [v11 UTF8String];
      v25 = a6;
      v18 = [v12 UTF8String];
      v19 = [MEMORY[0x277D02558] asset];
      *buf = 136316162;
      v27 = v24;
      v28 = 2080;
      v29 = v23;
      v30 = 2080;
      v31 = v18;
      a6 = v25;
      v32 = 2048;
      v33 = [v19 assetVersion];
      v34 = 2080;
      v35 = [v15 UTF8String];
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_INFO, "Loading model {entity: %s, type: %s, language: %s, version: %tu, path: %s}", buf, 0x34u);
    }

    v20 = [a1 modelForPath:v15 modelClass:a6];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = [v13 UTF8String];
      _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "Failed to locate assets resource %s", buf, 0xCu);
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)modelForPath:(id)a3 modelClass:(Class)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PMLReadChunkFile();
  v6 = sgLogHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_INFO, "Model loaded.", &v10, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = [v4 UTF8String];
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Failed to load model chunk file resource %s", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)toPlistWithChunks:(id)a3
{
  v29[6] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SGModel *)self model];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = @"LOGISTIC";
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [(SGModel *)self model];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 handleFailureInMethod:a2 object:self file:@"SGBinaryClassificationModel.m" lineNumber:128 description:{@"Unknown type of model class: %@", v12}];

    v8 = 0;
  }

  v13 = objc_alloc(MEMORY[0x277D41F60]);
  v14 = [v13 initWithClassNameKey:*MEMORY[0x277D41F98]];
  v15 = [(SGModel *)self featurizer];
  v16 = [v14 writeToPlistWithObject:v15 andChunks:v5];

  v28[0] = @"MODEL_DATA";
  v17 = [(SGModel *)self model];
  v18 = [v17 toPlistWithChunks:v5];
  v29[0] = v18;
  v28[1] = @"MODEL_LOCALE";
  v19 = [(SGModel *)self locale];
  v29[1] = v19;
  v29[2] = v8;
  v28[2] = @"MODEL_TYPE";
  v28[3] = @"MODEL_FEATURIZER";
  v29[3] = v16;
  v28[4] = @"MODEL_SOURCE_SESSION_DESCRIPTOR";
  v20 = [(SGModel *)self modelSource];
  v21 = [v20 sessionDescriptor];
  v22 = [v21 toPlistWithChunks:v5];

  v29[4] = v22;
  v28[5] = @"MODEL_DECISION_THRESHOLD";
  v23 = MEMORY[0x277CCABB0];
  [(SGBinaryClassificationModel *)self threshold];
  v24 = [v23 numberWithDouble:?];
  v29[5] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (SGBinaryClassificationModel)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGBinaryClassificationModel initWithPlist:chunks:context:]", "SGBinaryClassificationModel.m", 81, "[dict isKindOfClass:[NSDictionary class]]");
  }

  v13 = [v12 objectForKeyedSubscript:@"MODEL_TYPE"];
  v14 = [v12 objectForKeyedSubscript:@"MODEL_LOCALE"];
  v15 = [v12 objectForKeyedSubscript:@"MODEL_DATA"];
  if ([v13 isEqualToString:@"LOGISTIC"])
  {
    v16 = objc_opt_class();
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGBinaryClassificationModel.m" lineNumber:91 description:{@"Unknown model type: %@", v13}];

    v16 = 0;
  }

  v18 = [[v16 alloc] initWithPlist:v15 chunks:v10 context:v11];
  if (v18)
  {
    v33 = v15;
    v34 = v14;
    v19 = objc_alloc(MEMORY[0x277D41F60]);
    v20 = [v19 initWithClassNameKey:*MEMORY[0x277D41F98]];
    v21 = [v12 objectForKeyedSubscript:@"MODEL_FEATURIZER"];
    v32 = v20;
    v22 = [v20 readObjectWithPlist:v21 chunks:v10 context:v11];

    v23 = objc_alloc(MEMORY[0x277D41F68]);
    v24 = [v12 objectForKeyedSubscript:@"MODEL_SOURCE_SESSION_DESCRIPTOR"];
    v25 = [v23 initWithPlist:v24 chunks:v10 context:v11];

    if (v25)
    {
      v26 = [objc_alloc(MEMORY[0x277D02568]) initWithSessionDescriptor:v25 modelClass:objc_opt_class()];
      v14 = v34;
      v27 = [(SGModel *)self initWithModel:v18 locale:v34 featurizer:v22 modelSource:v26];
      if (v27)
      {
        v28 = [v12 objectForKeyedSubscript:@"MODEL_DECISION_THRESHOLD"];
        [v28 doubleValue];
        v27->_threshold = v29;

        v14 = v34;
      }

      self = v27;

      v30 = self;
    }

    else
    {
      v30 = 0;
      v14 = v34;
    }

    v15 = v33;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)predictLabelForInput:(id)a3
{
  v4 = [(SGModel *)self predictForInput:a3];
  v5 = [v4 firstObject];
  [v5 doubleValue];
  v7 = v6;

  v8 = MEMORY[0x277D42648];
  v9 = MEMORY[0x277CCABB0];
  [(SGBinaryClassificationModel *)self threshold];
  v11 = [v9 numberWithBool:v7 > v10];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v13 = [v8 tupleWithFirst:v11 second:v12];

  return v13;
}

@end