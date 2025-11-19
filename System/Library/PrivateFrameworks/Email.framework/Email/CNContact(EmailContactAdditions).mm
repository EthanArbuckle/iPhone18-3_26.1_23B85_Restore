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
  v5 = [v4 ea_addressCommentPersonNameComponents];
  v6 = [v4 ea_uncommentedAddress];
  v7 = [a1 em_contactWithPersonNameComponents:v5 emailAddress:v6 emailAddressLabel:0];

  return v7;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions
{
  v3 = [a1 em_contactWithPersonNameComponents:a3 emailAddress:0 emailAddressLabel:0];

  return v3;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:
{
  v5 = [a1 em_contactWithPersonNameComponents:a3 emailAddress:a4 emailAddressLabel:a5 allowInvalidEmailAddress:0];

  return v5;
}

+ (id)em_contactWithPersonNameComponents:()EmailContactAdditions emailAddress:emailAddressLabel:allowInvalidEmailAddress:
{
  v36[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v13 = [v9 namePrefix];

  if (v13)
  {
    v14 = [v9 namePrefix];
    [v12 setNamePrefix:v14];
  }

  v15 = [v9 givenName];

  if (v15)
  {
    v16 = [v9 givenName];
    [v12 setGivenName:v16];
  }

  v17 = [v9 middleName];

  if (v17)
  {
    v18 = [v9 middleName];
    [v12 setMiddleName:v18];
  }

  v19 = [v9 familyName];

  if (v19)
  {
    v20 = [v9 familyName];
    [v12 setFamilyName:v20];
  }

  v21 = [v9 nameSuffix];

  if (v21)
  {
    v22 = [v9 nameSuffix];
    [v12 setNameSuffix:v22];
  }

  v23 = [v9 phoneticRepresentation];
  v24 = [v23 givenName];

  if (v24)
  {
    v25 = [v23 givenName];
    [v12 setPhoneticGivenName:v25];
  }

  v26 = [v23 middleName];

  if (v26)
  {
    v27 = [v23 middleName];
    [v12 setPhoneticMiddleName:v27];
  }

  v28 = [v23 familyName];

  if (v28)
  {
    v29 = [v23 familyName];
    [v12 setPhoneticFamilyName:v29];
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
      v32 = [v27 givenName];
      v10 = [v27 familyName];
      if (v32 | v10)
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
              v15 = [*(*(&v36 + 1) + 8 * v13) givenName];
              if (!v9)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v15 = 0;
              if (!v9)
              {
LABEL_12:
                v16 = 0;
                goto LABEL_15;
              }
            }

            v16 = [v14 familyName];
LABEL_15:
            v17 = [v15 isEqualToString:v32];
            v18 = v10;
            v19 = [v16 isEqualToString:v10];
            if (v17 & v19)
            {
              v22 = v14;

              v10 = v18;
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

            v10 = v18;
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

    v8 = [v31 firstObject];
    goto LABEL_40;
  }

  v8 = [v7 firstObject];
LABEL_40:
  v22 = v8;
LABEL_41:

  v25 = *MEMORY[0x1E69E9840];

  return v22;
}

@end