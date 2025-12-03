@interface _HKMedicalIDData(HKMedicalIDAddressBookBridge)
+ (id)contactKeysToLoadForMedicalID;
- (id)_contactKeysToFetch;
- (uint64_t)_autopopulateEmergencyContactsForSecondaryProfile;
- (uint64_t)_updateExistingEmergencyContacts;
- (uint64_t)_updateIdentifierByPhoneNumberForEmergencyContact:()HKMedicalIDAddressBookBridge contactStore:;
- (uint64_t)updateEmergencyContacts;
- (uint64_t)updateEmergencyContactsAutopopulateForSecondaryProfileIfEmpty:()HKMedicalIDAddressBookBridge;
- (void)loadDataFromCNContact:()HKMedicalIDAddressBookBridge;
@end

@implementation _HKMedicalIDData(HKMedicalIDAddressBookBridge)

+ (id)contactKeysToLoadForMedicalID
{
  if (contactKeysToLoadForMedicalID_onceToken != -1)
  {
    +[_HKMedicalIDData(HKMedicalIDAddressBookBridge) contactKeysToLoadForMedicalID];
  }

  v1 = contactKeysToLoadForMedicalID_contactKeysToFetch;

  return v1;
}

- (void)loadDataFromCNContact:()HKMedicalIDAddressBookBridge
{
  v11 = a3;
  thumbnailImageData = [v11 thumbnailImageData];
  [self setPictureData:thumbnailImageData];

  v5 = [MEMORY[0x1E695CD80] stringFromContact:v11 style:0];
  [self setName:v5];

  birthday = [v11 birthday];
  if (birthday)
  {
    v7 = birthday;
    birthday2 = [v11 birthday];
    year = [birthday2 year];

    if (year != 0x7FFFFFFFFFFFFFFFLL)
    {
      birthday3 = [v11 birthday];
      [self setGregorianBirthday:birthday3];
    }
  }
}

- (uint64_t)updateEmergencyContacts
{
  emergencyContacts = [self emergencyContacts];
  v3 = [emergencyContacts count];

  if (!v3)
  {
    return 0;
  }

  return [self _updateExistingEmergencyContacts];
}

- (uint64_t)updateEmergencyContactsAutopopulateForSecondaryProfileIfEmpty:()HKMedicalIDAddressBookBridge
{
  v12 = *MEMORY[0x1E69E9840];
  emergencyContacts = [self emergencyContacts];
  v6 = [emergencyContacts count];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating existing emergency contacts.", &v10, 0xCu);
    }

    return [self _updateExistingEmergencyContacts];
  }

  else if (a3)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B968];
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Autopopulating emergency contacts.", &v10, 0xCu);
    }

    return [self _autopopulateEmergencyContactsForSecondaryProfile];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_updateExistingEmergencyContacts
{
  v56 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [self emergencyContacts];
    v3 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v49;
      v34 = v2;
      selfCopy = self;
      v33 = *v49;
      do
      {
        v7 = 0;
        v37 = v4;
        do
        {
          if (*v49 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v48 + 1) + 8 * v7);
          v5 |= [self _updateIdentifierByPhoneNumberForEmergencyContact:v8 contactStore:{v2, v33, v34, selfCopy}];
          nameContactIdentifier = [v8 nameContactIdentifier];
          if (nameContactIdentifier)
          {
            _contactKeysToFetch = [self _contactKeysToFetch];
            v47 = 0;
            v11 = [v2 unifiedContactWithIdentifier:nameContactIdentifier keysToFetch:_contactKeysToFetch error:&v47];
            v42 = v47;

            v12 = v11;
            if (v11)
            {
              v40 = nameContactIdentifier;
              v41 = v11;
              v13 = [MEMORY[0x1E695CD80] stringFromContact:v11 style:0];
              name = [v8 name];
              v15 = [v13 isEqualToString:name];

              if ((v15 & 1) == 0)
              {
                [v8 setName:v13];
                v5 = 1;
              }

              v12 = v41;
              phoneNumbers = [v41 phoneNumbers];
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v17 = phoneNumbers;
              v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v18)
              {
                v19 = v18;
                v38 = v13;
                v36 = v5;
                v20 = *v44;
                while (2)
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v44 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v43 + 1) + 8 * i);
                    identifier = [v22 identifier];
                    phoneNumberContactIdentifier = [v8 phoneNumberContactIdentifier];
                    v25 = [identifier isEqualToString:phoneNumberContactIdentifier];

                    if (v25)
                    {
                      value = [v22 value];
                      v27 = MEMORY[0x1E695CF50];
                      phoneNumber = [v8 phoneNumber];
                      v29 = [v27 phoneNumberWithStringValue:phoneNumber];

                      if (![value isLikePhoneNumber:v29])
                      {
                        formattedStringValue = [value formattedStringValue];
                        [v8 setPhoneNumber:formattedStringValue];

                        v5 = 1;
                        v2 = v34;
                        self = selfCopy;
                        v6 = v33;
                        goto LABEL_23;
                      }
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }

                v2 = v34;
                self = selfCopy;
                v6 = v33;
                v5 = v36;
LABEL_23:
                v12 = v41;
                v13 = v38;
              }

              v4 = v37;
              nameContactIdentifier = v40;
            }
          }

          ++v7;
        }

        while (v7 != v4);
        v4 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x1E696B968];
    LOBYTE(v5) = 0;
    if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1C3942000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Contacts access not authorized, skipping update emergency contacts", buf, 0xCu);
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (uint64_t)_autopopulateEmergencyContactsForSecondaryProfile
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695CE18]);
  _contactKeysToFetch = [self _contactKeysToFetch];
  v37 = 0;
  v4 = [v2 _ios_meContactWithKeysToFetch:_contactKeysToFetch error:&v37];
  v5 = v37;

  if (v4)
  {
    v6 = [MEMORY[0x1E696C628] emergencyContactUsingSimCardNumberWithContact:v4 property:0];
    v7 = v6;
    if (v6)
    {
      phoneNumber = [v6 phoneNumber];

      if (phoneNumber)
      {
        v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v10 = [v9 localizedStringForKey:@"relationship_guardian" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
        [v7 setRelationship:v10];

        emergencyContacts = [self emergencyContacts];
        if (emergencyContacts)
        {
          v12 = emergencyContacts;
          v13 = [emergencyContacts arrayByAddingObject:v7];
        }

        else
        {
          v38[0] = v7;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
        }

        [self setEmergencyContacts:v13];

        v21 = 1;
        goto LABEL_16;
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x1E696B968];
      if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_ERROR))
      {
        [(_HKMedicalIDData(HKMedicalIDAddressBookBridge) *)self _autopopulateEmergencyContactsForSecondaryProfile:v29];
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x1E696B968];
      if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_ERROR))
      {
        [(_HKMedicalIDData(HKMedicalIDAddressBookBridge) *)self _autopopulateEmergencyContactsForSecondaryProfile:v22];
      }
    }

    v21 = 0;
LABEL_16:

    goto LABEL_17;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x1E696B968];
  if (os_log_type_enabled(*MEMORY[0x1E696B968], OS_LOG_TYPE_ERROR))
  {
    [(_HKMedicalIDData(HKMedicalIDAddressBookBridge) *)self _autopopulateEmergencyContactsForSecondaryProfile:v14];
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (uint64_t)_updateIdentifierByPhoneNumberForEmergencyContact:()HKMedicalIDAddressBookBridge contactStore:
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695CF50];
  phoneNumber = [v6 phoneNumber];
  v10 = [v8 phoneNumberWithStringValue:phoneNumber];

  v56 = v10;
  v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v10];
  _contactKeysToFetch = [self _contactKeysToFetch];
  v71 = 0;
  v13 = [v7 unifiedContactsMatchingPredicate:v11 keysToFetch:_contactKeysToFetch error:&v71];
  v14 = v71;

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v15)
  {
    v16 = v15;
    v51 = v14;
    v52 = v11;
    v17 = *v68;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v67 + 1) + 8 * i);
        v20 = [MEMORY[0x1E695CD80] stringFromContact:v19 style:0];
        name = [v6 name];
        v22 = [v20 isEqualToString:name];

        if (v22)
        {
          nameContactIdentifier = [v6 nameContactIdentifier];
          identifier = [v19 identifier];
          v26 = [nameContactIdentifier isEqualToString:identifier];

          if ((v26 & 1) == 0)
          {
            identifier2 = [v19 identifier];
            [v6 setNameContactIdentifier:identifier2];
          }

          v50 = v26 ^ 1;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          phoneNumbers = [v19 phoneNumbers];
          v54 = [phoneNumbers countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v54)
          {
            v49 = v7;
            v55 = *v64;
            while (2)
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v64 != v55)
                {
                  objc_enumerationMutation(phoneNumbers);
                }

                v29 = *(*(&v63 + 1) + 8 * j);
                value = [v29 value];
                unformattedInternationalStringValue = [value unformattedInternationalStringValue];
                phoneNumber2 = [v6 phoneNumber];
                if ([unformattedInternationalStringValue isEqualToString:phoneNumber2])
                {
                  goto LABEL_28;
                }

                value2 = [v29 value];
                [value2 formattedInternationalStringValue];
                v35 = v34 = v6;
                phoneNumber3 = [v34 phoneNumber];
                if ([v35 isEqualToString:phoneNumber3])
                {
                  goto LABEL_27;
                }

                v59 = phoneNumber2;
                v60 = unformattedInternationalStringValue;
                v61 = value;
                value3 = [v29 value];
                formattedStringValue = [value3 formattedStringValue];
                v39 = v34;
                phoneNumber4 = [v34 phoneNumber];
                if ([formattedStringValue isEqualToString:phoneNumber4])
                {

                  v34 = v39;
                  unformattedInternationalStringValue = v60;
                  value = v61;
                  phoneNumber2 = v59;
LABEL_27:

                  v6 = v34;
LABEL_28:

                  v41 = v29;
LABEL_29:
                  phoneNumberContactIdentifier = [v6 phoneNumberContactIdentifier];
                  v44 = v41;
                  identifier3 = [v41 identifier];
                  v46 = [phoneNumberContactIdentifier isEqualToString:identifier3];

                  v7 = v49;
                  v23 = v50;
                  if ((v46 & 1) == 0)
                  {
                    identifier4 = [v44 identifier];
                    [v6 setPhoneNumberContactIdentifier:identifier4];

                    v23 = 1;
                  }

                  goto LABEL_31;
                }

                [v29 value];
                v57 = value2;
                v42 = v41 = v29;
                v58 = [v42 isLikePhoneNumber:v56];

                v6 = v39;
                if (v58)
                {
                  goto LABEL_29;
                }
              }

              v54 = [phoneNumbers countByEnumeratingWithState:&v63 objects:v72 count:16];
              if (v54)
              {
                continue;
              }

              break;
            }

            v7 = v49;
          }

          v23 = v50;
LABEL_31:

          goto LABEL_32;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_32:
    v14 = v51;
    v11 = v52;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_contactKeysToFetch
{
  if (_contactKeysToFetch_onceToken != -1)
  {
    [_HKMedicalIDData(HKMedicalIDAddressBookBridge) _contactKeysToFetch];
  }

  v1 = _contactKeysToFetch_contactKeys;

  return v1;
}

@end