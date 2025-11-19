@interface CDMSetupRequestCommand
+ (id)setupWithLanguageCode:(id)a3;
- (CDMSetupRequestCommand)initWithDynamicConfig:(id)a3 selfMetadata:(id)a4 dataDispatcherContext:(id)a5 shouldPerformWarmup:(BOOL)a6;
@end

@implementation CDMSetupRequestCommand

- (CDMSetupRequestCommand)initWithDynamicConfig:(id)a3 selfMetadata:(id)a4 dataDispatcherContext:(id)a5 shouldPerformWarmup:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = CDMSetupRequestCommand;
  v14 = [(CDMBaseCommand *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dynamicConfig, a3);
    objc_storeStrong(&v15->_selfMetadata, a4);
    objc_storeStrong(&v15->_dataDispatcherContext, a5);
    v15->_shouldPerformWarmup = a6;
  }

  return v15;
}

+ (id)setupWithLanguageCode:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[CDMDynamicConfig alloc] initWithLanguageCode:v3 graphName:0 sandboxId:0 assetPaths:0];
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
      v12 = v3;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s ERROR: Invalid setup: Lang:%@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end