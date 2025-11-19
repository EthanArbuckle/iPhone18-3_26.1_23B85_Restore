@interface HFCameraSignificantEventConfiguration
+ (id)_configurationForCameraProfiles:(id)a3 eventTypesTransform:(id)a4 personFamiliarityOptionsTransform:(id)a5;
+ (id)configurationForCameraProfilesNotificationSettings:(id)a3;
+ (id)configurationWithEventTypes:(unint64_t)a3 personFamiliarityOptions:(unint64_t)a4;
- (BOOL)containsConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)localizationKey;
- (id)localizedDescription;
- (id)predicateRepresentation;
- (void)addConfiguration:(id)a3;
- (void)removeConfiguration:(id)a3;
@end

@implementation HFCameraSignificantEventConfiguration

+ (id)configurationWithEventTypes:(unint64_t)a3 personFamiliarityOptions:(unint64_t)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setEventTypes:a3];
  [v6 setPersonFamiliarityOptions:a4];

  return v6;
}

+ (id)configurationForCameraProfilesNotificationSettings:(id)a3
{
  v4 = [a3 na_filter:&__block_literal_global_43];
  v5 = [a1 _configurationForCameraProfiles:v4 eventTypesTransform:&__block_literal_global_3_5 personFamiliarityOptionsTransform:&__block_literal_global_5_1];

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

- (BOOL)containsConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraSignificantEventConfiguration *)self eventTypes];
  if (([v4 eventTypes] & ~v5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
    v7 = ([v4 personFamiliarityOptions] & ~v6) == 0;
  }

  return v7;
}

- (void)addConfiguration:(id)a3
{
  v4 = a3;
  -[HFCameraSignificantEventConfiguration setEventTypes:](self, "setEventTypes:", [v4 eventTypes] | -[HFCameraSignificantEventConfiguration eventTypes](self, "eventTypes"));
  v5 = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
  v6 = [v4 personFamiliarityOptions];

  [(HFCameraSignificantEventConfiguration *)self setPersonFamiliarityOptions:v6 | v5];
}

- (void)removeConfiguration:(id)a3
{
  v4 = a3;
  -[HFCameraSignificantEventConfiguration setEventTypes:](self, "setEventTypes:", -[HFCameraSignificantEventConfiguration eventTypes](self, "eventTypes") & ~[v4 eventTypes]);
  v5 = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
  v6 = [v4 personFamiliarityOptions];

  [(HFCameraSignificantEventConfiguration *)self setPersonFamiliarityOptions:v5 & ~v6];
}

- (id)predicateRepresentation
{
  v3 = MEMORY[0x277CD18C0];
  v4 = [(HFCameraSignificantEventConfiguration *)self eventTypes];
  v5 = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];

  return [v3 predicateForSignificantEventTypes:v4 personFamiliarityOptions:v5];
}

- (id)localizedDescription
{
  v2 = [(HFCameraSignificantEventConfiguration *)self localizationKey];
  v3 = _HFLocalizedStringWithDefaultValue(v2, v2, 1);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v9 = [(HFCameraSignificantEventConfiguration *)self personFamiliarityOptions];
    v10 = v9 == [v7 personFamiliarityOptions];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_configurationForCameraProfiles:(id)a3 eventTypesTransform:(id)a4 personFamiliarityOptionsTransform:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAB58] indexSet];
  v12 = [MEMORY[0x277CCAB58] indexSet];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __127__HFCameraSignificantEventConfiguration__configurationForCameraProfiles_eventTypesTransform_personFamiliarityOptionsTransform___block_invoke;
  v27 = &unk_277DF5D38;
  v13 = v11;
  v28 = v13;
  v30 = v9;
  v14 = v12;
  v29 = v14;
  v31 = v10;
  v15 = v10;
  v16 = v9;
  [v8 na_each:&v24];
  if ([v13 count] == 1)
  {
    v17 = [v13 firstIndex];
  }

  else
  {
    v18 = HFLogForCategory(0x1AuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v13;
      v34 = 2112;
      v35 = v8;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Mismatched HMCameraSignificantEventTypes:%@ for HMCameraProfiles:%@", buf, 0x16u);
    }

    v17 = 1;
  }

  if ([v14 count] == 1)
  {
    v19 = [v14 firstIndex];
  }

  else
  {
    v20 = HFLogForCategory(0x1AuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v14;
      v34 = 2112;
      v35 = v8;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "Mismatched HMCameraSignificantEventPersonFamiliarityOptions:%@ for HMCameraProfiles:%@", buf, 0x16u);
    }

    v19 = 7;
  }

  v21 = [a1 configurationWithEventTypes:v17 personFamiliarityOptions:v19];

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