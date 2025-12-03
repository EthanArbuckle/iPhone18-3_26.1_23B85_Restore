@interface CNContact(DigitalSeparation)
- (id)ds_emailAddresses;
- (id)ds_name;
- (id)ds_phoneNumbers;
- (uint64_t)ds_isLikeContact:()DigitalSeparation;
- (uint64_t)isLikeIdentifiable:()DigitalSeparation;
@end

@implementation CNContact(DigitalSeparation)

- (uint64_t)ds_isLikeContact:()DigitalSeparation
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  identifier = [v4 identifier];
  if ([identifier length])
  {
    identifier2 = [self identifier];
    identifier3 = [v5 identifier];
    v9 = [identifier2 isEqualToString:identifier3];

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  ds_name = [v5 ds_name];
  if (![ds_name length] || (objc_msgSend(self, "ds_name"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(ds_name, "isEqual:", v11), v11, (v12 & 1) == 0))
  {
    ds_emailAddresses = [v5 ds_emailAddresses];
    ds_emailAddresses2 = [self ds_emailAddresses];
    v15 = [ds_emailAddresses intersectsSet:ds_emailAddresses2];

    if ((v15 & 1) == 0)
    {
      ds_phoneNumbers = [v5 ds_phoneNumbers];
      ds_phoneNumbers2 = [self ds_phoneNumbers];
      v18 = [ds_phoneNumbers intersectsSet:ds_phoneNumbers2];

      if (v18)
      {
        goto LABEL_11;
      }

LABEL_12:
      v19 = 0;
      goto LABEL_13;
    }
  }

LABEL_11:
  v19 = 1;
LABEL_13:

  return v19;
}

- (uint64_t)isLikeIdentifiable:()DigitalSeparation
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  unifiedContactIdentifier = [v4 unifiedContactIdentifier];
  if ([unifiedContactIdentifier length])
  {
    identifier = [self identifier];
    unifiedContactIdentifier2 = [v4 unifiedContactIdentifier];
    v8 = [identifier isEqualToString:unifiedContactIdentifier2];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277CCAC00] componentsForContact:self];
  nameComponents = [v4 nameComponents];
  v11 = [v9 isEqual:nameComponents];

  if (v11)
  {
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  emailAddress = [v4 emailAddress];
  if ([emailAddress length])
  {
    ds_emailAddresses = [self ds_emailAddresses];
    emailAddress2 = [v4 emailAddress];
    v15 = [ds_emailAddresses containsObject:emailAddress2];

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  phoneNumber = [v4 phoneNumber];
  v20 = [phoneNumber length];

  if (v20)
  {
    v21 = MEMORY[0x277CBDB70];
    phoneNumber2 = [v4 phoneNumber];
    v23 = [v21 phoneNumberWithStringValue:phoneNumber2];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    phoneNumbers = [self phoneNumbers];
    v25 = [phoneNumbers countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      while (2)
      {
        v28 = 0;
        do
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          value = [*(*(&v33 + 1) + 8 * v28) value];
          v30 = [v23 isLikePhoneNumber:value];

          if (v30)
          {
            v16 = 1;
            goto LABEL_22;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [phoneNumbers countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    phoneNumbers = [self ds_phoneNumbers];
    phoneNumber3 = [v4 phoneNumber];
    ds_formattedPotentialPhoneNumber = [phoneNumber3 ds_formattedPotentialPhoneNumber];
    v16 = [phoneNumbers containsObject:ds_formattedPotentialPhoneNumber];

LABEL_22:
  }

  else
  {
    v16 = 0;
  }

LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)ds_phoneNumbers
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  phoneNumbers = [self phoneNumbers];
  v4 = [phoneNumbers count];

  if (v4)
  {
    phoneNumbers2 = [self phoneNumbers];
    v6 = [phoneNumbers2 valueForKey:@"value"];
    v7 = [v6 valueForKey:@"stringValue"];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          ds_formattedPotentialPhoneNumber = [*(*(&v16 + 1) + 8 * i) ds_formattedPotentialPhoneNumber];
          [v2 addObject:ds_formattedPotentialPhoneNumber];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ds_emailAddresses
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  emailAddresses = [self emailAddresses];
  v4 = [emailAddresses count];

  if (v4)
  {
    emailAddresses2 = [self emailAddresses];
    v6 = [emailAddresses2 valueForKey:@"value"];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v2 addObject:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ds_name
{
  v1 = [MEMORY[0x277CCAC00] componentsForContact:self];
  if (v1)
  {
    v2 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v1 style:3 options:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end