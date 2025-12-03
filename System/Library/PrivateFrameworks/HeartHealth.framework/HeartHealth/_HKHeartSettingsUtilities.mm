@interface _HKHeartSettingsUtilities
+ (BOOL)isBackgroundHeartRateEnabled;
+ (BOOL)isBradycardiaDetectionEnabled;
+ (BOOL)isBradycardiaDetectionEnabledWithDefaults:(id)defaults;
+ (BOOL)isTachycardiaDetectionEnabled;
+ (BOOL)isTachycardiaDetectionEnabledWithDefaults:(id)defaults;
+ (BOOL)isWristDetectionEnabled;
+ (BOOL)shouldFooterTextDisplayOffConfiguration:(BOOL)configuration;
+ (NSString)aFibBurdenAppleSupportURL;
+ (NSString)aFibBurdenDefaultLinkURL;
+ (NSString)aFibBurdenDeviceNotSupportedFooterDescription;
+ (NSString)aFibBurdenFooterDescription;
+ (NSString)aFibBurdenFooterDescriptionWithLink;
+ (NSString)aFibBurdenFooterLinkTitle;
+ (NSString)aFibBurdenHeartRateFooterDescriptionWithLink;
+ (NSString)aFibBurdenHeartRateFooterLinkTitle;
+ (NSString)aFibBurdenIRNEnabledFooterDescription;
+ (NSString)aFibBurdenIRNEnabledFooterDescriptionWatch;
+ (NSString)aFibBurdenIRNEnabledFooterDescriptionWithLink;
+ (NSString)aFibBurdenRegionNotSupportedFooterDescription;
+ (NSString)aFibBurdenRegionNotSupportedFooterDescriptionWithLink;
+ (NSString)aFibBurdenRemoteDisabledFooterDescription;
+ (NSString)aFibBurdenRemoteDisabledFooterDescriptionWatch;
+ (NSString)aFibBurdenRemoteDisabledFooterDescriptionWithLink;
+ (NSString)aFibBurdenSectionTitle;
+ (NSString)aFibBurdenSeedExpiryFooterDescription;
+ (NSString)aFibBurdenSeedExpiryFooterDescriptionWatch;
+ (NSString)aFibBurdenSeedExpiryFooterDescriptionWithLink;
+ (NSString)aFibBurdenSetupTitleDescription;
+ (NSString)aFibBurdenTitleDescription;
+ (NSString)aFibBurdenUnavailableDetailText;
+ (NSString)aFibBurdenWristDetectFooterDescriptionWithLink;
+ (NSString)aFibBurdenWristDetectFooterLinkTitle;
+ (NSString)cardioFitnessAgeDeletedFooterDescription;
+ (NSString)cardioFitnessAgeDeletedFooterDescriptionWithLink;
+ (NSString)cardioFitnessAgeDeletedFooterLinkTitle;
+ (NSString)cardioFitnessAgeRestrictedFooterDescription;
+ (NSString)cardioFitnessFooterDescription;
+ (NSString)cardioFitnessFooterDescriptionWithLink;
+ (NSString)cardioFitnessFooterLinkTitle;
+ (NSString)cardioFitnessPairedDeviceRegionGatedFooterDescription;
+ (NSString)cardioFitnessPregnantFooterDescription;
+ (NSString)cardioFitnessPregnantFooterDescriptionWithLink;
+ (NSString)cardioFitnessSectionTitle;
+ (NSString)cardioFitnessSetupTitleDescription;
+ (NSString)cardioFitnessTitleDescription;
+ (NSString)cardioFitnessUnavailableDetailText;
+ (NSString)cardioFitnessWristDetectFooterDescription;
+ (NSString)cardioFitnessWristDetectFooterDescriptionWithLink;
+ (NSString)cardioFitnessWristDetectFooterLinkTitle;
+ (NSString)irregularHeartRhythmFooterDescription;
+ (id)_calculateHeartRateOptionsWithMin:(int64_t)min increment:(int64_t)increment max:(int64_t)max;
+ (id)bradycardiaHeartThresholdFooterDescriptionWithThresholdValue:(id)value;
+ (id)tachycardiaHeartThresholdFooterDescriptionWithThresholdValue:(id)value;
+ (int64_t)bradycardiaThresholdHeartRate;
+ (int64_t)bradycardiaThresholdHeartRateWithDefaults:(id)defaults;
+ (int64_t)tachycardiaThresholdHeartRate;
+ (int64_t)tachycardiaThresholdHeartRateWithDefaults:(id)defaults;
+ (void)_setThresholdHeartRate:(id)rate detectedEnabledDefaultsKey:(id)key thresholdHeartRateDefaultKey:(id)defaultKey userDefaults:(id)defaults;
+ (void)setBradycardiaThresholdHeartRate:(id)rate;
+ (void)setTachycardiaThresholdHeartRate:(id)rate;
@end

@implementation _HKHeartSettingsUtilities

+ (BOOL)isWristDetectionEnabled
{
  v2 = *MEMORY[0x277CCE300];
  v3 = *MEMORY[0x277CCE308];
  v4 = HKObjectForNanoPreferencesUserDefaultsKey();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (BOOL)isBackgroundHeartRateEnabled
{
  isHeartRateEnabled = [self isHeartRateEnabled];
  if (isHeartRateEnabled)
  {

    LOBYTE(isHeartRateEnabled) = [self isWristDetectionEnabled];
  }

  return isHeartRateEnabled;
}

+ (id)bradycardiaHeartThresholdFooterDescriptionWithThresholdValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x277CCACA8];
  v6 = HKHeartRateLocalizedString(@"MINUTES_%ld");
  v7 = [v5 localizedStringWithFormat:v6, 10];

  v8 = [self shouldFooterTextDisplayOffConfiguration:{objc_msgSend(self, "isBradycardiaDetectionEnabled")}];
  v9 = MEMORY[0x277CCACA8];
  if (v8)
  {
    v10 = HKHeartRateLocalizedString(@"HEART_NOTIFICATION_BRADYCARDIA_FOOTER_OFF_%@");
    [v9 stringWithFormat:v10, v7, v13];
  }

  else
  {
    v10 = HKHeartRateLocalizedString(@"HEART_NOTIFICATION_BRADYCARDIA_FOOTER_%@_%@");
    [v9 stringWithFormat:v10, valueCopy, v7];
  }
  v11 = ;

  return v11;
}

+ (BOOL)isBradycardiaDetectionEnabled
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  LOBYTE(self) = [self isBradycardiaDetectionEnabledWithDefaults:v4];

  return self;
}

+ (BOOL)isBradycardiaDetectionEnabledWithDefaults:(id)defaults
{
  v3 = [defaults objectForKey:*MEMORY[0x277CCE438]];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)bradycardiaThresholdHeartRate
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  v5 = [self bradycardiaThresholdHeartRateWithDefaults:v4];

  return v5;
}

+ (int64_t)bradycardiaThresholdHeartRateWithDefaults:(id)defaults
{
  v3 = [defaults objectForKey:*MEMORY[0x277CCE428]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 40;
  }

  return integerValue;
}

+ (void)setBradycardiaThresholdHeartRate:(id)rate
{
  v4 = MEMORY[0x277CBEBD0];
  rateCopy = rate;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE458]];
  [self setBradycardiaThresholdHeartRate:rateCopy defaults:v7];
}

+ (BOOL)isTachycardiaDetectionEnabled
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  LOBYTE(self) = [self isTachycardiaDetectionEnabledWithDefaults:v4];

  return self;
}

+ (BOOL)isTachycardiaDetectionEnabledWithDefaults:(id)defaults
{
  v3 = [defaults objectForKey:*MEMORY[0x277CCE448]];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (int64_t)tachycardiaThresholdHeartRate
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE458]];
  v5 = [self tachycardiaThresholdHeartRateWithDefaults:v4];

  return v5;
}

+ (int64_t)tachycardiaThresholdHeartRateWithDefaults:(id)defaults
{
  v3 = [defaults objectForKey:*MEMORY[0x277CCE450]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 120;
  }

  return integerValue;
}

+ (id)tachycardiaHeartThresholdFooterDescriptionWithThresholdValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x277CCACA8];
  v6 = HKHeartRateLocalizedString(@"MINUTES_%ld");
  v7 = [v5 localizedStringWithFormat:v6, 10];

  v8 = [self shouldFooterTextDisplayOffConfiguration:{objc_msgSend(self, "isTachycardiaDetectionEnabled")}];
  v9 = MEMORY[0x277CCACA8];
  if (v8)
  {
    v10 = HKHeartRateLocalizedString(@"HEART_NOTIFICATION_TACHYCARDIA_FOOTER_OFF_%@");
    [v9 stringWithFormat:v10, v7, v13];
  }

  else
  {
    v10 = HKHeartRateLocalizedString(@"HEART_NOTIFICATION_TACHYCARDIA_FOOTER_%@_%@");
    [v9 stringWithFormat:v10, valueCopy, v7];
  }
  v11 = ;

  return v11;
}

+ (void)setTachycardiaThresholdHeartRate:(id)rate
{
  v4 = MEMORY[0x277CBEBD0];
  rateCopy = rate;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE458]];
  [self setTachycardiaThresholdHeartRate:rateCopy defaults:v7];
}

+ (NSString)irregularHeartRhythmFooterDescription
{
  v3 = HKHeartRateLocalizedString(@"HEART_NOTIFICATION_ATRIAL_FIBRILLATION_NEEDS_GEOLOCATION_FOOTER");
  irregularHeartRhythmFooterLinkTitle = [self irregularHeartRhythmFooterLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v3, irregularHeartRhythmFooterLinkTitle];

  return v5;
}

+ (NSString)cardioFitnessSectionTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_SECTION_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessSetupTitleDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_ONBOARDING_BUTTON_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessUnavailableDetailText
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_STATUS_UNAVAILABLE_TEXT" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessTitleDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_SWITCH_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessPregnantFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"CARDIO_FITNESS_PREGNANCY_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-Pregnancy"];

  return v3;
}

+ (NSString)cardioFitnessFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  cardioFitnessFooterLinkTitle = [self cardioFitnessFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v4, cardioFitnessFooterLinkTitle];

  return v6;
}

+ (NSString)cardioFitnessPregnantFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"CARDIO_FITNESS_PREGNANCY_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-Pregnancy"];

  cardioFitnessFooterLinkTitle = [self cardioFitnessFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v4, cardioFitnessFooterLinkTitle];

  return v6;
}

+ (NSString)cardioFitnessFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_LINK" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessWristDetectFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_WRIST_DETECT" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessWristDetectFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_WRIST_DETECT" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  cardioFitnessWristDetectFooterLinkTitle = [self cardioFitnessWristDetectFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, cardioFitnessWristDetectFooterLinkTitle];

  return v6;
}

+ (NSString)cardioFitnessWristDetectFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_LINK_PASSCODE" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessAgeDeletedFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_AGE_DELETED" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessAgeDeletedFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_AGE_DELETED" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  cardioFitnessAgeDeletedFooterLinkTitle = [self cardioFitnessAgeDeletedFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, cardioFitnessAgeDeletedFooterLinkTitle];

  return v6;
}

+ (NSString)cardioFitnessAgeDeletedFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_LINK_HEALTH_DETAILS" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessAgeRestrictedFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_AGE_GATING" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)cardioFitnessPairedDeviceRegionGatedFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_CARDIO_FITNESS_FOOTER_PAIRED_DEVICE_REGION_GATED" value:&stru_283BD8508 table:@"HeartRateSettings-CardioFitness"];

  return v3;
}

+ (NSString)aFibBurdenSectionTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"AFIB_BURDEN_SECTION_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenTitleDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_SWITCH_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenSetupTitleDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_ONBOARDING_BUTTON_TITLE" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenUnavailableDetailText
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_STATUS_UNAVAILABLE_TEXT" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenFooterDescriptionWithLink
{
  aFibBurdenFooterDescription = [self aFibBurdenFooterDescription];
  aFibBurdenFooterLinkTitle = [self aFibBurdenFooterLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", aFibBurdenFooterDescription, aFibBurdenFooterLinkTitle];

  return v5;
}

+ (NSString)aFibBurdenFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER_LINK_ABOUT" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenAppleSupportURL
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"AFIB_BURDEN_SUPPORT_URL" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenDefaultLinkURL
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"AFIB_BURDEN_GENERIC_LEARN_MORE_URL" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenHeartRateFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER_HEART_RATE" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  aFibBurdenHeartRateFooterLinkTitle = [self aFibBurdenHeartRateFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, aFibBurdenHeartRateFooterLinkTitle];

  return v6;
}

+ (NSString)aFibBurdenHeartRateFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER_LINK_PRIVACY" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenWristDetectFooterDescriptionWithLink
{
  v3 = HKHRHeartHealthBundle();
  v4 = [v3 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER_WRIST_DETECT" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  aFibBurdenWristDetectFooterLinkTitle = [self aFibBurdenWristDetectFooterLinkTitle];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, aFibBurdenWristDetectFooterLinkTitle];

  return v6;
}

+ (NSString)aFibBurdenWristDetectFooterLinkTitle
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_FOOTER_LINK_PASSCODE" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenDeviceNotSupportedFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_DEVICE_NOT_SUPPORTED_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenIRNEnabledFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_IRN_ENABLED_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenIRNEnabledFooterDescriptionWithLink
{
  aFibBurdenIRNEnabledFooterDescription = [self aFibBurdenIRNEnabledFooterDescription];
  aFibBurdenFooterLinkTitle = [self aFibBurdenFooterLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", aFibBurdenIRNEnabledFooterDescription, aFibBurdenFooterLinkTitle];

  return v5;
}

+ (NSString)aFibBurdenIRNEnabledFooterDescriptionWatch
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_IRN_ENABLED_FOOTER_WATCH" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenRegionNotSupportedFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_REGION_NOT_SUPPORTED_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenRemoteDisabledFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_REMOTE_DISABLED_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenRemoteDisabledFooterDescriptionWatch
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_REMOTE_DISABLED_FOOTER_WATCH" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenRemoteDisabledFooterDescriptionWithLink
{
  aFibBurdenRemoteDisabledFooterDescription = [self aFibBurdenRemoteDisabledFooterDescription];
  remoteDisabledLinkTitle = [self remoteDisabledLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", aFibBurdenRemoteDisabledFooterDescription, remoteDisabledLinkTitle];

  return v5;
}

+ (NSString)aFibBurdenSeedExpiryFooterDescription
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_SEED_EXPIRY_FOOTER" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenSeedExpiryFooterDescriptionWatch
{
  v2 = HKHRHeartHealthBundle();
  v3 = [v2 localizedStringForKey:@"HEART_NOTIFICATION_AFIB_BURDEN_SEED_EXPIRY_FOOTER_WATCH" value:&stru_283BD8508 table:@"HeartRateSettings-AFibBurden"];

  return v3;
}

+ (NSString)aFibBurdenSeedExpiryFooterDescriptionWithLink
{
  aFibBurdenSeedExpiryFooterDescription = [self aFibBurdenSeedExpiryFooterDescription];
  seedExpiredLinkTitle = [self seedExpiredLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", aFibBurdenSeedExpiryFooterDescription, seedExpiredLinkTitle];

  return v5;
}

+ (NSString)aFibBurdenRegionNotSupportedFooterDescriptionWithLink
{
  aFibBurdenRegionNotSupportedFooterDescription = [self aFibBurdenRegionNotSupportedFooterDescription];
  remoteDisabledLinkTitle = [self remoteDisabledLinkTitle];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", aFibBurdenRegionNotSupportedFooterDescription, remoteDisabledLinkTitle];

  return v5;
}

+ (BOOL)shouldFooterTextDisplayOffConfiguration:(BOOL)configuration
{
  if ([self isHeartRateEnabled])
  {
    return [self isWristDetectionEnabled] & configuration ^ 1;
  }

  else
  {
    return 1;
  }
}

+ (void)_setThresholdHeartRate:(id)rate detectedEnabledDefaultsKey:(id)key thresholdHeartRateDefaultKey:(id)defaultKey userDefaults:(id)defaults
{
  v20[2] = *MEMORY[0x277D85DE8];
  v9 = rate != 0;
  defaultsCopy = defaults;
  defaultKeyCopy = defaultKey;
  keyCopy = key;
  rateCopy = rate;
  [defaultsCopy setBool:v9 forKey:keyCopy];
  [defaultsCopy setObject:rateCopy forKey:defaultKeyCopy];

  v14 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v15 = *MEMORY[0x277CCE458];
  v16 = MEMORY[0x277CBEB98];
  v20[0] = keyCopy;
  v20[1] = defaultKeyCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [v16 setWithArray:v17];

  [v14 synchronizeUserDefaultsDomain:v15 keys:v18];
  if (rate)
  {
    HKHRSubmitNotificationsEnabledSignal();
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)_calculateHeartRateOptionsWithMin:(int64_t)min increment:(int64_t)increment max:(int64_t)max
{
  for (i = [MEMORY[0x277CBEB18] array];
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:min];
    [i addObject:v9];
  }

  return i;
}

@end