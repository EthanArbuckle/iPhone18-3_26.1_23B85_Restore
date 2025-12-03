@interface CDMSetupRequestCommand
+ (id)setupWithLanguageCode:(id)code;
- (CDMSetupRequestCommand)initWithDynamicConfig:(id)config selfMetadata:(id)metadata dataDispatcherContext:(id)context shouldPerformWarmup:(BOOL)warmup;
@end

@implementation CDMSetupRequestCommand

- (CDMSetupRequestCommand)initWithDynamicConfig:(id)config selfMetadata:(id)metadata dataDispatcherContext:(id)context shouldPerformWarmup:(BOOL)warmup
{
  configCopy = config;
  metadataCopy = metadata;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CDMSetupRequestCommand;
  v14 = [(CDMBaseCommand *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dynamicConfig, config);
    objc_storeStrong(&v15->_selfMetadata, metadata);
    objc_storeStrong(&v15->_dataDispatcherContext, context);
    v15->_shouldPerformWarmup = warmup;
  }

  return v15;
}

+ (id)setupWithLanguageCode:(id)code
{
  v13 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if ([codeCopy length])
  {
    v4 = [[CDMDynamicConfig alloc] initWithLanguageCode:codeCopy graphName:0 sandboxId:0 assetPaths:0];
    v5 = [[CDMSetupRequestCommand alloc] initWithDynamicConfig:v4];
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "+[CDMSetupRequestCommand setupWithLanguageCode:]";
      v11 = 2112;
      v12 = codeCopy;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s ERROR: Invalid setup: Lang:%@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end