@interface CalDAVCalendarServerNotificationTypeItem
- (BOOL)isInviteNotification;
- (BOOL)isInviteReply;
- (BOOL)isResourceChanged;
- (BOOL)notificationNameIn:(id)a3;
- (BOOL)notificationNameMatches:(id)a3;
- (id)copyParseRules;
- (id)description;
@end

@implementation CalDAVCalendarServerNotificationTypeItem

- (id)copyParseRules
{
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v3 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"invite-notification" objectClass:objc_opt_class() setterMethod:sel_setInviteNotification_];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-notification"];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-reply" objectClass:objc_opt_class() setterMethod:sel_setInviteReply_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-reply"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"resource-changed" objectClass:objc_opt_class() setterMethod:sel_setResourceChanged_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"resource-changed"];
  v9 = [v11 initWithObjectsAndKeys:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: ", v5, self];

  [v6 appendFormat:@" isInviteReply %d", -[CalDAVCalendarServerNotificationTypeItem isInviteReply](self, "isInviteReply")];
  [v6 appendFormat:@"\n\tisInviteNotification %d", -[CalDAVCalendarServerNotificationTypeItem isInviteNotification](self, "isInviteNotification")];
  [v6 appendFormat:@"\n\tisResourceChanged %d", -[CalDAVCalendarServerNotificationTypeItem isResourceChanged](self, "isResourceChanged")];

  return v6;
}

- (BOOL)isInviteNotification
{
  v2 = [(CalDAVCalendarServerNotificationTypeItem *)self inviteNotification];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isInviteReply
{
  v2 = [(CalDAVCalendarServerNotificationTypeItem *)self inviteReply];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isResourceChanged
{
  v2 = [(CalDAVCalendarServerNotificationTypeItem *)self resourceChanged];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)notificationNameMatches:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"invite-notification"])
  {
    v5 = [(CalDAVCalendarServerNotificationTypeItem *)self isInviteNotification];
  }

  else if ([v4 isEqualToString:@"invite-reply"])
  {
    v5 = [(CalDAVCalendarServerNotificationTypeItem *)self isInviteReply];
  }

  else
  {
    if (![v4 isEqualToString:@"resource-changed"])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = [(CalDAVCalendarServerNotificationTypeItem *)self isResourceChanged];
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (BOOL)notificationNameIn:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(CalDAVCalendarServerNotificationTypeItem *)self notificationNameMatches:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end