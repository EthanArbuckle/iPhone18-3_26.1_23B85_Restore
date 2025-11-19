@interface HDRequiredFeatureSettingsValidator
- (HDRequiredFeatureSettingsValidator)initWithRequiredSettingsKeys:(id)a3;
- (id)featureSettingsGivenBaseSettings:(id)a3 onboardingCompletion:(id)a4 error:(id *)a5;
@end

@implementation HDRequiredFeatureSettingsValidator

- (HDRequiredFeatureSettingsValidator)initWithRequiredSettingsKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDRequiredFeatureSettingsValidator;
  v5 = [(HDRequiredFeatureSettingsValidator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requiredSettingsKeys = v5->_requiredSettingsKeys;
    v5->_requiredSettingsKeys = v6;
  }

  return v5;
}

- (id)featureSettingsGivenBaseSettings:(id)a3 onboardingCompletion:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [v9 keyValueStorage];
    v12 = [v11 allKeys];
    v13 = [v12 hk_containsObjectsInArray:self->_requiredSettingsKeys];

    if (v13)
    {
      v14 = v9;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = [(NSArray *)self->_requiredSettingsKeys componentsJoinedByString:@", "];
    v19 = [v9 keyValueStorage];
    v20 = [v19 allKeys];
    v21 = [v20 componentsJoinedByString:{@", "}];
    [v17 hk_assignError:a5 code:3 format:{@"Expected feature settings keys [%@] but received keys [%@]", v18, v21}];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Expected feature settings but no feature settings present"];
    if (v15)
    {
      if (a5)
      {
        v16 = v15;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

@end