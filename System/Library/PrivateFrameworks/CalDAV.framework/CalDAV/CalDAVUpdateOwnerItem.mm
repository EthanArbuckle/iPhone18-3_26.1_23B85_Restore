@interface CalDAVUpdateOwnerItem
- (id)copyParseRules;
- (id)description;
- (void)setAddressItem:(id)item;
- (void)setDisplayNameItem:(id)item;
- (void)setDtstampItem:(id)item;
- (void)setEmailAddressItem:(id)item;
- (void)setFirstNameItem:(id)item;
- (void)setLastNameItem:(id)item;
- (void)setPhoneNumberItem:(id)item;
@end

@implementation CalDAVUpdateOwnerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstName = [(CalDAVUpdateOwnerItem *)self firstName];
  lastName = [(CalDAVUpdateOwnerItem *)self lastName];
  displayName = [(CalDAVUpdateOwnerItem *)self displayName];
  address = [(CalDAVUpdateOwnerItem *)self address];
  v9 = address;
  if (address)
  {
    v10 = 0;
    phoneNumber = address;
  }

  else
  {
    emailAddress = [(CalDAVUpdateOwnerItem *)self emailAddress];
    if (emailAddress)
    {
      v10 = 0;
      v16 = emailAddress;
      phoneNumber = emailAddress;
    }

    else
    {
      phoneNumber = [(CalDAVUpdateOwnerItem *)self phoneNumber];
      v16 = 0;
      v10 = 1;
    }
  }

  dtstamp = [(CalDAVUpdateOwnerItem *)self dtstamp];
  v14 = [v3 stringWithFormat:@"[<%@ %p> %@ %@ %@ %@ %@]", v4, self, firstName, lastName, displayName, phoneNumber, dtstamp];

  if (v10)
  {
  }

  if (!v9)
  {
  }

  return v14;
}

- (void)setAddressItem:(id)item
{
  payloadAsFullURL = [item payloadAsFullURL];
  [(CalDAVUpdateOwnerItem *)self setAddress:payloadAsFullURL];
}

- (void)setEmailAddressItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setEmailAddress:payloadAsString];
}

- (void)setDisplayNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setDisplayName:payloadAsString];
}

- (void)setFirstNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setFirstName:payloadAsString];
}

- (void)setLastNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setLastName:payloadAsString];
}

- (void)setDtstampItem:(id)item
{
  v4 = MEMORY[0x277D7F100];
  payloadAsString = [item payloadAsString];
  v5 = [v4 dateFromICSString:payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setDtstamp:v5];
}

- (void)setPhoneNumberItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setPhoneNumber:payloadAsString];
}

- (id)copyParseRules
{
  v21 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDEF8];
  v3 = *MEMORY[0x277CFDF38];
  v24 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setAddressItem_];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v4 = *MEMORY[0x277CFDE90];
  v5 = *MEMORY[0x277CFDE28];
  v20 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDE28] objectClass:objc_opt_class() setterMethod:sel_setEmailAddressItem_];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, v5];
  v6 = *MEMORY[0x277CFDE48];
  v18 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:*MEMORY[0x277CFDE48] objectClass:objc_opt_class() setterMethod:sel_setPhoneNumberItem_];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, v6];
  v7 = *MEMORY[0x277CFDF00];
  v16 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFDF00] objectClass:objc_opt_class() setterMethod:sel_setDisplayNameItem_];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v7];
  v15 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"first-name" objectClass:objc_opt_class() setterMethod:sel_setFirstNameItem_];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"first-name"];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"last-name" objectClass:objc_opt_class() setterMethod:sel_setLastNameItem_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"last-name"];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"dtstamp" objectClass:objc_opt_class() setterMethod:sel_setDtstampItem_];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"dtstamp"];
  v22 = [v21 initWithObjectsAndKeys:{v24, v23, v20, v19, v18, v17, v16, v14, v15, v13, v8, v9, v10, v11, 0}];

  return v22;
}

@end