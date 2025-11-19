@interface CSAttSiriAttentionAssetsStatusProvider
+ (id)sharedInstance;
- (CSAttSiriAttentionAssetsStatusProvider)init;
- (CSAttSiriAttentionAssetsStatusProvider)initWithMitigationAssetHandler:(id)a3;
- (CSAttSiriAttentionAssetsStatusProviderDelegate)delegate;
- (void)_updateWithAsset:(id)a3;
@end

@implementation CSAttSiriAttentionAssetsStatusProvider

- (CSAttSiriAttentionAssetsStatusProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateWithAsset:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [MEMORY[0x277CEF368] sharedPreferences];
      v10 = [v9 languageCode];

      if (a3 && v10)
      {
        v20 = v10;
        v21[0] = MEMORY[0x277CBEC38];
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      }

      else
      {
        v11 = [MEMORY[0x277CBEAC0] dictionary];
      }

      v12 = v11;
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 attentionAssetStatus:v12];

      v14 = *MEMORY[0x277D015A8];
      if (os_log_type_enabled(*MEMORY[0x277D015A8], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "[CSAttSiriAttentionAssetsStatusProvider _updateWithAsset:]";
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Sent attention asset update status: %@", &v16, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (CSAttSiriAttentionAssetsStatusProvider)init
{
  v3 = +[CSAttSiriMitigationAssetHandler sharedHandlerDisabledOnDeviceCompilation];
  v4 = [(CSAttSiriAttentionAssetsStatusProvider *)self initWithMitigationAssetHandler:v3];

  return v4;
}

- (CSAttSiriAttentionAssetsStatusProvider)initWithMitigationAssetHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSAttSiriAttentionAssetsStatusProvider;
  v5 = [(CSAttSiriAttentionAssetsStatusProvider *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      [v4 registerObserver:v5];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __73__CSAttSiriAttentionAssetsStatusProvider_initWithMitigationAssetHandler___block_invoke;
      v9[3] = &unk_2784C6B78;
      v10 = v5;
      [v4 getMitigationAssetWithEndpointId:0 completion:v9];
    }

    v6 = *MEMORY[0x277D015A8];
    if (os_log_type_enabled(*MEMORY[0x277D015A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSAttSiriAttentionAssetsStatusProvider initWithMitigationAssetHandler:]";
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __73__CSAttSiriAttentionAssetsStatusProvider_initWithMitigationAssetHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      return [*(result + 32) _updateWithAsset:a2];
    }
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_53 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_53, &__block_literal_global_54);
  }

  v3 = sharedInstance_sharedPolicy;

  return v3;
}

void __56__CSAttSiriAttentionAssetsStatusProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAttSiriAttentionAssetsStatusProvider);
  v1 = sharedInstance_sharedPolicy;
  sharedInstance_sharedPolicy = v0;
}

@end