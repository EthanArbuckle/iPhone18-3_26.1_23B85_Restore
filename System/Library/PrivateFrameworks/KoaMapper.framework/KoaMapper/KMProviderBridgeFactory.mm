@interface KMProviderBridgeFactory
+ (void)initialize;
- (KMProviderBridgeFactory)initWithDirectory:(id)a3;
- (id)bridgeForOriginAppId:(id)a3;
- (id)bridgeForOriginAppId:(id)a3 languageCode:(id)a4;
- (id)globalTermMultiDatasetBridgeWithModifiedOriginAppIds:(id)a3 languageCode:(id)a4;
- (id)intentVocabularyMultiDatasetBridge;
@end

@implementation KMProviderBridgeFactory

- (id)globalTermMultiDatasetBridgeWithModifiedOriginAppIds:(id)a3 languageCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[KMAppGlobalVocabularyMultiDatasetBridge alloc] initWithModifiedOriginAppIds:v6 languageCode:v5];

  return v7;
}

- (id)intentVocabularyMultiDatasetBridge
{
  v2 = objc_alloc_init(KMIntentVocabularyMultiDatasetBridge);

  return v2;
}

- (id)bridgeForOriginAppId:(id)a3 languageCode:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v8 = KMLogContextCore;
    if (!os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = 136315394;
    v14 = "[KMProviderBridgeFactory bridgeForOriginAppId:languageCode:]";
    v15 = 2112;
    v16 = 0;
    v9 = "%s invalid language code: %@";
LABEL_15:
    _os_log_error_impl(&dword_2559DF000, v8, OS_LOG_TYPE_ERROR, v9, &v13, 0x16u);
    goto LABEL_10;
  }

  if ([v5 isEqual:*MEMORY[0x277D22CC0]])
  {
    v7 = KMLaunchServicesBridge;
LABEL_8:
    v10 = [[v7 alloc] initWithLanguageCode:v6];
    goto LABEL_11;
  }

  if ([v5 isEqual:*MEMORY[0x277D22CF8]])
  {
    v7 = KMLanguageModelBridge;
    goto LABEL_8;
  }

  v8 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[KMProviderBridgeFactory bridgeForOriginAppId:languageCode:]";
    v15 = 2112;
    v16 = v5;
    v9 = "%s Unexpected originAppId: %@ for localized single-dataset bridge";
    goto LABEL_15;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)bridgeForOriginAppId:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqual:*MEMORY[0x277D22CC8]])
  {
    v5 = KMCalendarEventBridge;
LABEL_3:
    v6 = objc_alloc_init(v5);
LABEL_6:
    v7 = v6;
    goto LABEL_7;
  }

  if ([v4 isEqual:*MEMORY[0x277D22CD8]])
  {
    v6 = [[KMContactStoreBridge alloc] initWithDirectory:self->_directory];
    goto LABEL_6;
  }

  if ([v4 isEqual:*MEMORY[0x277D22CE0]])
  {
    v5 = KMCoreRoutineBridge;
    goto LABEL_3;
  }

  if ([v4 isEqual:*MEMORY[0x277D22CF0]])
  {
    v5 = KMHomeManagerBridge;
    goto LABEL_3;
  }

  if ([v4 isEqual:*MEMORY[0x277D22D00]])
  {
    v5 = KMPortraitEntitiesBridge;
    goto LABEL_3;
  }

  if ([v4 isEqual:*MEMORY[0x277D22CD0]])
  {
    v5 = KMRadioStationBridge;
    goto LABEL_3;
  }

  if ([v4 isEqual:*MEMORY[0x277D22CE8]])
  {
    v5 = KMFindMySyncDevicesBridge;
    goto LABEL_3;
  }

  v10 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[KMProviderBridgeFactory bridgeForOriginAppId:]";
    v13 = 2112;
    v14 = v4;
    _os_log_error_impl(&dword_2559DF000, v10, OS_LOG_TYPE_ERROR, "%s Unexpected originAppId: %@ for unlocalized single-dataset bridge", &v11, 0x16u);
  }

  v7 = 0;
LABEL_7:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (KMProviderBridgeFactory)initWithDirectory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KMProviderBridgeFactory;
  v6 = [(KMProviderBridgeFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directory, a3);
  }

  return v7;
}

+ (void)initialize
{
  if (KMLogInit_onceToken != -1)
  {
    dispatch_once(&KMLogInit_onceToken, &__block_literal_global_116);
  }
}

@end