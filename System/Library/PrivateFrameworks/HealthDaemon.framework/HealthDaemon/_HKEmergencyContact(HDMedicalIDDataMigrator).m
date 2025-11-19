@interface _HKEmergencyContact(HDMedicalIDDataMigrator)
- (void)_migrateToSchemaVersion:()HDMedicalIDDataMigrator withAddressBook:;
@end

@implementation _HKEmergencyContact(HDMedicalIDDataMigrator)

- (void)_migrateToSchemaVersion:()HDMedicalIDDataMigrator withAddressBook:
{
  v5 = a1;
  v58[1] = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    if (a1)
    {
      v19 = [a1 nameRecordID];
      PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a4, [v19 intValue]);

      if (PersonWithRecordID)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBDAB8]);
        v22 = [v5 nameRecordID];
        v23 = [v22 stringValue];
        v58[0] = *MEMORY[0x277CBD098];
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v25 = [v21 unifiedContactWithIdentifier:v23 keysToFetch:v24 error:0];
      }

      else
      {
        v25 = 0;
      }

      v26 = [v25 identifier];
      [v5 setNameContactIdentifier:v26];

      v27 = [v25 linkedContacts];
      v28 = [v25 phoneNumbers];
      v52 = v27;
      if ([v27 count])
      {
        v29 = [MEMORY[0x277CBDA58] unifyContacts:v27];
        v30 = [v29 phoneNumbers];

        v28 = v30;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v31 = v28;
      v32 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v54;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v54 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v53 + 1) + 8 * i);
            v37 = [v36 iOSLegacyIdentifier];
            v38 = v5;
            v39 = [v5 phoneNumberPropertyID];
            v40 = [v39 intValue];

            if (v37 == v40)
            {
              v41 = [v36 identifier];
              [v38 setPhoneNumberContactIdentifier:v41];

              goto LABEL_35;
            }

            v5 = v38;
          }

          v33 = [v31 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v33);
      }

LABEL_35:
    }

LABEL_36:
    v42 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a3 != 2 || !a1)
  {
    goto LABEL_36;
  }

  v46 = [a1 name];
  v6 = ABAddressBookCopyPeopleWithName(a4, v46);
  Count = CFArrayGetCount(v6);
  if (Count <= 0)
  {
    CFRelease(v6);
    goto LABEL_39;
  }

  v48 = v5;
  v7 = 0;
  property = *MEMORY[0x277CB98E0];
  v8 = 0xFFFFFFFFLL;
  cf = v6;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    v49 = MEMORY[0x22AAC6830]();
    v10 = ABRecordCopyValue(ValueAtIndex, property);
    v11 = ABMultiValueGetCount(v10);
    if (v11 > 0)
    {
      break;
    }

    CFRelease(v10);
LABEL_16:
    if (++v7 == Count)
    {
      goto LABEL_37;
    }
  }

  v12 = v11;
  v13 = [v48 phoneNumber];
  v14 = 1;
  v15 = v8;
  do
  {
    v8 = v15;
    v16 = ABMultiValueCopyValueAtIndex(v10, v14 - 1);
    IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v10, v14 - 1);
    v18 = [v13 isEqualToString:v16];
    if (v18)
    {
      v15 = IdentifierAtIndex;
    }

    else
    {
      v15 = v15;
    }

    CFRelease(v16);
    if (v14 >= v12)
    {
      break;
    }

    ++v14;
  }

  while (!v18);

  CFRelease(v10);
  v6 = cf;
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = IdentifierAtIndex;
LABEL_37:
  CFRelease(v6);
  if (v49 != -1)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v48 setNameRecordID:v43];

    v44 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    [v48 setPhoneNumberPropertyID:v44];
  }

LABEL_39:
  v45 = *MEMORY[0x277D85DE8];
}

@end