@interface CSUAFAssetManager
+ (id)sharedInstance;
- (void)_getInstalledAssetofType:(unint64_t)a3 forLocale:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)getInstalledAssetofType:(unint64_t)a3 forLocale:(id)a4 completion:(id)a5;
- (void)mapAssetToExclaveKit:(id)a3 completion:(id)a4;
- (void)retryMappingAssetToExclaveKit:(id)a3 completion:(id)a4;
@end

@implementation CSUAFAssetManager

+ (id)sharedInstance
{
  if (+[CSUtils supportsUnifiedAssetFramework]&& sharedInstance_onceToken_6812 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6812, &__block_literal_global_6813);
  }

  v2 = sharedInstance_sharedManager_6814;

  return v2;
}

uint64_t __35__CSUAFAssetManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedManager_6814 = [(CSUAFAssetManagerBase *)[CSUAFAssetManager alloc] initWithForceSetIsExclave:+[CSUtils exclaveManagerProxy:"isExclaveHardware"], 0];

  return MEMORY[0x1EEE66BB8]();
}

- (void)retryMappingAssetToExclaveKit:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_assetSet;
  v9 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSUAFAssetManager retryMappingAssetToExclaveKit:completion:]";
    v13 = 2112;
    v14 = @"com.apple.siri.sp.invocation";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Retrying to mapping asset %@ to ExclaveKit", &v11, 0x16u);
  }

  [(CSUAFAssetManagerBase *)self retryMappingAssetToExclaveKit:v6 assetName:@"com.apple.siri.sp.invocation" assetSet:v8 completion:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)mapAssetToExclaveKit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSUAFAssetManagerBase *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CSUAFAssetManager_mapAssetToExclaveKit_completion___block_invoke;
  block[3] = &unk_1E865C678;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __53__CSUAFAssetManager_mapAssetToExclaveKit_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = @"com.apple.siri.sp.invocation";
  v3 = *(*(a1 + 32) + 64);
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
    v20 = 2112;
    v21 = @"com.apple.siri.sp.invocation";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit", &v18, 0x16u);
  }

  if (!*(a1 + 40))
  {
    v10 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Secure Mobile Asset Loader Service", &v18, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = &unk_1F5916608;
    goto LABEL_22;
  }

  if ([*(a1 + 32) isExclaveHardware])
  {
    v5 = *(a1 + 32);
    if (!*(v5 + 72))
    {
      if ([@"com.apple.siri.sp.invocation" isEqualToString:@"com.apple.siri.sp.adblocker"])
      {
        v6 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
          _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Adblocker Secure Mobile Asset Loader Service", &v18, 0xCu);
        }

        v7 = MEMORY[0x1E696ABC0];
        v8 = &unk_1F5916658;
        v9 = 2153;
        goto LABEL_23;
      }

      v5 = *(a1 + 32);
    }

    v12 = *(v5 + 64);
    if (v12)
    {
      v13 = [v12 assetNamed:@"com.apple.siri.sp.invocation"];

      if (v13)
      {
        goto LABEL_26;
      }
    }

    v14 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Secure Mobile Asset Loader Service", &v18, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = &unk_1F5916680;
LABEL_22:
    v9 = 2151;
    goto LABEL_23;
  }

  v11 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s The hardware does not support secure exclave. Not starting Secure Mobile Asset Loader Service", &v18, 0xCu);
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = &unk_1F5916630;
  v9 = 2155;
LABEL_23:
  v15 = [v7 errorWithDomain:@"com.apple.corespeech" code:v9 userInfo:v8];
  if (!v15)
  {
LABEL_26:
    [*(a1 + 32) mapAssetToExclaveKit:*(a1 + 40) assetName:@"com.apple.siri.sp.invocation" assetSet:v3 completion:*(a1 + 48)];
    v15 = 0;
    goto LABEL_27;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v15, 0);
  }

LABEL_27:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_getInstalledAssetofType:(unint64_t)a3 forLocale:(id)a4 completion:(id)a5
{
  v78[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __67__CSUAFAssetManager__getInstalledAssetofType_forLocale_completion___block_invoke;
  v57[3] = &unk_1E865AEC8;
  v10 = v9;
  v58 = v10;
  v11 = MEMORY[0x1E12BA300](v57);
  if (a3 > 6 || ((1 << a3) & 0x51) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported assetType: %lu", a3];
    v19 = MEMORY[0x1E696ABC0];
    v77 = @"reason";
    v78[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v17 = v19;
    v18 = 2152;
    goto LABEL_8;
  }

  v12 = +[CSFPreferences sharedPreferences];
  v13 = [v12 bypassTrialAssets];

  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF honoring Trial asset bypass is set"];
    v15 = MEMORY[0x1E696ABC0];
    v75 = @"reason";
    v76 = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v17 = v15;
    v18 = 1601;
LABEL_8:
    v20 = [v17 errorWithDomain:@"com.apple.corespeech" code:v18 userInfo:v16];

    (v11)[2](v11, 0, v20);
    goto LABEL_29;
  }

  if (a3 == 4)
  {
    v14 = @"generic";
  }

  else
  {
    v14 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  }

  v21 = [MEMORY[0x1E69DEEE8] sharedManager];
  v73 = @"attention.language";
  v74 = v14;
  v22 = 0x1E695D000uLL;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v20 = [v21 retrieveAssetSet:@"com.apple.siri.understanding" usages:v23];

  if (a3 == 4)
  {
    objc_storeStrong(&self->_adBlockerAssetSet, v20);
    v24 = kSiriAttAssetAdBlockerAssetName;
  }

  else
  {
    objc_storeStrong(&self->_assetSet, v20);
    v24 = kSiriAttAssetMitigationAssetName;
    if (!a3)
    {
      v24 = kSiriAttAssetInvocationAssetName;
    }
  }

  v56 = v8;
  v25 = *v24;
  v26 = [v20 assetNamed:v25];
  v27 = v26;
  if (!v26)
  {
    goto LABEL_23;
  }

  v28 = [v26 metadata];
  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [v27 metadata];
  v31 = [v30 objectForKeyedSubscript:@"locale"];

  v22 = 0x1E695D000;
  if (v31)
  {
    v32 = [v27 metadata];
    v33 = [v32 objectForKeyedSubscript:@"locale"];
    v34 = [v33 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if (([(__CFString *)v14 isEqualToString:v34]& 1) != 0)
    {
      v35 = [v27 location];
      v36 = [v35 path];

      v37 = [v27 metadata];
      v53 = [v37 objectForKeyedSubscript:*MEMORY[0x1E69DEF50]];

      v38 = [v27 metadata];
      v52 = [v38 objectForKeyedSubscript:*MEMORY[0x1E69DEF30]];

      if (v36 && v53)
      {
        log = CSLogCategoryAsset;
        v8 = v56;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v60 = "[CSUAFAssetManager _getInstalledAssetofType:forLocale:completion:]";
          v61 = 2048;
          v62 = a3;
          v63 = 2112;
          v64 = v56;
          v65 = 2112;
          v66 = v53;
          _os_log_impl(&dword_1DDA4B000, log, OS_LOG_TYPE_DEFAULT, "%s Got UAF Asset for assetType: %lu for locale: %@ version: %@", buf, 0x2Au);
        }

        v39 = a3;
        v40 = v53;
        loga = [CSAsset assetForAssetType:v39 resourcePath:v36 configVersion:v53 assetProvider:2 assetVariant:0 identity:0 assistantLanguageCode:0 uafAssetVersion:v52];
        (v11[2])(v11);
      }

      else
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF asset path || version missing: %@", v25];
        v46 = MEMORY[0x1E696ABC0];
        v67 = @"reason";
        v68 = v45;
        loga = v45;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v48 = [v46 errorWithDomain:@"com.apple.corespeech" code:2151 userInfo:v47];

        (v11)[2](v11, 0, v48);
        v8 = v56;
        v40 = v53;
      }
    }

    else
    {
      v8 = v56;
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatch between Current locale: %@ & UAFAsset locale: %@", v56, v34];
      v54 = MEMORY[0x1E696ABC0];
      v69 = @"reason";
      v70 = v36;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      [v54 errorWithDomain:@"com.apple.corespeech" code:1601 userInfo:v43];
      v44 = v55 = v25;

      v40 = v44;
      v25 = v55;
      (v11)[2](v11, 0, v40);
    }
  }

  else
  {
LABEL_23:
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get UAF asset: %@", v25];
    v41 = MEMORY[0x1E696ABC0];
    v71 = @"reason";
    v72 = v34;
    v42 = [*(v22 + 3872) dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v36 = [v41 errorWithDomain:@"com.apple.corespeech" code:2151 userInfo:v42];

    (v11)[2](v11, 0, v36);
    v8 = v56;
  }

LABEL_29:
  v49 = *MEMORY[0x1E69E9840];
}

void __67__CSUAFAssetManager__getInstalledAssetofType_forLocale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v10 = v7;
      v11 = [v6 localizedDescription];
      v12 = [v6 userInfo];
      v13 = 136315650;
      v14 = "[CSUAFAssetManager _getInstalledAssetofType:forLocale:completion:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s %@ - %@", &v13, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getInstalledAssetofType:(unint64_t)a3 forLocale:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSUAFAssetManagerBase *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CSUAFAssetManager_getInstalledAssetofType_forLocale_completion___block_invoke;
  v13[3] = &unk_1E865BFE0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSUAFAssetManager dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSUAFAssetManager;
  [(CSUAFAssetManager *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end