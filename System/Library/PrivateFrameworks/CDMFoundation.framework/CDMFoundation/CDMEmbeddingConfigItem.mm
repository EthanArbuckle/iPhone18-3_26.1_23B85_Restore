@interface CDMEmbeddingConfigItem
+ (int64_t)getEmbeddingDimensionFromEmbeddingModelMetadata:(id)metadata;
- (CDMEmbeddingConfigItem)initWithCoder:(id)coder;
- (CDMEmbeddingConfigItem)initWithEmbeddingModelPath:(id)path isStableEmbeddingModel:(BOOL)model;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMEmbeddingConfigItem

- (void)encodeWithCoder:(id)coder
{
  embeddingModelPath = self->_embeddingModelPath;
  coderCopy = coder;
  [coderCopy encodeObject:embeddingModelPath forKey:@"embeddingModelPath"];
  [coderCopy encodeObject:self->_embeddingModelMetadata forKey:@"embeddingModelMetadata"];
  [coderCopy encodeObject:self->_embeddingModelDimension forKey:@"embeddingModelDimension"];
  [coderCopy encodeObject:self->_embeddingModelVersion forKey:@"embeddingModelVersion"];
  [coderCopy encodeBool:self->_isStableEmbeddingModel forKey:@"isStableEmbeddingModel"];
}

- (CDMEmbeddingConfigItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CDMEmbeddingConfigItem;
  v5 = [(CDMEmbeddingConfigItem *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingModelPath"];
    embeddingModelPath = v5->_embeddingModelPath;
    v5->_embeddingModelPath = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"embeddingModelMetadata"];
    embeddingModelMetadata = v5->_embeddingModelMetadata;
    v5->_embeddingModelMetadata = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingModelDimension"];
    embeddingModelDimension = v5->_embeddingModelDimension;
    v5->_embeddingModelDimension = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingModelVersion"];
    embeddingModelVersion = v5->_embeddingModelVersion;
    v5->_embeddingModelVersion = v15;

    v5->_isStableEmbeddingModel = [coderCopy decodeBoolForKey:@"isStableEmbeddingModel"];
  }

  return v5;
}

- (CDMEmbeddingConfigItem)initWithEmbeddingModelPath:(id)path isStableEmbeddingModel:(BOOL)model
{
  modelCopy = model;
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CDMEmbeddingConfigItem;
  v8 = [(CDMEmbeddingConfigItem *)&v18 init];
  if (v8)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "[CDMEmbeddingConfigItem initWithEmbeddingModelPath:isStableEmbeddingModel:]";
      v21 = 2112;
      v22 = pathCopy;
      v23 = 1024;
      v24 = modelCopy;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Init with embedding model path: %@, stable embedding model flag: %d.", buf, 0x1Cu);
    }

    objc_storeStrong(&v8->_embeddingModelPath, path);
    v10 = [CDMAssetsUtils loadAssetMetadataFromAsset:pathCopy];
    embeddingModelMetadata = v8->_embeddingModelMetadata;
    v8->_embeddingModelMetadata = v10;

    v8->_isStableEmbeddingModel = modelCopy;
    v12 = [CDMAssetsUtils getAssetVersionFromAssetMetadata:v8->_embeddingModelMetadata];
    embeddingModelVersion = v8->_embeddingModelVersion;
    v8->_embeddingModelVersion = v12;

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{+[CDMEmbeddingConfigItem getEmbeddingDimensionFromEmbeddingModelMetadata:](CDMEmbeddingConfigItem, "getEmbeddingDimensionFromEmbeddingModelMetadata:", v8->_embeddingModelMetadata)}];
    embeddingModelDimension = v8->_embeddingModelDimension;
    v8->_embeddingModelDimension = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (int64_t)getEmbeddingDimensionFromEmbeddingModelMetadata:(id)metadata
{
  v17 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v4 = metadataCopy;
  if (!metadataCopy)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "+[CDMEmbeddingConfigItem getEmbeddingDimensionFromEmbeddingModelMetadata:]";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Input model metadata is nil. Return default embedding model dimension.", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  v5 = [(__CFString *)metadataCopy objectForKey:@"EmbeddingDimension"];
  v6 = CDMOSLoggerForCategory(0);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "+[CDMEmbeddingConfigItem getEmbeddingDimensionFromEmbeddingModelMetadata:]";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = @"EmbeddingDimension";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Model metadata: %@ doesn't have key: %@. Return default embedding model dimension.", &v11, 0x20u);
    }

    v5 = 0;
LABEL_11:
    integerValue = 192;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "+[CDMEmbeddingConfigItem getEmbeddingDimensionFromEmbeddingModelMetadata:]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Found embedding model dimension config: %@ in embedding model metadata: %@.", &v11, 0x20u);
  }

  integerValue = [v5 integerValue];
LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

@end