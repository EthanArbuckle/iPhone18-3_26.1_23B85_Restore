@interface CNContact(PKAdditions)
+ (id)contactWithABRecordRef:()PKAdditions;
+ (id)contactWithPkDictionary:()PKAdditions;
+ (id)pkContactWithNameComponents:()PKAdditions labeledValues:;
+ (id)pkContactWithNameComponents:()PKAdditions postalAddresses:emailAddresses:phoneNumbers:;
+ (id)pkContactWithNameFromContact:()PKAdditions labeledValue:property:;
+ (id)pkPassbookRequiredKeys;
- (id)_fullNameFromComponents:()PKAdditions style:;
- (id)_phoneticNameFromComponents:()PKAdditions style:;
- (id)contactWithCleanedUpDistrict;
- (id)nameComponents;
- (id)pkContactWithCleanedUpCountryCode;
- (id)pkDeconstructContactUsingKey:()PKAdditions;
- (id)pkDeconstructContactUsingKey:()PKAdditions substring:;
- (id)pkDictionaryForProperty:()PKAdditions;
- (id)pkFormattedContactAddressIncludingPhoneticName:()PKAdditions showName:;
- (id)pkFullAndPhoneticName;
- (id)pkFullName;
- (id)pkFullyQualifiedName;
- (id)pkPhoneticName;
- (id)pkSingleLineFormattedContactAddressIncludingCountryName:()PKAdditions;
- (id)pk_displayName;
- (id)sanitizedContact;
- (uint64_t)ABPerson;
- (uint64_t)contactSource;
- (uint64_t)formattingConstrained;
- (uint64_t)isHideMyEmail;
- (uint64_t)isSubsetOfMeCard;
- (uint64_t)recentFromContactInformation;
- (uint64_t)representsContact:()PKAdditions forContactKeys:;
- (void)setContactSource:()PKAdditions;
- (void)setFormattingConstrained:()PKAdditions;
- (void)setIsHideMyEmail:()PKAdditions;
- (void)setRecentFromContactInformation:()PKAdditions;
@end

@implementation CNContact(PKAdditions)

+ (id)pkPassbookRequiredKeys
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C208];
  v6[0] = *MEMORY[0x1E695C360];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695C240];
  v6[2] = *MEMORY[0x1E695C330];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695C230];
  v6[4] = *MEMORY[0x1E695C2F0];
  v6[5] = v2;
  v3 = *MEMORY[0x1E695C340];
  v6[6] = *MEMORY[0x1E695C348];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];

  return v4;
}

+ (id)contactWithABRecordRef:()PKAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
  pkPassbookRequiredKeys = [MEMORY[0x1E695CD58] pkPassbookRequiredKeys];
  if (a3)
  {
    a3 = [v4 contactFromPublicABPerson:a3 keysToFetch:pkPassbookRequiredKeys];
  }

  return a3;
}

+ (id)contactWithPkDictionary:()PKAdditions
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKey:@"label"];
  v5 = [v3 objectForKey:@"address"];

  if (v5)
  {
    v6 = MEMORY[0x1E695CF60];
    v7 = [v3 PKDictionaryForKey:@"address"];
    v8 = [v6 backwardsCompatiblePostalAddressDictionary:v7];

    v9 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v8];
    v10 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v11 = [v3 PKStringForKey:@"givenName"];
    [v10 setGivenName:v11];

    v12 = [v3 PKStringForKey:@"familyName"];
    [v10 setFamilyName:v12];

    v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v14 = [v3 PKStringForKey:@"phoneticGivenName"];
    [v13 setGivenName:v14];

    v15 = [v3 PKStringForKey:@"phoneticFamilyName"];
    [v13 setFamilyName:v15];

    [v10 setPhoneticRepresentation:v13];
    v16 = MEMORY[0x1E695CD58];
    v33 = *MEMORY[0x1E695C360];
    v17 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v4 value:v9];
    v34[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v19 = [v16 pkContactWithNameComponents:v10 labeledValues:v18];

LABEL_8:
    goto LABEL_9;
  }

  v20 = [v3 objectForKey:@"email"];

  if (v20)
  {
    v8 = [v3 PKStringForKey:@"email"];
    v21 = MEMORY[0x1E695CD58];
    v31 = *MEMORY[0x1E695C208];
    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v4 value:v8];
    v32 = v9;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v32;
    v24 = &v31;
LABEL_7:
    v10 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v19 = [v21 pkContactWithNameComponents:0 labeledValues:v10];
    goto LABEL_8;
  }

  v25 = [v3 objectForKey:@"phone"];

  if (v25)
  {
    v26 = MEMORY[0x1E695CF50];
    v27 = [v3 PKStringForKey:@"phone"];
    v8 = [v26 phoneNumberWithStringValue:v27];

    v21 = MEMORY[0x1E695CD58];
    v29 = *MEMORY[0x1E695C330];
    v9 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v4 value:v8];
    v30 = v9;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v30;
    v24 = &v29;
    goto LABEL_7;
  }

  v19 = 0;
LABEL_9:

  return v19;
}

- (id)pkDictionaryForProperty:()PKAdditions
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([self isKeyAvailable:*MEMORY[0x1E695C240]])
  {
    givenName = [self givenName];
    if (givenName)
    {
      [dictionary setObject:givenName forKey:@"givenName"];
    }
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C230]])
  {
    familyName = [self familyName];
    if (familyName)
    {
      [dictionary setObject:familyName forKey:@"familyName"];
    }
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C348]])
  {
    phoneticGivenName = [self phoneticGivenName];
    if (phoneticGivenName)
    {
      [dictionary setObject:phoneticGivenName forKey:@"phoneticGivenName"];
    }
  }

  if ([self isKeyAvailable:@"phoneticFamilyName"])
  {
    phoneticFamilyName = [self phoneticFamilyName];
    if (phoneticFamilyName)
    {
      [dictionary setObject:phoneticFamilyName forKey:@"phoneticFamilyName"];
    }
  }

  v10 = *MEMORY[0x1E695C360];
  if ([v4 isEqualToString:*MEMORY[0x1E695C360]] && objc_msgSend(self, "isKeyAvailable:", v10))
  {
    postalAddresses = [self postalAddresses];
    firstObject = [postalAddresses firstObject];

    label = [firstObject label];
    if (label)
    {
      [dictionary setObject:label forKey:@"label"];
    }

    value = [firstObject value];
    value2 = value;
    if (!value)
    {
      goto LABEL_36;
    }

    backwardsCompatibleDictionaryRepresentation = [value backwardsCompatibleDictionaryRepresentation];
    v17 = @"address";
LABEL_35:
    [dictionary setObject:backwardsCompatibleDictionaryRepresentation forKey:v17];

LABEL_36:
    goto LABEL_37;
  }

  v18 = *MEMORY[0x1E695C208];
  if ([v4 isEqualToString:*MEMORY[0x1E695C208]] && objc_msgSend(self, "isKeyAvailable:", v18))
  {
    emailAddresses = [self emailAddresses];
    firstObject = [emailAddresses firstObject];

    label = [firstObject label];
    if (label)
    {
      [dictionary setObject:label forKey:@"label"];
    }

    value2 = [firstObject value];
    if (value2)
    {
      [dictionary setObject:value2 forKey:@"email"];
    }

    goto LABEL_36;
  }

  v20 = *MEMORY[0x1E695C330];
  if ([v4 isEqualToString:*MEMORY[0x1E695C330]] && objc_msgSend(self, "isKeyAvailable:", v20))
  {
    phoneNumbers = [self phoneNumbers];
    firstObject = [phoneNumbers firstObject];

    label = [firstObject label];
    if (label)
    {
      [dictionary setObject:label forKey:@"label"];
    }

    value3 = [firstObject value];
    value2 = value3;
    if (!value3)
    {
      goto LABEL_36;
    }

    backwardsCompatibleDictionaryRepresentation = [value3 stringValue];
    v17 = @"phone";
    goto LABEL_35;
  }

LABEL_37:
  v23 = [dictionary copy];

  return v23;
}

+ (id)pkContactWithNameComponents:()PKAdditions labeledValues:
{
  v5 = a4;
  v6 = MEMORY[0x1E695CF18];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 populateNamesFromComponents:v7];

  if ([v5 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CNContact_PKAdditions__pkContactWithNameComponents_labeledValues___block_invoke;
    v11[3] = &unk_1E79C42F0;
    v12 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
  }

  v9 = [v8 copy];

  return v9;
}

+ (id)pkContactWithNameFromContact:()PKAdditions labeledValue:property:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v16 = v9;
    v17[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  v12 = MEMORY[0x1E695CD58];
  nameComponents = [v7 nameComponents];
  v14 = [v12 pkContactWithNameComponents:nameComponents labeledValues:v11];

  return v14;
}

+ (id)pkContactWithNameComponents:()PKAdditions postalAddresses:emailAddresses:phoneNumbers:
{
  v9 = MEMORY[0x1E695CF18];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  [v14 populateNamesFromComponents:v13];

  [v14 pkAddLabeledValues:v12 withProperty:*MEMORY[0x1E695C360]];
  [v14 pkAddLabeledValues:v11 withProperty:*MEMORY[0x1E695C208]];

  [v14 pkAddLabeledValues:v10 withProperty:*MEMORY[0x1E695C330]];
  v15 = [v14 copy];

  return v15;
}

- (id)pkFormattedContactAddressIncludingPhoneticName:()PKAdditions showName:
{
  postalAddresses = [self postalAddresses];
  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  if (a3)
  {
    [self pkFullAndPhoneticName];
  }

  else
  {
    [self pkFullName];
  }
  v10 = ;
  country = [value country];
  v12 = [country length];

  if (!v12)
  {
    v13 = [value mutableCopy];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    iSOCountryCode = [value ISOCountryCode];
    v16 = PKLocalizedStringForCountryCode(currentLocale, iSOCountryCode);
    [v13 setCountry:v16];

    v17 = [v13 copy];
    value = v17;
  }

  if ([v10 length] && a4)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E695CF68] stringFromPostalAddress:value style:0];
    v20 = [v18 stringWithFormat:@"%@\n%@", v10, v19];
  }

  else
  {
    v20 = [MEMORY[0x1E695CF68] stringFromPostalAddress:value style:0];
  }

  return v20;
}

- (id)pkSingleLineFormattedContactAddressIncludingCountryName:()PKAdditions
{
  postalAddresses = [self postalAddresses];
  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  if ((a3 & 1) == 0)
  {
    v7 = [value mutableCopy];
    [v7 setCountry:&stru_1F227FD28];
    v8 = [v7 copy];

    value = v8;
  }

  v9 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:value addCountryName:a3];

  return v9;
}

- (void)setContactSource:()PKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, sel_contactSource, v2, 1);
}

- (uint64_t)contactSource
{
  v2 = objc_getAssociatedObject(self, sel_contactSource);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue == 3)
  {
    if ([self isSubsetOfMeCard])
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return unsignedIntegerValue;
}

- (uint64_t)isSubsetOfMeCard
{
  selfCopy = self;
  v44[3] = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, sel_contactSource);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue != 1)
  {
    v5 = +[PKPaymentOptionsRecents defaultInstance];
    meCard = [v5 meCard];

    if (meCard)
    {
      pkFullName = [selfCopy pkFullName];
      if ([pkFullName length])
      {
        pkFullName2 = [selfCopy pkFullName];
        pkFullName3 = [meCard pkFullName];
        v4 = [pkFullName2 isEqualToString:pkFullName3];

        if (!v4)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v10 = *MEMORY[0x1E695C208];
      v43[0] = *MEMORY[0x1E695C360];
      v43[1] = v10;
      v44[0] = @"postalAddresses";
      v44[1] = @"emailAddresses";
      v43[2] = *MEMORY[0x1E695C330];
      v44[2] = @"phoneNumbers";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      allKeys = [v11 allKeys];
      v13 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v38;
        v27 = *v38;
        v28 = selfCopy;
        v30 = allKeys;
        v31 = v11;
        do
        {
          v16 = 0;
          v29 = v14;
          do
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(allKeys);
            }

            v17 = *(*(&v37 + 1) + 8 * v16);
            if ([selfCopy isKeyAvailable:{v17, v27, v28}])
            {
              v18 = [v11 objectForKey:v17];
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v19 = [selfCopy valueForKey:v18];
              v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v34;
                while (2)
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v34 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v33 + 1) + 8 * i);
                    v25 = [meCard valueForKey:v18];
                    v32[0] = MEMORY[0x1E69E9820];
                    v32[1] = 3221225472;
                    v32[2] = __42__CNContact_PKAdditions__isSubsetOfMeCard__block_invoke;
                    v32[3] = &unk_1E79C4318;
                    v32[4] = v24;
                    LOBYTE(v24) = [v25 pk_containsObjectPassingTest:v32];

                    if (v24)
                    {

                      v4 = 1;
                      allKeys = v30;
                      v11 = v31;
                      goto LABEL_29;
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }
              }

              v15 = v27;
              selfCopy = v28;
              allKeys = v30;
              v11 = v31;
              v14 = v29;
            }

            ++v16;
          }

          while (v16 != v14);
          v14 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
          v4 = 0;
        }

        while (v14);
      }

      else
      {
        v4 = 0;
      }

LABEL_29:

      goto LABEL_30;
    }

    v4 = 0;
LABEL_30:

    return v4;
  }

  return 1;
}

- (void)setRecentFromContactInformation:()PKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, sel_recentFromContactInformation, v2, 1);
}

- (uint64_t)recentFromContactInformation
{
  v1 = objc_getAssociatedObject(self, sel_recentFromContactInformation);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setFormattingConstrained:()PKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, sel_formattingConstrained, v2, 1);
}

- (uint64_t)formattingConstrained
{
  v1 = objc_getAssociatedObject(self, sel_formattingConstrained);
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setIsHideMyEmail:()PKAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, sel_isHideMyEmail, v2, 1);
}

- (uint64_t)isHideMyEmail
{
  v1 = objc_getAssociatedObject(self, sel_isHideMyEmail);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)pkFullyQualifiedName
{
  nameComponents = [self nameComponents];
  v3 = [self _fullNameFromComponents:nameComponents style:3];

  return v3;
}

- (id)pkFullName
{
  nameComponents = [self nameComponents];
  v3 = [self _fullNameFromComponents:nameComponents style:2];

  return v3;
}

- (id)pkPhoneticName
{
  nameComponents = [self nameComponents];
  v3 = [self _phoneticNameFromComponents:nameComponents style:2];

  return v3;
}

- (id)pkFullAndPhoneticName
{
  pkPhoneticName = [self pkPhoneticName];
  pkFullName = [self pkFullName];
  if (![pkPhoneticName length])
  {
    v8 = pkFullName;
    goto LABEL_13;
  }

  if (![pkFullName length])
  {
    goto LABEL_10;
  }

  v4 = pkFullName;
  v5 = pkPhoneticName;
  v6 = v5;
  if (v4 == v5)
  {

LABEL_10:
    v8 = pkPhoneticName;
    goto LABEL_13;
  }

  if (v5 && v4)
  {
    v7 = [v4 caseInsensitiveCompare:v5];

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v4, v6];
LABEL_13:
  v9 = v8;

  return v9;
}

- (id)_fullNameFromComponents:()PKAdditions style:
{
  v5 = a3;
  givenName = [v5 givenName];
  if (givenName)
  {

LABEL_4:
    v8 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v8 setStyle:a4];
    v9 = [v8 stringFromPersonNameComponents:v5];

    goto LABEL_5;
  }

  familyName = [v5 familyName];

  if (familyName)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)_phoneticNameFromComponents:()PKAdditions style:
{
  v5 = a3;
  phoneticRepresentation = [v5 phoneticRepresentation];
  givenName = [phoneticRepresentation givenName];
  if (givenName)
  {

LABEL_4:
    v9 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v9 setPhonetic:1];
    [v9 setStyle:a4];
    v10 = [v9 stringFromPersonNameComponents:v5];

    goto LABEL_5;
  }

  familyName = [phoneticRepresentation familyName];

  if (familyName)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)nameComponents
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v3 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  if ([self isKeyAvailable:*MEMORY[0x1E695C300]])
  {
    namePrefix = [self namePrefix];
    [v2 setNamePrefix:namePrefix];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C240]])
  {
    givenName = [self givenName];
    [v2 setGivenName:givenName];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C2F0]])
  {
    middleName = [self middleName];
    [v2 setMiddleName:middleName];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C230]])
  {
    familyName = [self familyName];
    [v2 setFamilyName:familyName];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C308]])
  {
    nameSuffix = [self nameSuffix];
    [v2 setNameSuffix:nameSuffix];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C310]])
  {
    nickname = [self nickname];
    [v2 setNickname:nickname];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C348]])
  {
    phoneticGivenName = [self phoneticGivenName];
    [v3 setGivenName:phoneticGivenName];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C350]])
  {
    phoneticMiddleName = [self phoneticMiddleName];
    [v3 setMiddleName:phoneticMiddleName];
  }

  if ([self isKeyAvailable:*MEMORY[0x1E695C340]])
  {
    phoneticFamilyName = [self phoneticFamilyName];
    [v3 setFamilyName:phoneticFamilyName];
  }

  givenName2 = [v3 givenName];
  if (givenName2 || ([v3 familyName], (givenName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_22:
    [v2 setPhoneticRepresentation:v3];
    goto LABEL_23;
  }

  middleName2 = [v3 middleName];

  if (middleName2)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v2;
}

- (id)sanitizedContact
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = [self mutableCopy];
  postalAddresses = [v25 postalAddresses];
  iSOCountryCodes = [MEMORY[0x1E695DF58] ISOCountryCodes];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = postalAddresses;
  v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v35;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(obj);
        }

        value = [*(*(&v34 + 1) + 8 * i) value];
        iSOCountryCode = [value ISOCountryCode];
        if (![iSOCountryCode length] || (v32[0] = MEMORY[0x1E69E9820], v32[1] = 3221225472, v32[2] = __42__CNContact_PKAdditions__sanitizedContact__block_invoke, v32[3] = &unk_1E79C4340, suggestedCountryCode = iSOCountryCode, v33 = suggestedCountryCode, v9 = objc_msgSend(iSOCountryCodes, "indexOfObjectPassingTest:", v32), v33, v9 == 0x7FFFFFFFFFFFFFFFLL))
        {
          suggestedCountryCode = [value suggestedCountryCode];

          if (suggestedCountryCode)
          {
            [value setISOCountryCode:suggestedCountryCode];
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v3);
  }

  phoneNumbers = [v25 phoneNumbers];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = phoneNumbers;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * j);
        value2 = [v17 value];
        digits = [value2 digits];
        v20 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:digits];
        v21 = [v17 labeledValueBySettingValue:v20];
        [v11 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v14);
  }

  v22 = [v11 copy];
  [v25 setPhoneNumbers:v22];

  v23 = [v25 copy];

  return v23;
}

- (id)contactWithCleanedUpDistrict
{
  v1 = [self mutableCopy];
  if ([v1 isKeyAvailable:*MEMORY[0x1E695C360]])
  {
    postalAddresses = [v1 postalAddresses];
    firstObject = [postalAddresses firstObject];
    value = [firstObject value];
    v5 = [value mutableCopy];

    if ([v1 isKeyAvailable:*MEMORY[0x1E695C320]])
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      note = [v1 note];
      [v5 setSubLocality:note];

      [v1 setNote:&stru_1F227FD28];
    }
  }

  return v1;
}

- (id)pkContactWithCleanedUpCountryCode
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = [self mutableCopy];
  postalAddresses = [v1 postalAddresses];
  firstObject = [postalAddresses firstObject];

  value = [firstObject value];
  iSOCountryCode = [value ISOCountryCode];
  if ([iSOCountryCode length] == 2)
  {
    uppercaseString = [iSOCountryCode uppercaseString];
    v7 = [iSOCountryCode isEqualToString:uppercaseString];

    if (v7)
    {
      goto LABEL_7;
    }

    uppercaseString2 = [iSOCountryCode uppercaseString];
  }

  else
  {
    uppercaseString2 = [value suggestedCountryCode];
  }

  v9 = uppercaseString2;
  if (uppercaseString2)
  {
    v10 = [value mutableCopy];
    [v10 setISOCountryCode:v9];
    v11 = objc_alloc(MEMORY[0x1E695CEE0]);
    label = [firstObject label];
    v13 = [v10 copy];
    v14 = [v11 initWithLabel:label value:v13];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v1 setPostalAddresses:v15];
  }

LABEL_7:
  v16 = [v1 copy];

  return v16;
}

- (id)pk_displayName
{
  pkFullName = [self pkFullName];
  if (![pkFullName length])
  {
    organizationName = [self organizationName];

    pkFullName = organizationName;
  }

  if (![pkFullName length])
  {

    pkFullName = 0;
  }

  return pkFullName;
}

- (id)pkDeconstructContactUsingKey:()PKAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([self isKeyAvailable:v4])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    postalAddresses = [self postalAddresses];
    v7 = [postalAddresses countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(postalAddresses);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [self mutableCopy];
          v20 = v11;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          [v12 setValue:v13 forKey:v4];

          [v5 addObject:v12];
        }

        v8 = [postalAddresses countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (id)pkDeconstructContactUsingKey:()PKAdditions substring:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![self isKeyAvailable:v6])
  {
    goto LABEL_37;
  }

  v8 = [self valueForKey:v6];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  v40 = v7;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v8;
  obj = v8;
  v39 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v39)
  {
    goto LABEL_35;
  }

  v9 = *v43;
  v10 = 0x1E695C000uLL;
  v36 = v6;
  do
  {
    v11 = 0;
    do
    {
      if (*v43 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v42 + 1) + 8 * v11);
      value = [v12 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v10;
        v15 = v9;
        selfCopy = self;
        v17 = value;
        street = [v17 street];
        if ([street localizedStandardContainsString:v40])
        {
          goto LABEL_20;
        }

        subLocality = [v17 subLocality];
        if ([subLocality localizedStandardContainsString:v40])
        {
          goto LABEL_19;
        }

        city = [v17 city];
        if ([city localizedStandardContainsString:v40])
        {
          goto LABEL_18;
        }

        v35 = subLocality;
        subAdministrativeArea = [v17 subAdministrativeArea];
        if ([subAdministrativeArea localizedStandardContainsString:v40])
        {
          goto LABEL_17;
        }

        v34 = subAdministrativeArea;
        state = [v17 state];
        if ([state localizedStandardContainsString:v40])
        {
          goto LABEL_16;
        }

        postalCode = [v17 postalCode];
        if ([postalCode localizedStandardContainsString:?])
        {

LABEL_16:
          subAdministrativeArea = v34;
LABEL_17:

          subLocality = v35;
LABEL_18:

LABEL_19:
          v6 = v36;
LABEL_20:

          self = selfCopy;
          v9 = v15;
          v10 = v14;
LABEL_26:
          v25 = [self mutableCopy];
          v46 = v12;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
          [v25 setValue:v26 forKey:v6];

          [v38 addObject:v25];
          goto LABEL_27;
        }

        country = [v17 country];
        v32 = [country localizedStandardContainsString:v40];

        v6 = v36;
        self = selfCopy;
        v9 = v15;
        v10 = v14;
        if (v32)
        {
          goto LABEL_26;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [value stringValue];
            v24 = [stringValue localizedStandardContainsString:v40];

            if ((v24 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }

          v25 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Tried to deconstruct a contact with a CNLabeledValue value class that we don't know how to handle", buf, 2u);
          }

LABEL_27:

          goto LABEL_28;
        }

        if ([value localizedStandardContainsString:v40])
        {
          goto LABEL_26;
        }
      }

LABEL_28:

      ++v11;
    }

    while (v39 != v11);
    v27 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    v39 = v27;
  }

  while (v27);
LABEL_35:

  v7 = v40;
  v8 = v30;
LABEL_36:

LABEL_37:
  v28 = [v38 copy];

  return v28;
}

- (uint64_t)representsContact:()PKAdditions forContactKeys:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pkFullName = [v6 pkFullName];
  v9 = [pkFullName length];

  if (!v9)
  {
    goto LABEL_15;
  }

  givenName = [self givenName];
  givenName2 = [v6 givenName];
  v12 = givenName;
  v13 = givenName2;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

LABEL_38:
LABEL_39:
      v39 = 0;
      goto LABEL_40;
    }

    v15 = [v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_38;
    }
  }

  familyName = [self familyName];
  familyName2 = [v6 familyName];
  v18 = familyName;
  v19 = familyName2;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_15;
  }

  if (!v18 || !v19)
  {

    goto LABEL_38;
  }

  v21 = [v18 isEqualToString:v19];

  if ((v21 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v7;
  v22 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v41 = v7;
    v24 = *v44;
    v25 = 0x1E695D000uLL;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v43 + 1) + 8 * i);
        v28 = [self valueForKey:{v27, v41}];
        v29 = [v6 valueForKey:v27];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          firstObject = [v28 firstObject];
          [firstObject value];
          selfCopy = self;
          v32 = v6;
          v34 = v33 = v25;

          firstObject2 = [v29 firstObject];
          value = [firstObject2 value];

          v28 = v34;
          v25 = v33;
          v6 = v32;
          self = selfCopy;
          v29 = value;
        }

        if (v28)
        {
          v37 = v29 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {

          if (v28 != v29)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v38 = [v28 isEqual:v29];

          if ((v38 & 1) == 0)
          {
LABEL_33:
            v39 = 0;
            goto LABEL_34;
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v39 = 1;
LABEL_34:
    v7 = v41;
  }

  else
  {
    v39 = 1;
  }

LABEL_40:
  return v39;
}

- (uint64_t)ABPerson
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v3 = [v2 publicABPersonFromContact:self publicAddressBook:0];

  return v3;
}

@end