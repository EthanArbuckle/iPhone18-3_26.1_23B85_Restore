@interface HDHealthOntologyConfiguration
+ (id)bundledHealthOntologyConfiguration;
- (HDHealthOntologyConfiguration)init;
- (HDHealthOntologyConfiguration)initWithCountryConfigurations:(id)configurations;
- (id)configurationForCountryCode:(id)code;
@end

@implementation HDHealthOntologyConfiguration

- (HDHealthOntologyConfiguration)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthOntologyConfiguration)initWithCountryConfigurations:(id)configurations
{
  v27 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v25.receiver = self;
  v25.super_class = HDHealthOntologyConfiguration;
  v6 = [(HDHealthOntologyConfiguration *)&v25 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = configurationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          countryCode = [v13 countryCode];

          if (!countryCode)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
          }

          countryCode2 = [v13 countryCode];
          [v7 setObject:v13 forKeyedSubscript:countryCode2];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    v17 = [v7 copy];
    countryConfigurations = v6->_countryConfigurations;
    v6->_countryConfigurations = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)bundledHealthOntologyConfiguration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDHealthOntologyConfiguration_bundledHealthOntologyConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280D67D10 != -1)
  {
    dispatch_once(&qword_280D67D10, block);
  }

  v2 = _MergedGlobals_209;

  return v2;
}

void __67__HDHealthOntologyConfiguration_bundledHealthOntologyConfiguration__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [&unk_283CAF8E0 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(&unk_283CAF8E0);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v6];
        [v1 addObject:v8];

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [&unk_283CAF8E0 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v3);
  }

  v9 = MEMORY[0x277CBEB58];
  v10 = [MEMORY[0x277CCD5D0] CVXSystem];
  v11 = [MEMORY[0x277CCD5D0] LOINCCodeSystem];
  v12 = [MEMORY[0x277CCD5D0] RxNormCodeSystem];
  v13 = [MEMORY[0x277CCD5D0] SNOMEDCodeSystem];
  v14 = [MEMORY[0x277CCD5D0] ICD9System];
  v15 = [MEMORY[0x277CCD5D0] ICD10System];
  v16 = [v9 setWithObjects:{v10, v11, v12, v13, v14, v15, 0}];

  [v16 addObjectsFromArray:v1];
  v17 = [[HDHealthOntologyCountryConfiguration alloc] initWithCountryCode:@"US" supportedCodingSystems:v16 analyticsOptions:3];
  v18 = MEMORY[0x277CBEB58];
  v19 = [MEMORY[0x277CCD5D0] LOINCCodeSystem];
  v20 = [v18 setWithObjects:{v19, 0}];

  [v20 addObjectsFromArray:v1];
  v21 = [[HDHealthOntologyCountryConfiguration alloc] initWithCountryCode:@"CA" supportedCodingSystems:v20 analyticsOptions:1];
  v22 = MEMORY[0x277CBEB58];
  v23 = [MEMORY[0x277CCD5D0] LOINCCodeSystem];
  v24 = [v22 setWithObjects:{v23, 0}];

  [v24 addObjectsFromArray:v1];
  v25 = [[HDHealthOntologyCountryConfiguration alloc] initWithCountryCode:@"GB" supportedCodingSystems:v24 analyticsOptions:0];
  v26 = objc_alloc(*(a1 + 32));
  v36[0] = v17;
  v36[1] = v21;
  v36[2] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v28 = [v26 initWithCountryConfigurations:v27];
  v29 = _MergedGlobals_209;
  _MergedGlobals_209 = v28;

  v30 = *MEMORY[0x277D85DE8];
}

- (id)configurationForCountryCode:(id)code
{
  countryConfigurations = self->_countryConfigurations;
  v4 = *MEMORY[0x277CCBBC8];
  if (!code)
  {
    code = *MEMORY[0x277CCBBC8];
  }

  return [(NSDictionary *)countryConfigurations objectForKeyedSubscript:code];
}

@end