@interface CalDAVCalendarServerInviteReplyItem
- (id)copyParseRules;
- (void)setAcceptedURLItem:(id)item;
- (void)setFirstNameItem:(id)item;
- (void)setLastNameItem:(id)item;
@end

@implementation CalDAVCalendarServerInviteReplyItem

- (void)setFirstNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVCalendarServerInviteReplyItem *)self setFirstName:payloadAsString];
}

- (void)setLastNameItem:(id)item
{
  payloadAsString = [item payloadAsString];
  [(CalDAVCalendarServerInviteReplyItem *)self setLastName:payloadAsString];
}

- (void)setAcceptedURLItem:(id)item
{
  href = [item href];
  payloadAsFullURL = [href payloadAsFullURL];
  [(CalDAVCalendarServerInviteReplyItem *)self setAcceptedURL:payloadAsFullURL];
}

- (id)copyParseRules
{
  v19 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDEF8];
  v3 = *MEMORY[0x277CFDF38];
  v29 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setHref_];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v4 = *MEMORY[0x277CFDE90];
  v27 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"invite-noresponse" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-noresponse"];
  v25 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-deleted" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-deleted"];
  v23 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-accepted" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-accepted"];
  v21 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"invite-declined" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"invite-declined"];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v4 elementName:@"hosturl" objectClass:objc_opt_class() setterMethod:sel_setHostURL_];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"hosturl"];
  v15 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v4 elementName:@"in-reply-to" objectClass:objc_opt_class() setterMethod:sel_setInReplyTo_];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"in-reply-to"];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"summary" objectClass:objc_opt_class() setterMethod:sel_setSummary_];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"summary"];
  v11 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"first-name" objectClass:objc_opt_class() setterMethod:sel_setFirstNameItem_];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"first-name"];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"last-name" objectClass:objc_opt_class() setterMethod:sel_setLastNameItem_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"last-name"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v4 elementName:@"accepted-sharee-url" objectClass:objc_opt_class() setterMethod:sel_setAcceptedURLItem_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"accepted-sharee-url"];
  v20 = [v19 initWithObjectsAndKeys:{v29, v28, v27, v26, v25, v24, v23, v22, v21, v18, v17, v16, v15, v14, v12, v13, v11, v10, v5, v6, v7, v8, 0}];

  return v20;
}

@end