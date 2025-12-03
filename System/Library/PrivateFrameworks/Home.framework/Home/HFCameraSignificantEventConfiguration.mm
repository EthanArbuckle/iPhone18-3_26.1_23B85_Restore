@interface HFCameraSignificantEventConfiguration
+ (id)_configurationForCameraProfiles:(id)profiles eventTypesTransform:(id)transform personFamiliarityOptionsTransform:(id)optionsTransform;
+ (id)configurationForCameraProfilesNotificationSettings:(id)settings;
+ (id)configurationWithEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options;
- (BOOL)containsConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (id)localizationKey;
- (id)localizedDescription;
- (id)predicateRepresentation;
- (void)addConfiguration:(id)configuration;
- (void)removeConfiguration:(id)configuration;
@end

@implementation HFCameraSignificantEventConfiguration

+ (id)configurationWithEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options
{
  v6 = objc_alloc_init(self);
  [v6 setEventTypes:types];
  [v6 setPersonFamiliarityOptions:options];

  return v6;
}

+ (id)configurationForCameraProfilesNotificationSettings:(id)settings
{
  v4 = [settings na_filter:&__block_literal_global_43];
  v5 = [self _configurationForCameraProfiles:v4 eventTypesTransform:&__block_literal_global_3_5 personFamiliarityOptionsTransform:&__block_literal_global_5_1];

  return v5;
}

uint64_t __92__HFCameraSignificantEventConfiguration_configurationForCameraProfilesNotificationSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 smartNotificationBulletin];
  v4 = [v3 isEnabled];

  return v4;
}

uint64_t __92__HFCameraSignificantEventConfiguration_configurationForCameraProfilesNotificationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 smartNotificationBulletin];
  v4 = [v3 significantEventTypes];

  return v4;
}

uint64_t __92__HFCameraSignificantEventConfiguration_configurationForCameraProfilesNotificationSettings___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 smartNotificationBulletin];
  v4 = [v3 personFamiliarityOptions];

  return v4;
}

uint64_t __89__HFCameraSignificantEventConfiguration_configurationForCameraProfilesRecordingSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 recordingEventTriggers];

  return v3;
}

- (BOOL)containsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  eventTypes = [(HFCameraSignificantEventConfiguration *)self eventTypes];
  if (([configurationCopy eventTypes] & ~eventTypes) != 0)
  {
    v7 = 0;
  }

  else
  {
    personFamiliarityOptions = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
    v7 = ([configurationCopy personFamiliarityOptions] & ~personFamiliarityOptions) == 0;
  }

  return v7;
}

- (void)addConfiguration:(id)configuration
{
  configurationCopy = configuration;
  -[HFCameraSignificantEventConfiguration setEventTypes:](self, "setEventTypes:", [configurationCopy eventTypes] | -[HFCameraSignificantEventConfiguration eventTypes](self, "eventTypes"));
  personFamiliarityOptions = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
  personFamiliarityOptions2 = [configurationCopy personFamiliarityOptions];

  [(HFCameraSignificantEventConfiguration *)self setPersonFamiliarityOptions:personFamiliarityOptions2 | personFamiliarityOptions];
}

- (void)removeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  -[HFCameraSignificantEventConfiguration setEventTypes:](self, "setEventTypes:", -[HFCameraSignificantEventConfiguration eventTypes](self, "eventTypes") & ~[configurationCopy eventTypes]);
  personFamiliarityOptions = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
  personFamiliarityOptions2 = [configurationCopy personFamiliarityOptions];

  [(HFCameraSignificantEventConfiguration *)self setPersonFamiliarityOptions:personFamiliarityOptions & ~personFamiliarityOptions2];
}

- (id)predicateRepresentation
{
  v3 = MEMORY[0x277CD18C0];
  eventTypes = [(HFCameraSignificantEventConfiguration *)self eventTypes];
  personFamiliarityOptions = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];

  return [v3 predicateForSignificantEventTypes:eventTypes personFamiliarityOptions:personFamiliarityOptions];
}

- (id)localizedDescription
{
  localizationKey = [(HFCameraSignificantEventConfiguration *)self localizationKey];
  v3 = _HFLocalizedStringWithDefaultValue(localizationKey, localizationKey, 1);

  return v3;
}

- (id)localizationKey
{
  if ([(HFCameraSignificantEventConfiguration *)self isFaceDetectionConfiguration])
  {
    HFLocalizationKeyFromHMCameraSignificantEventPersonFamiliarityOptions([(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions]);
  }

  else
  {
    HFLocalizationKeyFromHMCameraMotionDetectionType([(HFCameraSignificantEventConfiguration *)self eventTypes]);
  }
  v3 = ;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (v8 = -[HFCameraSignificantEventConfiguration eventTypes](self, "eventTypes"), v8 == [v7 eventTypes]))
  {
    personFamiliarityOptions = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
    v10 = personFamiliarityOptions == [v7 personFamiliarityOptions];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_configurationForCameraProfiles:(id)profiles eventTypesTransform:(id)transform personFamiliarityOptionsTransform:(id)optionsTransform
{
  v36 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  transformCopy = transform;
  optionsTransformCopy = optionsTransform;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __127__HFCameraSignificantEventConfiguration__configurationForCameraProfiles_eventTypesTransform_personFamiliarityOptionsTransform___block_invoke;
  v27 = &unk_277DF5D38;
  v13 = indexSet;
  v28 = v13;
  v30 = transformCopy;
  v14 = indexSet2;
  v29 = v14;
  v31 = optionsTransformCopy;
  v15 = optionsTransformCopy;
  v16 = transformCopy;
  [profilesCopy na_each:&v24];
  if ([v13 count] == 1)
  {
    firstIndex = [v13 firstIndex];
  }

  else
  {
    v18 = HFLogForCategory(0x1AuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v13;
      v34 = 2112;
      v35 = profilesCopy;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Mismatched HMCameraSignificantEventTypes:%@ for HMCameraProfiles:%@", buf, 0x16u);
    }

    firstIndex = 1;
  }

  if ([v14 count] == 1)
  {
    firstIndex2 = [v14 firstIndex];
  }

  else
  {
    v20 = HFLogForCategory(0x1AuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v14;
      v34 = 2112;
      v35 = profilesCopy;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "Mismatched HMCameraSignificantEventPersonFamiliarityOptions:%@ for HMCameraProfiles:%@", buf, 0x16u);
    }

    firstIndex2 = 7;
  }

  v21 = [self configurationWithEventTypes:firstIndex personFamiliarityOptions:firstIndex2];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __127__HFCameraSignificantEventConfiguration__configurationForCameraProfiles_eventTypesTransform_personFamiliarityOptionsTransform___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = *(v4 + 16);
  v6 = a2;
  [v3 addIndex:{v5(v4, v6)}];
  v7 = a1[5];
  v8 = (*(a1[7] + 16))();

  return [v7 addIndex:v8];
}

@end