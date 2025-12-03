@interface CNContact(EmailContactAdditions)
+ (id)em_bestMatchForName:()EmailContactAdditions fromContacts:keysToCheck:;
+ (id)em_contactFromEmailAddress:()EmailContactAdditions;
+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions;
+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:;
+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:allowInvalidEmailAddress:;
@end

@implementation CNContact(EmailContactAdditions)

+ (id)em_contactFromEmailAddress:()EmailContactAdditions
{
  v4 = a3;
  ea_addressCommentPersonNameComponents = [v4 ea_addressCommentPersonNameComponents];
  ea_uncommentedAddress = [v4 ea_uncommentedAddress];
  v7 = [self em_contactWithPersonNameComponents:ea_addressCommentPersonNameComponents emailAddress:ea_uncommentedAddress emailAddressLabel:0];

  return v7;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions
{
  v3 = [self em_contactWithPersonNameComponents:a3 emailAddress:0 emailAddressLabel:0];

  return v3;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:
{
  v5 = [self em_contactWithPersonNameComponents:a3 emailAddress:a4 emailAddressLabel:a5 allowInvalidEmailAddress:0];

  return v5;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:allowInvalidEmailAddress:
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695CF18]);
  namePrefix = [v9 namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [v9 namePrefix];
    [v12 setNamePrefix:namePrefix2];
  }

  givenName = [v9 givenName];

  if (givenName)
  {
    givenName2 = [v9 givenName];
    [v12 setGivenName:givenName2];
  }

  middleName = [v9 middleName];

  if (middleName)
  {
    middleName2 = [v9 middleName];
    [v12 setMiddleName:middleName2];
  }

  familyName = [v9 familyName];

  if (familyName)
  {
    familyName2 = [v9 familyName];
    [v12 setFamilyName:familyName2];
  }

  nameSuffix = [v9 nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [v9 nameSuffix];
    [v12 setNameSuffix:nameSuffix2];
  }

  phoneticRepresentation = [v9 phoneticRepresentation];
  givenName3 = [phoneticRepresentation givenName];

  if (givenName3)
  {
    givenName4 = [phoneticRepresentation givenName];
    [v12 setPhoneticGivenName:givenName4];
  }

  middleName3 = [phoneticRepresentation middleName];

  if (middleName3)
  {
    middleName4 = [phoneticRepresentation middleName];
    [v12 setPhoneticMiddleName:middleName4];
  }

  familyName3 = [phoneticRepresentation familyName];

  if (familyName3)
  {
    familyName4 = [phoneticRepresentation familyName];
    [v12 setPhoneticFamilyName:familyName4];
  }

  if (v10 && ([v10 ea_isLegalEmailAddress] | a6) == 1)
  {
    v30 = *MEMORY[0x1E695CB68];
    if (v11)
    {
      v31 = v11;
    }

    else
    {
      v31 = *MEMORY[0x1E695CB68];
    }

    v32 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v31 value:v10];
    v36[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v12 setEmailAddresses:v33];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)em_bestMatchForName:()EmailContactAdditions fromContacts:keysToCheck:
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v7 = a4;
  v30 = a5;
  v31 = v7;
  if ([v7 count] > 1)
  {
    v33 = [v30 containsObject:*MEMORY[0x1E695C240]];
    v9 = [v30 containsObject:*MEMORY[0x1E695C230]];
    if ((v33 | v9))
    {
      v27 = [MEMORY[0x1E6996790] componentsFromString:v29];
      givenName = [v27 givenName];
      familyName = [v27 familyName];
      if (givenName | familyName)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = v7;
        v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v11)
        {
          v34 = 0;
          v35 = 0;
          v12 = *v37;
LABEL_7:
          v13 = 0;
          while (1)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v36 + 1) + 8 * v13);
            if (v33)
            {
              givenName2 = [*(*(&v36 + 1) + 8 * v13) givenName];
              if (!v9)
              {
                goto LABEL_12;
              }
            }

            else
            {
              givenName2 = 0;
              if (!v9)
              {
LABEL_12:
                familyName2 = 0;
                goto LABEL_15;
              }
            }

            familyName2 = [v14 familyName];
LABEL_15:
            v17 = [givenName2 isEqualToString:givenName];
            v18 = familyName;
            v19 = [familyName2 isEqualToString:familyName];
            if (v17 & v19)
            {
              v22 = v14;

              familyName = v18;
              v23 = v34;
              if (v22)
              {
                goto LABEL_37;
              }

              goto LABEL_34;
            }

            if (v34)
            {
              v20 = 0;
            }

            else
            {
              v20 = v17;
            }

            if (v20 == 1)
            {
              v34 = v14;
            }

            if (v35)
            {
              v21 = 0;
            }

            else
            {
              v21 = v19;
            }

            if (v21 == 1)
            {
              v35 = v14;
            }

            familyName = v18;
            if (v11 == ++v13)
            {
              v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
              if (v11)
              {
                goto LABEL_7;
              }

              goto LABEL_33;
            }
          }
        }

        v34 = 0;
        v35 = 0;
LABEL_33:

LABEL_34:
        v24 = v35;
        if (v35 || (v35 = 0, v23 = 0, v22 = 0, (v24 = v34) != 0))
        {
          v22 = v24;
          v23 = v34;
        }

LABEL_37:
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        goto LABEL_41;
      }
    }

    firstObject = [v31 firstObject];
    goto LABEL_40;
  }

  firstObject = [v7 firstObject];
LABEL_40:
  v22 = firstObject;
LABEL_41:

  v25 = *MEMORY[0x1E69E9840];

  return v22;
}

@end