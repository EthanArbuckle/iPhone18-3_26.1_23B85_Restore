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

  v6 = [v4 identifier];
  if ([v6 length])
  {
    v7 = [a1 identifier];
    v8 = [v5 identifier];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = [v5 ds_name];
  if (![v10 length] || (objc_msgSend(a1, "ds_name"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, (v12 & 1) == 0))
  {
    v13 = [v5 ds_emailAddresses];
    v14 = [a1 ds_emailAddresses];
    v15 = [v13 intersectsSet:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [v5 ds_phoneNumbers];
      v17 = [a1 ds_phoneNumbers];
      v18 = [v16 intersectsSet:v17];

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
  v5 = [v4 unifiedContactIdentifier];
  if ([v5 length])
  {
    v6 = [a1 identifier];
    v7 = [v4 unifiedContactIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277CCAC00] componentsForContact:a1];
  v10 = [v4 nameComponents];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v12 = [v4 emailAddress];
  if ([v12 length])
  {
    v13 = [a1 ds_emailAddresses];
    v14 = [v4 emailAddress];
    v15 = [v13 containsObject:v14];

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = [v4 phoneNumber];
  v20 = [v19 length];

  if (v20)
  {
    v21 = MEMORY[0x277CBDB70];
    v22 = [v4 phoneNumber];
    v23 = [v21 phoneNumberWithStringValue:v22];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = [a1 phoneNumbers];
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v33 + 1) + 8 * v28) value];
          v30 = [v23 isLikePhoneNumber:v29];

          if (v30)
          {
            v16 = 1;
            goto LABEL_22;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v24 = [a1 ds_phoneNumbers];
    v31 = [v4 phoneNumber];
    v32 = [v31 ds_formattedPotentialPhoneNumber];
    v16 = [v24 containsObject:v32];

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
  v3 = [a1 phoneNumbers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [a1 phoneNumbers];
    v6 = [v5 valueForKey:@"value"];
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

          v13 = [*(*(&v16 + 1) + 8 * i) ds_formattedPotentialPhoneNumber];
          [v2 addObject:v13];
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
  v3 = [a1 emailAddresses];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [a1 emailAddresses];
    v6 = [v5 valueForKey:@"value"];

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
  v1 = [MEMORY[0x277CCAC00] componentsForContact:a1];
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