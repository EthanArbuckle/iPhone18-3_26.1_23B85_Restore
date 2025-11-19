@interface CDMCcqrServiceUtils
+ (BOOL)isNLRouterAssetAvailable:(id)a3;
+ (id)buildQueryRewriteRequest;
+ (id)leftShiftSiriResponse:(id)a3;
@end

@implementation CDMCcqrServiceUtils

+ (BOOL)isNLRouterAssetAvailable:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
    v25 = 2112;
    v26 = v3;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Checking NLRouter assets for locale: %@", buf, 0x16u);
  }

  v5 = [CDMAssetsUtils getCDMAssetsInfoForNLRouterWithLocale:v3];
  if (v5)
  {
    v6 = +[CDMAssetsManager getSingletonCDMAssetsManager];
    v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
    if ([v6 shouldReSetupForLocale:v3 cdmAssetsInfo:v5])
    {
      v22 = 0;
      [v6 setupForLocale:v7 cdmAssetsInfo:v5 error:&v22];
      v8 = v22;
      if (v8)
      {
        v9 = v8;
        v10 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
          v25 = 2112;
          v26 = v9;
          _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s NLRouter CDM assets manager failed to setup with error: %@.", buf, 0x16u);
        }

        goto LABEL_22;
      }
    }

    v9 = [v6 getAssetsByFactorNamesForCDMAssetsInfo:v5 assetDirPath:0 locale:v7];
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v9 descriptionInStringsFileFormat];
      *buf = 136315394;
      v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
      v25 = 2112;
      v26 = v20;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s AssetPath Info for NLRouter.  %@", buf, 0x16u);
    }

    v21 = 0;
    v12 = [v6 areAssetsAvailableForCDMAssetsInfo:v5 factorToAsset:v9 withError:&v21];
    v10 = v21;
    if (v10)
    {
      v13 = CDMOSLoggerForCategory(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
LABEL_21:

LABEL_22:
        v17 = 0;
        goto LABEL_23;
      }

      *buf = 136315394;
      v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
      v25 = 2112;
      v26 = v10;
      v14 = "%s NLRouter assets not available due to error %@.";
      v15 = v13;
      v16 = 22;
    }

    else
    {
      if (v12)
      {
        v17 = 1;
LABEL_23:

        goto LABEL_24;
      }

      v13 = CDMOSLoggerForCategory(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 136315138;
      v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
      v14 = "%s NLRouter assets not available";
      v15 = v13;
      v16 = 12;
    }

    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
    goto LABEL_21;
  }

  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "+[CDMCcqrServiceUtils isNLRouterAssetAvailable:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Failed to initialize CDMAssetsInfo for NLRouter. Asset registration failed", buf, 0xCu);
  }

  v17 = 0;
LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)buildQueryRewriteRequest
{
  v38[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v3 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v2 setAsrId:v3];

  [v2 setUtterance:@"helloo world"];
  v4 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"helloo", 0}];
  v5 = [CDMToken getTokenWith:@"helloo" cleanValue:@"helloo" normalizedValues:v4 isSignificant:1 isWhitespace:0];
  v38[0] = v5;
  v6 = [MEMORY[0x1E695DF70] arrayWithObjects:{@" ", 0}];
  v7 = [CDMToken getTokenWith:@" " cleanValue:@" " normalizedValues:v6 isSignificant:0 isWhitespace:1];
  v38[1] = v7;
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"world", 0}];
  v9 = [CDMToken getTokenWith:@"world" cleanValue:@"world" normalizedValues:v8 isSignificant:1 isWhitespace:0];
  v38[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v11 = [v10 copy];
  [v2 setNluInternalTokens:v11];

  v12 = MEMORY[0x1E695E0F0];
  v13 = [MEMORY[0x1E695E0F0] copy];
  [v2 setAsrUtteranceTokens:v13];

  [v2 setConfidence:0.0];
  v14 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v37 = v2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v16 = [v15 copy];
  [v14 setOriginalUtterances:v16];

  v17 = [v12 copy];
  [v14 setSiriResponses:v17];

  [v14 setLocale:@"en_US"];
  [v14 setTap2edit:0];
  [v14 setStartTimestamp:0];
  v18 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v19 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v18 setAsrId:v19];

  [v18 setUtterance:@"hello"];
  v20 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"hello", 0}];
  v21 = [CDMToken getTokenWith:@"hello" cleanValue:@"hello" normalizedValues:v20 isSignificant:1 isWhitespace:0];
  v36 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v23 = [v22 copy];
  [v18 setNluInternalTokens:v23];

  v24 = [v12 copy];
  [v18 setAsrUtteranceTokens:v24];

  [v18 setConfidence:0.0];
  v25 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v35 = v18;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [v26 copy];
  [v25 setOriginalUtterances:v27];

  v28 = [v12 copy];
  [v25 setSiriResponses:v28];

  [v25 setLocale:@"en_US"];
  [v25 setTap2edit:0];
  [v25 setStartTimestamp:0];
  v29 = objc_alloc_init(MEMORY[0x1E69D1358]);
  v34[0] = v14;
  v34[1] = v25;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v31 = [v30 copy];
  [v29 setOriginalInteractions:v31];

  v32 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)leftShiftSiriResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  v5 = [v3 originalInteractions];
  v6 = [v5 count];

  v7 = v6 - 1;
  if (v6 > 1)
  {
    for (i = 1; i != v6; ++i)
    {
      v9 = [v3 originalInteractions];
      v10 = [v9 objectAtIndexedSubscript:i];
      v11 = [v10 siriResponses];
      v12 = [v4 originalInteractions];
      v13 = [v12 objectAtIndexedSubscript:i - 1];
      [v13 setSiriResponses:v11];
    }
  }

  if (v6 >= 1)
  {
    v14 = objc_opt_new();
    v15 = [v4 originalInteractions];
    v16 = [v15 objectAtIndexedSubscript:v7];
    [v16 setSiriResponses:v14];
  }

  return v4;
}

@end