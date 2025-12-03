@interface HDHealthRecordRuleset
+ (id)rulesetFromDictionary:(id)dictionary rulesetVersion:(id)version error:(id *)error;
- (HRSSupportedFHIRRelease)releaseSupport;
- (id)initForFHIRRelease:(id)release rulesetVersion:(id)version;
- (id)rulesetForClinicalType:(int64_t)type;
- (id)rulesetForFHIRResourceObject:(id)object;
- (id)rulesetForFHIRResourceType:(id)type;
@end

@implementation HDHealthRecordRuleset

- (id)initForFHIRRelease:(id)release rulesetVersion:(id)version
{
  releaseCopy = release;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = HDHealthRecordRuleset;
  v9 = [(HDHealthRecordRuleset *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_FHIRRelease, release);
    v11 = [versionCopy copy];
    rulesetVersion = v10->_rulesetVersion;
    v10->_rulesetVersion = v11;
  }

  return v10;
}

+ (id)rulesetFromDictionary:(id)dictionary rulesetVersion:(id)version error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  versionCopy = version;
  if (!dictionaryCopy)
  {
    [HDHealthRecordRuleset rulesetFromDictionary:a2 rulesetVersion:self error:?];
  }

  v53 = 0;
  v11 = [dictionaryCopy hk_safeStringForKeyPath:@"release" error:&v53];
  v12 = v53;
  if (v11)
  {
    v13 = HKFHIRReleaseFromNSString();
    if (v13 == *MEMORY[0x277CCBDD8])
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Ruleset specifies an unsupported release: %@", v11}];
      v32 = 0;
    }

    else
    {
      v14 = [[HDHealthRecordRuleset alloc] initForFHIRRelease:v13 rulesetVersion:versionCopy];

      v52 = 0;
      v15 = [dictionaryCopy hk_safeValueForKeyPath:@"resources" class:objc_opt_class() error:&v52];
      v12 = v52;
      if (v15)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = [v15 allKeys];
        v16 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v16)
        {
          v17 = v16;
          errorCopy = error;
          v37 = v14;
          v18 = *v49;
          v43 = v15;
          v19 = dictionary;
          v40 = versionCopy;
          v41 = dictionaryCopy;
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
              [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Ruleset couldn't create rule from resource" underlyingError:v12];

              v24 = v12;
              goto LABEL_28;
            }

            resourceType = [v25 resourceType];
            array = [v19 objectForKeyedSubscript:resourceType];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [v19 setObject:array forKeyedSubscript:resourceType];
            }

            condition = [v25 condition];

            if (condition)
            {
              [array insertObject:v25 atIndex:0];
            }

            else
            {
              [array addObject:v25];
            }

            v29 = MEMORY[0x277CCABB0];
            clinicalType = [v25 clinicalType];
            v31 = [v29 numberWithInteger:{objc_msgSend(clinicalType, "type")}];
            [dictionary2 setObject:v25 forKeyedSubscript:v31];

            ++v20;
            v15 = v43;
            v19 = dictionary;
            if (v17 == v20)
            {
              v17 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
              versionCopy = v40;
              dictionaryCopy = v41;
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

          [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:100 description:@"Ruleset couldn't load resources" underlyingError:v24];
LABEL_28:

          v32 = 0;
          v12 = v24;
          versionCopy = v40;
          dictionaryCopy = v41;
          v13 = v38;
          v11 = v39;
          v14 = v37;
          v33 = dictionary2;
          goto LABEL_29;
        }

        v19 = dictionary;
LABEL_25:

        [v14 setRulesByResourceType:v19];
        v33 = dictionary2;
        [v14 setRulesByClinicalType:dictionary2];
        v32 = v14;
LABEL_29:
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Ruleset couldn't find resources" underlyingError:v12];
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
  allKeys = [(NSDictionary *)self->_rulesByResourceType allKeys];
  v7 = [v5 setWithArray:allKeys];
  v8 = [v3 initWithFHIRRelease:FHIRRelease resourceTypes:v7];

  return v8;
}

- (id)rulesetForClinicalType:(int64_t)type
{
  rulesByClinicalType = self->_rulesByClinicalType;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v5 = [(NSDictionary *)rulesByClinicalType objectForKeyedSubscript:v4];

  return v5;
}

- (id)rulesetForFHIRResourceType:(id)type
{
  v3 = [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:type];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (id)rulesetForFHIRResourceObject:(id)object
{
  v22 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifier = [objectCopy identifier];
  resourceType = [identifier resourceType];

  [(NSDictionary *)self->_rulesByResourceType objectForKeyedSubscript:resourceType];
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
        if ([v12 evaluateWithObject:{objectCopy, v17}])
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