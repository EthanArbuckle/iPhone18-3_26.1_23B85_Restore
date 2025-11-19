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
  v7 = [MEMORY[0x277D05A20] defaultConfiguration];
  v8 = [v5 applicationConfigurationType];
  [v7 setApplicationConfigurationType:{objc_msgSend(v8, "integerValue")}];

  v9 = [v5 senderConfigurationType];
  [v7 setSenderConfigurationType:{objc_msgSend(v9, "integerValue")}];

  v10 = [v5 suppressionType];
  [v7 setSuppressionType:{objc_msgSend(v10, "unsignedIntegerValue")}];

  v11 = [v5 suppressionMode];
  v34 = v7;
  [v7 setSuppressionMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

  v12 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v6 allowedApplications];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v6 allowedApplications];
        v20 = [v19 objectForKey:v18];

        v21 = [MEMORY[0x277D058C0] configurationForRecord:v20];
        [v12 setObject:v21 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  [v34 setAllowedApplicationIdentifiers:v12];
  v22 = [v6 deniedApplications];
  [v34 setDeniedApplicationIdentifiers:v22];

  v23 = [v6 allowedWebApplications];
  [v34 setAllowedWebApplicationIdentifiers:v23];

  v24 = [v6 deniedWebApplications];
  [v34 setDeniedWebApplicationIdentifiers:v24];

  v25 = MEMORY[0x277D05A90];
  v26 = [v6 senderConfiguration];
  v27 = [v25 configurationForRecord:v26];
  [v34 setSenderConfiguration:v27];

  v28 = [v5 minimumBreakthroughUrgency];
  [v34 setMinimumBreakthroughUrgency:{objc_msgSend(v28, "integerValue")}];

  v29 = [v5 hideApplicationBadges];
  [v34 setHideApplicationBadges:{objc_msgSend(v29, "integerValue")}];

  v30 = [v5 allowIntelligentManagement];
  [v34 setAllowIntelligentManagement:{objc_msgSend(v30, "integerValue")}];

  v31 = [v5 compatibilityVersion];
  [v34 setCompatibilityVersion:{objc_msgSend(v31, "integerValue")}];

  v32 = *MEMORY[0x277D85DE8];

  return v34;
}

- (DNDSMutableConfigurationRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableConfigurationRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "applicationConfigurationType")}];
  [(DNDSMutableConfigurationRecord *)v2 setApplicationConfigurationType:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "senderConfigurationType")}];
  [(DNDSMutableConfigurationRecord *)v2 setSenderConfigurationType:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "suppressionType")}];
  [(DNDSMutableConfigurationRecord *)v2 setSuppressionType:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "suppressionMode")}];
  [(DNDSMutableConfigurationRecord *)v2 setSuppressionMode:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "minimumBreakthroughUrgency")}];
  [(DNDSMutableConfigurationRecord *)v2 setMinimumBreakthroughUrgency:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "hideApplicationBadges")}];
  [(DNDSMutableConfigurationRecord *)v2 setHideApplicationBadges:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "allowIntelligentManagement")}];
  [(DNDSMutableConfigurationRecord *)v2 setAllowIntelligentManagement:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "compatibilityVersion")}];
  [(DNDSMutableConfigurationRecord *)v2 setCompatibilityVersion:v10];

  return v2;
}

- (DNDSMutableConfigurationSecureRecord)makeSecureRecord
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(DNDSMutableConfigurationSecureRecord);
  v3 = [a1 senderConfiguration];
  v4 = [v3 makeRecord];
  [(DNDSMutableConfigurationSecureRecord *)v2 setSenderConfiguration:v4];

  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [a1 allowedApplicationIdentifiers];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [a1 allowedApplicationIdentifiers];
        v14 = [v13 objectForKey:v12];

        v15 = [v14 makeRecord];
        [v5 setObject:v15 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  [(DNDSMutableConfigurationSecureRecord *)v2 setAllowedApplications:v5];
  v16 = [a1 deniedApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setDeniedApplications:v16];

  v17 = [a1 allowedWebApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setAllowedWebApplications:v17];

  v18 = [a1 deniedWebApplicationIdentifiers];
  [(DNDSMutableConfigurationSecureRecord *)v2 setDeniedWebApplications:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

@end