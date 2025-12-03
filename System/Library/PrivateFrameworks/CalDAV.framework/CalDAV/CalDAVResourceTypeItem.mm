@interface CalDAVResourceTypeItem
- (id)copyParseRules;
- (void)write:(id)write;
@end

@implementation CalDAVResourceTypeItem

- (id)copyParseRules
{
  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  v2 = *MEMORY[0x277CFDDC0];
  v3 = *MEMORY[0x277CFDDD0];
  v28 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDDD0] objectClass:objc_opt_class() setterMethod:sel_setCalendar_];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v4 = *MEMORY[0x277CFE008];
  v23 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFE008] objectClass:objc_opt_class() setterMethod:sel_setScheduleInbox_];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v4];
  v5 = *MEMORY[0x277CFE010];
  v21 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFE010] objectClass:objc_opt_class() setterMethod:sel_setScheduleOutbox_];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v5];
  v6 = *MEMORY[0x277CFDE90];
  v7 = *MEMORY[0x277CFDF40];
  v19 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDF40] objectClass:objc_opt_class() setterMethod:sel_setIsFamilyCalendar_];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v7];
  v8 = *MEMORY[0x277CFDFB0];
  v17 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:*MEMORY[0x277CFDFB0] objectClass:objc_opt_class() setterMethod:sel_setNotification_];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v8];
  v9 = *MEMORY[0x277CFE020];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:*MEMORY[0x277CFE020] objectClass:objc_opt_class() setterMethod:sel_setSubscribed_];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v9];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:@"shared-owner" objectClass:objc_opt_class() setterMethod:sel_setSharedOwner_];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, @"shared-owner"];
  v25 = [v24 initWithObjectsAndKeys:{v28, v27, v23, v22, v21, v20, v19, v18, v17, v16, v10, v11, v12, v13, 0}];

  v29.receiver = self;
  v29.super_class = CalDAVResourceTypeItem;
  copyParseRules = [(CoreDAVItem *)&v29 copyParseRules];
  [v25 addEntriesFromDictionary:copyParseRules];

  return v25;
}

- (void)write:(id)write
{
  v44 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  calendar = [(CalDAVResourceTypeItem *)self calendar];

  if (calendar)
  {
    calendar2 = [(CalDAVResourceTypeItem *)self calendar];
    [calendar2 write:writeCopy];
  }

  scheduleInbox = [(CalDAVResourceTypeItem *)self scheduleInbox];

  if (scheduleInbox)
  {
    scheduleInbox2 = [(CalDAVResourceTypeItem *)self scheduleInbox];
    [scheduleInbox2 write:writeCopy];
  }

  scheduleOutbox = [(CalDAVResourceTypeItem *)self scheduleOutbox];

  if (scheduleOutbox)
  {
    scheduleOutbox2 = [(CalDAVResourceTypeItem *)self scheduleOutbox];
    [scheduleOutbox2 write:writeCopy];
  }

  notification = [(CalDAVResourceTypeItem *)self notification];

  if (notification)
  {
    notification2 = [(CalDAVResourceTypeItem *)self notification];
    [notification2 write:writeCopy];
  }

  subscribed = [(CalDAVResourceTypeItem *)self subscribed];

  if (subscribed)
  {
    subscribed2 = [(CalDAVResourceTypeItem *)self subscribed];
    [subscribed2 write:writeCopy];
  }

  sharedOwner = [(CalDAVResourceTypeItem *)self sharedOwner];

  if (sharedOwner)
  {
    sharedOwner2 = [(CalDAVResourceTypeItem *)self sharedOwner];
    [sharedOwner2 write:writeCopy];
  }

  shared = [(CoreDAVResourceTypeItem *)self shared];

  if (shared)
  {
    shared2 = [(CoreDAVResourceTypeItem *)self shared];
    [shared2 write:writeCopy];
  }

  addressBook = [(CoreDAVResourceTypeItem *)self addressBook];

  if (addressBook)
  {
    addressBook2 = [(CoreDAVResourceTypeItem *)self addressBook];
    [addressBook2 write:writeCopy];
  }

  searchAddressBook = [(CoreDAVResourceTypeItem *)self searchAddressBook];

  if (searchAddressBook)
  {
    searchAddressBook2 = [(CoreDAVResourceTypeItem *)self searchAddressBook];
    [searchAddressBook2 write:writeCopy];
  }

  principal = [(CoreDAVResourceTypeItem *)self principal];

  if (principal)
  {
    principal2 = [(CoreDAVResourceTypeItem *)self principal];
    [principal2 write:writeCopy];
  }

  collection = [(CoreDAVResourceTypeItem *)self collection];

  if (collection)
  {
    collection2 = [(CoreDAVResourceTypeItem *)self collection];
    [collection2 write:writeCopy];
  }

  unauthenticated = [(CoreDAVResourceTypeItem *)self unauthenticated];

  if (unauthenticated)
  {
    unauthenticated2 = [(CoreDAVResourceTypeItem *)self unauthenticated];
    [unauthenticated2 write:writeCopy];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v32 = [extraChildItems countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      v35 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(extraChildItems);
        }

        [*(*(&v39 + 1) + 8 * v35++) write:writeCopy];
      }

      while (v33 != v35);
      v33 = [extraChildItems countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v33);
  }

  name2 = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name2 inNamespace:nameSpace2];

  v38 = *MEMORY[0x277D85DE8];
}

@end