@interface DOCFeatureStateFFSetting
+ (id)defaultsOverrideForDomainID:(id)a3 featureID:(id)a4 overrideKey:(id)a5;
- (DOCFeatureStateFFSetting)initWithDomainID:(id)a3 featureID:(id)a4 overrideKey:(id)a5 valueMode:(int64_t)a6 requirements:(id)a7;
@end

@implementation DOCFeatureStateFFSetting

- (DOCFeatureStateFFSetting)initWithDomainID:(id)a3 featureID:(id)a4 overrideKey:(id)a5 valueMode:(int64_t)a6 requirements:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v34.receiver = self;
  v34.super_class = DOCFeatureStateFFSetting;
  v17 = [(DOCFeatureStateFFSetting *)&v34 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domainID, a3);
    objc_storeStrong(&v18->_featureID, a4);
    v18->_valueMode = a6;
    v19 = [objc_opt_class() defaultsOverrideForDomainID:v13 featureID:v14 overrideKey:v15];
    v20 = [MEMORY[0x277CBEB18] array];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __90__DOCFeatureStateFFSetting_initWithDomainID_featureID_overrideKey_valueMode_requirements___block_invoke;
    v32 = &unk_278F9B820;
    v21 = v20;
    v33 = v21;
    [v16 enumerateObjectsUsingBlock:&v29];
    if ([v21 count])
    {
      [(DOCFeatureState *)v18 setIsEnabled:0];
      v22 = MEMORY[0x277CCACA8];
      v23 = [v21 componentsJoinedByString:{@", "}];
      v24 = [v22 stringWithFormat:@"forced off (unsatisfied = %@)", v23];
    }

    else
    {
      if (v19)
      {
        -[DOCFeatureState setIsEnabled:](v18, "setIsEnabled:", [v19 BOOLValue]);
        v25 = MEMORY[0x277CCACA8];
        v26 = @"DEBUG override";
      }

      else if (a6)
      {
        [(DOCFeatureState *)v18 setIsEnabled:a6 == 1];
        v25 = MEMORY[0x277CCACA8];
        v26 = @"forced value";
      }

      else
      {
        [v13 UTF8String];
        [v14 UTF8String];
        [(DOCFeatureState *)v18 setIsEnabled:_os_feature_enabled_impl()];
        v25 = MEMORY[0x277CCACA8];
        v26 = @"user setting";
      }

      v24 = [v25 stringWithFormat:v26];
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"feature flag (%@): %@.%@", v24, v13, v14, v29, v30, v31, v32];
    _FFInitLog(v27, [(DOCFeatureState *)v18 isEnabled]);
  }

  return v18;
}

void __90__DOCFeatureStateFFSetting_initWithDomainID_featureID_overrideKey_valueMode_requirements___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 requirementValidationBlock];
  v4 = v3[2]();

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v7 name];
    [v5 addObject:v6];
  }
}

+ (id)defaultsOverrideForDomainID:(id)a3 featureID:(id)a4 overrideKey:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isEqual:@"UIKit"])
  {
    v10 = @"com.apple.UIKit";
    if (v9)
    {
LABEL_3:
      v11 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = @"com.apple.DocumentManager.defaults";
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DOCFeature.override.%@.%@", v7, v8];
LABEL_6:
  v12 = v11;
  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [v13 valueForKey:v12];

  if (!v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
    v16 = [v15 valueForKey:v12];

    if (v16)
    {
      v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v24 = v12;
      v25[0] = v16;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      [v17 registerDefaults:v18];
    }
  }

  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [v19 valueForKey:v12];

  if (!v20)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v10];
    v20 = [v21 valueForKey:v12];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

@end