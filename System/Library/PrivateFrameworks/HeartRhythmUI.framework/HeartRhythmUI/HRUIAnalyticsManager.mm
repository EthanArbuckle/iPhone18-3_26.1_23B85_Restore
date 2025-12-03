@interface HRUIAnalyticsManager
+ (id)sharedManager;
- (HRUIAnalyticsManager)init;
- (id)_pdfSharedStringFromProvenance:(unint64_t)provenance;
- (id)_stringAlgorithmVersionFromOnboardingVersion:(id)version;
- (id)_stringFromHRUIAtrialFibrillationDetectionOnboardingStep:(int64_t)step;
- (id)_stringFromHRUIElectrocardiogramOnboardingStep:(int64_t)step;
- (id)_stringFromOnboardingType:(int64_t)type;
- (id)_stringFromOnboardingVersion:(id)version;
- (id)_stringFromProvenance:(int64_t)provenance;
- (void)trackAtrialFibrillationDetectionOnboardingStep:(int64_t)step forOnboardingVersion:(int64_t)version countryCode:(id)code provenance:(int64_t)provenance;
- (void)trackElectrocardiogramDataTypeViewed;
- (void)trackElectrocardiogramOnboardingStep:(int64_t)step forOnboardingType:(int64_t)type onboardingVersion:(id)version countryCode:(id)code provenance:(int64_t)provenance;
- (void)trackElectrocardiogramPDFShared;
- (void)trackElectrocardiogramPDFSharedFrom:(unint64_t)from;
- (void)trackElectrocardiogramPDFViewed;
@end

@implementation HRUIAnalyticsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[HRUIAnalyticsManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __37__HRUIAnalyticsManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(HRUIAnalyticsManager);

  return MEMORY[0x2821F96F8]();
}

- (HRUIAnalyticsManager)init
{
  v9.receiver = self;
  v9.super_class = HRUIAnalyticsManager;
  v2 = [(HRUIAnalyticsManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentAtrialFibrillationOnboardingStep = -1;
    v2->_currentElectrocardiogramOnboardingStep = -1;
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
    v6 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
    productType = v3->_productType;
    v3->_productType = v6;
  }

  return v3;
}

- (void)trackAtrialFibrillationDetectionOnboardingStep:(int64_t)step forOnboardingVersion:(int64_t)version countryCode:(id)code provenance:(int64_t)provenance
{
  v24 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if (self->_currentAtrialFibrillationOnboardingStep < step)
  {
    self->_currentAtrialFibrillationOnboardingStep = step;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    [v11 setObject:v12 forKey:@"version"];

    v13 = [(HRUIAnalyticsManager *)self _stringFromHRUIAtrialFibrillationDetectionOnboardingStep:step];
    [v11 setObject:v13 forKey:@"stepName"];

    v14 = [(HRUIAnalyticsManager *)self _stringFromProvenance:provenance];
    [v11 setObject:v14 forKey:@"provenance"];

    productType = self->_productType;
    if (productType)
    {
      [v11 setObject:productType forKey:@"watchProductType"];
    }

    if (codeCopy)
    {
      [v11 setObject:codeCopy forKey:@"countryCode"];
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_productType;
      v18 = 134218498;
      stepCopy = step;
      v20 = 2048;
      provenanceCopy = provenance;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_2521E7000, v16, OS_LOG_TYPE_DEFAULT, "Completed atrial fibrillation onboarding step: %ld with provenance: %ld _productType %@", &v18, 0x20u);
    }

    [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.AtrialFibrillationDetectionOnboardingStep" withPayload:v11];
  }
}

- (void)trackElectrocardiogramOnboardingStep:(int64_t)step forOnboardingType:(int64_t)type onboardingVersion:(id)version countryCode:(id)code provenance:(int64_t)provenance
{
  v30 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if (self->_currentElectrocardiogramOnboardingStep < step)
  {
    self->_currentElectrocardiogramOnboardingStep = step;
    v13 = MEMORY[0x277CBEB38];
    versionCopy = version;
    v15 = objc_alloc_init(v13);
    v16 = [(HRUIAnalyticsManager *)self _stringAlgorithmVersionFromOnboardingVersion:versionCopy];
    [v15 setObject:v16 forKey:@"algorithmVersion"];

    v17 = [(HRUIAnalyticsManager *)self _stringFromOnboardingType:type];
    [v15 setObject:v17 forKey:@"onboardingFlowType"];

    v18 = [(HRUIAnalyticsManager *)self _stringFromOnboardingVersion:versionCopy];

    [v15 setObject:v18 forKey:@"version"];
    v19 = [(HRUIAnalyticsManager *)self _stringFromHRUIElectrocardiogramOnboardingStep:step];
    [v15 setObject:v19 forKey:@"stepName"];

    v20 = [(HRUIAnalyticsManager *)self _stringFromProvenance:provenance];
    [v15 setObject:v20 forKey:@"provenance"];

    productType = self->_productType;
    if (productType)
    {
      [v15 setObject:productType forKey:@"watchProductType"];
    }

    if (codeCopy)
    {
      [v15 setObject:codeCopy forKey:@"countryCode"];
    }

    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_productType;
      v24 = 134218498;
      stepCopy = step;
      v26 = 2048;
      provenanceCopy = provenance;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_2521E7000, v22, OS_LOG_TYPE_DEFAULT, "Completed electrocardiogram onboarding step: %ld with provenance: %ld productType %@", &v24, 0x20u);
    }

    [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.ElectrocardiogramOnboardingStep" withPayload:v15];
  }
}

- (void)trackElectrocardiogramDataTypeViewed
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"type";
  v5[0] = @"Data Type Viewed";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.ElectrocardiogramDataTypeInteraction" withPayload:v3];
}

- (void)trackElectrocardiogramPDFViewed
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"type";
  v5[0] = @"PDF Viewed";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.ElectrocardiogramDataTypeInteraction" withPayload:v3];
}

- (void)trackElectrocardiogramPDFShared
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"type";
  v5[0] = @"PDF Shared";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.ElectrocardiogramDataTypeInteraction" withPayload:v3];
}

- (void)trackElectrocardiogramPDFSharedFrom:(unint64_t)from
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"type";
  v4 = [(HRUIAnalyticsManager *)self _pdfSharedStringFromProvenance:from];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(HRUIAnalyticsManager *)self _sendAnalyticsEvent:@"com.apple.health.HeartRhythm.ElectrocardiogramDataTypeInteraction" withPayload:v5];
}

- (id)_pdfSharedStringFromProvenance:(unint64_t)provenance
{
  v3 = @"PDF Shared";
  if (provenance == 1)
  {
    v3 = @"PDF Shared from PDF Viewer";
  }

  if (provenance)
  {
    return v3;
  }

  else
  {
    return @"PDF Shared from Data Type Room";
  }
}

- (id)_stringFromHRUIAtrialFibrillationDetectionOnboardingStep:(int64_t)step
{
  if (step > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796FB3F0[step];
  }
}

- (id)_stringFromHRUIElectrocardiogramOnboardingStep:(int64_t)step
{
  if ((step - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796FB418[step - 1];
  }
}

- (id)_stringFromProvenance:(int64_t)provenance
{
  if ((provenance - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2796FB468[provenance - 1];
  }
}

- (id)_stringFromOnboardingType:(int64_t)type
{
  if (type)
  {
    return @"Update";
  }

  else
  {
    return @"Full";
  }
}

- (id)_stringFromOnboardingVersion:(id)version
{
  if (version)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(version, "integerValue")];
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (id)_stringAlgorithmVersionFromOnboardingVersion:(id)version
{
  if (version)
  {
    v4 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:{objc_msgSend(version, "integerValue")}];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v4];
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

@end