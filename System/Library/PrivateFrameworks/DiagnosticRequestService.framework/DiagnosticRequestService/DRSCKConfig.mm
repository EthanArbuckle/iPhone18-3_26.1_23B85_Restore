@interface DRSCKConfig
+ (id)_configWithConfigMO_ON_MOC_QUEUE:(id)a3;
+ (id)defaultConfig;
- (BOOL)isEqual:(id)a3;
- (DRSCKConfig)init;
- (DRSCKConfig)initWithContainerEnvironment:(unsigned __int8)a3 rapidEnvironment:(unsigned __int8)a4 overridesDefault:(BOOL)a5;
- (id)debugDescription;
- (id)newConfigMOInContext_ON_MOC_QUEUE:(id)a3;
- (int64_t)ckContainerEnvironment;
- (int64_t)ckRapidEnvironment;
@end

@implementation DRSCKConfig

- (int64_t)ckRapidEnvironment
{
  if ([(DRSCKConfig *)self rapidEnvironment]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)ckContainerEnvironment
{
  if ([(DRSCKConfig *)self containerEnvironment]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)_configWithConfigMO_ON_MOC_QUEUE:(id)a3
{
  v3 = a3;
  v4 = [DRSCKConfig alloc];
  v5 = [v3 containerEnvironment];
  v6 = [v3 rapidEnvironment];
  v7 = [v3 overridesDefault];

  v8 = [(DRSCKConfig *)v4 initWithContainerEnvironment:v5 rapidEnvironment:v6 overridesDefault:v7];

  return v8;
}

- (id)newConfigMOInContext_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v5 = [[DRSCKConfigMO alloc] initWithContext:v4];

  [(DRSCKConfigMO *)v5 setContainerEnvironment:[(DRSCKConfig *)self containerEnvironment]];
  [(DRSCKConfigMO *)v5 setRapidEnvironment:[(DRSCKConfig *)self rapidEnvironment]];
  [(DRSCKConfigMO *)v5 setOverridesDefault:[(DRSCKConfig *)self overridesDefault]];
  return v5;
}

+ (id)defaultConfig
{
  if (defaultConfig_onceToken != -1)
  {
    +[DRSCKConfig defaultConfig];
  }

  v3 = defaultConfig_defaultConfig;

  return v3;
}

void __28__DRSCKConfig_defaultConfig__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(DRSCKConfig);
  v1 = defaultConfig_defaultConfig;
  defaultConfig_defaultConfig = v0;

  v2 = DPLogHandle_CKConfig();
  if (os_signpost_enabled(v2))
  {
    v3 = +[DRSSystemProfile sharedInstance];
    if ([v3 isInternal])
    {
      v4 = "Internal";
    }

    else
    {
      v4 = "Customer";
    }

    v5 = [defaultConfig_defaultConfig debugDescription];
    v6 = v5;
    v7 = @"Unknown";
    if (v5)
    {
      v7 = v5;
    }

    v9 = 136315394;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DefaultConfigInitialized", "Default config (%s): %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (DRSCKConfig)initWithContainerEnvironment:(unsigned __int8)a3 rapidEnvironment:(unsigned __int8)a4 overridesDefault:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = DRSCKConfig;
  result = [(DRSCKConfig *)&v9 init];
  if (result)
  {
    result->_containerEnvironment = a3;
    result->_rapidEnvironment = a4;
    result->_overridesDefault = a5;
  }

  return result;
}

- (DRSCKConfig)init
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return [(DRSCKConfig *)self initWithContainerEnvironment:1 rapidEnvironment:v5 overridesDefault:0];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DRSCKConfig *)self containerEnvironment];
  if (v4 == 1)
  {
    v5 = @"Production";
  }

  else
  {
    v5 = @"Unknown";
  }

  if (v4 == 2)
  {
    v5 = @"Sandbox";
  }

  v6 = v5;
  v7 = [(DRSCKConfig *)self rapidEnvironment];
  if (v7 == 1)
  {
    v8 = @"Production";
  }

  else
  {
    v8 = @"Unknown";
  }

  if (v7 == 2)
  {
    v8 = @"Sandbox";
  }

  v9 = v8;
  v10 = [(DRSCKConfig *)self overridesDefault];
  v11 = @"(Default)";
  if (v10)
  {
    v11 = @"(Overrides default)";
  }

  v12 = [v3 stringWithFormat:@"Container Environment: %@, RAPID Environment: %@ %@", v6, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 == self)
  {
    LOBYTE(v10) = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(DRSCKConfig *)self containerEnvironment];
    if (v7 == [(DRSCKConfig *)v6 containerEnvironment]&& (v8 = [(DRSCKConfig *)self rapidEnvironment], v8 == [(DRSCKConfig *)v6 rapidEnvironment]))
    {
      v9 = [(DRSCKConfig *)self overridesDefault];
      v10 = v9 ^ [(DRSCKConfig *)v6 overridesDefault]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v10) = 0;
  }

LABEL_11:

  return v10;
}

@end