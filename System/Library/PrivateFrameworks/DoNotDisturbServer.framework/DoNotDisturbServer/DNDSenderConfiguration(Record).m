@interface DNDSenderConfiguration(Record)
+ (id)configurationForRecord:()Record;
- (DNDSMutableSenderConfigurationRecord)makeRecord;
@end

@implementation DNDSenderConfiguration(Record)

+ (id)configurationForRecord:()Record
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D05A70]);
  v5 = [v3 allowedContactTypes];
  v6 = [v5 mutableCopy];
  [v4 setAllowedContactTypes:v6];

  v7 = [v3 deniedContactTypes];
  v8 = [v7 mutableCopy];
  [v4 setDeniedContactTypes:v8];

  v9 = [v3 allowedContactGroups];
  v10 = [v9 mutableCopy];
  [v4 setAllowedContactGroups:v10];

  v11 = [v3 deniedContactGroups];
  v12 = [v11 mutableCopy];
  [v4 setDeniedContactGroups:v12];

  v13 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [v3 allowedContacts];
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v36 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v16);
  }

  [v4 setAllowedContacts:v13];
  v20 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [v3 deniedContacts];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v32 + 1) + 8 * j)];
        [v20 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  [v4 setDeniedContacts:v20];
  v27 = MEMORY[0x277D058D8];
  v28 = [v3 phoneCallBypassSettings];
  v29 = [v27 settingsForRecord:v28];
  [v4 setPhoneCallBypassSettings:v29];

  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

- (DNDSMutableSenderConfigurationRecord)makeRecord
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(DNDSMutableSenderConfigurationRecord);
  v3 = [a1 allowedContactTypes];
  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContactTypes:v3];

  v4 = [a1 deniedContactTypes];
  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContactTypes:v4];

  v5 = [a1 allowedContactGroups];
  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContactGroups:v5];

  v6 = [a1 deniedContactGroups];
  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContactGroups:v6];

  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [a1 allowedContacts];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v29 + 1) + 8 * i) makeRecord];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContacts:v7];
  v14 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [a1 deniedContacts];
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * j) makeRecord];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContacts:v14];
  v21 = [a1 phoneCallBypassSettings];
  v22 = [v21 makeRecord];
  [(DNDSMutableSenderConfigurationRecord *)v2 setPhoneCallBypassSettings:v22];

  v23 = *MEMORY[0x277D85DE8];

  return v2;
}

@end