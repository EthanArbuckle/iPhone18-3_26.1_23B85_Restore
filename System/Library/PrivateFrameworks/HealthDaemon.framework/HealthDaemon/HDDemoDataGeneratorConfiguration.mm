@interface HDDemoDataGeneratorConfiguration
+ (id)configurationFromDefaults:(id)defaults;
- (HDDemoDataGeneratorConfiguration)init;
- (void)configureForProfileType:(int64_t)type;
- (void)persistToDefaults:(id)defaults;
@end

@implementation HDDemoDataGeneratorConfiguration

+ (id)configurationFromDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = objc_alloc_init(self);
  v6 = [defaultsCopy objectForKey:@"HealthDemoDataProfileTypeKey"];

  if (v6)
  {
    [v5 setProfileType:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoDataProfileTypeKey"}];
    [v5 setGenerationPeriodInDays:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoInitialDataGenerationPeriodKey"}];
    [v5 setHighFidelityGeneration:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataHighFidelityDataKey"}];
    [v5 setShouldPresentNotifications:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataEnableNotificationsKey"}];
    [v5 setBiologicalSex:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoDataGenderKey"}];
    [v5 setSampleTrackingType:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoDataDataTrackingTypeKey"}];
    [v5 setNutritionTrackingType:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoDataNutritionTrackingTypeKey"}];
    [v5 setResultsTrackingType:{objc_msgSend(defaultsCopy, "integerForKey:", @"HealthDemoDataResultsTrackingTypeKey"}];
    [v5 setShouldGenerateMedicalID:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataGenerateMedicalIDKey"}];
    [v5 setShouldGenerateHealthDocuments:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataGenerateHealthDocumentsKey"}];
    [v5 setShouldEnsureRecentWorkoutHasRoute:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataEnsureRecentWorkoutHasRouteKey"}];
    [v5 setShouldGenerateRecentLiquidsIntake:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataGenerateRecentLiquidsKey"}];
    [v5 setShouldGenerateLoudHeadphoneData:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"HealthDemoDataLoudHeadphoneListeningKey"}];
  }

  else
  {
    [v5 configureForProfileType:1];
  }

  return v5;
}

- (HDDemoDataGeneratorConfiguration)init
{
  v5.receiver = self;
  v5.super_class = HDDemoDataGeneratorConfiguration;
  v2 = [(HDDemoDataGeneratorConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HDDemoDataGeneratorConfiguration *)v2 configureForProfileType:1];
  }

  return v3;
}

- (void)configureForProfileType:(int64_t)type
{
  self->_profileType = type;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    self->_generationPeriodInDays = 1;
    if (![MEMORY[0x277CCDD30] runningInStoreDemoModeF201])
    {
      goto LABEL_8;
    }

    v6 = 60;
  }

  else if ([MEMORY[0x277CCDD30] isRunningStoreDemoMode])
  {
    v6 = 180;
  }

  else
  {
    v6 = 90;
  }

  self->_generationPeriodInDays = v6;
LABEL_8:
  self->_highFidelityGeneration = [MEMORY[0x277CCDD30] runningInStoreDemoModeF201];
  v7 = vdupq_n_s64(1uLL);
  *&self->_biologicalSex = v7;
  *&self->_nutritionTrackingType = v7;
  self->_shouldGenerateMedicalID = 1;
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  self->_shouldGenerateHealthDocuments = [mEMORY[0x277CCDD30]2 isAppleWatch] ^ 1;
}

- (void)persistToDefaults:(id)defaults
{
  v4 = MEMORY[0x277CCABB0];
  profileType = self->_profileType;
  defaultsCopy = defaults;
  v7 = [v4 numberWithInteger:profileType];
  [defaultsCopy setObject:v7 forKey:@"HealthDemoDataProfileTypeKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_generationPeriodInDays];
  [defaultsCopy setObject:v8 forKey:@"HealthDemoInitialDataGenerationPeriodKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_highFidelityGeneration];
  [defaultsCopy setObject:v9 forKey:@"HealthDemoDataHighFidelityDataKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPresentNotifications];
  [defaultsCopy setObject:v10 forKey:@"HealthDemoDataEnableNotificationsKey"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_biologicalSex];
  [defaultsCopy setObject:v11 forKey:@"HealthDemoDataGenderKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleTrackingType];
  [defaultsCopy setObject:v12 forKey:@"HealthDemoDataDataTrackingTypeKey"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_nutritionTrackingType];
  [defaultsCopy setObject:v13 forKey:@"HealthDemoDataNutritionTrackingTypeKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resultsTrackingType];
  [defaultsCopy setObject:v14 forKey:@"HealthDemoDataResultsTrackingTypeKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateMedicalID];
  [defaultsCopy setObject:v15 forKey:@"HealthDemoDataGenerateMedicalIDKey"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateHealthDocuments];
  [defaultsCopy setObject:v16 forKey:@"HealthDemoDataGenerateHealthDocumentsKey"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldEnsureRecentWorkoutHasRoute];
  [defaultsCopy setObject:v17 forKey:@"HealthDemoDataEnsureRecentWorkoutHasRouteKey"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateRecentLiquidsIntake];
  [defaultsCopy setObject:v18 forKey:@"HealthDemoDataGenerateRecentLiquidsKey"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateLoudHeadphoneData];
  [defaultsCopy setObject:v19 forKey:@"HealthDemoDataLoudHeadphoneListeningKey"];
}

@end