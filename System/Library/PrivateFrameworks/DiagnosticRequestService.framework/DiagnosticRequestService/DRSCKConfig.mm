@interface DRSCKConfig
+ (id)_configWithConfigMO_ON_MOC_QUEUE:(id)e;
+ (id)defaultConfig;
- (BOOL)isEqual:(id)equal;
- (DRSCKConfig)init;
- (DRSCKConfig)initWithContainerEnvironment:(unsigned __int8)environment rapidEnvironment:(unsigned __int8)rapidEnvironment overridesDefault:(BOOL)default;
- (id)debugDescription;
- (id)newConfigMOInContext_ON_MOC_QUEUE:(id)e;
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

+ (id)_configWithConfigMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v4 = [DRSCKConfig alloc];
  containerEnvironment = [eCopy containerEnvironment];
  rapidEnvironment = [eCopy rapidEnvironment];
  overridesDefault = [eCopy overridesDefault];

  v8 = [(DRSCKConfig *)v4 initWithContainerEnvironment:containerEnvironment rapidEnvironment:rapidEnvironment overridesDefault:overridesDefault];

  return v8;
}

- (id)newConfigMOInContext_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v5 = [[DRSCKConfigMO alloc] initWithContext:eCopy];

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

- (DRSCKConfig)initWithContainerEnvironment:(unsigned __int8)environment rapidEnvironment:(unsigned __int8)rapidEnvironment overridesDefault:(BOOL)default
{
  v9.receiver = self;
  v9.super_class = DRSCKConfig;
  result = [(DRSCKConfig *)&v9 init];
  if (result)
  {
    result->_containerEnvironment = environment;
    result->_rapidEnvironment = rapidEnvironment;
    result->_overridesDefault = default;
  }

  return result;
}

- (DRSCKConfig)init
{
  v3 = +[DRSSystemProfile sharedInstance];
  isInternal = [v3 isInternal];

  if (isInternal)
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
  containerEnvironment = [(DRSCKConfig *)self containerEnvironment];
  if (containerEnvironment == 1)
  {
    v5 = @"Production";
  }

  else
  {
    v5 = @"Unknown";
  }

  if (containerEnvironment == 2)
  {
    v5 = @"Sandbox";
  }

  v6 = v5;
  rapidEnvironment = [(DRSCKConfig *)self rapidEnvironment];
  if (rapidEnvironment == 1)
  {
    v8 = @"Production";
  }

  else
  {
    v8 = @"Unknown";
  }

  if (rapidEnvironment == 2)
  {
    v8 = @"Sandbox";
  }

  v9 = v8;
  overridesDefault = [(DRSCKConfig *)self overridesDefault];
  v11 = @"(Default)";
  if (overridesDefault)
  {
    v11 = @"(Overrides default)";
  }

  v12 = [v3 stringWithFormat:@"Container Environment: %@, RAPID Environment: %@ %@", v6, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    containerEnvironment = [(DRSCKConfig *)self containerEnvironment];
    if (containerEnvironment == [(DRSCKConfig *)v6 containerEnvironment]&& (v8 = [(DRSCKConfig *)self rapidEnvironment], v8 == [(DRSCKConfig *)v6 rapidEnvironment]))
    {
      overridesDefault = [(DRSCKConfig *)self overridesDefault];
      v10 = overridesDefault ^ [(DRSCKConfig *)v6 overridesDefault]^ 1;
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