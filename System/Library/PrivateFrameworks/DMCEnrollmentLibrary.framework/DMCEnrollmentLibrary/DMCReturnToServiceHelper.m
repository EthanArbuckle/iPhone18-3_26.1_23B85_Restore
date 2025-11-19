@interface DMCReturnToServiceHelper
+ (id)_userDefaultsToPreserve;
+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)a3 wifiProfileData:(id)a4 additionalDetails:(id)a5 error:(id *)a6;
- (BOOL)shouldDoRapidReturnToService;
- (BOOL)shouldDoReturnToService;
- (DMCObliterationShelter)obliterationShelter;
- (id)languageStrings;
- (id)localeString;
- (void)returnToServiceFlowCompleted;
@end

@implementation DMCReturnToServiceHelper

+ (id)preseveReturnToServiceDataWithMDMProfileData:(id)a3 wifiProfileData:(id)a4 additionalDetails:(id)a5 error:(id *)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277D24640] sharedConfiguration];
  [v13 refreshDetailsFromDisk];
  v14 = objc_alloc_init(MEMORY[0x277D03548]);
  [v14 clear];
  v15 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v14 setLanguageStrings:v15];

  v16 = [MEMORY[0x277CBEAF8] currentLocale];
  v17 = [v16 localeIdentifier];
  [v14 setLocaleString:v17];

  [v14 setWifiProfileData:v11];
  [v14 setMdmProfileData:v10];
  [v14 setIsSupervised:{objc_msgSend(v13, "isSupervised")}];
  [v14 setIsRapidReturnToService:{objc_msgSend(v13, "isRapidReturnToService")}];
  [v14 setIsSharediPad:{objc_msgSend(MEMORY[0x277D03538], "isSharediPad")}];
  [v14 setAdditionalDetails:v12];
  if ([v13 isSupervised] && (objc_msgSend(v13, "isTeslaEnrolled") & 1) == 0)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Doing RTS on non-ADE enrolled device, need to preserve the cloud config", buf, 2u);
    }

    v19 = [v13 details];
    v20 = [v19 mutableCopy];

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
    v47 = v13;
    v49 = a6;
    v51 = v12;
    v53 = v11;
    v55 = v10;
    v57 = objc_opt_new();
    [a1 _userDefaultsToPreserve];
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
                v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
                v33 = [v32 objectForKey:v31 inDomain:v24];

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
    v11 = v54;
    v10 = v56;
    a6 = v50;
    v12 = v52;
    v14 = v46;
    v13 = v48;
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
    if (a6 && v39)
    {
      v42 = v39;
      v41 = 0;
      *a6 = v40;
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v41;
}

- (BOOL)shouldDoReturnToService
{
  v2 = [(DMCReturnToServiceHelper *)self obliterationShelter];
  v3 = [v2 hasConfigFile];

  return v3;
}

- (BOOL)shouldDoRapidReturnToService
{
  v3 = [(DMCReturnToServiceHelper *)self shouldDoReturnToService];
  if (v3)
  {
    v4 = [(DMCReturnToServiceHelper *)self obliterationShelter];
    v5 = [v4 isRapidReturnToService];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)languageStrings
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceHelper *)self obliterationShelter];
    v4 = [v3 languageStrings];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localeString
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceHelper *)self obliterationShelter];
    v4 = [v3 localeString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)returnToServiceFlowCompleted
{
  if ([(DMCReturnToServiceHelper *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceHelper *)self obliterationShelter];
    [v3 clear];
  }
}

+ (id)_userDefaultsToPreserve
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"com.apple.managedconfiguration.notbackedup";
  v6[1] = @"Apple Global Domain";
  v7[0] = &unk_2859F9E68;
  v2 = [MEMORY[0x277D03500] _allOverrides];
  v7[1] = v2;
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