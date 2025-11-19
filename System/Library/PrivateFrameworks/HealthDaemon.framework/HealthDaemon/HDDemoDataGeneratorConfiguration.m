@interface HDDemoDataGeneratorConfiguration
+ (id)configurationFromDefaults:(id)a3;
- (HDDemoDataGeneratorConfiguration)init;
- (void)configureForProfileType:(int64_t)a3;
- (void)persistToDefaults:(id)a3;
@end

@implementation HDDemoDataGeneratorConfiguration

+ (id)configurationFromDefaults:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKey:@"HealthDemoDataProfileTypeKey"];

  if (v6)
  {
    [v5 setProfileType:{objc_msgSend(v4, "integerForKey:", @"HealthDemoDataProfileTypeKey"}];
    [v5 setGenerationPeriodInDays:{objc_msgSend(v4, "integerForKey:", @"HealthDemoInitialDataGenerationPeriodKey"}];
    [v5 setHighFidelityGeneration:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataHighFidelityDataKey"}];
    [v5 setShouldPresentNotifications:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataEnableNotificationsKey"}];
    [v5 setBiologicalSex:{objc_msgSend(v4, "integerForKey:", @"HealthDemoDataGenderKey"}];
    [v5 setSampleTrackingType:{objc_msgSend(v4, "integerForKey:", @"HealthDemoDataDataTrackingTypeKey"}];
    [v5 setNutritionTrackingType:{objc_msgSend(v4, "integerForKey:", @"HealthDemoDataNutritionTrackingTypeKey"}];
    [v5 setResultsTrackingType:{objc_msgSend(v4, "integerForKey:", @"HealthDemoDataResultsTrackingTypeKey"}];
    [v5 setShouldGenerateMedicalID:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataGenerateMedicalIDKey"}];
    [v5 setShouldGenerateHealthDocuments:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataGenerateHealthDocumentsKey"}];
    [v5 setShouldEnsureRecentWorkoutHasRoute:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataEnsureRecentWorkoutHasRouteKey"}];
    [v5 setShouldGenerateRecentLiquidsIntake:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataGenerateRecentLiquidsKey"}];
    [v5 setShouldGenerateLoudHeadphoneData:{objc_msgSend(v4, "BOOLForKey:", @"HealthDemoDataLoudHeadphoneListeningKey"}];
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

- (void)configureForProfileType:(int64_t)a3
{
  self->_profileType = a3;
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isAppleWatch];

  if (v5)
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
  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  self->_shouldGenerateHealthDocuments = [v8 isAppleWatch] ^ 1;
}

- (void)persistToDefaults:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  profileType = self->_profileType;
  v6 = a3;
  v7 = [v4 numberWithInteger:profileType];
  [v6 setObject:v7 forKey:@"HealthDemoDataProfileTypeKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_generationPeriodInDays];
  [v6 setObject:v8 forKey:@"HealthDemoInitialDataGenerationPeriodKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_highFidelityGeneration];
  [v6 setObject:v9 forKey:@"HealthDemoDataHighFidelityDataKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPresentNotifications];
  [v6 setObject:v10 forKey:@"HealthDemoDataEnableNotificationsKey"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_biologicalSex];
  [v6 setObject:v11 forKey:@"HealthDemoDataGenderKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sampleTrackingType];
  [v6 setObject:v12 forKey:@"HealthDemoDataDataTrackingTypeKey"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_nutritionTrackingType];
  [v6 setObject:v13 forKey:@"HealthDemoDataNutritionTrackingTypeKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_resultsTrackingType];
  [v6 setObject:v14 forKey:@"HealthDemoDataResultsTrackingTypeKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateMedicalID];
  [v6 setObject:v15 forKey:@"HealthDemoDataGenerateMedicalIDKey"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateHealthDocuments];
  [v6 setObject:v16 forKey:@"HealthDemoDataGenerateHealthDocumentsKey"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldEnsureRecentWorkoutHasRoute];
  [v6 setObject:v17 forKey:@"HealthDemoDataEnsureRecentWorkoutHasRouteKey"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateRecentLiquidsIntake];
  [v6 setObject:v18 forKey:@"HealthDemoDataGenerateRecentLiquidsKey"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateLoudHeadphoneData];
  [v6 setObject:v19 forKey:@"HealthDemoDataLoudHeadphoneListeningKey"];
}

@end