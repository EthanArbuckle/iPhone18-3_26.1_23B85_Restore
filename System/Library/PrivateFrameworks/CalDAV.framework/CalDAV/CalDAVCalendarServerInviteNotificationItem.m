@interface CalDAVCalendarServerInviteNotificationItem
- (BOOL)isComponentSupportedForString:(id)a3;
- (id)copyParseRules;
- (id)initForReplyWithUID:(id)a3 href:(id)a4 hostURL:(id)a5 summary:(id)a6;
@end

@implementation CalDAVCalendarServerInviteNotificationItem

- (id)initForReplyWithUID:(id)a3 href:(id)a4 hostURL:(id)a5 summary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *MEMORY[0x277CFDE90];
  v15 = [(CoreDAVItem *)self initWithNameSpace:*MEMORY[0x277CFDE90] andName:@"invite-notification"];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CFDBD8]);
    v17 = *MEMORY[0x277CFDEF8];
    v18 = *MEMORY[0x277CFDF38];
    v19 = [v16 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF38]];
    [v11 absoluteString];
    v20 = v27 = v11;
    [v19 setPayloadAsString:v20];

    [(CalDAVCalendarServerInviteNotificationItem *)v15 setHref:v19];
    v21 = [objc_alloc(MEMORY[0x277CFDBF0]) initWithNameSpace:v14 andName:@"hosturl"];
    v22 = [objc_alloc(MEMORY[0x277CFDBD8]) initWithNameSpace:v17 andName:v18];
    v23 = [v12 absoluteString];
    [v22 setPayloadAsString:v23];

    [v21 setHref:v22];
    [(CalDAVCalendarServerInviteNotificationItem *)v15 setHostURL:v21];
    v24 = [objc_alloc(MEMORY[0x277CFDC10]) initWithNameSpace:v14 andName:@"uid"];
    [v24 setPayloadAsString:v10];
    [(CalDAVCalendarServerInviteNotificationItem *)v15 setUid:v24];
    v25 = [objc_alloc(MEMORY[0x277CFDC10]) initWithNameSpace:v14 andName:@"summary"];
    [v25 setPayloadAsString:v13];
    [(CalDAVCalendarServerInviteNotificationItem *)v15 setSummary:v25];

    v11 = v27;
  }

  return v15;
}

- (id)copyParseRules
{
  v21 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v35 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"uid" objectClass:objc_opt_class() setterMethod:sel_setUid_];
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"uid"];
  v3 = *MEMORY[0x277CFDEF8];
  v4 = *MEMORY[0x277CFDF38];
  v33 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setHref_];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v31 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-noresponse" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-noresponse"];
  v29 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-deleted" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-deleted"];
  v27 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-accepted" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-accepted"];
  v25 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-declined" objectClass:objc_opt_class() setterMethod:sel_setInviteStatus_];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-declined"];
  v5 = *MEMORY[0x277CFDDC0];
  v6 = *MEMORY[0x277CFE028];
  v23 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFE028] objectClass:objc_opt_class() setterMethod:sel_setSupportedCalendarComponentSet_];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, v6];
  v19 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v2 elementName:@"access" objectClass:objc_opt_class() setterMethod:sel_setAccess_];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"access"];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v2 elementName:@"hosturl" objectClass:objc_opt_class() setterMethod:sel_setHostURL_];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"hosturl"];
  v15 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v2 elementName:@"organizer" objectClass:objc_opt_class() setterMethod:sel_setOrganizer_];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"organizer"];
  v13 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:v2 elementName:@"summary" objectClass:objc_opt_class() setterMethod:sel_setSummary_];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"summary"];
  v11 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"calendar-public" objectClass:objc_opt_class() setterMethod:sel_setCalendarPublic_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"calendar-public"];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"calendar-not-public" objectClass:objc_opt_class() setterMethod:sel_setCalendarPublic_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"calendar-not-public"];
  v22 = [v21 initWithObjectsAndKeys:{v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v7, v8, v9, 0}];

  return v22;
}

- (BOOL)isComponentSupportedForString:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerInviteNotificationItem *)self supportedCalendarComponentSet];

  if (v5)
  {
    v6 = [(CalDAVCalendarServerInviteNotificationItem *)self supportedCalendarComponentSet];
    v7 = [v6 compNames];
    v8 = [v7 containsObject:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end