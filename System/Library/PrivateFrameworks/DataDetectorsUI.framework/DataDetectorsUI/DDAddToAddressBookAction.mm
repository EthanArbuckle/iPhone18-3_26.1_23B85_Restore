@interface DDAddToAddressBookAction
+ (BOOL)actionAvailableForContact:(id)contact;
- (id)compactTitle;
- (id)contact;
- (id)notificationTitle;
- (void)invalidate;
@end

@implementation DDAddToAddressBookAction

- (void)invalidate
{
  viewController = [(DDAction *)self viewController];
  [viewController setAction:0];

  v4.receiver = self;
  v4.super_class = DDAddToAddressBookAction;
  [(DDAction *)&v4 invalidate];
}

+ (BOOL)actionAvailableForContact:(id)contact
{
  if (contact)
  {
    return [self isAvailable];
  }

  else
  {
    return 0;
  }
}

- (id)compactTitle
{
  contact = [(DDAddToAddressBookAction *)self contact];
  if (!contact)
  {
    goto LABEL_7;
  }

  compactTitle = [MEMORY[0x277CBDA78] stringFromContact:contact style:0];
  if (![compactTitle length] && objc_msgSend(contact, "isKeyAvailable:", @"organizationName"))
  {
    organizationName = [contact organizationName];

    compactTitle = organizationName;
  }

  if (![compactTitle length])
  {

LABEL_7:
    v7.receiver = self;
    v7.super_class = DDAddToAddressBookAction;
    compactTitle = [(DDAction *)&v7 compactTitle];
  }

  return compactTitle;
}

- (id)contact
{
  v19[1] = *MEMORY[0x277D85DE8];
  contact = self->super.super._contact;
  if (!contact)
  {
    v4 = self->super.super._url;
    v5 = DDPersonActionsSupportedSchemes();
    if (v4)
    {
      if (self->super.super._result)
      {
        v6 = 0;
      }

      else
      {
        v6 = [(NSURL *)v4 dd_phoneNumberFromValidSchemes:v5];
        if (!self->super.super._result)
        {
          v14 = [(NSURL *)v4 dd_emailFromValidSchemes:v5];
          v8 = dd_userFriendlyEmail(v14);

          v7 = objc_alloc_init(MEMORY[0x277CBDB38]);
          if (v8)
          {
            v15 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v8];
            v16 = v15;
            if (v15)
            {
              v19[0] = v15;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
              [(CNContact *)v7 setEmailAddresses:v17];
            }

            objc_storeStrong(&self->super.super._contact, v7);

            if (!v6)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }

LABEL_8:
          if (!v6)
          {
            if (!self->super.super._result)
            {
              v8 = 0;
              v6 = 0;
              goto LABEL_16;
            }

            DDAugmentContactWithResultsFromAction(v7, self);
            v7 = v7;
            v8 = 0;
            v6 = 0;
            v10 = self->super.super._contact;
            self->super.super._contact = v7;
LABEL_15:

LABEL_16:
            contact = self->super.super._contact;
            goto LABEL_17;
          }

          v8 = 0;
LABEL_10:
          v9 = DDPhoneLabeledValue(0, v6);
          v10 = v9;
          if (v9)
          {
            v18 = v9;
            v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
            [(CNContact *)v7 setPhoneNumbers:v11];
          }

          objc_storeStrong(&self->super.super._contact, v7);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBDB38]);
    goto LABEL_8;
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];

  return contact;
}

- (id)notificationTitle
{
  v54 = *MEMORY[0x277D85DE8];
  contact = [(DDAddToAddressBookAction *)self contact];

  if (contact)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277CBDA78] stringFromContact:self->super.super._contact style:0];
    if ([v5 length])
    {
      [v4 addObject:v5];
    }

    phoneNumbers = [(CNContact *)self->super.super._contact phoneNumbers];
    firstObject = [phoneNumbers firstObject];
    value = [firstObject value];
    stringValue = [value stringValue];

    if ([stringValue length])
    {
      v10 = TUFormattedPhoneNumber();
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = stringValue;
      }

      [v4 addObject:v12];

      if ([v4 count] == 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      emailAddresses = [(CNContact *)self->super.super._contact emailAddresses];
      firstObject2 = [emailAddresses firstObject];
      value2 = [firstObject2 value];

      if ([value2 length])
      {
        [v4 addObject:value2];

        if ([v4 count] == 1)
        {
LABEL_9:
          v13 = MEMORY[0x277CCACA8];
          v14 = DDLocalizedString(@"Add “%@” to Contacts");
          v15 = [v4 objectAtIndexedSubscript:0];
          v16 = [v13 stringWithFormat:v14, v15];

LABEL_19:
          goto LABEL_20;
        }
      }

      else
      {
        postalAddresses = [(CNContact *)self->super.super._contact postalAddresses];
        firstObject3 = [postalAddresses firstObject];
        value3 = [firstObject3 value];

        if (value3)
        {
          v48 = value2;
          v34 = [MEMORY[0x277CBDB80] stringFromPostalAddress:value3 style:0];
          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v36 = [v34 componentsSeparatedByCharactersInSet:newlineCharacterSet];

          v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v38 = v36;
          v39 = [v38 countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v50;
            v47 = v37;
            while (2)
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v50 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v49 + 1) + 8 * i);
                whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                v45 = [v43 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

                if ([v45 length])
                {
                  v37 = v47;
                  [v47 addObject:v45];

                  goto LABEL_35;
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v49 objects:v53 count:16];
              v37 = v47;
              if (v40)
              {
                continue;
              }

              break;
            }
          }

LABEL_35:

          if ([v38 count])
          {
            v46 = [v37 componentsJoinedByString:@" "];
            [v4 addObject:v46];
          }

          value2 = v48;
        }

        if ([v4 count] == 1)
        {
          goto LABEL_9;
        }
      }
    }

    v25 = [v4 count];
    v26 = MEMORY[0x277CCACA8];
    if (v25 < 2)
    {
      v14 = DDLocalizedString(@"Add VCard to Contacts");
      v16 = [v26 stringWithFormat:v14];
    }

    else
    {
      v14 = DDLocalizedString(@"Add “%@” to Contacts\n%@");
      v27 = [v4 objectAtIndexedSubscript:0];
      v28 = [v4 objectAtIndexedSubscript:1];
      v16 = [v26 stringWithFormat:v14, v27, v28];
    }

    goto LABEL_19;
  }

  url = self->super.super._url;
  v18 = self->super.super._result;
  if (!(url | v18) || (_displayString(url, v18, 0, 0, 1), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0;
    goto LABEL_21;
  }

  v4 = v19;
  v20 = MEMORY[0x277CCACA8];
  v21 = DDLocalizedString(@"Add location “%@” to Contacts");
  v16 = [v20 stringWithFormat:v21, v4];

LABEL_20:
LABEL_21:
  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

@end