@interface CSAttSiriMitigationAssetProvider
+ (id)sharedHandler;
- (CSAttSiriMitigationAssetProvider)initWithAssetHanlder:(id)hanlder;
- (void)getAllowPhrasesListOverrideFileWithCompletion:(id)completion;
- (void)getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:(id)completion;
- (void)getNeuralCombinerConfigFileWithCompletion:(id)completion;
- (void)getUESConfigFileWithCompletion:(id)completion;
- (void)shouldRunCAROverrideWithCompletion:(id)completion;
@end

@implementation CSAttSiriMitigationAssetProvider

+ (id)sharedHandler
{
  if (sharedHandler_onceToken_19356 != -1)
  {
    dispatch_once(&sharedHandler_onceToken_19356, &__block_literal_global_19357);
  }

  v3 = sharedHandler_sharedHandler_19358;

  return v3;
}

- (void)shouldRunCAROverrideWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  assetHandler = self->_assetHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CSAttSiriMitigationAssetProvider_shouldRunCAROverrideWithCompletion___block_invoke;
  v7[3] = &unk_2784C55B0;
  v9 = v10;
  v6 = completionCopy;
  v8 = v6;
  [(CSAttSiriMitigationAssetHandler *)assetHandler getMitigationAssetWithEndpointId:0 completion:v7];

  _Block_object_dispose(v10, 8);
}

void __71__CSAttSiriMitigationAssetProvider_shouldRunCAROverrideWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && !v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 shouldRunCAROverrideForCategory:*MEMORY[0x277D01998]];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 40) + 8) + 24));
  }
}

- (void)getUESConfigFileWithCompletion:(id)completion
{
  completionCopy = completion;
  assetHandler = self->_assetHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CSAttSiriMitigationAssetProvider_getUESConfigFileWithCompletion___block_invoke;
  v7[3] = &unk_2784C6B00;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSAttSiriMitigationAssetHandler *)assetHandler getMitigationAssetWithEndpointId:0 completion:v7];
}

void __67__CSAttSiriMitigationAssetProvider_getUESConfigFileWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = &stru_28363DA48;
  if (v8 && !v5)
  {
    v6 = [v8 uesConfigFileForCategory:*MEMORY[0x277D01998]];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)getAllowPhrasesListOverrideFileWithCompletion:(id)completion
{
  completionCopy = completion;
  assetHandler = self->_assetHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__CSAttSiriMitigationAssetProvider_getAllowPhrasesListOverrideFileWithCompletion___block_invoke;
  v7[3] = &unk_2784C6B00;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSAttSiriMitigationAssetHandler *)assetHandler getMitigationAssetWithEndpointId:0 completion:v7];
}

void __82__CSAttSiriMitigationAssetProvider_getAllowPhrasesListOverrideFileWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = &stru_28363DA48;
  if (v8 && !v5)
  {
    v6 = [v8 allowKeywordsFile];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:(id)completion
{
  completionCopy = completion;
  assetHandler = self->_assetHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__CSAttSiriMitigationAssetProvider_getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion___block_invoke;
  v7[3] = &unk_2784C6B00;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSAttSiriMitigationAssetHandler *)assetHandler getMitigationAssetWithEndpointId:0 completion:v7];
}

void __91__CSAttSiriMitigationAssetProvider_getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  v9 = &stru_28363DA48;
  v10 = 0;
  if (!v5 || v6)
  {
    goto LABEL_24;
  }

  v9 = [v5 mitigationConfigFileForCategory:*MEMORY[0x277D01998]];
  v11 = MEMORY[0x277D015A8];
  if (v9)
  {
    v12 = [MEMORY[0x277D01808] decodeConfigFrom:v5];
    v13 = [v12 objectForKeyedSubscript:&unk_283667610];
    if (v13)
    {
      [MEMORY[0x277D01810] getCachedIrFromMilFilePath:v13 modelTye:3 asset:v5];
    }

    else
    {
      [MEMORY[0x277D01810] getCachedIrFromConfigPath:v9 modelTye:3 asset:v5];
    }
    v10 = ;

    if (!v10)
    {
      goto LABEL_13;
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 fileExistsAtPath:v10];

    if (v16)
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [v17 isReadableFileAtPath:v10];

      if (v18)
      {
LABEL_13:
        v8 = 0;
        goto LABEL_22;
      }

      v23 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "[CSAttSiriMitigationAssetProvider getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:]_block_invoke";
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s GetNeuralCombinerConfigFileAndBnnsIrPathWithCompletion cannot read the bnnsIrFile: %@", &v29, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01590];
      v22 = 2420;
    }

    else
    {
      v19 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "[CSAttSiriMitigationAssetProvider getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:]_block_invoke";
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_222E4D000, v19, OS_LOG_TYPE_ERROR, "%s GetNeuralCombinerConfigFileAndBnnsIrPathWithCompletion cannot find the bnnsIrFile: %@", &v29, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01590];
      v22 = 2419;
    }

    v8 = [v20 errorWithDomain:v21 code:v22 userInfo:0];
  }

  else
  {
    v14 = *MEMORY[0x277D015A8];
    if (os_log_type_enabled(*MEMORY[0x277D015A8], OS_LOG_TYPE_ERROR))
    {
      v27 = v14;
      v28 = [v5 resourcePath];
      v29 = 136315394;
      v30 = "[CSAttSiriMitigationAssetProvider getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:]_block_invoke";
      v31 = 2112;
      v32 = v28;
      _os_log_error_impl(&dword_222E4D000, v27, OS_LOG_TYPE_ERROR, "%s Get not fetch config file from asset: %@", &v29, 0x16u);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:2501 userInfo:0];
  }

  v10 = 0;
LABEL_22:
  v24 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315394;
    v30 = "[CSAttSiriMitigationAssetProvider getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion:]_block_invoke";
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s getting irCachePath for getNeuralCombinerConfigFileAndBnnsIrPathWithCompletion: %@", &v29, 0x16u);
  }

LABEL_24:
  v25 = *(a1 + 32);
  if (v25)
  {
    (*(v25 + 16))(v25, v9, v10, v8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)getNeuralCombinerConfigFileWithCompletion:(id)completion
{
  completionCopy = completion;
  assetHandler = self->_assetHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CSAttSiriMitigationAssetProvider_getNeuralCombinerConfigFileWithCompletion___block_invoke;
  v7[3] = &unk_2784C6B00;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSAttSiriMitigationAssetHandler *)assetHandler getMitigationAssetWithEndpointId:0 completion:v7];
}

void __78__CSAttSiriMitigationAssetProvider_getNeuralCombinerConfigFileWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = &stru_28363DA48;
  if (v8 && !v5)
  {
    v6 = [v8 mitigationConfigFileForCategory:*MEMORY[0x277D01998]];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (CSAttSiriMitigationAssetProvider)initWithAssetHanlder:(id)hanlder
{
  hanlderCopy = hanlder;
  v11.receiver = self;
  v11.super_class = CSAttSiriMitigationAssetProvider;
  v6 = [(CSAttSiriMitigationAssetProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetHandler, hanlder);
    if (!v7->_assetHandler)
    {
      v8 = +[CSAttSiriMitigationAssetHandler sharedHandlerDisabledOnDeviceCompilation];
      assetHandler = v7->_assetHandler;
      v7->_assetHandler = v8;
    }
  }

  return v7;
}

void __49__CSAttSiriMitigationAssetProvider_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(CSAttSiriMitigationAssetProvider);
  v1 = sharedHandler_sharedHandler_19358;
  sharedHandler_sharedHandler_19358 = v0;
}

@end