@interface CKVDonateTaskFactory
- (CKVDonateTaskFactory)init;
- (CKVDonateTaskFactory)initWithDirectory:(id)directory timeout:(double)timeout;
- (id)derivativeTaskForId:(unsigned __int16)id usingLocalization:(id)localization modifiedItemIds:(id)ids;
- (id)taskForId:(unsigned __int16)id usingLocalization:(id)localization;
- (id)verificationTaskForId:(unsigned __int16)id;
@end

@implementation CKVDonateTaskFactory

- (id)verificationTaskForId:(unsigned __int16)id
{
  v18 = *MEMORY[0x1E69E9840];
  if (id == 2)
  {
    v4 = [CKVDonateTask alloc];
    donatorProvider = self->_donatorProvider;
    v6 = [(KMProviderBridgeFactory *)self->_factory bridgeForOriginAppId:*MEMORY[0x1E69ABC70]];
    v7 = [(CKVDonateTask *)v4 initWithDonatorProvider:donatorProvider fullDatasetBridge:v6 timeout:self->_timeout];
  }

  else
  {
    idCopy = id;
    v9 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = v9;
      v13 = [v11 numberWithUnsignedShort:idCopy];
      v14 = 136315394;
      v15 = "[CKVDonateTaskFactory verificationTaskForId:]";
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&dword_1C8683000, v12, OS_LOG_TYPE_ERROR, "%s taskId: %@ is not a supported verification task", &v14, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)derivativeTaskForId:(unsigned __int16)id usingLocalization:(id)localization modifiedItemIds:(id)ids
{
  idCopy = id;
  v24 = *MEMORY[0x1E69E9840];
  localizationCopy = localization;
  idsCopy = ids;
  if (idCopy == 9)
  {
    siriLanguageCode = [localizationCopy siriLanguageCode];
    v11 = [CKVDonateTask alloc];
    donatorProvider = self->_donatorProvider;
    v13 = [(KMProviderBridgeFactory *)self->_factory globalTermMultiDatasetBridgeWithModifiedOriginAppIds:idsCopy languageCode:siriLanguageCode];
    v14 = [(CKVDonateTask *)v11 initWithDonatorProvider:donatorProvider multiDatasetBridge:v13 timeout:self->_timeout];
  }

  else
  {
    v15 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = v15;
      v19 = [v17 numberWithUnsignedShort:idCopy];
      v20 = 136315394;
      v21 = "[CKVDonateTaskFactory derivativeTaskForId:usingLocalization:modifiedItemIds:]";
      v22 = 2112;
      v23 = v19;
      _os_log_error_impl(&dword_1C8683000, v18, OS_LOG_TYPE_ERROR, "%s taskId: %@ is not a supported derivative task", &v20, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)taskForId:(unsigned __int16)id usingLocalization:(id)localization
{
  idCopy = id;
  v35 = *MEMORY[0x1E69E9840];
  localizationCopy = localization;
  if ([(CKVDonateTaskFactory *)self useSimulatedProviderBridge])
  {
    v7 = [CKVDonateTask alloc];
    donatorProvider = self->_donatorProvider;
    siriLanguageCode = [[CKVSimulatedMultiDatasetBridge alloc] initWithTask:idCopy];
    v10 = [(CKVDonateTask *)v7 initWithDonatorProvider:donatorProvider multiDatasetBridge:siriLanguageCode timeout:self->_timeout];
LABEL_3:

    goto LABEL_34;
  }

  v10 = 0;
  if (idCopy > 7)
  {
    if (idCopy > 100)
    {
      if ((idCopy - 101) >= 5)
      {
        goto LABEL_34;
      }

      goto LABEL_12;
    }

    switch(idCopy)
    {
      case 8:
        v20 = [CKVDonateTask alloc];
        v21 = self->_donatorProvider;
        factory = self->_factory;
        v23 = MEMORY[0x1E69ABC60];
        break;
      case 0xA:
        v20 = [CKVDonateTask alloc];
        v21 = self->_donatorProvider;
        factory = self->_factory;
        v23 = MEMORY[0x1E69ABC80];
        break;
      case 0xB:
        v20 = [CKVDonateTask alloc];
        v21 = self->_donatorProvider;
        factory = self->_factory;
        v23 = MEMORY[0x1E69ABC68];
        break;
      default:
        goto LABEL_34;
    }

LABEL_32:
    intentVocabularyMultiDatasetBridge = [(KMProviderBridgeFactory *)factory bridgeForOriginAppId:*v23];
    v14 = [(CKVDonateTask *)v20 initWithDonatorProvider:v21 fullDatasetBridge:intentVocabularyMultiDatasetBridge timeout:self->_timeout];
    goto LABEL_33;
  }

  if (idCopy > 3)
  {
    if (idCopy > 5)
    {
      v20 = [CKVDonateTask alloc];
      if (idCopy == 6)
      {
        v21 = self->_donatorProvider;
        factory = self->_factory;
        v23 = MEMORY[0x1E69ABC78];
      }

      else
      {
        v21 = self->_donatorProvider;
        factory = self->_factory;
        v23 = MEMORY[0x1E69ABCB0];
      }
    }

    else
    {
      if (idCopy != 4)
      {
        siriLanguageCode = [localizationCopy siriLanguageCode];
        v16 = [CKVDonateTask alloc];
        v17 = self->_donatorProvider;
        v18 = self->_factory;
        v19 = MEMORY[0x1E69ABC90];
LABEL_24:
        v24 = [(KMProviderBridgeFactory *)v18 bridgeForOriginAppId:*v19 languageCode:siriLanguageCode];
        v10 = [(CKVDonateTask *)v16 initWithDonatorProvider:v17 fullDatasetBridge:v24 timeout:self->_timeout];

        goto LABEL_3;
      }

      v20 = [CKVDonateTask alloc];
      v21 = self->_donatorProvider;
      factory = self->_factory;
      v23 = MEMORY[0x1E69ABC88];
    }

    goto LABEL_32;
  }

  if (idCopy > 1)
  {
    if (idCopy != 2)
    {
      siriLanguageCode = [localizationCopy siriLanguageCode];
      v16 = [CKVDonateTask alloc];
      v17 = self->_donatorProvider;
      v18 = self->_factory;
      v19 = MEMORY[0x1E69ABC58];
      goto LABEL_24;
    }

    v25 = [CKVDonateTask alloc];
    v26 = self->_donatorProvider;
    intentVocabularyMultiDatasetBridge = [(KMProviderBridgeFactory *)self->_factory bridgeForOriginAppId:*MEMORY[0x1E69ABC70]];
    v14 = [(CKVDonateTask *)v25 initWithDonatorProvider:v26 deltaDatasetBridge:intentVocabularyMultiDatasetBridge timeout:self->_timeout];
LABEL_33:
    v10 = v14;

    goto LABEL_34;
  }

  if (idCopy)
  {
    if (idCopy != 1)
    {
      goto LABEL_34;
    }

    v11 = [CKVDonateTask alloc];
    v12 = self->_donatorProvider;
    intentVocabularyMultiDatasetBridge = [(KMProviderBridgeFactory *)self->_factory intentVocabularyMultiDatasetBridge];
    v14 = [(CKVDonateTask *)v11 initWithDonatorProvider:v12 multiDatasetBridge:intentVocabularyMultiDatasetBridge timeout:self->_timeout];
    goto LABEL_33;
  }

LABEL_12:
  v15 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v28 = MEMORY[0x1E696AD98];
    v29 = v15;
    v30 = [v28 numberWithUnsignedShort:idCopy];
    v31 = 136315394;
    v32 = "[CKVDonateTaskFactory taskForId:usingLocalization:]";
    v33 = 2112;
    v34 = v30;
    _os_log_error_impl(&dword_1C8683000, v29, OS_LOG_TYPE_ERROR, "%s Failed to find donation task for: %@", &v31, 0x16u);
  }

  v10 = 0;
LABEL_34:

  return v10;
}

- (CKVDonateTaskFactory)initWithDirectory:(id)directory timeout:(double)timeout
{
  v26 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  v17.receiver = self;
  v17.super_class = CKVDonateTaskFactory;
  v7 = [(CKVDonateTaskFactory *)&v17 init];
  if (!v7)
  {
LABEL_6:
    v14 = v7;
    goto LABEL_10;
  }

  v8 = objc_alloc_init(CKVDonatorFactory);
  donatorProvider = v7->_donatorProvider;
  v7->_donatorProvider = v8;

  if (v7->_donatorProvider)
  {
    v7->_useSimulatedProviderBridge = 0;
    v7->_timeout = timeout;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = getKMProviderBridgeFactoryClass_softClass;
    v21 = getKMProviderBridgeFactoryClass_softClass;
    if (!getKMProviderBridgeFactoryClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v23 = __getKMProviderBridgeFactoryClass_block_invoke;
      v24 = &unk_1E831EBD0;
      v25 = &v18;
      __getKMProviderBridgeFactoryClass_block_invoke(&buf);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = [[v10 alloc] initWithDirectory:directoryCopy];
    factory = v7->_factory;
    v7->_factory = v12;

    goto LABEL_6;
  }

  v15 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CKVDonateTaskFactory initWithDirectory:timeout:]";
    _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s Invalid donate service provider", &buf, 0xCu);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (CKVDonateTaskFactory)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

@end