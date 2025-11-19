@interface CDMAssetsFactorConfig
- (BOOL)isFactorRequired:(id)a3;
- (CDMAssetsFactorConfig)initWithFactorToFoldersMapping:(id)a3;
- (void)addEntriesFromCDMAssetsFactorConfig:(id)a3;
- (void)setFactorToIsRequiredMapping:(id)a3;
@end

@implementation CDMAssetsFactorConfig

- (BOOL)isFactorRequired:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_factorToIsRequiredMapping objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_factorToIsRequiredMapping objectForKeyedSubscript:v4];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFactorToIsRequiredMapping:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
    v5 = 16;
  }

  else
  {
    v4 = 0;
    v5 = 8;
  }

  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addEntriesFromCDMAssetsFactorConfig:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 getFactorToFoldersMapping];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 136315394;
      v15 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v4 objectForKeyedSubscript:{v10, v15}];
          v12 = [(NSMutableDictionary *)self->_factorToFoldersMapping objectForKeyedSubscript:v10];

          if (v12)
          {
            v13 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = v15;
              v21 = "[CDMAssetsFactorConfig addEntriesFromCDMAssetsFactorConfig:]";
              v22 = 2112;
              v23 = v10;
              _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Skipping folders for %@", buf, 0x16u);
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_factorToFoldersMapping setObject:v11 forKeyedSubscript:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (CDMAssetsFactorConfig)initWithFactorToFoldersMapping:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDMAssetsFactorConfig;
  v5 = [(CDMAssetsFactorConfig *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
      factorToFoldersMapping = v5->_factorToFoldersMapping;
      v5->_factorToFoldersMapping = v6;
    }

    v8 = [MEMORY[0x1E695DF90] dictionary];
    factorToIsRequiredMapping = v5->_factorToIsRequiredMapping;
    v5->_factorToIsRequiredMapping = v8;
  }

  return v5;
}

@end