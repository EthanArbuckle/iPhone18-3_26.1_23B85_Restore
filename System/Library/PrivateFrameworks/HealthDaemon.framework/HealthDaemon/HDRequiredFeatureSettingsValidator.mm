@interface HDRequiredFeatureSettingsValidator
- (HDRequiredFeatureSettingsValidator)initWithRequiredSettingsKeys:(id)keys;
- (id)featureSettingsGivenBaseSettings:(id)settings onboardingCompletion:(id)completion error:(id *)error;
@end

@implementation HDRequiredFeatureSettingsValidator

- (HDRequiredFeatureSettingsValidator)initWithRequiredSettingsKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = HDRequiredFeatureSettingsValidator;
  v5 = [(HDRequiredFeatureSettingsValidator *)&v9 init];
  if (v5)
  {
    v6 = [keysCopy copy];
    requiredSettingsKeys = v5->_requiredSettingsKeys;
    v5->_requiredSettingsKeys = v6;
  }

  return v5;
}

- (id)featureSettingsGivenBaseSettings:(id)settings onboardingCompletion:(id)completion error:(id *)error
{
  settingsCopy = settings;
  completionCopy = completion;
  if (settingsCopy)
  {
    keyValueStorage = [settingsCopy keyValueStorage];
    allKeys = [keyValueStorage allKeys];
    v13 = [allKeys hk_containsObjectsInArray:self->_requiredSettingsKeys];

    if (v13)
    {
      v14 = settingsCopy;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = [(NSArray *)self->_requiredSettingsKeys componentsJoinedByString:@", "];
    keyValueStorage2 = [settingsCopy keyValueStorage];
    allKeys2 = [keyValueStorage2 allKeys];
    v21 = [allKeys2 componentsJoinedByString:{@", "}];
    [v17 hk_assignError:error code:3 format:{@"Expected feature settings keys [%@] but received keys [%@]", v18, v21}];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Expected feature settings but no feature settings present"];
    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
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