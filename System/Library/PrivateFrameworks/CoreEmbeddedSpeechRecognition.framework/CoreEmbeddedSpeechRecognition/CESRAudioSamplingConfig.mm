@interface CESRAudioSamplingConfig
- (CESRAudioSamplingConfig)initWithConfigDictionary:(id)a3;
- (CESRAudioSamplingConfig)initWithConfigPath:(id)a3;
- (id)getSamplingRateFromDimension:(id)a3;
@end

@implementation CESRAudioSamplingConfig

- (id)getSamplingRateFromDimension:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_samplingPolicies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isMatchedSamplingDimension:{v4, v16}])
        {
          v13 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v21 = "[CESRAudioSamplingConfig getSamplingRateFromDimension:]";
            v22 = 2112;
            v23 = v4;
            v24 = 2112;
            v25 = v10;
            _os_log_debug_impl(&dword_225EEB000, v13, OS_LOG_TYPE_DEBUG, "%s The dimension %@ matches the sampling policy %@ .", buf, 0x20u);
          }

          v12 = [v10 samplingRate];

          goto LABEL_15;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[CESRAudioSamplingConfig getSamplingRateFromDimension:]";
    _os_log_debug_impl(&dword_225EEB000, v11, OS_LOG_TYPE_DEBUG, "%s No Sampling Policy Available", buf, 0xCu);
  }

  v12 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (CESRAudioSamplingConfig)initWithConfigPath:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v17 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:0 error:&v17];
    v6 = v17;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = v6;
      v9 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "[CESRAudioSamplingConfig initWithConfigPath:]";
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v8;
        _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Can't Read File From %@, Error: %@", buf, 0x20u);
      }
    }

    else
    {
      v16 = 0;
      v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v16];
      v12 = v16;
      v8 = v12;
      if (!v12 && v11)
      {
        self = [(CESRAudioSamplingConfig *)self initWithConfigDictionary:v11];
        v8 = v5;
        v10 = self;
LABEL_17:

        goto LABEL_18;
      }

      v13 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "[CESRAudioSamplingConfig initWithConfigPath:]";
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v8;
        _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Can't Parse JSON From %@, Error: %@", buf, 0x20u);
      }
    }

    v10 = 0;
    v11 = v5;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (CESRAudioSamplingConfig)initWithConfigDictionary:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = CESRAudioSamplingConfig;
  v5 = [(CESRAudioSamplingConfig *)&v33 init];
  if (v5)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v4)
    {
      v26 = v5;
      v27 = v4;
      v6 = [v4 objectForKeyedSubscript:@"samplingPolicies"];
      v7 = v6;
      if (v6)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v13 = [v12 objectForKeyedSubscript:@"samplingRate"];
              v14 = v13;
              if (v13)
              {
                [v13 floatValue];
                if (v15 >= 0.0)
                {
                  [v14 floatValue];
                  if (v16 <= 1.0)
                  {
                    v17 = [v12 objectForKeyedSubscript:@"filterDimensions"];
                    v18 = [CESRSamplingDimension alloc];
                    v19 = [v17 objectForKeyedSubscript:@"asrLocale"];
                    v20 = [(CESRSamplingDimension *)v18 initWithAsrLocale:v19];

                    v21 = -[CESRAudioSamplingPolicy initWithRuleDimension:samplingRate:numDimension:]([CESRAudioSamplingPolicy alloc], "initWithRuleDimension:samplingRate:numDimension:", v20, v14, [v17 count]);
                    [(NSArray *)v28 addObject:v21];
                    v22 = *MEMORY[0x277CEF0E8];
                    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315394;
                      v35 = "[CESRAudioSamplingConfig initWithConfigDictionary:]";
                      v36 = 2112;
                      v37 = v21;
                      _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s Added Policy: %@", buf, 0x16u);
                    }
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }
      }

      v5 = v26;
      v4 = v27;
    }

    [(NSArray *)v28 sortWithOptions:16 usingComparator:&__block_literal_global_2261];
    samplingPolicies = v5->_samplingPolicies;
    v5->_samplingPolicies = v28;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __52__CESRAudioSamplingConfig_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 numDimension];
  if (v6 >= [v5 numDimension])
  {
    v8 = [v4 numDimension];
    if (v8 <= [v5 numDimension])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end