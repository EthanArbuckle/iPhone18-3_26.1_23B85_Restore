@interface CalDAVCalendarServerUserItem
- (id)copyParseRules;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)setAcceptedURLItem:(id)a3;
- (void)setFirstNameItem:(id)a3;
- (void)setLastNameItem:(id)a3;
@end

@implementation CalDAVCalendarServerUserItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v27.receiver = self;
  v27.super_class = CalDAVCalendarServerUserItem;
  v4 = [(CoreDAVItem *)&v27 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CalDAVCalendarServerUserItem *)self commonName];
  v6 = [v5 payloadAsString];
  [v3 appendFormat:@"\n  Common name: [%@]", v6];

  v7 = [(CalDAVCalendarServerUserItem *)self firstName];
  [v3 appendFormat:@"\n  First Name: [%@]", v7];

  v8 = [(CalDAVCalendarServerUserItem *)self lastName];
  [v3 appendFormat:@"\n  Last Name: [%@]", v8];

  v9 = [(CalDAVCalendarServerUserItem *)self acceptedURL];
  [v3 appendFormat:@"\n  Accepted URL: [%@]", v9];

  v10 = [(CalDAVCalendarServerUserItem *)self href];
  v11 = [v10 payloadAsFullURL];
  [v3 appendFormat:@"\n  Full HREF: [%@]", v11];

  v12 = [(CalDAVCalendarServerUserItem *)self href];
  v13 = [v12 payloadAsOriginalURL];
  [v3 appendFormat:@"\n  Original HREF: [%@]", v13];

  v14 = [(CalDAVCalendarServerUserItem *)self inviteStatus];
  v15 = [v14 nameSpace];
  v16 = [(CalDAVCalendarServerUserItem *)self inviteStatus];
  v17 = [v16 name];
  [v3 appendFormat:@"\n  Invite status: [%@%@]", v15, v17];

  v18 = [(CalDAVCalendarServerUserItem *)self access];
  v19 = [v18 accessLevel];
  v20 = [v19 nameSpace];
  v21 = [(CalDAVCalendarServerUserItem *)self access];
  v22 = [v21 accessLevel];
  v23 = [v22 name];
  [v3 appendFormat:@"\n  Access level: [%@%@]", v20, v23];

  v24 = [(CalDAVCalendarServerUserItem *)self summary];
  v25 = [v24 payloadAsString];
  [v3 appendFormat:@"\n  Summary: [%@]", v25];

  return v3;
}

- (void)setFirstNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVCalendarServerUserItem *)self setFirstName:v4];
}

- (void)setLastNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVCalendarServerUserItem *)self setLastName:v4];
}

- (void)setAcceptedURLItem:(id)a3
{
  v5 = [a3 href];
  v4 = [v5 payloadAsFullURL];
  [(CalDAVCalendarServerUserItem *)self setAcceptedURL:v4];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(CalDAVCalendarServerUserItem *)self href];
    v6 = [v5 payloadAsString];
    v7 = [(CalDAVCalendarServerUserItem *)v4 href];
    v8 = [v7 payloadAsString];
    v9 = [v6 compare:v8];

    if (!v9)
    {
      v10 = [(CalDAVCalendarServerUserItem *)self access];
      v11 = [v10 accessLevel];
      v12 = [v11 name];
      v13 = [(CalDAVCalendarServerUserItem *)v4 access];
      v14 = [v13 accessLevel];
      v15 = [v14 name];
      v9 = [v12 compare:v15];

      if (!v9)
      {
        v16 = [(CalDAVCalendarServerUserItem *)self inviteStatus];
        v17 = [v16 name];
        v18 = [(CalDAVCalendarServerUserItem *)v4 inviteStatus];
        v19 = [v18 name];
        v9 = [v17 compare:v19];

        if (!v9)
        {
          v20 = [(CalDAVCalendarServerUserItem *)self commonName];
          v21 = [v20 payloadAsString];
          v22 = [(CalDAVCalendarServerUserItem *)v4 commonName];
          v23 = [v22 payloadAsString];
          v9 = [v21 compare:v23];
        }
      }
    }
  }

  return v9;
}

@end