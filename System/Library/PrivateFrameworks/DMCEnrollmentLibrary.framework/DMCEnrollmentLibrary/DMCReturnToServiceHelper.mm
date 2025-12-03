@interface DMCReturnToServiceHelper
+ (id)_userDefaultsToPreserve;
+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)data wifiProfileData:(id)profileData additionalDetails:(id)details error:(id *)error;
- (BOOL)shouldDoRapidReturnToService;
- (BOOL)shouldDoReturnToService;
- (DMCObliterationShelter)obliterationShelter;
- (id)languageStrings;
- (id)localeString;
- (void)returnToServiceFlowCompleted;
@end

@implementation DMCReturnToServiceHelper

+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)data wifiProfileData:(id)profileData additionalDetails:(id)details error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  profileDataCopy = profileData;
  detailsCopy = details;
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];
  v14 = objc_alloc_init(MEMORY[0x277D03548]);
  [v14 clear];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v14 setLanguageStrings:preferredLanguages];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [v14 setLocaleString:localeIdentifier];

  [v14 setWifiProfileData:profileDataCopy];
  [v14 setMdmProfileData:dataCopy];
  [v14 setIsSupervised:{objc_msgSend(mEMORY[0x277D24640], "isSupervised")}];
  [v14 setIsRapidReturnToService:{objc_msgSend(mEMORY[0x277D24640], "isRapidReturnToService")}];
  [v14 setIsSharediPad:{objc_msgSend(MEMORY[0x277D03538], "isSharediPad")}];
  [v14 setAdditionalDetails:detailsCopy];
  if ([mEMORY[0x277D24640] isSupervised] && (objc_msgSend(mEMORY[0x277D24640], "isTeslaEnrolled") & 1) == 0)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Doing RTS on non-ADE enrolled device, need to preserve the cloud config", buf, 2u);
    }

    details = [mEMORY[0x277D24640] details];
    v20 = [details mutableCopy];

    v21 = MEMORY[0x277CBEC28];
    [v20 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D03028]];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03030]];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03108]];
    v22 = [v20 copy];
    [v14 setCloudConfigurationDetails:v22];
  }

  if ([MEMORY[0x277D03500] shouldPreserveUserDefaultsForReturnToService])
  {
    v45 = v14;
    v47 = mEMORY[0x277D24640];
    errorCopy = error;
    v51 = detailsCopy;
    v53 = profileDataCopy;
    v55 = dataCopy;
    v57 = objc_opt_new();
    [self _userDefaultsToPreserve];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v70 = 0u;
    v59 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v59)
    {
      v58 = *v68;
      do
      {
        v23 = 0;
        do
        {
          if (*v68 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v23;
          v24 = *(*(&v67 + 1) + 8 * v23);
          v25 = objc_opt_new();
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v26 = [obj objectForKeyedSubscript:v24];
          v27 = [v26 countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v64;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v64 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v63 + 1) + 8 * i);
                standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
                v33 = [standardUserDefaults objectForKey:v31 inDomain:v24];

                [v25 setObject:v33 forKeyedSubscript:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v63 objects:v75 count:16];
            }

            while (v28);
          }

          if ([v25 count])
          {
            v34 = [v25 copy];
            [v57 setObject:v34 forKeyedSubscript:v24];
          }

          v23 = v61 + 1;
        }

        while (v61 + 1 != v59);
        v59 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v59);
    }

    v35 = *DMCLogObjects();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v72 = "+[DMCReturnToServiceHelper preseveReturnToServiceDataWithMDMProfileData:wifiProfileData:additionalDetails:error:]";
      v73 = 2114;
      v74 = v57;
      _os_log_impl(&dword_247E39000, v35, OS_LOG_TYPE_DEBUG, "%s preserving user defaults: %{public}@", buf, 0x16u);
    }

    v36 = [v57 count];
    profileDataCopy = v54;
    dataCopy = v56;
    error = v50;
    detailsCopy = v52;
    v14 = v46;
    mEMORY[0x277D24640] = v48;
    if (v36)
    {
      v37 = [v57 copy];
      [v46 setUserDefaults:v37];
    }
  }

  v62 = 0;
  v38 = [v14 preserveWithError:&v62];
  v39 = v62;
  v40 = v39;
  if (v38)
  {
    v41 = v14;
  }

  else
  {
    v41 = 0;
    if (error && v39)
    {
      v42 = v39;
      v41 = 0;
      *error = v40;
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v41;
}

- (BOOL)shouldDoReturnToService
{
  obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
  hasConfigFile = [obliterationShelter hasConfigFile];

  return hasConfigFile;
}

- (BOOL)shouldDoRapidReturnToService
{
  shouldDoReturnToService = [(DMCReturnToServiceHelper *)self shouldDoReturnToService];
  if (shouldDoReturnToService)
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    isRapidReturnToService = [obliterationShelter isRapidReturnToService];

    LOBYTE(shouldDoReturnToService) = isRapidReturnToService;
  }

  return shouldDoReturnToService;
}

- (id)languageStrings
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    languageStrings = [obliterationShelter languageStrings];
  }

  else
  {
    languageStrings = 0;
  }

  return languageStrings;
}

- (id)localeString
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    localeString = [obliterationShelter localeString];
  }

  else
  {
    localeString = 0;
  }

  return localeString;
}

- (void)returnToServiceFlowCompleted
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    obliterationShelter = [(DMCReturnToServiceHelper *)self obliterationShelter];
    [obliterationShelter clear];
  }
}

+ (id)_userDefaultsToPreserve
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"com.apple.managedconfiguration.notbackedup";
  v6[1] = @"Apple Global Domain";
  v7[0] = &unk_2859F9E68;
  _allOverrides = [MEMORY[0x277D03500] _allOverrides];
  v7[1] = _allOverrides;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (DMCObliterationShelter)obliterationShelter
{
  obliterationShelter = self->_obliterationShelter;
  if (!obliterationShelter)
  {
    v4 = objc_opt_new();
    v5 = self->_obliterationShelter;
    self->_obliterationShelter = v4;

    v6 = self->_obliterationShelter;
    v8 = 0;
    [(DMCObliterationShelter *)v6 retrieveWithError:&v8];
    obliterationShelter = self->_obliterationShelter;
  }

  return obliterationShelter;
}

@end