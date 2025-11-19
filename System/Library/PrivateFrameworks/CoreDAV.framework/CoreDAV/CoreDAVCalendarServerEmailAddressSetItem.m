@interface CoreDAVCalendarServerEmailAddressSetItem
+ (id)copyParseRules;
- (id)description;
- (void)addEmailAddress:(id)a3;
@end

@implementation CoreDAVCalendarServerEmailAddressSetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVCalendarServerEmailAddressSetItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVCalendarServerEmailAddressSetItem *)self emailAddresses];
  [v3 appendFormat:@"\n  Number of email addresses: [%lu]", objc_msgSend(v5, "count")];

  v6 = [(CoreDAVCalendarServerEmailAddressSetItem *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", v6];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"http://calendarserver.org/ns/" elementName:@"email-address" objectClass:objc_opt_class() setterMethod:sel_addEmailAddress_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"email-address"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)addEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVCalendarServerEmailAddressSetItem *)self emailAddresses];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreDAVCalendarServerEmailAddressSetItem *)self setEmailAddresses:v6];
  }

  v7 = [(CoreDAVCalendarServerEmailAddressSetItem *)self emailAddresses];
  [v7 addObject:v4];
}

@end