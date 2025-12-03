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
  allowedContactTypes = [v3 allowedContactTypes];
  v6 = [allowedContactTypes mutableCopy];
  [v4 setAllowedContactTypes:v6];

  deniedContactTypes = [v3 deniedContactTypes];
  v8 = [deniedContactTypes mutableCopy];
  [v4 setDeniedContactTypes:v8];

  allowedContactGroups = [v3 allowedContactGroups];
  v10 = [allowedContactGroups mutableCopy];
  [v4 setAllowedContactGroups:v10];

  deniedContactGroups = [v3 deniedContactGroups];
  v12 = [deniedContactGroups mutableCopy];
  [v4 setDeniedContactGroups:v12];

  v13 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allowedContacts = [v3 allowedContacts];
  v15 = [allowedContacts countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(allowedContacts);
        }

        v19 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v36 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [allowedContacts countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v16);
  }

  [v4 setAllowedContacts:v13];
  v20 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  deniedContacts = [v3 deniedContacts];
  v22 = [deniedContacts countByEnumeratingWithState:&v32 objects:v40 count:16];
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
          objc_enumerationMutation(deniedContacts);
        }

        v26 = [MEMORY[0x277D058F0] contactForRecord:*(*(&v32 + 1) + 8 * j)];
        [v20 addObject:v26];
      }

      v23 = [deniedContacts countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  [v4 setDeniedContacts:v20];
  v27 = MEMORY[0x277D058D8];
  phoneCallBypassSettings = [v3 phoneCallBypassSettings];
  v29 = [v27 settingsForRecord:phoneCallBypassSettings];
  [v4 setPhoneCallBypassSettings:v29];

  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

- (DNDSMutableSenderConfigurationRecord)makeRecord
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(DNDSMutableSenderConfigurationRecord);
  allowedContactTypes = [self allowedContactTypes];
  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContactTypes:allowedContactTypes];

  deniedContactTypes = [self deniedContactTypes];
  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContactTypes:deniedContactTypes];

  allowedContactGroups = [self allowedContactGroups];
  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContactGroups:allowedContactGroups];

  deniedContactGroups = [self deniedContactGroups];
  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContactGroups:deniedContactGroups];

  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allowedContacts = [self allowedContacts];
  v9 = [allowedContacts countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(allowedContacts);
        }

        makeRecord = [*(*(&v29 + 1) + 8 * i) makeRecord];
        [v7 addObject:makeRecord];
      }

      v10 = [allowedContacts countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  [(DNDSMutableSenderConfigurationRecord *)v2 setAllowedContacts:v7];
  v14 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  deniedContacts = [self deniedContacts];
  v16 = [deniedContacts countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(deniedContacts);
        }

        makeRecord2 = [*(*(&v25 + 1) + 8 * j) makeRecord];
        [v14 addObject:makeRecord2];
      }

      v17 = [deniedContacts countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  [(DNDSMutableSenderConfigurationRecord *)v2 setDeniedContacts:v14];
  phoneCallBypassSettings = [self phoneCallBypassSettings];
  makeRecord3 = [phoneCallBypassSettings makeRecord];
  [(DNDSMutableSenderConfigurationRecord *)v2 setPhoneCallBypassSettings:makeRecord3];

  v23 = *MEMORY[0x277D85DE8];

  return v2;
}

@end