@interface HDHealthRecordRulesetResource
+ (id)resourceFromDictionary:(id)a3 resourceName:(id)a4 error:(id *)a5;
@end

@implementation HDHealthRecordRulesetResource

+ (id)resourceFromDictionary:(id)a3 resourceName:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(HDHealthRecordRulesetResource);
  if (!v9)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:@"Couldn't construct ruleset resource - init failed"];
    v19 = 0;
    goto LABEL_55;
  }

  v10 = [v8 copy];
  resourceName = v9->_resourceName;
  v9->_resourceName = v10;

  v12 = [v7 hk_safeValueForKeyPath:@"clinicalType" class:objc_opt_class() error:a5];
  if (v12)
  {
    v13 = [[HDHealthRecordClinicalType alloc] initWithClinicalTypeName:v12];
    clinicalType = v9->_clinicalType;
    v9->_clinicalType = v13;

    if (v9->_clinicalType)
    {
      v61 = 0;
      v15 = [v7 hk_safeArrayIfExistsForKeyPath:@"containReferences" error:&v61];
      v16 = v61;
      v17 = v16;
      if (!v15 && v16)
      {
        if (a5)
        {
          v18 = v16;
          v19 = 0;
          *a5 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }

        goto LABEL_53;
      }

      objc_storeStrong(&v9->_containReferences, v15);

      v60 = 0;
      v20 = [v7 hk_safeValueIfExistsForKeyPath:@"apiContainedReferenceRules" class:objc_opt_class() error:&v60];
      v21 = v60;
      v17 = v21;
      if (!v20 && v21)
      {
        if (a5)
        {
          v22 = v21;
          v19 = 0;
          *a5 = v17;
LABEL_52:

LABEL_53:
          goto LABEL_54;
        }

        _HKLogDroppedError();
LABEL_30:
        v19 = 0;
        goto LABEL_52;
      }

      if ([v20 count])
      {
        v23 = [HDHealthRecordRulesetReferenceRule referenceRulesetsForRules:v20 error:a5];
        if (!v23)
        {
          goto LABEL_30;
        }

        APIReferenceRules = v9->_APIReferenceRules;
        v9->_APIReferenceRules = v23;
      }

      v52 = v20;
      v59 = v17;
      v25 = [v7 hk_safeArrayIfExistsForKeyPath:@"retrieveReferences" error:&v59];
      v26 = v59;

      v27 = v25;
      if (!v25 && v26)
      {
        if (a5)
        {
          v28 = v26;
          v19 = 0;
          *a5 = v26;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }

        goto LABEL_51;
      }

      v51 = v25;
      objc_storeStrong(&v9->_retrieveReferences, v25);
      v58 = v26;
      v29 = [v7 hk_safeArrayForKeyPath:@"displayNameKeyPaths" error:&v58];
      v30 = v58;

      if (v29)
      {
        objc_storeStrong(&v9->_displayNameKeyPaths, v29);
      }

      else if (v30)
      {
        if (a5)
        {
          v40 = v30;
          v19 = 0;
          *a5 = v30;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }

LABEL_50:

        v26 = v30;
        v27 = v51;
LABEL_51:
        v20 = v52;

        v17 = v26;
        goto LABEL_52;
      }

      v50 = v29;
      v57 = v30;
      v31 = [v7 hk_safeDictionaryIfExistsForKeyPath:@"redactionRules" error:&v57];
      v32 = v57;

      v33 = v31;
      if (v31 || !v32)
      {
        v49 = v31;
        objc_storeStrong(&v9->_redactionRules, v31);
        v56 = v32;
        v35 = [v7 hk_safeValueForKeyPath:@"properties" class:objc_opt_class() error:&v56];
        v36 = v56;

        medicalRecordProperties = v9->_medicalRecordProperties;
        v9->_medicalRecordProperties = v35;

        if ([(NSDictionary *)v9->_medicalRecordProperties count])
        {

          v55 = 0;
          v38 = [v7 hk_safeValueForKeyPath:@"resourcePath" class:objc_opt_class() error:&v55];
          v39 = v55;
          v32 = v39;
          if (v38 || !v39)
          {
            if (v38)
            {
              v41 = v38;
            }

            else
            {
              v41 = v8;
            }

            v42 = [v41 copy];
            resourceType = v9->_resourceType;
            v9->_resourceType = v42;

            v54 = 0;
            v44 = [v7 hk_safeValueForKeyPath:@"condition" class:objc_opt_class() error:&v54];
            v32 = v54;
            if (v44)
            {
              v53 = v32;
              v45 = [[HDHRConditionRule alloc] initWithDefinition:v44 error:&v53];
              v46 = v53;

              condition = v9->_condition;
              v9->_condition = v45;

              v32 = v46;
            }

            v33 = v49;
            v19 = v9;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"resource must have resourcePath" underlyingError:v39];
            v19 = 0;
            v33 = v49;
          }
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"resource properties must be non-empty" underlyingError:v36];
          v19 = 0;
          v32 = v36;
          v33 = v49;
        }
      }

      else if (a5)
      {
        v34 = v32;
        v19 = 0;
        *a5 = v32;
      }

      else
      {
        _HKLogDroppedError();
        v19 = 0;
      }

      v30 = v32;
      v29 = v50;
      goto LABEL_50;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Couldn't construct ruleset resource for unknown clinical type %@", v12}];
  }

  v19 = 0;
LABEL_54:

LABEL_55:

  return v19;
}

@end