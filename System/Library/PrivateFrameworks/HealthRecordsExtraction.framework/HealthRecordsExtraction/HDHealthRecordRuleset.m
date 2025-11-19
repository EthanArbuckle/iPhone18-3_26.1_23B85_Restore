@interface HDHealthRecordRuleset
+ (id)rulesetFromDictionary:(id)a3 rulesetVersion:(id)a4 error:(id *)a5;
- (HRSSupportedFHIRRelease)releaseSupport;
- (id)initForFHIRRelease:(id)a3 rulesetVersion:(id)a4;
- (id)rulesetForClinicalType:(int64_t)a3;
- (id)rulesetForFHIRResourceObject:(id)a3;
- (id)rulesetForFHIRResourceType:(id)a3;
@end

@implementation HDHealthRecordRuleset

- (id)initForFHIRRelease:(id)a3 rulesetVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDHealthRecordRuleset;
  v9 = [(HDHealthRecordRuleset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_FHIRRelease, a3);
    v11 = [v8 copy];
    rulesetVersion = v10->_rulesetVersion;
    v10->_rulesetVersion = v11;
  }

  return v10;
}

+ (id)rulesetFromDictionary:(id)a3 rulesetVersion:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    [HDHealthRecordRuleset rulesetFromDictionary:a2 rulesetVersion:a1 error:?];
  }

  v53 = 0;
  v11 = [v9 hk_safeStringForKeyPath:@"release" error:&v53];
  v12 = v53;
  if (v11)
  {
    v13 = HKFHIRReleaseFromNSString();
    if (v13 == *MEMORY[0x277CCBDD8])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Ruleset specifies an unsupported release: %@", v11}];
      v32 = 0;
    }

    else
    {
      v14 = [[HDHealthRecordRuleset alloc] initForFHIRRelease:v13 rulesetVersion:v10];

      v52 = 0;
      v15 = [v9 hk_safeValueForKeyPath:@"resources" class:objc_opt_class() error:&v52];
      v12 = v52;
      if (v15)
      {
        v45 = [MEMORY[0x277CBEB38] dictionary];
        v44 = [MEMORY[0x277CBEB38] dictionary];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = [v15 allKeys];
        v16 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v16)
        {
          v17 = v16;
          v36 = a5;
          v37 = v14;
          v18 = *v49;
          v43 = v15;
          v19 = v45;
          v40 = v10;
          v41 = v9;
          v38 = v13;
          v39 = v11;
LABEL_8:
          v20 = 0;
          while (1)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v48 + 1) + 8 * v20);
            v22 = objc_opt_class();
            v47 = v12;
            v23 = [v15 hk_safeValueForKeyPath:v21 class:v22 error:&v47];
            v24 = v47;

            if (!v23)
            {
              break;
            }

            v46 = v24;
            v25 = [HDHealthRecordRulesetResource resourceFromDictionary:v23 resourceName:v21 error:&v46];
            v12 = v46;

            if (!v25)
            {
              [MEMORY[0x277CCA9B8] hk_assignError:v36 code:100 description:@"Ruleset couldn't create rule from resource" underlyingError:v12];

              v24 = v12;
              goto LABEL_28;
            }

            v26 = [v25 resourceType];
            v27 = [v19 objectForKeyedSubscript:v26];
            if (!v27)
            {
              v27 = [MEMORY[0x277CBEB18] array];
              [v19 setObject:v27 forKeyedSubscript:v26];
            }

            v28 = [v25 condition];

            if (v28)
            {
              [v27 insertObject:v25 atIndex:0];
            }

            else
            {
              [v27 addObject:v25];
            }

            v29 = MEMORY[0x277CCABB0];
            v30 = [v25 clinicalType];
            v31 = [v29 numberWithInteger:{objc_msgSend(v30, "type")}];
            [v44 setObject:v25 forKeyedSubscript:v31];

            ++v20;
            v15 = v43;
            v19 = v45;
            if (v17 == v20)
            {
              v17 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
              v10 = v40;
              v9 = v41;
              v13 = v38;
              v11 = v39;
              v14 = v37;
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_25;
            }
          }

          [MEMORY[0x277CCA9B8] hk_assignError:v36 code:100 description:@"Ruleset couldn't load resources" underlyingError:v24];
LABEL_28:

          v32 = 0;
          v12 = v24;
          v10 = v40;
          v9 = v41;
          v13 = v38;
          v11 = v39;
          v14 = v37;
          v33 = v44;
          goto LABEL_29;
        }

        v19 = v45;
LABEL_25:

        [v14 setRulesByResourceType:v19];
        v33 = v44;
        [v14 setRulesByClinicalType:v44];
        v32 = v14;
LABEL_29:
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 description:@"Ruleset couldn't find resources" underlyingError:v12];
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (HRSSupportedFHIRRelease)releaseSupport
{
  v3 = objc_alloc(MEMORY[0x277D124C0]);
  FHIRRelease = self->_FHIRRelease;
  v5 = MEMORY[0x277CBEB98];
  v6 = [(NSDictionary *)self->_rulesByResourceType allKeys];
  v7 = [v5 setWithArray:v6];
  v8 = [v3 initWithFHIRRelease:FHIRRelease resourceTypes:v7];

  return v8;
}

- (id)rulesetForClinicalType:(int64_t)a3
{
  rulesByClinicalType = self->_rulesByClinicalType;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSDictionary *)rulesByClinicalType objectForKeyedSubscript:v4];

  return v5;
}

- (id)rulesetForFHIRResourceType:(id)a3
{
  v3 = [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:a3];
  v4 = [v3 lastObject];

  return v4;
}

- (id)rulesetForFHIRResourceObject:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 resourceType];

  [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 evaluateWithObject:{v4, v17}])
        {
          v14 = v12;

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
  {
    [HDHealthRecordRuleset rulesetForFHIRResourceObject:v13];
  }

  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end