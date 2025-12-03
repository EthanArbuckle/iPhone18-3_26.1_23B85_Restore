@interface CDMAssetsUtils
+ (BOOL)areFactorsValid:(id)valid inKnownFactors:(id)factors;
+ (BOOL)isNLAssetValid:(id)valid forLocale:(id)locale;
+ (BOOL)isNLAssetValid:(id)valid forLocale:(id)locale withFolders:(id)folders useFileManager:(id)manager withAssetAvailabilityType:(int64_t)type;
+ (BOOL)registerWithAssetsDelegate:(id)delegate withCDMAssetsInfo:(id)info withType:(int64_t)type withLocale:(id)locale;
+ (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type withLocale:(id)locale;
+ (id)cdmAssetSetToStr:(int64_t)str;
+ (id)extractAssetKeyFromLocale:(id)locale;
+ (id)filterFactors:(id)factors forAssetSets:(id)sets withAssetSetNameToFactors:(id)toFactors;
+ (id)filterFactors:(id)factors withFactorsInAssetSet:(id)set;
+ (id)findExistFolderInAssetFolders:(id)folders underBasePath:(id)path useFileManager:(id)manager;
+ (id)getAssetVersionFromAssetMetadata:(id)metadata;
+ (id)getAssistantUsages:(id)usages;
+ (id)getCDMAssetsInfoForNLRouterWithLocale:(id)locale;
+ (id)getGraphNameForAssetAvailabilityType:(int64_t)type;
+ (id)getLanguageFromLocaleString:(id)string;
+ (id)getNLUsages:(id)usages;
+ (id)getSsuUsages:(id)usages;
+ (id)loadAssetMetadataFromAsset:(id)asset;
@end

@implementation CDMAssetsUtils

+ (id)extractAssetKeyFromLocale:(id)locale
{
  localeCopy = locale;
  v4 = [&unk_1F5819CB8 objectForKeyedSubscript:localeCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [CDMAssetsUtils getLanguageFromLocaleString:localeCopy];
  }

  v7 = v6;

  return v7;
}

+ (id)cdmAssetSetToStr:(int64_t)str
{
  if (str > 3)
  {
    return 0;
  }

  else
  {
    return off_1E862F340[str];
  }
}

+ (id)getNLUsages:(id)usages
{
  usagesCopy = usages;
  v4 = objc_alloc_init(CDMAssetsUsages);
  [(CDMAssetsUsages *)v4 addUsageForKey:0 withAssetUsageValue:usagesCopy];

  return v4;
}

+ (id)getSsuUsages:(id)usages
{
  usagesCopy = usages;
  v4 = objc_alloc_init(CDMAssetsUsages);
  [(CDMAssetsUsages *)v4 addUsageForKey:0 withAssetUsageValue:usagesCopy];

  [(CDMAssetsUsages *)v4 addUsageForKey:2 withAssetUsageValue:@"enabled"];

  return v4;
}

+ (id)getAssistantUsages:(id)usages
{
  usagesCopy = usages;
  v4 = objc_alloc_init(CDMAssetsUsages);
  [(CDMAssetsUsages *)v4 addUsageForKey:0 withAssetUsageValue:usagesCopy];

  [(CDMAssetsUsages *)v4 addUsageForKey:1 withAssetUsageValue:@"enabled"];

  return v4;
}

+ (id)filterFactors:(id)factors forAssetSets:(id)sets withAssetSetNameToFactors:(id)toFactors
{
  v28 = *MEMORY[0x1E69E9840];
  factorsCopy = factors;
  setsCopy = sets;
  toFactorsCopy = toFactors;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([factorsCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = setsCopy;
    v10 = setsCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [toFactorsCopy objectForKeyedSubscript:{v15, v21}];
          v17 = [CDMAssetsUtils filterFactors:factorsCopy withFactorsInAssetSet:v16];
          v18 = v17;
          if (v17 && [v17 count])
          {
            [v22 setObject:v18 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    setsCopy = v21;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (BOOL)areFactorsValid:(id)valid inKnownFactors:(id)factors
{
  v28 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  factorsCopy = factors;
  if ([validCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = validCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([factorsCopy containsObject:{v12, v17}] & 1) == 0)
          {
            v14 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v22 = "+[CDMAssetsUtils areFactorsValid:inKnownFactors:]";
              v23 = 2112;
              v24 = v12;
              v25 = 2112;
              v26 = factorsCopy;
              _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Can't find factor: %@ in factor to among known factors: %@. Return NO.", buf, 0x20u);
            }

            v13 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_14:
  }

  else
  {
    v13 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)filterFactors:(id)factors withFactorsInAssetSet:(id)set
{
  v5 = MEMORY[0x1E695DFA8];
  factorsCopy = factors;
  v7 = [v5 setWithArray:set];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:factorsCopy];

  [v7 intersectSet:v8];
  allObjects = [v7 allObjects];

  return allObjects;
}

+ (BOOL)isNLAssetValid:(id)valid forLocale:(id)locale
{
  v18 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  localeCopy = locale;
  if (!validCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    v14 = 136315138;
    v15 = "+[CDMAssetsUtils isNLAssetValid:forLocale:]";
    v11 = "%s NL asset is nil. It is invalid. Return NO.";
LABEL_18:
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, v11, &v14, 0xCu);
    goto LABEL_15;
  }

  if (![validCopy getAssetType])
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v14 = 136315138;
    v15 = "+[CDMAssetsUtils isNLAssetValid:forLocale:]";
    v11 = "%s NilAsset received. It is invalid. Return NO.";
    goto LABEL_18;
  }

  getAssetPath = [validCopy getAssetPath];
  v8 = getAssetPath;
  if (getAssetPath && [getAssetPath length])
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "+[CDMAssetsUtils isNLAssetValid:forLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s NL asset is valid. Return YES.", &v14, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "+[CDMAssetsUtils isNLAssetValid:forLocale:]";
      v16 = 2112;
      v17 = validCopy;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s NL asset: %@ has nil asset path. It is invalid. Return NO.", &v14, 0x16u);
    }

    v10 = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)isNLAssetValid:(id)valid forLocale:(id)locale withFolders:(id)folders useFileManager:(id)manager withAssetAvailabilityType:(int64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  localeCopy = locale;
  foldersCopy = folders;
  managerCopy = manager;
  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315906;
    v25 = "+[CDMAssetsUtils isNLAssetValid:forLocale:withFolders:useFileManager:withAssetAvailabilityType:]";
    v26 = 2112;
    typeCopy = validCopy;
    v28 = 2112;
    v29 = localeCopy;
    v30 = 2112;
    v31 = foldersCopy;
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Check is NL asset: %@ valid for locale: %@ with folders :%@.", &v24, 0x2Au);
  }

  if ([self isNLAssetValid:validCopy forLocale:localeCopy])
  {
    getAssetPath = [validCopy getAssetPath];
    if ([managerCopy fileExistsAtPath:getAssetPath])
    {
      if (type)
      {
        v18 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v24 = 136315394;
          v25 = "+[CDMAssetsUtils isNLAssetValid:forLocale:withFolders:useFileManager:withAssetAvailabilityType:]";
          v26 = 2048;
          typeCopy = type;
          _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Skipping top level folder check for assetAvailabilityType: %ld", &v24, 0x16u);
        }

        v19 = 1;
        goto LABEL_12;
      }

      if (foldersCopy && [foldersCopy count])
      {
        v22 = [self findExistFolderInAssetFolders:foldersCopy underBasePath:getAssetPath useFileManager:managerCopy];

        if (v22)
        {
          v19 = 1;
          goto LABEL_13;
        }

        v18 = CDMOSLoggerForCategory(0);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }

        v24 = 136315394;
        v25 = "+[CDMAssetsUtils isNLAssetValid:forLocale:withFolders:useFileManager:withAssetAvailabilityType:]";
        v26 = 2112;
        typeCopy = validCopy;
        v23 = "%s No folder exists for NLAsset: %@. Return NO.";
        goto LABEL_22;
      }

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136315394;
        v25 = "+[CDMAssetsUtils isNLAssetValid:forLocale:withFolders:useFileManager:withAssetAvailabilityType:]";
        v26 = 2112;
        typeCopy = validCopy;
        v23 = "%s No folders specified for NL asset %@.";
LABEL_22:
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, v23, &v24, 0x16u);
      }
    }

    else
    {
      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136315394;
        v25 = "+[CDMAssetsUtils isNLAssetValid:forLocale:withFolders:useFileManager:withAssetAvailabilityType:]";
        v26 = 2112;
        typeCopy = getAssetPath;
        v23 = "%s Base asset path does not exist %@.";
        goto LABEL_22;
      }
    }

LABEL_11:
    v19 = 0;
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)getAssetVersionFromAssetMetadata:(id)metadata
{
  v14 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKey:@"version"];
  if (!v4)
  {
    v4 = [metadataCopy objectForKey:@"VERSION"];
  }

  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "+[CDMAssetsUtils getAssetVersionFromAssetMetadata:]";
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = metadataCopy;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Asset version is: %@ for asset metadata: %@.", &v8, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)loadAssetMetadataFromAsset:(id)asset
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [asset stringByAppendingPathComponent:@"version.yaml"];
  v34 = 0;
  v4 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v3 encoding:4 error:&v34];
  v5 = v34;
  if (v5)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "+[CDMAssetsUtils loadAssetMetadataFromAsset:]";
      v38 = 2112;
      v39 = v3;
      v40 = 2112;
      v41 = v5;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Error while loading file: %@. Error: %@.", buf, 0x20u);
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  else
  {
    v27 = v3;
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v26 = v4;
    v8 = [v4 componentsSeparatedByCharactersInSet:newlineCharacterSet];

    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          if ([v13 length])
          {
            v14 = [v13 rangeOfString:@":"];
            if (v15 && v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = v14;
              v18 = [v13 substringToIndex:v14];
              whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              v21 = [v13 substringFromIndex:v17 + 1];
              whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              v23 = [v21 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

              [v28 setValue:v23 forKey:v20];
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    v4 = v26;
    v3 = v27;
    v5 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)findExistFolderInAssetFolders:(id)folders underBasePath:(id)path useFileManager:(id)manager
{
  v33 = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  pathCopy = path;
  managerCopy = manager;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = foldersCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [pathCopy stringByAppendingPathComponent:{v15, v22}];
        if ([managerCopy fileExistsAtPath:v16])
        {
          v19 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v27 = "+[CDMAssetsUtils findExistFolderInAssetFolders:underBasePath:useFileManager:]";
            v28 = 2112;
            v29 = v16;
            v30 = 2112;
            v31 = v15;
            _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Path %@ exists. Return %@.", buf, 0x20u);
          }

          v18 = v15;
          v17 = v10;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v27 = "+[CDMAssetsUtils findExistFolderInAssetFolders:underBasePath:useFileManager:]";
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = pathCopy;
    _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s No folder exists in %@ under %@. Return nil.", buf, 0x20u);
  }

  v18 = 0;
LABEL_15:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type withLocale:(id)locale
{
  v26 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  localeCopy = locale;
  if (!localeCopy)
  {
    v9 = objc_alloc_init(CDMConfig);
    localeCopy = [(CDMConfig *)v9 defaultLocaleIdentifier];
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315394;
      v23 = "+[CDMAssetsUtils registerWithAssetsDelegate:withType:withLocale:]";
      v24 = 2112;
      v25 = localeCopy;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Locale was nil. Update it to Assistant locale: %@", &v22, 0x16u);
    }
  }

  if (type != 1)
  {
    if (!type)
    {
      v11 = [(CDMServiceGraph *)CDMNLUServiceGraph getAssetsForSetup:localeCopy];
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136315394;
        v23 = "+[CDMAssetsUtils registerWithAssetsDelegate:withType:withLocale:]";
        v24 = 2112;
        v25 = localeCopy;
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Register assets delegate for NLX assets for locale: %@", &v22, 0x16u);
      }

      v13 = delegateCopy;
      v14 = v11;
      v15 = 0;
      goto LABEL_14;
    }

    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "+[CDMAssetsUtils registerWithAssetsDelegate:withType:withLocale:]";
      _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: Asset Registration failed because of unknown assetAvailabilityType.", &v22, 0xCu);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "+[CDMAssetsUtils registerWithAssetsDelegate:withType:withLocale:]";
    v24 = 2112;
    v25 = localeCopy;
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Register assets delegate for NLRouter assets for locale: %@", &v22, 0x16u);
  }

  v17 = [CDMAssetsUtils getCDMAssetsInfoForNLRouterWithLocale:localeCopy];
  if (!v17)
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = 136315138;
      v23 = "+[CDMAssetsUtils registerWithAssetsDelegate:withType:withLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Failed to initialize CDMAssetsInfo for NLRouter. Asset registration failed", &v22, 0xCu);
    }

    v11 = 0;
    goto LABEL_20;
  }

  v11 = v17;
  v13 = delegateCopy;
  v14 = v17;
  v15 = 1;
LABEL_14:
  v18 = [CDMAssetsUtils registerWithAssetsDelegate:v13 withCDMAssetsInfo:v14 withType:v15 withLocale:localeCopy];
LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)registerWithAssetsDelegate:(id)delegate withCDMAssetsInfo:(id)info withType:(int64_t)type withLocale:(id)locale
{
  v33 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  infoCopy = info;
  localeCopy = locale;
  v12 = +[CDMAssetsManager getSingletonCDMAssetsManager];
  v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:localeCopy];
  v26 = 0;
  [v12 setupForLocale:v13 cdmAssetsInfo:infoCopy error:&v26];
  v14 = v26;

  if (v14)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "+[CDMAssetsUtils registerWithAssetsDelegate:withCDMAssetsInfo:withType:withLocale:]";
      v29 = 2112;
      v30 = localeCopy;
      v16 = "%s [ERR]: Error occurs while setup CDMAssetsManager with locale: %@. Return NO.";
      v17 = v15;
      v18 = 22;
LABEL_10:
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v25 = 0;
  v19 = [v12 registerForCDMAssetsInfo:infoCopy withLocale:localeCopy withAssetsDelegate:delegateCopy selfContextId:0 selfMetadata:0 dataDispatcherContext:0 withAssetAvailabilityType:type withError:&v25];
  v14 = v25;
  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v24 = [CDMAssetsUtils getGraphNameForAssetAvailabilityType:type];
    *buf = 136315650;
    v28 = "+[CDMAssetsUtils registerWithAssetsDelegate:withCDMAssetsInfo:withType:withLocale:]";
    v29 = 2112;
    v30 = v24;
    v31 = 2048;
    v32 = v19;
    _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Registration status for graph: %@ is %ld", buf, 0x20u);
  }

  if ((v19 & 1) == 0)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "+[CDMAssetsUtils registerWithAssetsDelegate:withCDMAssetsInfo:withType:withLocale:]";
      v16 = "%s [ERR]: Error occurs while registering. Return NO.";
      v17 = v15;
      v18 = 12;
      goto LABEL_10;
    }

LABEL_11:

    v21 = 0;
    goto LABEL_12;
  }

  v21 = 1;
LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)getCDMAssetsInfoForNLRouterWithLocale:(id)locale
{
  v29[2] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v4 = [CDMAssetsUtils extractAssetKeyFromLocale:localeCopy];
  if (v4)
  {
    v5 = [CDMAssetsInfo alloc];
    v6 = [CDMAssetsUtils getGraphNameForAssetAvailabilityType:1];
    v7 = [(CDMAssetsInfo *)v5 initWithGraphName:v6];

    v8 = [CDMAssetsFactorConfig alloc];
    v9 = MEMORY[0x1E695E0F0];
    v28[0] = @"com.apple.if.planner.nlrouter.base";
    v28[1] = @"com.apple.if.planner.nlrouter.tokenizer";
    v29[0] = MEMORY[0x1E695E0F0];
    v29[1] = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v11 = [(CDMAssetsFactorConfig *)v8 initWithFactorToFoldersMapping:v10];

    v12 = MEMORY[0x1E695E118];
    v26[0] = @"com.apple.if.planner.nlrouter.base";
    v26[1] = @"com.apple.if.planner.nlrouter.tokenizer";
    v27[0] = MEMORY[0x1E695E118];
    v27[1] = MEMORY[0x1E695E118];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(CDMAssetsFactorConfig *)v11 setFactorToIsRequiredMapping:v13];

    v14 = [CDMAssetsFactorConfig alloc];
    v24 = @"com.apple.if.planner.nlrouter.overrides";
    v25 = v9;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [(CDMAssetsFactorConfig *)v14 initWithFactorToFoldersMapping:v15];

    v22 = @"com.apple.if.planner.nlrouter.overrides";
    v23 = v12;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [(CDMAssetsFactorConfig *)v16 setFactorToIsRequiredMapping:v17];

    v18 = objc_alloc_init(CDMAssetsUsages);
    [(CDMAssetsUsages *)v18 addUsageForKey:3 withAssetUsageValue:v4];
    v19 = objc_alloc_init(CDMAssetsUsages);
    [(CDMAssetsUsages *)v19 addUsageForKey:4 withAssetUsageValue:localeCopy];
    [(CDMAssetsInfo *)v7 setAssetsUsages:v18 withCDMAssetsFactorConfig:v11 forCDMAssetSet:2];
    [(CDMAssetsInfo *)v7 setAssetsUsages:v19 withCDMAssetsFactorConfig:v16 forCDMAssetSet:3];
  }

  else
  {
    v7 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getLanguageFromLocaleString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:@"_"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "+[CDMAssetsUtils getLanguageFromLocaleString:]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = stringCopy;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Extracted language: %@ from locale: %@", &v11, 0x20u);
  }

  if (v5 && [v5 length])
  {
    v7 = v5;
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[CDMAssetsUtils getLanguageFromLocaleString:]";
      v13 = 2112;
      v14 = stringCopy;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurs while setup CDMAssetsManager with locale: %@. Return NO.", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)getGraphNameForAssetAvailabilityType:(int64_t)type
{
  if (type == 1)
  {
    v5 = @"NLRouterNoGraph";
  }

  else if (type)
  {
    v5 = 0;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
  }

  return v5;
}

@end