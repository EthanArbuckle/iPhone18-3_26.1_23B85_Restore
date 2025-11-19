@interface CNAssistantConversion
+ (id)addressesForSyncFromContact:(id)a3;
+ (id)addressesFromContact:(id)a3;
+ (id)addressesFromPerson:(id)a3;
+ (id)createSAPersonFromCNContact:(id)a3 conversionType:(int64_t)a4;
+ (id)createSAPersonFromCNContactWithExternalIdentifier:(id)a3;
+ (id)createSASourceFromCNContainer:(id)a3;
+ (id)descriptorsForRequiredKeysForConversionType:(int64_t)a3;
+ (id)emailAddressesForSyncFromContact:(id)a3;
+ (id)emailAddressesFromContact:(id)a3;
+ (id)emailAddressesFromPerson:(id)a3;
+ (id)filterLabeledValues:(id)a3 droppingEmptyLabels:(BOOL)a4 droppingDuplicates:(BOOL)a5;
+ (id)keysFromPerson:(id)a3;
+ (id)personForSyncFromContact:(id)a3;
+ (id)personFromContact:(id)a3 useABPerson:(BOOL)a4;
+ (id)personFromMeContact:(id)a3;
+ (id)phoneNumbersForSyncFromContact:(id)a3;
+ (id)phoneNumbersFromContact:(id)a3;
+ (id)phoneNumbersFromPerson:(id)a3;
+ (id)relationsForSyncFromContact:(id)a3;
+ (id)relationsFromContact:(id)a3;
+ (id)relationsFromPerson:(id)a3;
+ (id)socialProfilesFromContact:(id)a3;
+ (id)verifyContact:(id)a3 hasDescriptorsForRequiredKeys:(id)a4;
+ (void)addFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6;
+ (void)applyUpdate:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6;
+ (void)markMeContactInPeople:(id)a3 usingStore:(id)a4;
+ (void)removeFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6;
+ (void)setFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6;
@end

@implementation CNAssistantConversion

+ (id)descriptorsForRequiredKeysForConversionType:(int64_t)a3
{
  v22[7] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 2)
    {
      v9 = *MEMORY[0x277CBD160];
      v21[0] = *MEMORY[0x277CBD018];
      v21[1] = v9;
      v10 = *MEMORY[0x277CBCFF8];
      v21[2] = *MEMORY[0x277CBD000];
      v21[3] = v10;
      v11 = *MEMORY[0x277CBD090];
      v21[4] = *MEMORY[0x277CBD078];
      v21[5] = v11;
      v12 = *MEMORY[0x277CBD0B0];
      v21[6] = *MEMORY[0x277CBD0A0];
      v21[7] = v12;
      v13 = *MEMORY[0x277CBCFC0];
      v21[8] = *MEMORY[0x277CBD0A8];
      v21[9] = v13;
      v14 = *MEMORY[0x277CBD0C8];
      v21[10] = *MEMORY[0x277CBD098];
      v21[11] = v14;
      v15 = *MEMORY[0x277CBD010];
      v21[12] = *MEMORY[0x277CBD120];
      v21[13] = v15;
      v6 = MEMORY[0x277CBEA60];
      v7 = v21;
      v8 = 14;
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v3 = *MEMORY[0x277CBD000];
      v22[0] = *MEMORY[0x277CBD018];
      v22[1] = v3;
      v4 = *MEMORY[0x277CBD078];
      v22[2] = *MEMORY[0x277CBD0B0];
      v22[3] = v4;
      v5 = *MEMORY[0x277CBD0A0];
      v22[4] = *MEMORY[0x277CBD120];
      v22[5] = v5;
      v22[6] = *MEMORY[0x277CBD010];
      v6 = MEMORY[0x277CBEA60];
      v7 = v22;
      v8 = 7;
LABEL_6:
      v16 = [v6 arrayWithObjects:v7 count:v8];
      goto LABEL_9;
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v17 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{*MEMORY[0x277CBD018], *MEMORY[0x277CBD160], *MEMORY[0x277CBD000], *MEMORY[0x277CBD058], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBCF90], *MEMORY[0x277CBD078], *MEMORY[0x277CBD068], *MEMORY[0x277CBD070], *MEMORY[0x277CBD090], *MEMORY[0x277CBD0A0], *MEMORY[0x277CBD0B0], *MEMORY[0x277CBD0A8], *MEMORY[0x277CBCFC0], *MEMORY[0x277CBD098], *MEMORY[0x277CBD0C8], *MEMORY[0x277CBD120], *MEMORY[0x277CBD138], *MEMORY[0x277CBD010]}];
    v20[19] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:20];
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)personFromMeContact:(id)a3
{
  v3 = a3;
  v4 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:1];
  v5 = [v3 areKeysAvailable:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setMe:MEMORY[0x277CBEC38]];
    v7 = [v3 givenName];
    v8 = NonEmptyOrNilString(v7);
    [v6 setFirstName:v8];

    v9 = [v3 nickname];
    v10 = NonEmptyOrNilString(v9);
    [v6 setNickName:v10];

    v11 = [v3 phoneticGivenName];
    v12 = NonEmptyOrNilString(v11);
    [v6 setFirstNamePhonetic:v12];

    [v6 setIdentifier:0];
    v13 = [CNAssistantConversion relationsFromContact:v3];
    v14 = NonEmptyOrNilArray(v13);
    [v6 setRelatedNames:v14];

    v15 = [v3 phonemeData];
    v16 = NonEmptyOrNilString(v15);
    [v6 setPhonemeData:v16];

    v17 = [v3 identifier];
    v18 = NonEmptyOrNilString(v17);
    [v6 setInternalGUID:v18];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)personForSyncFromContact:(id)a3
{
  v3 = a3;
  v4 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:2];
  v5 = [v3 areKeysAvailable:v4];

  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v3 givenName];
  if (v6)
  {
    v7 = [v3 givenName];
    v8 = [v7 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 familyName];
  if (v9)
  {
    v10 = [v3 familyName];
    if ([v10 length])
    {
      v8 = 1;
    }
  }

  v11 = [v3 organizationName];
  if (v11)
  {
    v12 = [v3 organizationName];
    if ([v12 length])
    {
      v8 = 1;
    }
  }

  v13 = [v3 nickname];
  if (v13)
  {
    v14 = v13;
    v15 = [v3 nickname];
    if ([v15 length])
    {
      v8 = 1;
    }
  }

  if (v8)
  {
    v16 = objc_opt_new();
    v17 = [CNAssistantID assistantIDFromContact:v3];
    [v16 setIdentifier:v17];
    v18 = [v3 identifier];
    [v16 setInternalGUID:v18];

    v19 = [v3 givenName];
    v20 = NonEmptyOrNilString(v19);
    [v16 setFirstName:v20];

    v21 = [v3 familyName];
    v22 = NonEmptyOrNilString(v21);
    [v16 setLastName:v22];

    v23 = [v3 nickname];
    v24 = NonEmptyOrNilString(v23);
    [v16 setNickName:v24];

    v25 = [v3 organizationName];
    v26 = NonEmptyOrNilString(v25);
    [v16 setCompany:v26];

    v27 = [v3 phoneticGivenName];
    v28 = NonEmptyOrNilString(v27);
    [v16 setFirstNamePhonetic:v28];

    v29 = [v3 phoneticFamilyName];
    v30 = NonEmptyOrNilString(v29);
    [v16 setLastNamePhonetic:v30];

    v31 = [v3 phonemeData];
    v32 = NonEmptyOrNilString(v31);
    [v16 setPhonemeData:v32];

    v33 = [CNAssistantConversion emailAddressesForSyncFromContact:v3];
    v34 = NonEmptyOrNilArray(v33);
    [v16 setEmails:v34];

    v35 = [CNAssistantConversion phoneNumbersForSyncFromContact:v3];
    v36 = NonEmptyOrNilArray(v35);
    [v16 setPhones:v36];

    v37 = [CNAssistantConversion addressesForSyncFromContact:v3];
    v38 = NonEmptyOrNilArray(v37);
    [v16 setAddresses:v38];

    v39 = [CNAssistantConversion relationsForSyncFromContact:v3];
    v40 = NonEmptyOrNilArray(v39);
    [v16 setRelatedNames:v40];
  }

  else
  {
LABEL_19:
    v16 = 0;
  }

  return v16;
}

+ (id)personFromContact:(id)a3 useABPerson:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:0];
  v7 = [v5 areKeysAvailable:v6];

  v8 = 0;
  if (v7)
  {
    v9 = 0x277D470F0;
    if (!v4)
    {
      v9 = 0x277D47630;
    }

    v10 = *v9;
    v8 = objc_opt_new();
    v11 = [CNAssistantID assistantIDFromContact:v5];
    [v8 setIdentifier:v11];
    v12 = [v5 identifier];
    [v8 setInternalGUID:v12];

    v13 = [v5 givenName];
    v14 = NonEmptyOrNilString(v13);
    [v8 setFirstName:v14];

    v15 = [v5 middleName];
    v16 = NonEmptyOrNilString(v15);
    [v8 setMiddleName:v16];

    v17 = [v5 familyName];
    v18 = NonEmptyOrNilString(v17);
    [v8 setLastName:v18];

    v19 = [v5 birthday];

    if (v19)
    {
      v20 = [v5 birthday];
      if ([v20 year] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v20 setYear:1604];
      }

      v21 = [v20 timeZone];

      if (!v21)
      {
        v22 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
        [v20 setTimeZone:v22];
      }

      v23 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
      v24 = [v23 dateFromComponents:v20];
      [v8 setBirthday:v24];
    }

    v25 = [v5 nickname];
    v26 = NonEmptyOrNilString(v25);
    [v8 setNickName:v26];

    v27 = [v5 namePrefix];
    v28 = NonEmptyOrNilString(v27);
    [v8 setPrefix:v28];

    v29 = [v5 nameSuffix];
    v30 = NonEmptyOrNilString(v29);
    [v8 setSuffix:v30];

    v31 = [v5 organizationName];
    v32 = NonEmptyOrNilString(v31);
    [v8 setCompany:v32];

    v33 = [v5 phoneticGivenName];
    v34 = NonEmptyOrNilString(v33);
    [v8 setFirstNamePhonetic:v34];

    v35 = [v5 phoneticFamilyName];
    v36 = NonEmptyOrNilString(v35);
    [v8 setLastNamePhonetic:v36];

    v37 = [v5 phonemeData];
    v38 = NonEmptyOrNilString(v37);
    [v8 setPhonemeData:v38];

    v39 = [CNAssistantConversion emailAddressesFromContact:v5];
    v40 = NonEmptyOrNilArray(v39);
    [v8 setEmails:v40];

    v41 = [CNAssistantConversion phoneNumbersFromContact:v5];
    v42 = NonEmptyOrNilArray(v41);
    [v8 setPhones:v42];

    v43 = [CNAssistantConversion addressesFromContact:v5];
    v44 = NonEmptyOrNilArray(v43);
    [v8 setAddresses:v44];

    v45 = [CNAssistantConversion relationsFromContact:v5];
    v46 = NonEmptyOrNilArray(v45);
    [v8 setRelatedNames:v46];

    v47 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:0];
    v48 = NonEmptyOrNilString(v47);
    [v8 setFullName:v48];
  }

  return v8;
}

+ (id)createSAPersonFromCNContact:(id)a3 conversionType:(int64_t)a4
{
  v6 = a3;
  v7 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:a4];
  v8 = [CNAssistantConversion verifyContact:v6 hasDescriptorsForRequiredKeys:v7];

  switch(a4)
  {
    case 0:
      v9 = [a1 personFromContact:v8];
      goto LABEL_7;
    case 2:
      v9 = [a1 personForSyncFromContact:v8];
      goto LABEL_7;
    case 1:
      v9 = [a1 personFromMeContact:v8];
LABEL_7:
      v10 = v9;
      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)createSAPersonFromCNContactWithExternalIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingFullTextSearch:v3 containerIdentifiers:0 groupIdentifiers:0];
    v6 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:0];
    v7 = [v4 unifiedContactsMatchingPredicate:v5 keysToFetch:v6 error:0];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v8 = [v7 firstObject];
    v9 = [CNAssistantConversion createSAPersonFromCNContact:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)createSASourceFromCNContainer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDomainIdentifier:*MEMORY[0x277D47BA8]];
  v5 = [CNAssistantID assistantIDFromContainer:v3];
  [v4 setIdentifier:v5];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 type];

  v8 = [v6 numberWithBool:v7 > 1];
  [v4 setRemote:v8];

  return v4;
}

+ (id)filterLabeledValues:(id)a3 droppingEmptyLabels:(BOOL)a4 droppingDuplicates:(BOOL)a5
{
  v7 = a3;
  v8 = v7;
  if (a4 || a5)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__CNAssistantConversion_filterLabeledValues_droppingEmptyLabels_droppingDuplicates___block_invoke;
    v13[3] = &unk_278E05240;
    v15 = a4;
    v16 = a5;
    v14 = v10;
    v11 = v10;
    v9 = [v8 filterUsingBlock:v13];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

uint64_t __84__CNAssistantConversion_filterLabeledValues_droppingEmptyLabels_droppingDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = v3;
  if (*(a1 + 40) == 1 && (!v3 || ![v3 length]))
  {
    goto LABEL_6;
  }

  if (*(a1 + 41) != 1)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
    goto LABEL_8;
  }

LABEL_6:
  v5 = 0;
LABEL_9:

  return v5;
}

+ (id)emailAddressesFromContact:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBCFC0];
  if ([v4 isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    v29 = a1;
    v30 = [MEMORY[0x277CBDAF8] sharedInstance];
    v31 = v4;
    v6 = [v30 entriesForContact:v4 propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:*MEMORY[0x277CBCF58]];
    v7 = [MEMORY[0x277CBEB58] set];
    v32 = [MEMORY[0x277CBEB58] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      v11 = *MEMORY[0x277CBCF70];
      v12 = *MEMORY[0x277CBCF80];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          v15 = [v14 actionType];
          v16 = [v15 isEqualToString:v11];

          v17 = v7;
          if ((v16 & 1) == 0)
          {
            v18 = [v14 actionType];
            v19 = [v18 isEqualToString:v12];

            v17 = v32;
            if (!v19)
            {
              continue;
            }
          }

          v20 = [v14 contactProperty];
          v21 = [v20 identifier];
          [v17 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    v4 = v31;
    v22 = [v31 emailAddresses];
    v23 = [v29 filterLabeledValues:v22 droppingEmptyLabels:0 droppingDuplicates:0];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __51__CNAssistantConversion_emailAddressesFromContact___block_invoke;
    v34[3] = &unk_278E05268;
    v35 = v7;
    v36 = v32;
    v24 = v32;
    v25 = v7;
    v26 = [v23 mapUsingBlock:v34];
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __51__CNAssistantConversion_emailAddressesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 value];
  [v4 setEmailAddress:v5];

  v6 = [v3 label];
  v7 = NonEmptyOrNilString(v6);
  [v4 setLabel:v7];

  v8 = *(a1 + 32);
  v9 = [v3 identifier];
  v10 = [v8 containsObject:v9];
  v11 = MEMORY[0x277CBEC38];
  if (v10)
  {
    v12 = MEMORY[0x277CBEC38];
  }

  else
  {
    v12 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v12];

  v13 = *(a1 + 40);
  v14 = [v3 identifier];

  if ([v13 containsObject:v14])
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  [v4 setFavoriteFacetime:v15];

  return v4;
}

+ (id)emailAddressesForSyncFromContact:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBCFC0];
  if ([v4 isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    v29 = a1;
    v30 = [MEMORY[0x277CBDAF8] sharedInstance];
    v31 = v4;
    v6 = [v30 entriesForContact:v4 propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:*MEMORY[0x277CBCF58]];
    v7 = [MEMORY[0x277CBEB58] set];
    v32 = [MEMORY[0x277CBEB58] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      v11 = *MEMORY[0x277CBCF70];
      v12 = *MEMORY[0x277CBCF80];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          v15 = [v14 actionType];
          v16 = [v15 isEqualToString:v11];

          v17 = v7;
          if ((v16 & 1) == 0)
          {
            v18 = [v14 actionType];
            v19 = [v18 isEqualToString:v12];

            v17 = v32;
            if (!v19)
            {
              continue;
            }
          }

          v20 = [v14 contactProperty];
          v21 = [v20 identifier];
          [v17 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    v4 = v31;
    v22 = [v31 emailAddresses];
    v23 = [v29 filterLabeledValues:v22 droppingEmptyLabels:1 droppingDuplicates:0];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __58__CNAssistantConversion_emailAddressesForSyncFromContact___block_invoke;
    v34[3] = &unk_278E05268;
    v35 = v7;
    v36 = v32;
    v24 = v32;
    v25 = v7;
    v26 = [v23 mapUsingBlock:v34];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __58__CNAssistantConversion_emailAddressesForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 label];
  [v4 setLabel:v5];

  v6 = *(a1 + 32);
  v7 = [v3 identifier];
  v8 = [v6 containsObject:v7];
  v9 = MEMORY[0x277CBEC38];
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v10];

  v11 = *(a1 + 40);
  v12 = [v3 identifier];

  if ([v11 containsObject:v12])
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetime:v13];

  return v4;
}

+ (id)phoneNumbersFromContact:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBD098];
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v38 = a1;
    v39 = [MEMORY[0x277CBDAF8] sharedInstance];
    v40 = v4;
    v6 = [v39 entriesForContact:v4 propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:0];
    v43 = [MEMORY[0x277CBEB58] set];
    v44 = [MEMORY[0x277CBEB58] set];
    v42 = [MEMORY[0x277CBEB58] set];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    v10 = *v50;
    v11 = *MEMORY[0x277CBCF58];
    v12 = *MEMORY[0x277CBCF68];
    v13 = *MEMORY[0x277CBCF70];
    v41 = *MEMORY[0x277CBCF80];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:v11];

        if (v17)
        {
          v18 = [v15 actionType];
          v19 = [v18 isEqualToString:v13];

          v20 = v44;
          if (v19)
          {
            goto LABEL_13;
          }

          v21 = [v15 actionType];
          v22 = [v21 isEqualToString:v41];

          v20 = v42;
          if (v22)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v23 = [v15 bundleIdentifier];
          v24 = [v23 isEqualToString:v12];

          if (v24)
          {
            v25 = [v15 actionType];
            v26 = [v25 isEqualToString:v13];

            v20 = v43;
            if (v26)
            {
LABEL_13:
              v27 = [v15 contactProperty];
              v28 = [v27 identifier];
              [v20 addObject:v28];

              continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v9)
      {
LABEL_16:
        v29 = v7;

        v4 = v40;
        v30 = [v40 phoneNumbers];
        v31 = [v38 filterLabeledValues:v30 droppingEmptyLabels:0 droppingDuplicates:0];

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __49__CNAssistantConversion_phoneNumbersFromContact___block_invoke;
        v45[3] = &unk_278E05290;
        v46 = v44;
        v47 = v42;
        v48 = v43;
        v32 = v43;
        v33 = v42;
        v34 = v44;
        v35 = [v31 mapUsingBlock:v45];

        goto LABEL_18;
      }
    }
  }

  v35 = 0;
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

id __49__CNAssistantConversion_phoneNumbersFromContact___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 value];
  v6 = [v5 formattedInternationalStringValue];
  [v4 setNumber:v6];

  v7 = [v3 label];
  v8 = NonEmptyOrNilString(v7);
  [v4 setLabel:v8];

  v9 = a1[4];
  v10 = [v3 identifier];
  v11 = [v9 containsObject:v10];
  v12 = MEMORY[0x277CBEC38];
  if (v11)
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v13];

  v14 = a1[5];
  v15 = [v3 identifier];
  if ([v14 containsObject:v15])
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  [v4 setFavoriteFacetime:v16];

  v17 = a1[6];
  v18 = [v3 identifier];

  if ([v17 containsObject:v18])
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  [v4 setFavoriteVoice:v19];

  return v4;
}

+ (id)phoneNumbersForSyncFromContact:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBD098];
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v38 = a1;
    v39 = [MEMORY[0x277CBDAF8] sharedInstance];
    v40 = v4;
    v6 = [v39 entriesForContact:v4 propertyKey:v5 labeledValueIdentifier:0 actionType:0 bundleIdentifier:0];
    v43 = [MEMORY[0x277CBEB58] set];
    v44 = [MEMORY[0x277CBEB58] set];
    v42 = [MEMORY[0x277CBEB58] set];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v8;
    v10 = *v50;
    v11 = *MEMORY[0x277CBCF58];
    v12 = *MEMORY[0x277CBCF68];
    v13 = *MEMORY[0x277CBCF70];
    v41 = *MEMORY[0x277CBCF80];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:v11];

        if (v17)
        {
          v18 = [v15 actionType];
          v19 = [v18 isEqualToString:v13];

          v20 = v44;
          if (v19)
          {
            goto LABEL_13;
          }

          v21 = [v15 actionType];
          v22 = [v21 isEqualToString:v41];

          v20 = v42;
          if (v22)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v23 = [v15 bundleIdentifier];
          v24 = [v23 isEqualToString:v12];

          if (v24)
          {
            v25 = [v15 actionType];
            v26 = [v25 isEqualToString:v13];

            v20 = v43;
            if (v26)
            {
LABEL_13:
              v27 = [v15 contactProperty];
              v28 = [v27 identifier];
              [v20 addObject:v28];

              continue;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (!v9)
      {
LABEL_16:
        v29 = v7;

        v4 = v40;
        v30 = [v40 phoneNumbers];
        v31 = [v38 filterLabeledValues:v30 droppingEmptyLabels:1 droppingDuplicates:0];

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __56__CNAssistantConversion_phoneNumbersForSyncFromContact___block_invoke;
        v45[3] = &unk_278E05290;
        v46 = v44;
        v47 = v42;
        v48 = v43;
        v32 = v43;
        v33 = v42;
        v34 = v44;
        v35 = [v31 mapUsingBlock:v45];

        goto LABEL_18;
      }
    }
  }

  v35 = 0;
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

id __56__CNAssistantConversion_phoneNumbersForSyncFromContact___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 label];
  [v4 setLabel:v5];

  v6 = a1[4];
  v7 = [v3 identifier];
  v8 = [v6 containsObject:v7];
  v9 = MEMORY[0x277CBEC38];
  if (v8)
  {
    v10 = MEMORY[0x277CBEC38];
  }

  else
  {
    v10 = 0;
  }

  [v4 setFavoriteFacetimeAudio:v10];

  v11 = a1[5];
  v12 = [v3 identifier];
  if ([v11 containsObject:v12])
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  [v4 setFavoriteFacetime:v13];

  v14 = a1[6];
  v15 = [v3 identifier];

  if ([v14 containsObject:v15])
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  [v4 setFavoriteVoice:v16];

  return v4;
}

+ (id)addressesFromContact:(id)a3
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD0C8]])
  {
    v5 = [v4 postalAddresses];
    v6 = [a1 filterLabeledValues:v5 droppingEmptyLabels:0 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __46__CNAssistantConversion_addressesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];
  v5 = NonEmptyOrNilString(v4);
  [v3 setLabel:v5];

  v6 = [v2 value];
  v7 = [v6 street];
  v8 = NonEmptyOrNilString(v7);
  [v3 setStreet:v8];

  v9 = [v2 value];
  v10 = [v9 city];
  v11 = NonEmptyOrNilString(v10);
  [v3 setCity:v11];

  v12 = [v2 value];
  v13 = [v12 state];
  v14 = NonEmptyOrNilString(v13);
  [v3 setStateCode:v14];

  v15 = [v2 value];
  v16 = [v15 postalCode];
  v17 = NonEmptyOrNilString(v16);
  [v3 setPostalCode:v17];

  v18 = [v2 value];

  v19 = [v18 ISOCountryCode];
  v20 = NonEmptyOrNilString(v19);
  [v3 setCountryCode:v20];

  return v3;
}

+ (id)addressesForSyncFromContact:(id)a3
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD0C8]])
  {
    v5 = [v4 postalAddresses];
    v6 = [a1 filterLabeledValues:v5 droppingEmptyLabels:1 droppingDuplicates:1];

    v7 = [v6 mapUsingBlock:&__block_literal_global_22];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__CNAssistantConversion_addressesForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];

  [v3 setLabel:v4];

  return v3;
}

+ (id)relationsFromContact:(id)a3
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD120]])
  {
    v5 = [v4 contactRelations];
    v6 = [a1 filterLabeledValues:v5 droppingEmptyLabels:1 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global_25];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __46__CNAssistantConversion_relationsFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];
  [v3 setLabel:v4];

  v5 = [v2 value];

  v6 = [v5 name];
  [v3 setName:v6];

  return v3;
}

+ (id)relationsForSyncFromContact:(id)a3
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD120]])
  {
    v5 = [v4 contactRelations];
    v6 = [a1 filterLabeledValues:v5 droppingEmptyLabels:1 droppingDuplicates:1];

    v7 = [v6 mapUsingBlock:&__block_literal_global_28];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __53__CNAssistantConversion_relationsForSyncFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 label];

  [v3 setLabel:v4];

  return v3;
}

+ (id)socialProfilesFromContact:(id)a3
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD138]])
  {
    v5 = [v4 socialProfiles];
    v6 = [a1 filterLabeledValues:v5 droppingEmptyLabels:0 droppingDuplicates:0];

    v7 = [v6 mapUsingBlock:&__block_literal_global_31];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

id __51__CNAssistantConversion_socialProfilesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 value];
  v5 = [v4 service];
  v6 = NonEmptyOrNilString(v5);
  [v3 setServiceType:v6];

  v7 = [v2 value];
  v8 = [v7 urlString];
  v9 = NonEmptyOrNilString(v8);
  [v3 setUrl:v9];

  v10 = [v2 value];

  v11 = [v10 username];
  v12 = NonEmptyOrNilString(v11);
  [v3 setUserName:v12];

  return v3;
}

+ (id)verifyContact:(id)a3 hasDescriptorsForRequiredKeys:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 areKeysAvailable:v6])
  {
    goto LABEL_4;
  }

  v15[0] = *MEMORY[0x277CBD018];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [v5 areKeysAvailable:v7];

  if (v8)
  {
    v9 = objc_opt_new();
    v10 = [v5 identifier];
    v11 = [v9 unifiedContactWithIdentifier:v10 keysToFetch:v6 error:0];

    v5 = v11;
LABEL_4:
    v5 = v5;
    v12 = v5;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)markMeContactInPeople:(id)a3 usingStore:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v25[0] = *MEMORY[0x277CBD018];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v8 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:0];

  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 internalGUID];
          v16 = [v8 identifier];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            [v14 setMe:MEMORY[0x277CBEC38]];
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v5 = v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)keysFromPerson:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 firstName];

  if (v5)
  {
    [v4 addObject:*MEMORY[0x277CBD000]];
  }

  v6 = [v3 lastName];

  if (v6)
  {
    [v4 addObject:*MEMORY[0x277CBCFF8]];
  }

  v7 = [v3 middleName];

  if (v7)
  {
    [v4 addObject:*MEMORY[0x277CBD058]];
  }

  v8 = [v3 nickName];

  if (v8)
  {
    [v4 addObject:*MEMORY[0x277CBD078]];
  }

  v9 = [v3 prefix];

  if (v9)
  {
    [v4 addObject:*MEMORY[0x277CBD068]];
  }

  v10 = [v3 suffix];

  if (v10)
  {
    [v4 addObject:*MEMORY[0x277CBD070]];
  }

  v11 = [v3 company];

  if (v11)
  {
    [v4 addObject:*MEMORY[0x277CBD090]];
  }

  v12 = [v3 birthday];

  if (v12)
  {
    [v4 addObject:*MEMORY[0x277CBCF90]];
  }

  v13 = [v3 phonemeData];

  if (v13)
  {
    [v4 addObject:*MEMORY[0x277CBD0A0]];
  }

  v14 = [v3 addresses];

  if (v14)
  {
    [v4 addObject:*MEMORY[0x277CBD0C8]];
  }

  v15 = [v3 emails];

  if (v15)
  {
    [v4 addObject:*MEMORY[0x277CBCFC0]];
  }

  v16 = [v3 phones];

  if (v16)
  {
    [v4 addObject:*MEMORY[0x277CBD098]];
  }

  v17 = [v3 relatedNames];

  if (v17)
  {
    [v4 addObject:*MEMORY[0x277CBD120]];
  }

  return v4;
}

+ (id)addressesFromPerson:(id)a3
{
  v3 = [a3 addresses];
  v4 = [v3 mapUsingBlock:&__block_literal_global_36];

  return v4;
}

id __45__CNAssistantConversion_addressesFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 street];
  [v3 setStreet:v4];

  v5 = [v2 city];
  [v3 setCity:v5];

  v6 = [v2 stateCode];
  [v3 setState:v6];

  v7 = [v2 postalCode];
  [v3 setPostalCode:v7];

  v8 = [v2 countryCode];
  [v3 setISOCountryCode:v8];

  v9 = MEMORY[0x277CBDB20];
  v10 = [v2 label];

  v11 = [v9 labeledValueWithLabel:v10 value:v3];

  return v11;
}

+ (id)emailAddressesFromPerson:(id)a3
{
  v3 = [a3 emails];
  v4 = [v3 mapUsingBlock:&__block_literal_global_41];

  return v4;
}

id __50__CNAssistantConversion_emailAddressesFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB20];
  v3 = a2;
  v4 = [v3 label];
  v5 = [v3 emailAddress];

  v6 = [v2 labeledValueWithLabel:v4 value:v5];

  return v6;
}

+ (id)phoneNumbersFromPerson:(id)a3
{
  v3 = [a3 phones];
  v4 = [v3 mapUsingBlock:&__block_literal_global_44];

  return v4;
}

id __48__CNAssistantConversion_phoneNumbersFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB70];
  v3 = a2;
  v4 = [v3 number];
  v5 = [v2 phoneNumberWithStringValue:v4];

  v6 = MEMORY[0x277CBDB20];
  v7 = [v3 label];

  v8 = [v6 labeledValueWithLabel:v7 value:v5];

  return v8;
}

+ (id)relationsFromPerson:(id)a3
{
  v3 = [a3 relatedNames];
  v4 = [v3 mapUsingBlock:&__block_literal_global_48];

  return v4;
}

id __45__CNAssistantConversion_relationsFromPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDAB0];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v2 contactRelationWithName:v4];

  v6 = MEMORY[0x277CBDB20];
  v7 = [v3 label];

  v8 = [v6 labeledValueWithLabel:v7 value:v5];

  return v8;
}

+ (void)addFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6
{
  v42[9] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a1 keysFromPerson:v10];
  v15 = *MEMORY[0x277CBCFC0];
  v42[0] = *MEMORY[0x277CBD098];
  v42[1] = v15;
  v16 = *MEMORY[0x277CBD168];
  v42[2] = *MEMORY[0x277CBCFB0];
  v42[3] = v16;
  v17 = *MEMORY[0x277CBD120];
  v42[4] = *MEMORY[0x277CBD038];
  v42[5] = v17;
  v18 = *MEMORY[0x277CBD0C8];
  v42[6] = *MEMORY[0x277CBD138];
  v42[7] = v18;
  v42[8] = *MEMORY[0x277CBCF98];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:9];
  v20 = [v14 arrayByAddingObjectsFromArray:v19];

  v41 = 0;
  v21 = [v12 contactWithIdentifier:v13 keysToFetch:v20 error:&v41];

  v22 = v41;
  v23 = [v21 mutableCopy];

  if (v23)
  {
    v24 = [v10 addresses];

    if (v24)
    {
      v25 = [a1 addressesFromPerson:v10];
      v26 = [v23 postalAddresses];
      v27 = [v26 arrayByAddingObjectsFromArray:v25];
      [v23 setPostalAddresses:v27];
    }

    v28 = [v10 emails];

    if (v28)
    {
      v29 = [a1 emailAddressesFromPerson:v10];
      v30 = [v23 emailAddresses];
      v31 = [v30 arrayByAddingObjectsFromArray:v29];
      [v23 setEmailAddresses:v31];
    }

    v32 = [v10 phones];

    if (v32)
    {
      v33 = [a1 phoneNumbersFromPerson:v10];
      v34 = [v23 phoneNumbers];
      v35 = [v34 arrayByAddingObjectsFromArray:v33];
      [v23 setPhoneNumbers:v35];
    }

    v36 = [v10 relatedNames];

    if (v36)
    {
      v37 = [a1 relationsFromPerson:v10];
      v38 = [v23 contactRelations];
      v39 = [v38 arrayByAddingObjectsFromArray:v37];
      [v23 setContactRelations:v39];
    }

    [v11 updateContact:v23];
  }

  else
  {
    _AFServiceLog();
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (void)setFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6
{
  v54[9] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a1 keysFromPerson:v10];
  v15 = *MEMORY[0x277CBCFC0];
  v54[0] = *MEMORY[0x277CBD098];
  v54[1] = v15;
  v16 = *MEMORY[0x277CBD168];
  v54[2] = *MEMORY[0x277CBCFB0];
  v54[3] = v16;
  v17 = *MEMORY[0x277CBD120];
  v54[4] = *MEMORY[0x277CBD038];
  v54[5] = v17;
  v18 = *MEMORY[0x277CBD0C8];
  v54[6] = *MEMORY[0x277CBD138];
  v54[7] = v18;
  v54[8] = *MEMORY[0x277CBCF98];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:9];
  v20 = [v14 arrayByAddingObjectsFromArray:v19];

  v53 = 0;
  v21 = [v12 contactWithIdentifier:v13 keysToFetch:v20 error:&v53];

  v22 = v53;
  v23 = [v21 mutableCopy];

  if (v23)
  {
    v24 = [v10 firstName];

    if (v24)
    {
      v25 = [v10 firstName];
      [v23 setGivenName:v25];
    }

    v26 = [v10 lastName];

    if (v26)
    {
      v27 = [v10 lastName];
      [v23 setFamilyName:v27];
    }

    v28 = [v10 middleName];

    if (v28)
    {
      v29 = [v10 middleName];
      [v23 setMiddleName:v29];
    }

    v30 = [v10 nickName];

    if (v30)
    {
      v31 = [v10 nickName];
      [v23 setNickname:v31];
    }

    v32 = [v10 prefix];

    if (v32)
    {
      v33 = [v10 prefix];
      [v23 setNamePrefix:v33];
    }

    v34 = [v10 suffix];

    if (v34)
    {
      v35 = [v10 suffix];
      [v23 setNameSuffix:v35];
    }

    v36 = [v10 company];

    if (v36)
    {
      v37 = [v10 company];
      [v23 setOrganizationName:v37];
    }

    v38 = [v10 birthday];

    if (v38)
    {
      v39 = [MEMORY[0x277CBEA80] currentCalendar];
      v40 = [v10 birthday];
      v41 = [v39 components:28 fromDate:v40];

      [v23 setBirthday:v41];
    }

    v42 = [v10 phonemeData];

    if (v42)
    {
      v43 = [v10 phonemeData];
      [v23 setPhonemeData:v43];
    }

    v44 = [v10 addresses];

    if (v44)
    {
      v45 = [CNAssistantConversion addressesFromPerson:v10];
      [v23 setPostalAddresses:v45];
    }

    v46 = [v10 emails];

    if (v46)
    {
      v47 = [CNAssistantConversion emailAddressesFromPerson:v10];
      [v23 setEmailAddresses:v47];
    }

    v48 = [v10 phones];

    if (v48)
    {
      v49 = [CNAssistantConversion phoneNumbersFromPerson:v10];
      [v23 setPhoneNumbers:v49];
    }

    v50 = [v10 relatedNames];

    if (v50)
    {
      v51 = [CNAssistantConversion relationsFromPerson:v10];
      [v23 setContactRelations:v51];
    }

    [v11 updateContact:v23];
  }

  else
  {
    _AFServiceLog();
  }

  v52 = *MEMORY[0x277D85DE8];
}

+ (void)removeFieldsFromPerson:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [a1 keysFromPerson:v10];
  v19 = 0;
  v15 = [v12 contactWithIdentifier:v13 keysToFetch:v14 error:&v19];

  v16 = v19;
  v17 = [v15 mutableCopy];

  if (v10)
  {
    v18 = [v10 phonemeData];

    if (v18)
    {
      [v17 setPhonemeData:0];
    }

    [v11 updateContact:v17];
  }

  else
  {
    _AFServiceLog();
  }
}

+ (void)applyUpdate:(id)a3 toContactWithIdentifier:(id)a4 usingStore:(id)a5 saveRequest:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v21 addFields];

  if (v13)
  {
    v14 = [v21 addFields];
    [a1 addFieldsFromPerson:v14 toContactWithIdentifier:v10 usingStore:v11 saveRequest:v12];
  }

  v15 = [v21 setFields];

  if (v15)
  {
    v16 = [v21 setFields];
    [a1 setFieldsFromPerson:v16 toContactWithIdentifier:v10 usingStore:v11 saveRequest:v12];

    v17 = [v21 setFields];
    v18 = [v17 me];
    [v18 BOOLValue];
  }

  v19 = [v21 removeFields];

  if (v19)
  {
    v20 = [v21 removeFields];
    [a1 removeFieldsFromPerson:v20 toContactWithIdentifier:v10 usingStore:v11 saveRequest:v12];
  }
}

@end