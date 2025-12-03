@interface SGBinaryClassificationModel
+ (id)modelForPath:(id)path modelClass:(Class)class;
+ (id)modelFromMobileAssetForEntity:(id)entity type:(id)type language:(id)language class:(Class)class;
+ (id)modelFromMobileAssetForName:(id)name language:(id)language;
- (SGBinaryClassificationModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)predictLabelForInput:(id)input;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation SGBinaryClassificationModel

+ (id)modelFromMobileAssetForName:(id)name language:(id)language
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  languageCopy = language;
  if ([nameCopy hasPrefix:@"args:"])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_autoreleasePoolPush();
    v10 = [nameCopy substringFromIndex:5];
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
        v16 = [self modelFromMobileAssetForEntity:v12 type:v13 language:languageCopy class:v15];
      }

      else
      {
        v19 = sgLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315138;
          uTF8String = [(NSString *)v14 UTF8String];
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
        uTF8String = [nameCopy UTF8String];
        _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "Invalid model string: %s", &v23, 0xCu);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"dataDetectionSignificantPhrasePhoneLogistic"])
  {
    v17 = objc_opt_class();
    v18 = @"significantPhoneNumber";
LABEL_13:
    v16 = [self modelFromMobileAssetForEntity:v18 type:@"Logistic" language:languageCopy class:v17];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"dataDetectionSignificantPhraseEmailLogistic"] || objc_msgSend(nameCopy, "isEqualToString:", @"dataDetectionSignificantPhraseEmailForIMessageLogistic"))
  {
    v17 = objc_opt_class();
    v18 = @"significantEmailAddress";
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"dataDetectionSignificantPhraseAddressLogistic"] || objc_msgSend(nameCopy, "isEqualToString:", @"dataDetectionSignificantPhraseAddressForIMessageLogistic"))
  {
    v17 = objc_opt_class();
    v18 = @"significantAddress";
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"selfIdentificationPhraseLogistic"])
  {
    v17 = objc_opt_class();
    v18 = @"selfId";
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"birthdayTextMessageCongrats"])
  {
    v17 = objc_opt_class();
    v18 = @"birthdayExtraction";
    goto LABEL_13;
  }

  v22 = sgLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315138;
    uTF8String = [nameCopy UTF8String];
    _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Unknown model name: %s", &v23, 0xCu);
  }

  v16 = 0;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)modelFromMobileAssetForEntity:(id)entity type:(id)type language:(id)language class:(Class)class
{
  v36 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  typeCopy = type;
  languageCopy = language;
  typeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@_%@%@Model.chunk", @"PREDICTION", languageCopy, entityCopy, typeCopy];
  asset = [MEMORY[0x277D02558] asset];
  v15 = [asset filesystemPathForAssetDataRelativePath:typeCopy];

  v16 = sgLogHandle();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      uTF8String = [entityCopy UTF8String];
      uTF8String2 = [typeCopy UTF8String];
      classCopy = class;
      uTF8String3 = [languageCopy UTF8String];
      asset2 = [MEMORY[0x277D02558] asset];
      *buf = 136316162;
      uTF8String5 = uTF8String;
      v28 = 2080;
      v29 = uTF8String2;
      v30 = 2080;
      v31 = uTF8String3;
      class = classCopy;
      v32 = 2048;
      assetVersion = [asset2 assetVersion];
      v34 = 2080;
      uTF8String4 = [v15 UTF8String];
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_INFO, "Loading model {entity: %s, type: %s, language: %s, version: %tu, path: %s}", buf, 0x34u);
    }

    v20 = [self modelForPath:v15 modelClass:class];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      uTF8String5 = [typeCopy UTF8String];
      _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "Failed to locate assets resource %s", buf, 0xCu);
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)modelForPath:(id)path modelClass:(Class)class
{
  v12 = *MEMORY[0x277D85DE8];
  pathCopy = path;
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
    uTF8String = [pathCopy UTF8String];
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Failed to load model chunk file resource %s", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)toPlistWithChunks:(id)chunks
{
  v29[6] = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  model = [(SGModel *)self model];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = @"LOGISTIC";
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    model2 = [(SGModel *)self model];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGBinaryClassificationModel.m" lineNumber:128 description:{@"Unknown type of model class: %@", v12}];

    v8 = 0;
  }

  v13 = objc_alloc(MEMORY[0x277D41F60]);
  v14 = [v13 initWithClassNameKey:*MEMORY[0x277D41F98]];
  featurizer = [(SGModel *)self featurizer];
  v16 = [v14 writeToPlistWithObject:featurizer andChunks:chunksCopy];

  v28[0] = @"MODEL_DATA";
  model3 = [(SGModel *)self model];
  v18 = [model3 toPlistWithChunks:chunksCopy];
  v29[0] = v18;
  v28[1] = @"MODEL_LOCALE";
  locale = [(SGModel *)self locale];
  v29[1] = locale;
  v29[2] = v8;
  v28[2] = @"MODEL_TYPE";
  v28[3] = @"MODEL_FEATURIZER";
  v29[3] = v16;
  v28[4] = @"MODEL_SOURCE_SESSION_DESCRIPTOR";
  modelSource = [(SGModel *)self modelSource];
  sessionDescriptor = [modelSource sessionDescriptor];
  v22 = [sessionDescriptor toPlistWithChunks:chunksCopy];

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

- (SGBinaryClassificationModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v12 = plistCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGBinaryClassificationModel.m" lineNumber:91 description:{@"Unknown model type: %@", v13}];

    v16 = 0;
  }

  v18 = [[v16 alloc] initWithPlist:v15 chunks:chunksCopy context:contextCopy];
  if (v18)
  {
    v33 = v15;
    v34 = v14;
    v19 = objc_alloc(MEMORY[0x277D41F60]);
    v20 = [v19 initWithClassNameKey:*MEMORY[0x277D41F98]];
    v21 = [v12 objectForKeyedSubscript:@"MODEL_FEATURIZER"];
    v32 = v20;
    v22 = [v20 readObjectWithPlist:v21 chunks:chunksCopy context:contextCopy];

    v23 = objc_alloc(MEMORY[0x277D41F68]);
    v24 = [v12 objectForKeyedSubscript:@"MODEL_SOURCE_SESSION_DESCRIPTOR"];
    v25 = [v23 initWithPlist:v24 chunks:chunksCopy context:contextCopy];

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

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
      v14 = v34;
    }

    v15 = v33;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)predictLabelForInput:(id)input
{
  v4 = [(SGModel *)self predictForInput:input];
  firstObject = [v4 firstObject];
  [firstObject doubleValue];
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