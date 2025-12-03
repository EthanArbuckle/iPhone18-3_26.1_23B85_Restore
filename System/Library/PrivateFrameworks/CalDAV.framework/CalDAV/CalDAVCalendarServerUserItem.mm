@interface CalDAVCalendarServerUserItem
- (id)copyParseRules;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)setAcceptedURLItem:(id)item;
- (void)setFirstNameItem:(id)item;
- (void)setLastNameItem:(id)item;
@end

@implementation CalDAVCalendarServerUserItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v27.receiver = self;
  v27.super_class = CalDAVCalendarServerUserItem;
  v4 = [(CoreDAVItem *)&v27 description];
  [v3 appendFormat:@"[%@]", v4];

  commonName = [(CalDAVCalendarServerUserItem *)self commonName];
  payloadAsString = [commonName payloadAsString];
  [v3 appendFormat:@"\n  Common name: [%@]", payloadAsString];

  firstName = [(CalDAVCalendarServerUserItem *)self firstName];
  [v3 appendFormat:@"\n  First Name: [%@]", firstName];

  lastName = [(CalDAVCalendarServerUserItem *)self lastName];
  [v3 appendFormat:@"\n  Last Name: [%@]", lastName];

  acceptedURL = [(CalDAVCalendarServerUserItem *)self acceptedURL];
  [v3 appendFormat:@"\n  Accepted URL: [%@]", acceptedURL];

  href = [(CalDAVCalendarServerUserItem *)self href];
  payloadAsFullURL = [href payloadAsFullURL];
  [v3 appendFormat:@"\n  Full HREF: [%@]", payloadAsFullURL];

  href2 = [(CalDAVCalendarServerUserItem *)self href];
  payloadAsOriginalURL = [href2 payloadAsOriginalURL];
  [v3 appendFormat:@"\n  Original HREF: [%@]", payloadAsOriginalURL];

  inviteStatus = [(CalDAVCalendarServerUserItem *)self inviteStatus];
  nameSpace = [inviteStatus nameSpace];
  inviteStatus2 = [(CalDAVCalendarServerUserItem *)self inviteStatus];
  name = [inviteStatus2 name];
  [v3 appendFormat:@"\n  Invite status: [%@%@]", nameSpace, name];

  access = [(CalDAVCalendarServerUserItem *)self access];
  accessLevel = [access accessLevel];
  nameSpace2 = [accessLevel nameSpace];
  access2 = [(CalDAVCalendarServerUserItem *)self access];
  accessLevel2 = [access2 accessLevel];
  name2 = [accessLevel2 name];
  [v3 appendFormat:@"\n  Access level: [%@%@]", nameSpace2, name2];

  summary = [(CalDAVCalendarServerUserItem *)self summary];
  payloadAsString2 = [summary payloadAsString];
  [v3 appendFormat:@"\n  Summary: [%@]", payloadAsString2];

  return v3;
}

- (void)setFirstNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVCalendarServerUserItem *)self setFirstName:payloadAsString];
}

- (void)setLastNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVCalendarServerUserItem *)self setLastName:payloadAsString];
}

- (void)setAcceptedURLItem:(id)item
{
  href = [item href];
  payloadAsFullURL = [href payloadAsFullURL];
  [(CalDAVCalendarServerUserItem *)self setAcceptedURL:payloadAsFullURL];
}

- (id)copyParseRules
{
  v19 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDEF8];
  v3 = *MEMORY[0x277CFDF38];
  v29 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setHref_];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v4 = *MEMORY[0x277CFDE90];
  v27 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"first-name" objectClass:objc_opt_class() setterMethod:sel_setFirstNameItem_];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"first-name"];
  v25 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"last-name" objectClass:objc_opt_class() setterMethod:sel_setLastNameItem_];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"last-name"];
  v23 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"common-name" objectClass:objc_opt_class() setterMethod:sel_setCommonName_];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"common-name"];
  v21 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-noresponse" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-noresponse"];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-accepted" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-accepted"];
  v15 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-declined" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-declined"];
  v13 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-invalid" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-invalid"];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v4 elementName:@"access" objectClass:objc_opt_class() setterMethod:sel_setAccess_];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"access"];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"summary" objectClass:objc_opt_class() setterMethod:sel_setSummary_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"summary"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v4 elementName:@"accepted-sharee-url" objectClass:objc_opt_class() setterMethod:sel_setAcceptedURLItem_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"accepted-sharee-url"];
  v20 = [v19 initWithObjectsAndKeys:{v29, v28, v27, v26, v25, v24, v23, v22, v21, v18, v17, v16, v15, v14, v13, v5, v12, v11, v10, v6, v7, v8, 0}];

  return v20;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v9 = 0;
  }

  else
  {
    href = [(CalDAVCalendarServerUserItem *)self href];
    payloadAsString = [href payloadAsString];
    href2 = [(CalDAVCalendarServerUserItem *)compareCopy href];
    payloadAsString2 = [href2 payloadAsString];
    v9 = [payloadAsString compare:payloadAsString2];

    if (!v9)
    {
      access = [(CalDAVCalendarServerUserItem *)self access];
      accessLevel = [access accessLevel];
      name = [accessLevel name];
      access2 = [(CalDAVCalendarServerUserItem *)compareCopy access];
      accessLevel2 = [access2 accessLevel];
      name2 = [accessLevel2 name];
      v9 = [name compare:name2];

      if (!v9)
      {
        inviteStatus = [(CalDAVCalendarServerUserItem *)self inviteStatus];
        name3 = [inviteStatus name];
        inviteStatus2 = [(CalDAVCalendarServerUserItem *)compareCopy inviteStatus];
        name4 = [inviteStatus2 name];
        v9 = [name3 compare:name4];

        if (!v9)
        {
          commonName = [(CalDAVCalendarServerUserItem *)self commonName];
          payloadAsString3 = [commonName payloadAsString];
          commonName2 = [(CalDAVCalendarServerUserItem *)compareCopy commonName];
          payloadAsString4 = [commonName2 payloadAsString];
          v9 = [payloadAsString3 compare:payloadAsString4];
        }
      }
    }
  }

  return v9;
}

@end