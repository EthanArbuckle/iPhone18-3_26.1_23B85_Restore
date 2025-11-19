@interface DDSMAAutoAssetSelector
+ (id)allSupportedLinguisticAssetTypeForAssetType:(id)a3;
+ (id)createWithQuery:(id)a3 supportedAssetSpecifiers:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DDSMAAutoAssetSelector)initWithAssetType:(id)a3 assetSpecifier:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation DDSMAAutoAssetSelector

- (DDSMAAutoAssetSelector)initWithAssetType:(id)a3 assetSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DDSMAAutoAssetSelector;
  v8 = [(DDSMAAutoAssetSelector *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B1910]) initForAssetType:v6 withAssetSpecifier:v7];
    assetSelector = v8->_assetSelector;
    v8->_assetSelector = v9;
  }

  return v8;
}

+ (id)allSupportedLinguisticAssetTypeForAssetType:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.MobileAsset.LinguisticDataAuto"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v10[0] = @"Priority";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 setWithArray:v5];
  }

  else
  {
    v7 = AutoAssetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector allSupportedLinguisticAssetTypeForAssetType:];
    }

    v6 = objc_opt_new();
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)createWithQuery:(id)a3 supportedAssetSpecifiers:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v5 assetType];
  v9 = [DDSMAAutoAssetSelector allSupportedLinguisticAssetTypeForAssetType:v8];

  v49 = v5;
  v10 = [v5 filter];
  v11 = [v10 allowedValuesForKey:@"LinguisticAssetType"];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v64;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v64 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v63 + 1) + 8 * i);
        if ([v9 containsObject:v17])
        {
          [v7 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v14);
  }

  if ([v12 count] && !objc_msgSend(v7, "count"))
  {
    v20 = AutoAssetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
    }

    v38 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (![v7 count])
    {
      v18 = AutoAssetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
      }

      v19 = [v9 allObjects];
      [v7 addObjectsFromArray:v19];
    }

    v41 = v12;
    v42 = v9;
    v20 = objc_opt_new();
    v21 = [v49 filter];
    v46 = [v21 allowedValuesForKey:@"AssetLocale"];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = v7;
    obj = v7;
    v47 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v47)
    {
      v45 = *v60;
      v22 = @"fil";
      v23 = 0x1E695D000uLL;
      v24 = 0x1E696A000uLL;
      do
      {
        v25 = 0;
        do
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v25;
          v52 = *(*(&v59 + 1) + 8 * v25);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v50 = v46;
          v53 = [v50 countByEnumeratingWithState:&v55 objects:v69 count:16];
          if (v53)
          {
            v51 = *v56;
            do
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v56 != v51)
                {
                  objc_enumerationMutation(v50);
                }

                v54 = [*(v23 + 3928) localeWithLocaleIdentifier:*(*(&v55 + 1) + 8 * j)];
                v27 = [v54 languageCode];
                if ([(__CFString *)v27 isEqualToString:v22])
                {

                  v27 = @"tl";
                }

                v28 = [*(v24 + 3776) stringWithFormat:@"%@_%@", v52, v27];
                if ([v6 containsObject:v28])
                {
                  v29 = [DDSMAAutoAssetSelector alloc];
                  [v49 assetType];
                  v30 = v24;
                  v31 = v23;
                  v32 = v22;
                  v33 = v20;
                  v35 = v34 = v6;
                  v36 = [(DDSMAAutoAssetSelector *)v29 initWithAssetType:v35 assetSpecifier:v28];

                  v6 = v34;
                  v20 = v33;
                  v22 = v32;
                  v23 = v31;
                  v24 = v30;
                  [v20 addObject:v36];
                }

                else
                {
                  v36 = DefaultLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v68 = v28;
                    _os_log_impl(&dword_1DF7C6000, v36, OS_LOG_TYPE_DEFAULT, "Auto asset specifier: %@ is not supported", buf, 0xCu);
                  }
                }
              }

              v53 = [v50 countByEnumeratingWithState:&v55 objects:v69 count:16];
            }

            while (v53);
          }

          v25 = v48 + 1;
        }

        while (v48 + 1 != v47);
        v47 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v47);
    }

    v37 = AutoAssetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      +[DDSMAAutoAssetSelector createWithQuery:supportedAssetSpecifiers:];
    }

    v38 = [v20 allObjects];

    v9 = v42;
    v7 = v43;
    v12 = v41;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)description
{
  v2 = [(DDSMAAutoAssetSelector *)self assetSelector];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(DDSMAAutoAssetSelector *)self assetSelector];
  v3 = [v2 description];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DDSMAAutoAssetSelector *)self assetSelector];
    v7 = [v5 assetSelector];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)allSupportedLinguisticAssetTypeForAssetType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, v0, v1, "Supported linguistic asset types are not provided for asset type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createWithQuery:supportedAssetSpecifiers:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, v0, v1, "LinguisticAssetType is provided in the query does not support auto asset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createWithQuery:supportedAssetSpecifiers:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF7C6000, v0, v1, "LinguisticAssetType is not provided in the query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createWithQuery:supportedAssetSpecifiers:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "Created DDSMAAutoAssetSelectors: %@ for query: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end