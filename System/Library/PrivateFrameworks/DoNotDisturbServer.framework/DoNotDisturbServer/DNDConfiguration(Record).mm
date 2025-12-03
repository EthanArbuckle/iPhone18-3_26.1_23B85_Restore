@interface DNDConfiguration(Record)
+ (id)configurationForRecord:()Record secureRecord:;
- (DNDSMutableConfigurationRecord)makeRecord;
- (DNDSMutableConfigurationSecureRecord)makeSecureRecord;
@end

@implementation DNDConfiguration(Record)

+ (id)configurationForRecord:()Record secureRecord:
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  defaultConfiguration = [MEMORY[0x277D05A20] defaultConfiguration];
  applicationConfigurationType = [v5 applicationConfigurationType];
  [defaultConfiguration setApplicationConfigurationType:{objc_msgSend(applicationConfigurationType, "integerValue")}];

  senderConfigurationType = [v5 senderConfigurationType];
  [defaultConfiguration setSenderConfigurationType:{objc_msgSend(senderConfigurationType, "integerValue")}];

  suppressionType = [v5 suppressionType];
  [defaultConfiguration setSuppressionType:{objc_msgSend(suppressionType, "unsignedIntegerValue")}];

  suppressionMode = [v5 suppressionMode];
  v34 = defaultConfiguration;
  [defaultConfiguration setSuppressionMode:{objc_msgSend(suppressionMode, "unsignedIntegerValue")}];

  v12 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allowedApplications = [v6 allowedApplications];
  v14 = [allowedApplications countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(allowedApplications);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        allowedApplications2 = [v6 allowedApplications];
        v20 = [allowedApplications2 objectForKey:v18];

        v21 = [MEMORY[0x277D058C0] configurationForRecord:v20];
        [v12 setObject:v21 forKey:v18];
      }

      v15 = [allowedApplications countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  [v34 setAllowedApplicationIdentifiers:v12];
  deniedApplications = [v6 deniedApplications];
  [v34 setDeniedApplicationIdentifiers:deniedApplications];

  allowedWebApplications = [v6 allowedWebApplications];
  [v34 setAllowedWebApplicationIdentifiers:allowedWebApplications];

  deniedWebApplications = [v6 deniedWebApplications];
  [v34 setDeniedWebApplicationIdentifiers:deniedWebApplications];

  v25 = MEMORY[0x277D05A90];
  senderConfiguration = [v6 senderConfiguration];
  v27 = [v25 configurationForRecord:senderConfiguration];
  [v34 setSenderConfiguration:v27];

  minimumBreakthroughUrgency = [v5 minimumBreakthroughUrgency];
  [v34 setMinimumBreakthroughUrgency:{objc_msgSend(minimumBreakthroughUrgency, "integerValue")}];

  hideApplicationBadges = [v5 hideApplicationBadges];
  [v34 setHideApplicationBadges:{objc_msgSend(hideApplicationBadges, "integerValue")}];

  allowIntelligentManagement = [v5 allowIntelligentManagement];
  [v34 setAllowIntelligentManagement:{objc_msgSend(allowIntelligentManagement, "integerValue")}];

  compatibilityVersion = [v5 compatibilityVersion];
  [v34 setCompatibilityVersion:{objc_msgSend(compatibilityVersion, "integerValue")}];

  v32 = *MEMORY[0x277D85DE8];

  return v34;
}

- (DNDSMutableConfigurationRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableConfigurationRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "applicationConfigurationType")}];
  [(DNDSMutableConfigurationRecord *)v2 setApplicationConfigurationType:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "senderConfigurationType")}];
  [(DNDSMutableConfigurationRecord *)v2 setSenderConfigurationType:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "suppressionType")}];
  [(DNDSMutableConfigurationRecord *)v2 setSuppressionType:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "suppressionMode")}];
  [(DNDSMutableConfigurationRecord *)v2 setSuppressionMode:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "minimumBreakthroughUrgency")}];
  [(DNDSMutableConfigurationRecord *)v2 setMinimumBreakthroughUrgency:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "hideApplicationBadges")}];
  [(DNDSMutableConfigurationRecord *)v2 setHideApplicationBadges:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "allowIntelligentManagement")}];
  [(DNDSMutableConfigurationRecord *)v2 setAllowIntelligentManagement:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "compatibilityVersion")}];
  [(DNDSMutableConfigurationRecord *)v2 setCompatibilityVersion:v10];

  return v2;
}

- (DNDSMutableConfigurationSecureRecord)makeSecureRecord
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(DNDSMutableConfigurationSecureRecord);
  senderConfiguration = [self senderConfiguration];
  makeRecord = [senderConfiguration makeRecord];
  [(DNDSMutableConfigurationSecureRecord *)v2 setSenderConfiguration:makeRecord];

  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allowedApplicationIdentifiers = [self allowedApplicationIdentifiers];
  allKeys = [allowedApplicationIdentifiers allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        allowedApplicationIdentifiers2 = [self allowedApplicationIdentifiers];
        v14 = [allowedApplicationIdentifiers2 objectForKey:v12];

        makeRecord2 = [v14 makeRecord];
        [v5 setObject:makeRecord2 forKey:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(DNDSMutableConfigurationSecureRecord *)v2 setAllowedApplications:v5];
  deniedApplicationIdentifiers = [self deniedApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setDeniedApplications:deniedApplicationIdentifiers];

  allowedWebApplicationIdentifiers = [self allowedWebApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setAllowedWebApplications:allowedWebApplicationIdentifiers];

  deniedWebApplicationIdentifiers = [self deniedWebApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setDeniedWebApplications:deniedWebApplicationIdentifiers];

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

@end