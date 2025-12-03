@interface CalDAVCalendarServerInviteItem
- (CalDAVCalendarServerInviteItem)initWithNameSpace:(id)space andName:(id)name;
- (id)copyParseRules;
- (void)addUser:(id)user;
@end

@implementation CalDAVCalendarServerInviteItem

- (CalDAVCalendarServerInviteItem)initWithNameSpace:(id)space andName:(id)name
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarServerInviteItem;
  v4 = [(CoreDAVItem *)&v8 initWithNameSpace:space andName:name];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    users = v4->_users;
    v4->_users = v5;
  }

  return v4;
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"user" objectClass:objc_opt_class() setterMethod:sel_addUser_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"user"];
  v6 = [v2 initWithObjectsAndKeys:{v4, v5, 0}];

  return v6;
}

- (void)addUser:(id)user
{
  userCopy = user;
  users = [(CalDAVCalendarServerInviteItem *)self users];
  [users addObject:userCopy];
}

@end