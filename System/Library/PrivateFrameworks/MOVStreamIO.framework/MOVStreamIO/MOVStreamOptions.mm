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
- (void)checkHasValue:(id)a3 changedForKey:(id)a4;
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
    v4 = [(MOVStreamOptions *)v3 localDefaults];
    v5 = [v4 objectForKey:@"MIOBossMode"];
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
  v4 = [(MOVStreamOptions *)self localDefaults];
  v3 = [v4 objectForKey:@"MIOBossMode"];
  self->_debugMode = [v3 BOOLValue];
}

- (id)localDefaults
{
  v2 = localDefaults_defaults;
  if (!localDefaults_defaults)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = localDefaults_defaults;
    localDefaults_defaults = v3;

    v2 = localDefaults_defaults;
  }

  return v2;
}

- (id)currentOptions
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = [(MOVStreamOptions *)self standardDefaultValues];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MOVStreamOptions *)self standardDefaultValues];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(MOVStreamOptions *)self localDefaults];
        v14 = [v13 objectForKey:v12];

        [v5 setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)disableFrameReordering
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIODisableFrameReordering"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIODisableFrameReordering"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIODisableFrameReordering"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

- (double)bitrateMultiplier
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOBitrateMultiplier"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOBitrateMultiplier"];
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v7 = [v4 objectForKey:@"MIOBitrateMultiplier"];
    [v7 doubleValue];
    v6 = v8;
  }

  return v6;
}

- (unint64_t)bitrateOverride
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOBitrateOverride"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOBitrateOverride"];
    v5 = [v4 integerValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIOBitrateOverride"];
    v5 = [v6 integerValue];
  }

  return v5;
}

- (BOOL)forceColorLossless
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOForceColorLossless"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOForceColorLossless"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIOForceColorLossless"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

- (BOOL)force10bitMonoByVT
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOForce10bitMonoByVT"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOForce10bitMonoByVT"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIOForce10bitMonoByVT"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

- (BOOL)forceLossless8bitMonoByVT
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOForceLossless8bitMonoByVT"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOForceLossless8bitMonoByVT"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIOForceLossless8bitMonoByVT"];
    v5 = [v6 BOOLValue];
  }

  return v5;
}

- (BOOL)skipSourceHint
{
  if (self->_debugMode)
  {
    v3 = [(MOVStreamOptions *)self localDefaults];
    v4 = [v3 objectForKey:@"MIOSkipSourceHint"];

    [(MOVStreamOptions *)self checkHasValue:v4 changedForKey:@"MIOSkipSourceHint"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(MOVStreamOptions *)self standardDefaultValues];
    v6 = [v4 objectForKey:@"MIOSkipSourceHint"];
    v5 = [v6 BOOLValue];
  }

  return v5;
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

- (void)checkHasValue:(id)a3 changedForKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(MOVStreamOptions *)self standardDefaultValues];
  v9 = [v8 objectForKey:v6];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9];
  if (([v10 isEqual:v11] & 1) == 0)
  {
    v12 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_INFO, "[WARNING] Default setting for '%{public}@' was changed from '%{public}@' to '%{public}@'. This can affect your recordings!", buf, 0x20u);
    }
  }
}

- (void)registerStandardDefaults
{
  v4 = [(MOVStreamOptions *)self localDefaults];
  v3 = [(MOVStreamOptions *)self standardDefaultValues];
  [v4 registerDefaults:v3];
}

@end