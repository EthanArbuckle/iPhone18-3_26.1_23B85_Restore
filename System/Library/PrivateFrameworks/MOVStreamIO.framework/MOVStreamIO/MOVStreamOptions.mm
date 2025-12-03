@interface MOVStreamOptions
+ (MOVStreamOptions)sharedOptions;
- (BOOL)disableFrameReordering;
- (BOOL)disableVTPreSetup;
- (BOOL)force10bitMonoByVT;
- (BOOL)forceColorLossless;
- (BOOL)forceLossless8bitMonoByVT;
- (BOOL)skipSourceHint;
- (MOVStreamOptions)init;
- (double)bitrateMultiplier;
- (id)currentOptions;
- (id)localDefaults;
- (id)standardDefaultValues;
- (unint64_t)bitrateOverride;
- (void)checkBossMode;
- (void)checkHasValue:(id)value changedForKey:(id)key;
- (void)registerStandardDefaults;
@end

@implementation MOVStreamOptions

+ (MOVStreamOptions)sharedOptions
{
  if (sharedOptions_onceToken != -1)
  {
    +[MOVStreamOptions sharedOptions];
  }

  v3 = sharedOptions_options;

  return v3;
}

uint64_t __33__MOVStreamOptions_sharedOptions__block_invoke()
{
  sharedOptions_options = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (MOVStreamOptions)init
{
  v9.receiver = self;
  v9.super_class = MOVStreamOptions;
  v2 = [(MOVStreamOptions *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(MOVStreamOptions *)v2 registerStandardDefaults];
    localDefaults = [(MOVStreamOptions *)v3 localDefaults];
    v5 = [localDefaults objectForKey:@"MIOBossMode"];
    v3->_debugMode = [v5 BOOLValue];

    if (v3->_debugMode)
    {
      v6 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_INFO, "[WARNING] MOVStreamIO Debug Mode enabled. This could change the Framework behavior.", v8, 2u);
      }
    }
  }

  return v3;
}

- (void)checkBossMode
{
  localDefaults = [(MOVStreamOptions *)self localDefaults];
  v3 = [localDefaults objectForKey:@"MIOBossMode"];
  self->_debugMode = [v3 BOOLValue];
}

- (id)localDefaults
{
  v2 = localDefaults_defaults;
  if (!localDefaults_defaults)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = localDefaults_defaults;
    localDefaults_defaults = standardUserDefaults;

    v2 = localDefaults_defaults;
  }

  return v2;
}

- (id)currentOptions
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(standardDefaultValues, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  standardDefaultValues2 = [(MOVStreamOptions *)self standardDefaultValues];
  allKeys = [standardDefaultValues2 allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        localDefaults = [(MOVStreamOptions *)self localDefaults];
        v14 = [localDefaults objectForKey:v12];

        [v5 setObject:v14 forKey:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (BOOL)disableVTPreSetup
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  v3 = [v2 objectForKey:@"MIODisableVTPreSetup"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)disableFrameReordering
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIODisableFrameReordering"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIODisableFrameReordering"];
    bOOLValue = [standardDefaultValues BOOLValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIODisableFrameReordering"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (double)bitrateMultiplier
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOBitrateMultiplier"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOBitrateMultiplier"];
    [standardDefaultValues doubleValue];
    v6 = v5;
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v7 = [standardDefaultValues objectForKey:@"MIOBitrateMultiplier"];
    [v7 doubleValue];
    v6 = v8;
  }

  return v6;
}

- (unint64_t)bitrateOverride
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOBitrateOverride"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOBitrateOverride"];
    integerValue = [standardDefaultValues integerValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIOBitrateOverride"];
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (BOOL)forceColorLossless
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOForceColorLossless"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOForceColorLossless"];
    bOOLValue = [standardDefaultValues BOOLValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIOForceColorLossless"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)force10bitMonoByVT
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOForce10bitMonoByVT"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOForce10bitMonoByVT"];
    bOOLValue = [standardDefaultValues BOOLValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIOForce10bitMonoByVT"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)forceLossless8bitMonoByVT
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOForceLossless8bitMonoByVT"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOForceLossless8bitMonoByVT"];
    bOOLValue = [standardDefaultValues BOOLValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIOForceLossless8bitMonoByVT"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)skipSourceHint
{
  if (self->_debugMode)
  {
    localDefaults = [(MOVStreamOptions *)self localDefaults];
    standardDefaultValues = [localDefaults objectForKey:@"MIOSkipSourceHint"];

    [(MOVStreamOptions *)self checkHasValue:standardDefaultValues changedForKey:@"MIOSkipSourceHint"];
    bOOLValue = [standardDefaultValues BOOLValue];
  }

  else
  {
    standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [standardDefaultValues objectForKey:@"MIOSkipSourceHint"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (id)standardDefaultValues
{
  v7[8] = *MEMORY[0x277D85DE8];
  v2 = standardDefaultValues_standardDefaults;
  if (!standardDefaultValues_standardDefaults)
  {
    v6[0] = @"MIOBossMode";
    v6[1] = @"MIODisableFrameReordering";
    v7[0] = MEMORY[0x277CBEC28];
    v7[1] = MEMORY[0x277CBEC28];
    v6[2] = @"MIOBitrateMultiplier";
    v6[3] = @"MIOBitrateOverride";
    v7[2] = &unk_2868E3B98;
    v7[3] = &unk_2868E3A50;
    v6[4] = @"MIOForceColorLossless";
    v6[5] = @"MIOForce10bitMonoByVT";
    v7[4] = MEMORY[0x277CBEC28];
    v7[5] = MEMORY[0x277CBEC28];
    v6[6] = @"MIOSkipSourceHint";
    v6[7] = @"MIOForceLossless8bitMonoByVT";
    v7[6] = MEMORY[0x277CBEC28];
    v7[7] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:8];
    v4 = standardDefaultValues_standardDefaults;
    standardDefaultValues_standardDefaults = v3;

    v2 = standardDefaultValues_standardDefaults;
  }

  return v2;
}

- (void)checkHasValue:(id)value changedForKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
  v9 = [standardDefaultValues objectForKey:keyCopy];

  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  if (([valueCopy isEqual:v11] & 1) == 0)
  {
    v12 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v14 = keyCopy;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = valueCopy;
      _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_INFO, "[WARNING] Default setting for '%{public}@' was changed from '%{public}@' to '%{public}@'. This can affect your recordings!", buf, 0x20u);
    }
  }
}

- (void)registerStandardDefaults
{
  localDefaults = [(MOVStreamOptions *)self localDefaults];
  standardDefaultValues = [(MOVStreamOptions *)self standardDefaultValues];
  [localDefaults registerDefaults:standardDefaultValues];
}

@end