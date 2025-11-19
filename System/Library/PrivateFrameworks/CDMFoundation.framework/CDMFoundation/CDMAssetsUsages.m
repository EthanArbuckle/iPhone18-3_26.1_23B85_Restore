@interface CDMAssetsUsages
+ (id)cdmAssetsUsageKeyToString:(int64_t)a3;
- (BOOL)addUsageForKey:(int64_t)a3 withAssetUsageValue:(id)a4;
- (CDMAssetsUsages)init;
- (id)getUsages;
@end

@implementation CDMAssetsUsages

- (CDMAssetsUsages)init
{
  v6.receiver = self;
  v6.super_class = CDMAssetsUsages;
  v2 = [(CDMAssetsUsages *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    usages = v2->_usages;
    v2->_usages = v3;
  }

  return v2;
}

- (id)getUsages
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_usages, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_usages;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[CDMAssetsUsages cdmAssetsUsageKeyToString:](CDMAssetsUsages, "cdmAssetsUsageKeyToString:", [v9 integerValue]);
        v11 = [(NSMutableDictionary *)self->_usages objectForKeyedSubscript:v9];
        [v3 setObject:v11 forKeyedSubscript:v10];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)addUsageForKey:(int64_t)a3 withAssetUsageValue:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [CDMAssetsUsages cdmAssetsUsageKeyToString:a3];

  if (v7)
  {
    usages = self->_usages;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)usages setObject:v6 forKey:v9];
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v14 = 136315394;
      v15 = "[CDMAssetsUsages addUsageForKey:withAssetUsageValue:]";
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s No assets usage key string found for %@", &v14, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

+ (id)cdmAssetsUsageKeyToString:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E862F908[a3];
  }
}

@end