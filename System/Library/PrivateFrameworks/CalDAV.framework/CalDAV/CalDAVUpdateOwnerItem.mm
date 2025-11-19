@interface CalDAVUpdateOwnerItem
- (id)copyParseRules;
- (id)description;
- (void)setAddressItem:(id)a3;
- (void)setDisplayNameItem:(id)a3;
- (void)setDtstampItem:(id)a3;
- (void)setEmailAddressItem:(id)a3;
- (void)setFirstNameItem:(id)a3;
- (void)setLastNameItem:(id)a3;
- (void)setPhoneNumberItem:(id)a3;
@end

@implementation CalDAVUpdateOwnerItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CalDAVUpdateOwnerItem *)self firstName];
  v6 = [(CalDAVUpdateOwnerItem *)self lastName];
  v7 = [(CalDAVUpdateOwnerItem *)self displayName];
  v8 = [(CalDAVUpdateOwnerItem *)self address];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v12 = [(CalDAVUpdateOwnerItem *)self emailAddress];
    if (v12)
    {
      v10 = 0;
      v16 = v12;
      v11 = v12;
    }

    else
    {
      v11 = [(CalDAVUpdateOwnerItem *)self phoneNumber];
      v16 = 0;
      v10 = 1;
    }
  }

  v13 = [(CalDAVUpdateOwnerItem *)self dtstamp];
  v14 = [v3 stringWithFormat:@"[<%@ %p> %@ %@ %@ %@ %@]", v4, self, v5, v6, v7, v11, v13];

  if (v10)
  {
  }

  if (!v9)
  {
  }

  return v14;
}

- (void)setAddressItem:(id)a3
{
  v4 = [a3 payloadAsFullURL];
  [(CalDAVUpdateOwnerItem *)self setAddress:v4];
}

- (void)setEmailAddressItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setEmailAddress:v4];
}

- (void)setDisplayNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setDisplayName:v4];
}

- (void)setFirstNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setFirstName:v4];
}

- (void)setLastNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setLastName:v4];
}

- (void)setDtstampItem:(id)a3
{
  v4 = MEMORY[0x277D7F100];
  v6 = [a3 payloadAsString];
  v5 = [v4 dateFromICSString:v6];
  [(CalDAVUpdateOwnerItem *)self setDtstamp:v5];
}

- (void)setPhoneNumberItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVUpdateOwnerItem *)self setPhoneNumber:v4];
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