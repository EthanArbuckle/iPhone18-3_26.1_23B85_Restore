@interface HDMedicalIDDataMigrator
+ (BOOL)migrateMedicalIDDataIfNeeded:(id)needed;
@end

@implementation HDMedicalIDDataMigrator

+ (BOOL)migrateMedicalIDDataIfNeeded:(id)needed
{
  v39 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v4 = neededCopy;
  if (neededCopy && [neededCopy schemaVersion] <= 3)
  {
    schemaVersion = [v4 schemaVersion];
    v6 = 1;
    if (schemaVersion > 1)
    {
      if (schemaVersion != 2)
      {
        if (schemaVersion != 3)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (schemaVersion)
      {
        if (schemaVersion != 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v7 = v4;
        objc_opt_self();
        [v7 setBloodType:0];
      }

      v8 = v4;
      objc_opt_self();
      emergencyContacts = [v8 emergencyContacts];
      if ([emergencyContacts count])
      {
        error = 0;
        v10 = ABAddressBookCreateWithOptions(0, &error);
        if (!v10)
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v35 = 2;
            v36 = 2114;
            v37 = error;
            goto LABEL_44;
          }

LABEL_40:

LABEL_41:
          v6 = 1;
          goto LABEL_42;
        }

        v11 = v10;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        emergencyContacts = emergencyContacts;
        v12 = [emergencyContacts countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(emergencyContacts);
              }

              [*(*(&v29 + 1) + 8 * i) _migrateToSchemaVersion:2 withAddressBook:{v11, v29}];
            }

            v13 = [emergencyContacts countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v13);
        }

        CFRelease(v11);
      }
    }

    v8 = v4;
    objc_opt_self();
    emergencyContacts = [v8 emergencyContacts];
    if (![emergencyContacts count])
    {
LABEL_33:

LABEL_34:
      v22 = v4;
      objc_opt_self();
      birthdate = [v22 birthdate];
      if (birthdate)
      {
        hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v25 = [hk_gregorianCalendar hk_dateOfBirthDateComponentsWithDate:birthdate];

        [v22 setGregorianBirthday:v25];
      }

      [v22 setSchemaVersion:4];
      goto LABEL_41;
    }

    error = 0;
    v16 = ABAddressBookCreateWithOptions(0, &error);
    if (v16)
    {
      v17 = v16;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      emergencyContacts = emergencyContacts;
      v18 = [emergencyContacts countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(emergencyContacts);
            }

            [*(*(&v29 + 1) + 8 * j) _migrateToSchemaVersion:3 withAddressBook:v17];
          }

          v19 = [emergencyContacts countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v19);
      }

      CFRelease(v17);
      goto LABEL_33;
    }

    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v35 = 3;
      v36 = 2114;
      v37 = error;
LABEL_44:
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Error creating address book in migrating emergency contacts to version %ld: %{public}@", buf, 0x16u);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v6 = 0;
LABEL_42:

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

@end